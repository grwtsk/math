-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Cf13CompactCarrier.Variantfeabd6ea99db5d70309ac1bf7e64b664fcea41a2b5bed120d001be98adb95bc1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"feabd6ea99db5d70309ac1bf7e64b664fcea41a2b5bed120d001be98adb95bc1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Cf13CompactCarrier.Variantfeabd6ea99db5d70309ac1bf7e64b664fcea41a2b5bed120d001be98adb95bc1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"feabd6ea99db5d70309ac1bf7e64b664fcea41a2b5bed120d001be98adb95bc1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Theorems/CF13_CompactCarrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Registry


namespace GRWTSK.Topology.GeneralTopology.Cf13CompactCarrier.Variantfeabd6ea99db5d70309ac1bf7e64b664fcea41a2b5bed120d001be98adb95bc1

namespace FCRS.ControlledPlane.Theorems

/-- CF-13 research-rule projection for signature-level carrier compactness. -/
theorem cf13_compactCarrier
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF13Claim M :=
  registry.cf13

end FCRS.ControlledPlane.Theorems
