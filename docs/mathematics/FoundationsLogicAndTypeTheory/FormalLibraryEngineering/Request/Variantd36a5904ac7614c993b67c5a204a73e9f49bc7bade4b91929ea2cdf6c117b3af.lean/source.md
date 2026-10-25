# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Request.Variantd36a5904ac7614c993b67c5a204a73e9f49bc7bade4b91929ea2cdf6c117b3af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a0080745a5996bda79b72da70cc6eb913500700` · SHA-256 `4ad4f686422a7c86437156905a8dc8286afd7d3414f97b5d160f584bd4ad4c00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperationRequest.Variant723927f3bf82cff78e7f74ac6f49606b4fc365219bf45270ef4965576a5984a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"723927f3bf82cff78e7f74ac6f49606b4fc365219bf45270ef4965576a5984a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OperationRequest.Variant723927f3bf82cff78e7f74ac6f49606b4fc365219bf45270ef4965576a5984a0","mathematical_subject":"Foundations.Unclassified","original_sha256":"723927f3bf82cff78e7f74ac6f49606b4fc365219bf45270ef4965576a5984a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Request.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Lease

/-! # Fully bound operation requests -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperationRequest.Variant723927f3bf82cff78e7f74ac6f49606b4fc365219bf45270ef4965576a5984a0

namespace Mathematics.Capability

structure OperationRequest where
  requestId : RequestId
  principal : Principal
  device : DeviceId
  element : ElementId
  purpose : PurposeId
  snapshot : ObjectAddress
  effect : Effect

end Mathematics.Capability
```
