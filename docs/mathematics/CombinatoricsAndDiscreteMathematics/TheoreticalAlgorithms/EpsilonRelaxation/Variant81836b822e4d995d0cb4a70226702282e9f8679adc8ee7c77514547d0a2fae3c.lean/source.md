# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonRelaxation.Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2490a9c71aa9671b87c31c40edf590f5112fc83e` · SHA-256 `81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.Core

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure FiniteEpsilon where
  numerator : Nat
  denominator : Nat
  denominatorPositive : denominator > 0
  numeratorBounded : numerator ≤ denominator
  claimBoundary : List String

structure FiniteRelaxedValue where
  numerator : Nat
  denominator : Nat
  denominatorPositive : denominator > 0
  claimBoundary : List String

inductive PolarBaseBit where
  | paddedOne
  | paddedZero
deriving DecidableEq, Repr

def relaxedValueOfBase
    (eps : FiniteEpsilon)
    (b : PolarBaseBit) :
    FiniteRelaxedValue :=
  match b with
  | .paddedOne =>
      {
        numerator := eps.numerator
        denominator := eps.denominator
        denominatorPositive := eps.denominatorPositive
        claimBoundary := [
          "The padded-one base relaxes to finite epsilon.",
          "This is a finite descriptor, not a real-valued analytic limit."
        ]
      }
  | .paddedZero =>
      {
        numerator := eps.denominator - eps.numerator
        denominator := eps.denominator
        denominatorPositive := eps.denominatorPositive
        claimBoundary := [
          "The padded-zero base relaxes to one-minus-epsilon.",
          "This is a finite descriptor, not a real-valued analytic limit."
        ]
      }

theorem relaxedValue_denominator_positive
    (eps : FiniteEpsilon)
    (b : PolarBaseBit) :
    (relaxedValueOfBase eps b).denominator > 0 :=
  (relaxedValueOfBase eps b).denominatorPositive

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
