#!/bin/bash

SDK_GRADLE_FOLDER=$HOME/sdkman/candidates/gradle
GRADLE_PREFIX="gradle"

cd ${SDK_GRADLE_FOLDER}

if [ -z "$1" ]
then 	

#  echo "
#----------------------------------
#Please input a grade version
#----------------------------------
#"

  gradle -v

else

  rm -rf current
  ln -s ${GRADLE_PREFIX}-$1/ current
  gradle -v 

fi
	
	

