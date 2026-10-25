# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantdec05e8e463fa4e7c712709efd87a1c1255b753c938c2304d166af80ff83fc03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `589b712278055a28e5d3d580b710cb8bb68b3684` · SHA-256 `1b973d4e06f3192f5c481511b9307e2e60900204b5460e68c5280f6618dd6624`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant559494cf2ffc0a7ec09d7dae863dffc4a23933e9fdef68bcbd0820a2d0dd105d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"559494cf2ffc0a7ec09d7dae863dffc4a23933e9fdef68bcbd0820a2d0dd105d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant559494cf2ffc0a7ec09d7dae863dffc4a23933e9fdef68bcbd0820a2d0dd105d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"559494cf2ffc0a7ec09d7dae863dffc4a23933e9fdef68bcbd0820a2d0dd105d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/80bcc91cb10bcb63588a638f75adf5fd006c3493fcc61f56d5558489e6738d76/lean/sources/559494cf2ffc0a7ec09d7dae863dffc4a23933e9fdef68bcbd0820a2d0dd105d/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant559494cf2ffc0a7ec09d7dae863dffc4a23933e9fdef68bcbd0820a2d0dd105d

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
        logInfo m!"CA_DEV_7daa0da7f26d570d12856332_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_7daa0da7f26d570d12856332_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_7daa0da7f26d570d12856332_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_7daa0da7f26d570d12856332_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_7daa0da7f26d570d12856332_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_7daa0da7f26d570d12856332_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
