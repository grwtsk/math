# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Merge.Variant7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3588822023ce1ddc2d64ae7ba43d41daabbda43c` · SHA-256 `7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Extractor.Serialization

/-!
# Incremental shard-merge boundary
-/

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
