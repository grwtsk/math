# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantbc9010fe02e63f475ffe7e9f64285cd0481a2ed4cc619f81f778ebe9e09c342e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5daddff7c41decccda1e834dd1bcc6c2f494c983` · SHA-256 `bc9010fe02e63f475ffe7e9f64285cd0481a2ed4cc619f81f778ebe9e09c342e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
        logInfo m!"CA_DEV_fcbcb49c65a833d8ce19801c_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_fcbcb49c65a833d8ce19801c_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_fcbcb49c65a833d8ce19801c_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_fcbcb49c65a833d8ce19801c_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_fcbcb49c65a833d8ce19801c_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_fcbcb49c65a833d8ce19801c_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
