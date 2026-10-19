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
