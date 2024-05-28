ECHO "[COMPILING]"
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $DIR
uglifyjs library.js --config-file minify.json -o library.min.js
cat helpers.js library.min.js > ui@1.min.js
rm library.min.js