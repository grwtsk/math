# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant38f9f0be206efae0cc26ffc42a164497b59d13e45d5b8e00931ba1dfb9e19dc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aa20dd0b1b292a895981da9fcaf287fb4a19ec5` · SHA-256 `38f9f0be206efae0cc26ffc42a164497b59d13e45d5b8e00931ba1dfb9e19dc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Elab.Command
import Candidate

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact True.intro) ) (some expectedType)
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
        logInfo m!"CA_DEV_baf4f3762e54e8e179efbfd2_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_baf4f3762e54e8e179efbfd2_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_baf4f3762e54e8e179efbfd2_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_baf4f3762e54e8e179efbfd2_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_baf4f3762e54e8e179efbfd2_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_baf4f3762e54e8e179efbfd2_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
