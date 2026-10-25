# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant2608cd7da79f1e0e370dff42143b38f9569d779b8e21beb3fc72ae2b51333b0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5e0cd55d546b96b3dadbdcac34ca658fcc45c0e` · SHA-256 `0f2b71bef85e2675cb06a15d376f1ba87b7fc591db817856a201ccee53fbc847`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5b53207c82394ee967c723c8fcb4deff767fccb7ad0c396f69c00550db90a2df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b53207c82394ee967c723c8fcb4deff767fccb7ad0c396f69c00550db90a2df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant5b53207c82394ee967c723c8fcb4deff767fccb7ad0c396f69c00550db90a2df","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5b53207c82394ee967c723c8fcb4deff767fccb7ad0c396f69c00550db90a2df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/faf0ad7e921f2c72afaa583bc179f9baa6d0f090e5fc5366db113fbb56168b2d/lean/sources/5b53207c82394ee967c723c8fcb4deff767fccb7ad0c396f69c00550db90a2df/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5b53207c82394ee967c723c8fcb4deff767fccb7ad0c396f69c00550db90a2df

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
        logInfo m!"CA_DEV_1996aa3f47a6569381b93bdf_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_1996aa3f47a6569381b93bdf_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_1996aa3f47a6569381b93bdf_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_1996aa3f47a6569381b93bdf_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_1996aa3f47a6569381b93bdf_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_1996aa3f47a6569381b93bdf_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
