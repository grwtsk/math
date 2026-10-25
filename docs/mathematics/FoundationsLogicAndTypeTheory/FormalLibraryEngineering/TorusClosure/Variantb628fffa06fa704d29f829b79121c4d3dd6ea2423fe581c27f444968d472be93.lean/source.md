# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorusClosure.Variantb628fffa06fa704d29f829b79121c4d3dd6ea2423fe581c27f444968d472be93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8a764c85d779ac93813cff04f2c253798e90f25` · SHA-256 `16881502397419c6dcb8a0fb1c23129be8cb93ef49e3cab0d1b6c7684938ed57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorusClosureCertificate.Variant8649a0efca6376eddf1341f989a62196153d3fd4a91eef1c3e60ef34642562ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8649a0efca6376eddf1341f989a62196153d3fd4a91eef1c3e60ef34642562ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TorusClosureCertificate.Variant8649a0efca6376eddf1341f989a62196153d3fd4a91eef1c3e60ef34642562ab","mathematical_subject":"Foundations.Unclassified","original_sha256":"8649a0efca6376eddf1341f989a62196153d3fd4a91eef1c3e60ef34642562ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Orbit/TorusClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Orbit.CircleClosure

/-! # Certified torus-closure claims -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorusClosureCertificate.Variant8649a0efca6376eddf1341f989a62196153d3fd4a91eef1c3e60ef34642562ab

namespace Mathematics.Orbit

structure TorusClosureCertificate where
  phaseVectorDigest : Digest
  rationalIndependenceCertificate : CertificateId
  dimension : Nat
  positiveDimension : 0 < dimension

def TorusClosureCertificate.status
    (certificate : TorusClosureCertificate) : Status :=
  .denseTorus certificate.dimension

end Mathematics.Orbit
```
