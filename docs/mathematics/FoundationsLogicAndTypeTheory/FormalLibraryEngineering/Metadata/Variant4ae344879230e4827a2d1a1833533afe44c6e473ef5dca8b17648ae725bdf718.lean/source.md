# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant4ae344879230e4827a2d1a1833533afe44c6e473ef5dca8b17648ae725bdf718

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79a31a1e96f89270f4794abaa2cbeb86a707b1c9` · SHA-256 `4ae344879230e4827a2d1a1833533afe44c6e473ef5dca8b17648ae725bdf718`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
        logInfo m!"CA_DEV_bf91dbb9c021731e3d4c14ec_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_bf91dbb9c021731e3d4c14ec_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_bf91dbb9c021731e3d4c14ec_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_bf91dbb9c021731e3d4c14ec_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_bf91dbb9c021731e3d4c14ec_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_bf91dbb9c021731e3d4c14ec_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
