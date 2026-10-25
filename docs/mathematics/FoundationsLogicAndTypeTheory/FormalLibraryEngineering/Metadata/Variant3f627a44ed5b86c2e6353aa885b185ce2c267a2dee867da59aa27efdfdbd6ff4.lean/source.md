# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant3f627a44ed5b86c2e6353aa885b185ce2c267a2dee867da59aa27efdfdbd6ff4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d86b04966d5ba1698bbc014c65f20f87332bde1` · SHA-256 `5a7412a24c4d06252f6ab73d59697a6db83bd9628a94f23a4a0172adfe9de96b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant10aee7922b7a8677927af0128f553b00223588d63df12c5c6f08e2afa1b2baab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10aee7922b7a8677927af0128f553b00223588d63df12c5c6f08e2afa1b2baab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant10aee7922b7a8677927af0128f553b00223588d63df12c5c6f08e2afa1b2baab","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"10aee7922b7a8677927af0128f553b00223588d63df12c5c6f08e2afa1b2baab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/7c62939bad853f17ae04972ee6f33e5df115edc5b090a8e4cafed21a1ac528c2/lean/sources/10aee7922b7a8677927af0128f553b00223588d63df12c5c6f08e2afa1b2baab/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant10aee7922b7a8677927af0128f553b00223588d63df12c5c6f08e2afa1b2baab

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
        logInfo m!"CA_DEV_ced21e12f7fab5c16b45c112_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_ced21e12f7fab5c16b45c112_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_ced21e12f7fab5c16b45c112_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_ced21e12f7fab5c16b45c112_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_ced21e12f7fab5c16b45c112_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_ced21e12f7fab5c16b45c112_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
