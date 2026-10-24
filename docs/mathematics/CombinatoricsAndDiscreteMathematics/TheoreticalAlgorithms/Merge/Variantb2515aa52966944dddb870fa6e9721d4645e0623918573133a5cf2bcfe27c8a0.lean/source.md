# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Merge.Variantb2515aa52966944dddb870fa6e9721d4645e0623918573133a5cf2bcfe27c8a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c7f22dce80d93fadc5e01657e1adbc3e1ddeec2` · SHA-256 `822431ba00fd13e7e3dd1f873ef1bcf076efcb5399bd3d28d5074e15a1858c3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ShardMergeCertificate.Variant7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ShardMergeCertificate.Variant7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b","mathematical_subject":"Computation.DataStructures","original_sha256":"7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Merge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Serialization

/-!
# Incremental shard-merge boundary
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ShardMergeCertificate.Variant7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b

namespace MathDiscovery.Extractor

open MathDiscovery

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

end MathDiscovery.Extractor
```
