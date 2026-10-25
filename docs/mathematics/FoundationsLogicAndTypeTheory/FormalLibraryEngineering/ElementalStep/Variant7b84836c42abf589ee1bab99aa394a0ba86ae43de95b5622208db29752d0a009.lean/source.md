# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElementalStep.Variant7b84836c42abf589ee1bab99aa394a0ba86ae43de95b5622208db29752d0a009

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5985cb644e41f56e0c3250c6bfe40d52a4d16e23` · SHA-256 `666f974b1724e342f3a7a1d6ee20170956a2c7d48da2b410cb05a22836a7e011`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElementalStep.Varianta277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ElementalStep.Varianta277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429","mathematical_subject":"Foundations.Unclassified","original_sha256":"a277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/ElementalStep.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.ElementalState
import Mathematics.Relaxation.Step

/-!
# Monotone elemental relaxation

An admitted step may refine overlays and projections while preserving source
addresses and project-local identities exactly.  Negative and unresolved
evidence may grow but cannot disappear.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElementalStep.Varianta277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429

namespace Mathematics.Relaxation

structure ElementalStep
    (before after : ElementalState) where
  receipt : StepReceipt
  before_digest_exact :
    receipt.beforeDigest = before.stateDigest
  after_digest_exact :
    receipt.afterDigest = after.stateDigest
  point_universe_preserved :
    before.pointUniverse.universeId =
      after.pointUniverse.universeId
  source_addresses_preserved :
    before.immutableSourceAddressIds =
      after.immutableSourceAddressIds
  local_identity_preserved :
    before.projectLocalPointIds =
      after.projectLocalPointIds
  negative_evidence_monotone :
    ∀ elementId ∈ before.negativeElementIds,
      elementId ∈ after.negativeElementIds
  unresolved_branches_monotone :
    ∀ branchId ∈ before.unknownBranchIds,
      branchId ∈ after.unknownBranchIds

theorem ElementalStep.cannot_erase_negative
    {before after : ElementalState}
    (step : ElementalStep before after)
    {elementId : ElementId}
    (present : elementId ∈ before.negativeElementIds) :
    elementId ∈ after.negativeElementIds :=
  step.negative_evidence_monotone elementId present

theorem ElementalStep.cannot_reidentify_local_points
    {before after : ElementalState}
    (step : ElementalStep before after) :
    before.projectLocalPointIds =
      after.projectLocalPointIds :=
  step.local_identity_preserved

end Mathematics.Relaxation
```
