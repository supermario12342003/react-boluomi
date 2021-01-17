# pull official base image
FROM node:13.12.0-alpine

RUN apk add --update openssl
RUN apk add --no-cache bash

RUN npm install -g firebase-tools

#build your app or link volume in docker-compose.yml to /app
#
#
#

# set working directory
WORKDIR app

# start app
CMD npm run start

RUN echo "Hello World!!"