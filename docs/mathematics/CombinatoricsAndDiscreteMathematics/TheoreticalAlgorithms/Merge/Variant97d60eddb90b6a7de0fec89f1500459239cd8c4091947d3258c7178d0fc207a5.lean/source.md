# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Merge.Variant97d60eddb90b6a7de0fec89f1500459239cd8c4091947d3258c7178d0fc207a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b4f86ed22d4f459d34c5cd29734c7ab10b45d8a` · SHA-256 `8a358db4f3197a2ed235db97d85b539742fc225122163b7ff6c93e273b46848c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ShardMergeCertificate.Variant4968d9043c6c62b51e9ccea32247069b82c67d431f50df6f4e0188a2ce8c2bea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4968d9043c6c62b51e9ccea32247069b82c67d431f50df6f4e0188a2ce8c2bea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ShardMergeCertificate.Variant4968d9043c6c62b51e9ccea32247069b82c67d431f50df6f4e0188a2ce8c2bea","mathematical_subject":"Computation.DataStructures","original_sha256":"4968d9043c6c62b51e9ccea32247069b82c67d431f50df6f4e0188a2ce8c2bea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Merge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Serialization

/-!
# Incremental shard-merge boundary
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ShardMergeCertificate.Variant4968d9043c6c62b51e9ccea32247069b82c67d431f50df6f4e0188a2ce8c2bea

namespace Mathematics.Extractor

open Mathematics

structure ShardMergeCertificate where
  cleanDigest : Digest
  incrementalDigest : Digest
  comparedFileDigests : Array (CanonicalPath × Digest)
  deriving DecidableEq, Repr, Inhabited

namespace ShardMergeCertificate

/-- Incremental and clean extraction agree only when their canonical digests do. -/
def Valid (certificate : ShardMergeCertificate) : Prop :=
  certificate.cleanDigest = certificate.incrementalDigest

end ShardMergeCertificate

end Mathematics.Extractor
```
