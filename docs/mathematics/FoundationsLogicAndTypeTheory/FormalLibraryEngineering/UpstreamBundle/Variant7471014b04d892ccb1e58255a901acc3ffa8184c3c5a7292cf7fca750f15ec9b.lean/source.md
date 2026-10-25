# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpstreamBundle.Variant7471014b04d892ccb1e58255a901acc3ffa8184c3c5a7292cf7fca750f15ec9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `080e34a84849052ad1f96b0f160a548077a7f22b` · SHA-256 `670d5b3a0941b070bc8952329f4b7b70305d88374ebbaf6cba41dbe93cf641ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MaintainerStatus.Variant20e89d8ba9cb9af963d1fd60b2a2fdbeaf8dc92c1ec6e33b685d84c2c310452a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20e89d8ba9cb9af963d1fd60b2a2fdbeaf8dc92c1ec6e33b685d84c2c310452a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MaintainerStatus.Variant20e89d8ba9cb9af963d1fd60b2a2fdbeaf8dc92c1ec6e33b685d84c2c310452a","mathematical_subject":"Foundations.Unclassified","original_sha256":"20e89d8ba9cb9af963d1fd60b2a2fdbeaf8dc92c1ec6e33b685d84c2c310452a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/UpstreamBundle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Reflection.Positive

/-! # Reviewable upstream bundles -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MaintainerStatus.Variant20e89d8ba9cb9af963d1fd60b2a2fdbeaf8dc92c1ec6e33b685d84c2c310452a

namespace Mathematics.Reflection

inductive MaintainerStatus
  | notSubmitted
  | underReview
  | rejected
  | accepted
  deriving DecidableEq, Repr

/-- Human-reviewable projection of a positively certified patch. -/
structure UpstreamBundle where
  patch : Patch
  positive : PositiveCertificate patch
  title : String
  summaryDigest : Digest
  patchArtifactId : StableId
  buildReceiptArtifactId : StableId
  theoremReportArtifactId : StableId
  licenseReportArtifactId : StableId
  provenanceArtifactId : StableId
  maintainerStatus : MaintainerStatus
  bundleDigest : Digest

end Mathematics.Reflection
```
