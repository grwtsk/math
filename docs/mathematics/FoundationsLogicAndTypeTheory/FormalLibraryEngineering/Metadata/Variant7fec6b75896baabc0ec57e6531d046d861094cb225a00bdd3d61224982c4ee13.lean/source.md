# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant7fec6b75896baabc0ec57e6531d046d861094cb225a00bdd3d61224982c4ee13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e239afe06d8625607678ec32582b9e2e61181a3` · SHA-256 `f3699c249988e62d9f20eaf4b5e11ef68d9067538a4939bee1f2e915efd324cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc22c3c835c5497ae63d5c7ba470c633f65bb9d6241bd474bf77acbd1d0053ccd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c22c3c835c5497ae63d5c7ba470c633f65bb9d6241bd474bf77acbd1d0053ccd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantc22c3c835c5497ae63d5c7ba470c633f65bb9d6241bd474bf77acbd1d0053ccd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c22c3c835c5497ae63d5c7ba470c633f65bb9d6241bd474bf77acbd1d0053ccd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/c764aa9d07827f4ebdaf1d470694e0265a317357d3db19b825539b782116b6fd/lean/sources/c22c3c835c5497ae63d5c7ba470c633f65bb9d6241bd474bf77acbd1d0053ccd/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc22c3c835c5497ae63d5c7ba470c633f65bb9d6241bd474bf77acbd1d0053ccd

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
