#!/usr/bin/env bash

#First, we download the image from docker hub
docker pull ecamacho2/rstudiohandson:latest

#Then, we vinculate the folder where we want to work locally

localdir=/path/to/course/bioinfo
containerdir=/home/rstudio/bioinfo

##We create the docker from the image with 'docker run': 
docker run -d -v $localdir:$containerdir -e PASSWORD=bioinfo -p 8787:8787 --name base_HandsOn_RStudio ecamacho2/rstudiohandson 

##In order to launch the docker we will do 'start':
docker start base_HandsOn_RStudio

#Finally, we will open the port in the internet with localhost:8787 and we will enter to RStudio with the user and password set 

