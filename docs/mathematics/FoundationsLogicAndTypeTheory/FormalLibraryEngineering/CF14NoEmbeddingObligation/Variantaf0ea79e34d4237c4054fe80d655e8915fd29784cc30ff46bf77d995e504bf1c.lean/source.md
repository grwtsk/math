# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF14NoEmbeddingObligation.Variantaf0ea79e34d4237c4054fe80d655e8915fd29784cc30ff46bf77d995e504bf1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92822ac885d19183d3fa3a4f8e2f2b2a462a8b19` · SHA-256 `d01d5984133adee08bcc064807890ff84e31fd10ea1393b0589cedd64f921492`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf14NoEmbeddingObligation.Variant361dc7235e0a2226ef2716389df29391dfb651940eab9553e9ee4efed606ea28","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"361dc7235e0a2226ef2716389df29391dfb651940eab9553e9ee4efed606ea28","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cf14NoEmbeddingObligation.Variant361dc7235e0a2226ef2716389df29391dfb651940eab9553e9ee4efed606ea28","mathematical_subject":"Foundations.Unclassified","original_sha256":"361dc7235e0a2226ef2716389df29391dfb651940eab9553e9ee4efed606ea28","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Theorems/CF14_NoEmbeddingObligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf14NoEmbeddingObligation.Variant361dc7235e0a2226ef2716389df29391dfb651940eab9553e9ee4efed606ea28

namespace FCRS.ControlledPlane.Theorems

/-- CF-14 packages controlled losslessness without adding a planar injection. -/
theorem cf14_noEmbeddingObligation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CF14Claim M :=
  ⟨⟨D⟩⟩

end FCRS.ControlledPlane.Theorems
```
