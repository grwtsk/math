# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Event.Variantf37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `697209e60e892eabcae49e5379b8541d067973a0` · SHA-256 `f37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Cubical.All

/-! # Homological event envelopes -/

namespace Mathematics.Homology

structure Event where
  id : StableId
  target : ElementRef
  revision : Nat
  payloadDigest : Digest
  deriving DecidableEq, Repr

structure TransportCertificate where
  event : Event
  sourceBoundaryDigest : Digest
  targetBoundaryDigest : Digest
  boundaryPreserved : sourceBoundaryDigest = targetBoundaryDigest

end Mathematics.Homology
```
