import SourceActualXiSevenPoleCancellation
set_option linter.style.header false
set_option linter.hashCommand false
set_option linter.style.setOption false
open Lean in
run_cmd do
  let names := (← getEnv).header.moduleNames
  for n in names do
    logInfo m!"RH16_LOADED {n}"
