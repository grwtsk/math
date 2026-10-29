-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs05VertexCompatibleS2Realization.Variant3853a26e447da02981822046065ac67156367c24c7012332ddd9c706e870f725","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3853a26e447da02981822046065ac67156367c24c7012332ddd9c706e870f725","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cs05VertexCompatibleS2Realization.Variant3853a26e447da02981822046065ac67156367c24c7012332ddd9c706e870f725","mathematical_subject":"Foundations.Unclassified","original_sha256":"3853a26e447da02981822046065ac67156367c24c7012332ddd9c706e870f725","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS05_VertexCompatibleS2Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs05VertexCompatibleS2Realization.Variant3853a26e447da02981822046065ac67156367c24c7012332ddd9c706e870f725

namespace FCRS.ControlledSpherical.Theorems

/--
CS-05 projects vertex-coordinate compatibility for the package's exact `S²`
injection.  It says nothing about edge paths or topology and is branch-vacuous
when `S³` is selected.
-/
theorem cs05_vertexCompatibleS2Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS05Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs05Claim⟩

end FCRS.ControlledSpherical.Theorems
