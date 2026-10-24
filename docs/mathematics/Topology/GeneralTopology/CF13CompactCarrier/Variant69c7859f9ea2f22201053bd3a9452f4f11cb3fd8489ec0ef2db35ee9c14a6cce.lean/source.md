# Complete source: GRWTSK.Topology.GeneralTopology.CF13CompactCarrier.Variant69c7859f9ea2f22201053bd3a9452f4f11cb3fd8489ec0ef2db35ee9c14a6cce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c45a40b84865362fe7c66a8614002123e298e3a` · SHA-256 `27654096c72710f07bd07a90e7cc582c9405a351d224bdeebd77216a2bb902af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
