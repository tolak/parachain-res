#!/bin/bash

mkdir $1 $2

$1 build-spec --raw --disable-default-bootnode --chain rhala-staging > ./$2/rhala-staging-raw-spec.json
$1 export-genesis-wasm -r --chain rhala-staging > ./$2/rhala-staging-code.wasm
$1 export-genesis-state --chain rhala-staging > ./$2/rhala-staging-state.hex
