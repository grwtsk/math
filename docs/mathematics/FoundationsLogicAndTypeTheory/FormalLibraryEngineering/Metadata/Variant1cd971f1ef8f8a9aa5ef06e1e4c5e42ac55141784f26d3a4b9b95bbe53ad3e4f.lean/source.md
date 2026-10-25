# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant1cd971f1ef8f8a9aa5ef06e1e4c5e42ac55141784f26d3a4b9b95bbe53ad3e4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bff8569f290c41482ae790ab916f5d98e1648a3a` · SHA-256 `1cd971f1ef8f8a9aa5ef06e1e4c5e42ac55141784f26d3a4b9b95bbe53ad3e4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Elab.Command
import Candidate

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact False.elim (by exact True.intro)) ) (some expectedType)
  Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing
  let candidate ← instantiateMVars candidate
  let env ← getEnv
  let mut pending := candidate.getUsedConstants.toList
  let mut visited : NameSet := {}
  while !pending.isEmpty do
    let dependency := pending.head!
    pending := pending.tail!
    if !visited.contains dependency then
      visited := visited.insert dependency
      if let some dependencyInfo := env.find? dependency then
        logInfo m!"CA_DEV_8b9f18d0a18e1d3364a4d2da_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_8b9f18d0a18e1d3364a4d2da_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_8b9f18d0a18e1d3364a4d2da_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_8b9f18d0a18e1d3364a4d2da_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_8b9f18d0a18e1d3364a4d2da_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_8b9f18d0a18e1d3364a4d2da_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
