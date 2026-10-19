import NoeoueueHodgeGate.Variant

namespace NoeoueueHodgeGate

structure Digest where
  bytes : List UInt8
  lengthCorrect : bytes.length = 32

structure Rational where
  numerator : Int
  denominator : Nat
  denominatorPositive : denominator > 0
  reduced : Nat.Coprime numerator.natAbs denominator

structure ScopePacket where
  variant : Variant
  variety : Digest
  polarization : Digest
  codimension : Nat

structure RationalHodgeClass where
  scope : Digest
  coordinates : List Rational
  hodgeTypePP : Bool

structure AlgebraicCycle where
  scope : Digest
  components : List Digest
  coefficients : List Rational
  sameLength : components.length = coefficients.length

structure CycleClassEquality where
  expected : List Rational
  actual : List Rational
  exact : expected = actual

structure PrefixComparison where
  h1Typed : Bool
  h2NoCollapse : Bool
  h3Natural : Bool
  h4Faithful : Bool

inductive RoutingPort where
  | exact
  | harmonic
  | coexact
  deriving DecidableEq, Repr

inductive RoutingDisposition where
  | admitted
  | tied
  | prefixCrossing
  | groundedResidual
  | unknown
  | invalid
  deriving DecidableEq, Repr

end NoeoueueHodgeGate
