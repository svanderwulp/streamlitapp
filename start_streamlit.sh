#!/bin/bash
LOGFILE="/var/log/streamlit.log"
LOGLEVEL="debug"
BASEURL=""

if [-z "${BASEURL}"]; then
    (streamlit run app.py --server.enableXsrfProtection false --server.enableCORS false --logger.level=${LOGLEVEL}) > ${LOGFILE} 2>&1
else
    (streamlit run app.py --server.baseUrlPath ${BASEURL} --logger.level=${LOGLEVEL}) > ${LOGFILE} 2>&1
fi
