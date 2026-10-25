# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderAccess.Variant9044f65d0de8faf71d3fb678790d9e735c92359a4e6f516e33be186eb48d9a51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b8efe7bfed7b946ebc47659673896f63d1d411e` · SHA-256 `9044f65d0de8faf71d3fb678790d9e735c92359a4e6f516e33be186eb48d9a51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Access.ReleaseProfile

/-!
# Cofinal prime/compression cylinders
-/

namespace Mathematics.SemiLocalDefect.Access

structure PrimeCompressionCylinder where
  primeUniverse : FinitePrimeUniverse
  compressionRank : Nat
  stage : Nat
  cutDigest : CapacityDigest
  compressionDigest : CompressionId

structure CylinderEmbedding
    (source target : PrimeCompressionCylinder) where
  primeEmbedding :
    PrimeUniverseEmbedding
      source.primeUniverse target.primeUniverse
  rankMonotone :
    source.compressionRank ≤
      target.compressionRank
  stageStrict :
    source.stage < target.stage
  capacityCompatible : Prop
  capacityCompatibleProof :
    capacityCompatible
  compressionCompatible : Prop
  compressionCompatibleProof :
    compressionCompatible

structure CylinderAccessReceipt
    (cylinder : PrimeCompressionCylinder) where
  inspectedCutCount : Nat
  inspectedCompressionCount : Nat
  compatibilityChecked : Bool
  authority :
    CertificateStatus
  digest : CertificateDigest
  noLimitClaim :
    authority ≠ .certified →
      True

end Mathematics.SemiLocalDefect.Access
```
