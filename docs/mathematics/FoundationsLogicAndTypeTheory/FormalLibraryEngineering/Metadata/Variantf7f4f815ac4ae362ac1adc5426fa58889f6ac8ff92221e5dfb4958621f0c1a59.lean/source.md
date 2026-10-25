# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantf7f4f815ac4ae362ac1adc5426fa58889f6ac8ff92221e5dfb4958621f0c1a59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99a1137e9e6e9d984b500d8f984adda2e352ae46` · SHA-256 `33ba69e1c3070b85f7245dbe93de2a9c7bbb08f8945d03bb3b431efe88784940`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianta8532253a776156bc7ace7de6a90cfd0583cc330d031358365a81ddf8a267105","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8532253a776156bc7ace7de6a90cfd0583cc330d031358365a81ddf8a267105","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Varianta8532253a776156bc7ace7de6a90cfd0583cc330d031358365a81ddf8a267105","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a8532253a776156bc7ace7de6a90cfd0583cc330d031358365a81ddf8a267105","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/4bd132da52773ad6530bb3d9ad28691f962f7fcc32aae58780489ab75682ba2b/lean/sources/a8532253a776156bc7ace7de6a90cfd0583cc330d031358365a81ddf8a267105/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianta8532253a776156bc7ace7de6a90cfd0583cc330d031358365a81ddf8a267105

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
        logInfo m!"CA_DEV_62a43412c8b10965a2a39138_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_62a43412c8b10965a2a39138_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_62a43412c8b10965a2a39138_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_62a43412c8b10965a2a39138_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_62a43412c8b10965a2a39138_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_62a43412c8b10965a2a39138_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
