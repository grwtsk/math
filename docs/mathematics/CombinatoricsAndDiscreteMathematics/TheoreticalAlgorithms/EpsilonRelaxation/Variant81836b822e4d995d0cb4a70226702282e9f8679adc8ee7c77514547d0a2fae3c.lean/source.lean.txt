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
