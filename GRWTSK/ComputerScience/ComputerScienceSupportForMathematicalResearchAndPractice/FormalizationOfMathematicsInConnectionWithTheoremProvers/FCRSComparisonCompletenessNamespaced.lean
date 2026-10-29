-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FcrsComparisonComplete.Variant14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FcrsComparisonComplete.Variant14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f","mathematical_subject":"Foundations.Unclassified","original_sha256":"14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Theorems/FCRSComparisonCompleteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Theorems.FCRSConditionalCompleteness


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FcrsComparisonComplete.Variant14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f

namespace FCRS

/-- The comparison-equivalence consequence of the full conditional theorem. -/
theorem fcrs_comparison_complete
    (S : RealizationSystem)
    (registry : TheoremRegistry S)
    (h : FullHypotheses S) :
    EquivalenceWitness S.carrier.functors.RB ∧
    EquivalenceWitness S.carrier.functors.BA ∧
    EquivalenceWitness S.carrier.functors.RigEta := by
  have complete :=
    fcrs_full_conditional_completeness S registry h
  exact ⟨
    complete.rigidBerkovichEquivalence,
    ⟨complete.berkovichAdicEquivalence, complete.raynaudEquivalence⟩
  ⟩

end FCRS
