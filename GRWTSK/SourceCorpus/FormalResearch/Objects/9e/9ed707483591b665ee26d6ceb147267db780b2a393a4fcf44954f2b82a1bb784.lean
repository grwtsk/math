import SourceActualMixedInwardPositive
open RH16ActualMixedInwardPositive
#print actual_mixed_inward_right
#print axioms actual_mixed_inward_right
#print actual_mixed_inward_left
#print axioms actual_mixed_inward_left
#print actual_source_ge_outward_right
#print axioms actual_source_ge_outward_right
#print actual_source_ge_outward_left
#print axioms actual_source_ge_outward_left

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
