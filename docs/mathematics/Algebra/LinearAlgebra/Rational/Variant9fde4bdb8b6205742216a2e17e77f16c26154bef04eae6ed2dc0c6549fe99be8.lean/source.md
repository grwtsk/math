# Complete source: GRWTSK.Algebra.LinearAlgebra.Rational.Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b0ceb9395fdb85caec0aea7c5bc9a4a96ca7ce8` · SHA-256 `9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.NumberSystems

namespace Surface.Legacy

structure RationalMatrixCode where
  numerator : Int
  denominator : Nat
  denominatorPositive : 0 < denominator
  matrix : BinaryLogicMatrix 1 1

def encodeRational (q : RationalMatrixCode) : RationalMatrixCode :=
  q

def decodeRational? (code : RationalMatrixCode) : Option RationalMatrixCode :=
  some code

theorem rational_blm_roundTrip (q : RationalMatrixCode) :
    decodeRational? (encodeRational q) = some q := by
  rfl

structure RationalNormalizationCertificate where
  code : RationalMatrixCode
  normalized : Prop
  claimBoundary : String

theorem rational_normalization_certificate_projects
    (C : RationalNormalizationCertificate) :
    C.normalized -> C.normalized := by
  intro h
  exact h

end Surface.Legacy
```
