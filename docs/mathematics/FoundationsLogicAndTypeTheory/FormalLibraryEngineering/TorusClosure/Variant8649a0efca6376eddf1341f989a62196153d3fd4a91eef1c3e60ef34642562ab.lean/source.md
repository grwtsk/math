# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorusClosure.Variant8649a0efca6376eddf1341f989a62196153d3fd4a91eef1c3e60ef34642562ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1ff2d80f0921858828d71025ba45f925db41784` · SHA-256 `8649a0efca6376eddf1341f989a62196153d3fd4a91eef1c3e60ef34642562ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Orbit.CircleClosure

/-! # Certified torus-closure claims -/

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
