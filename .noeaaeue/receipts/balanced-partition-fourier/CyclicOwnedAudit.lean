import GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth
import Lean
open Lean Elab Command
elab "#audit_cyclic_runtime" : command => do
  let env ← getEnv
  for (name, info) in env.constants.toList do
    let owner := (env.getModuleIdxFor? name).bind (fun idx => env.header.moduleNames[idx]?)
    if owner == some `GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth then
      if info.isPartial || info.isUnsafe then
        throwError "partial or unsafe owned declaration: {name}"
  logInfo "Cyclic runtime declaration audit passed"
#audit_cyclic_runtime
