import SourceActualEndpointRecovery
open RH16ActualEndpointRecovery
#print endpointPlus
#print axioms endpointPlus
#print endpointMinus
#print axioms endpointMinus
#print endpointCommon
#print axioms endpointCommon
#print positiveEndpoint
#print axioms positiveEndpoint
#print negativeEndpoint
#print axioms negativeEndpoint
#print invariantMixed
#print axioms invariantMixed
#print endpoint_product
#print axioms endpoint_product
#print actual_source_endpoint_recovery
#print axioms actual_source_endpoint_recovery

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
