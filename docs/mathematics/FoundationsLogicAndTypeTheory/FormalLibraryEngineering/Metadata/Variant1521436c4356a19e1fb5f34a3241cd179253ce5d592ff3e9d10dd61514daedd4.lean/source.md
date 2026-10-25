# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant1521436c4356a19e1fb5f34a3241cd179253ce5d592ff3e9d10dd61514daedd4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46e82001f8a4ada8f06f6e31e49adf4b7f5637f9` · SHA-256 `1521436c4356a19e1fb5f34a3241cd179253ce5d592ff3e9d10dd61514daedd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
        logInfo m!"CA_DEV_a6658ac95d9ea6d8f95dba19_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_a6658ac95d9ea6d8f95dba19_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_a6658ac95d9ea6d8f95dba19_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_a6658ac95d9ea6d8f95dba19_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_a6658ac95d9ea6d8f95dba19_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_a6658ac95d9ea6d8f95dba19_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
