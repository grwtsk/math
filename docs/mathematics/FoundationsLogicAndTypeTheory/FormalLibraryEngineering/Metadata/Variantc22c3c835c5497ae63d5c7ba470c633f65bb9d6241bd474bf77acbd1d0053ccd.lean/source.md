# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantc22c3c835c5497ae63d5c7ba470c633f65bb9d6241bd474bf77acbd1d0053ccd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d85e257fc2a332816bfacca1a644c7a8f57d68e4` · SHA-256 `c22c3c835c5497ae63d5c7ba470c633f65bb9d6241bd474bf77acbd1d0053ccd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  let expectedType ← instantiateMVars expectedType
  let env ← getEnv
  let mut pending := candidate.getUsedConstants.toList ++ expectedType.getUsedConstants.toList
  let mut visited : NameSet := {}
  while !pending.isEmpty do
    let dependency := pending.head!
    pending := pending.tail!
    if !visited.contains dependency then
      visited := visited.insert dependency
      if let some dependencyInfo := env.find? dependency then
        logInfo m!"CA_DEV_44a0aa8ab1e53bcd0ef4f1f0_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_44a0aa8ab1e53bcd0ef4f1f0_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_44a0aa8ab1e53bcd0ef4f1f0_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_44a0aa8ab1e53bcd0ef4f1f0_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_44a0aa8ab1e53bcd0ef4f1f0_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_44a0aa8ab1e53bcd0ef4f1f0_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
