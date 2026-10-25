# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Varianta85ac7c92c767686a1d47b7d8446b97d3e5077da196443692eb5ebcfe5b58128

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20c9e4034ffe38dca8c17fc2c743bcbe14f29e28` · SHA-256 `3e70a1686733705972d6bc4edca4ac7a917e106e56d04a948a52b748d54a1d2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant2a299d4a4779070427c53ede328c82c44e46462b59aed4efd8b66e6c4314bc1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a299d4a4779070427c53ede328c82c44e46462b59aed4efd8b66e6c4314bc1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant2a299d4a4779070427c53ede328c82c44e46462b59aed4efd8b66e6c4314bc1a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2a299d4a4779070427c53ede328c82c44e46462b59aed4efd8b66e6c4314bc1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/5c8647562ceccdd9b2cbf05edd7ed87455aa5f5bcc188c4e3c7268d79817cd07/lean/sources/2a299d4a4779070427c53ede328c82c44e46462b59aed4efd8b66e6c4314bc1a/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant2a299d4a4779070427c53ede328c82c44e46462b59aed4efd8b66e6c4314bc1a

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
        logInfo m!"CA_DEV_98237c5b50434fdd9114ffad_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_98237c5b50434fdd9114ffad_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_98237c5b50434fdd9114ffad_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_98237c5b50434fdd9114ffad_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_98237c5b50434fdd9114ffad_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_98237c5b50434fdd9114ffad_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
