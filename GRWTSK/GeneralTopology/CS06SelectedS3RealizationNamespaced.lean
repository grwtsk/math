-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Cs06SelectedS3Realization.Variant734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Cs06SelectedS3Realization.Variant734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS06_SelectedS3Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.Topology.GeneralTopology.Cs06SelectedS3Realization.Variant734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c

namespace FCRS.ControlledSpherical.Theorems

/--
CS-06 projects the branch-relative `S³` claim.  When `S³` is selected this
is its compactness assertion; an `S²` selection creates no `S³` witness.
-/
theorem cs06_selectedS3Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS06Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs06Claim⟩

end FCRS.ControlledSpherical.Theorems
