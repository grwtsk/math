# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant39446368637b6f0cd651c5b0d0219934686491a0f01abf70bbd5bb9b13169020

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f531a1190228cdcd97f6c635d57a94607f0e602a` · SHA-256 `294b8702501ac896ddb81757acd7abef7d187b61cf16d8b989295e7754bb4295`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant9d444708031518fac641997f40d66090793a55ec5c79771ba902f5e96d3cb745","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d444708031518fac641997f40d66090793a55ec5c79771ba902f5e96d3cb745","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant9d444708031518fac641997f40d66090793a55ec5c79771ba902f5e96d3cb745","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9d444708031518fac641997f40d66090793a55ec5c79771ba902f5e96d3cb745","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/d64f7989e222e4e15402d8dd1eb32df3b7f0520b2df9dd4d6d17d9bb4286ed28/lean/sources/9d444708031518fac641997f40d66090793a55ec5c79771ba902f5e96d3cb745/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant9d444708031518fac641997f40d66090793a55ec5c79771ba902f5e96d3cb745

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact False.elim (by exact True.intro)) ) (some expectedType)
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
        logInfo m!"CA_DEV_26614efce8e66f4564cd9d9b_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_26614efce8e66f4564cd9d9b_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_26614efce8e66f4564cd9d9b_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_26614efce8e66f4564cd9d9b_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_26614efce8e66f4564cd9d9b_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_26614efce8e66f4564cd9d9b_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
