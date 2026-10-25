# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant1cf101a20322279eb65ae7929020baa15f23bceb2d7d350aff3718e60eec9e70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71ee9cd3513e9ebc798a652095d31bcddd464e15` · SHA-256 `e47b86f82d54d14fc0e730c26e788299bba221c94057577f81a38dcff8772eec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant2eeb3d4e1bcad48e3dba14c48f1779c339ae56b3d931337cba5491894fc6d9e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2eeb3d4e1bcad48e3dba14c48f1779c339ae56b3d931337cba5491894fc6d9e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant2eeb3d4e1bcad48e3dba14c48f1779c339ae56b3d931337cba5491894fc6d9e9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2eeb3d4e1bcad48e3dba14c48f1779c339ae56b3d931337cba5491894fc6d9e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/bd742760feb35ac9f637fba16a9f532d4c064474694206bf0e92b6c23aa0f37d/lean/sources/2eeb3d4e1bcad48e3dba14c48f1779c339ae56b3d931337cba5491894fc6d9e9/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant2eeb3d4e1bcad48e3dba14c48f1779c339ae56b3d931337cba5491894fc6d9e9

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
        logInfo m!"CA_DEV_79e2a6dfd12d9331d7e3f27b_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_79e2a6dfd12d9331d7e3f27b_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_79e2a6dfd12d9331d7e3f27b_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_79e2a6dfd12d9331d7e3f27b_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_79e2a6dfd12d9331d7e3f27b_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_79e2a6dfd12d9331d7e3f27b_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
