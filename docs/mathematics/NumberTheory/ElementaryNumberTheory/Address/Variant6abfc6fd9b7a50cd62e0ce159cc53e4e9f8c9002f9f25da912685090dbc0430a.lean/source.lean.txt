import Mathlib.Data.Nat.Pairing
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Prime.Nth

/-!
# Sequential-prime carrier addresses

This module formalizes the finite data and coding boundary used by the
source-relative carrier construction.  It deliberately separates concrete
coding functions from certificates whose mathematical obligations (prime
enumeration, mixed-radix bijectivity, and canonical increasing enumeration)
must be supplied before those functions are treated as exact equivalences.
-/

namespace BitMatrix.Carrier

/-- A sequential-prime specification `(start; multiplicities)`. -/
structure SequentialPrimeSpecification where
  start : Nat
  multiplicities : List Nat
  nonempty : multiplicities ≠ []
  admissible : ∀ d ∈ multiplicities, d = 1 ∨ Nat.Prime d

namespace SequentialPrimeSpecification

/-- Total number of axes after expanding the multiplicities. -/
def rank (specification : SequentialPrimeSpecification) : Nat :=
  specification.multiplicities.sum

/-- A capability for the strictly increasing enumeration of prime numbers. -/
structure PrimeEnumeration where
  value : Nat → Nat
  prime : ∀ index, Nat.Prime (value index)
  strictlyIncreasing : StrictMono value
  canonical : ∀ index, value index = Nat.nth Nat.Prime index

end SequentialPrimeSpecification

/-- The Cantor pairing formula used by the rhetorical specification. -/
def cantorPair (left right : Nat) : Nat :=
  ((left + right) * (left + right + 1)) / 2 + right

/-- The fixed recursive code for a finite natural-number sequence. -/
def finiteSequenceCode : List Nat → Nat
  | [] => 0
  | head :: tail => 1 + cantorPair head (finiteSequenceCode tail)

/-- The fixed code of a sequential-prime specification. -/
def specificationCode (specification : SequentialPrimeSpecification) : Nat :=
  cantorPair specification.start
    (finiteSequenceCode specification.multiplicities)

/-- A finite coordinate together with the cardinality of every axis. -/
structure FiberCoordinate where
  values : List Nat
  axisCardinalities : List Nat
  sameLength : values.length = axisCardinalities.length
  inBounds : ∀ index : Fin values.length,
    values[index] < axisCardinalities[index.cast sameLength]

/-- Least-significant-coordinate-first mixed-radix evaluation. -/
def mixedRadixValues : List Nat → List Nat → Nat
  | [], _ => 0
  | _, [] => 0
  | value :: values, radix :: radices =>
      value + radix * mixedRadixValues values radices

/-- Evaluate a checked fiber coordinate in the fixed mixed-radix convention. -/
def FiberCoordinate.mixedRadix (coordinate : FiberCoordinate) : Nat :=
  mixedRadixValues coordinate.values coordinate.axisCardinalities

/--
A certificate that a selected coordinate representation is exactly the
documented mixed-radix finite equivalence.  No certificate is synthesized from
cardinality alone.
-/
structure MixedRadixEquivalence
    (Coordinate : Type)
    (cardinality : Nat)
    (formula : Coordinate → Nat) where
  equivalence : Coordinate ≃ Fin cardinality
  agreesWithFormula : ∀ coordinate,
    (equivalence coordinate).val = formula coordinate

/-- Raw address codes before restricting specification and coordinate codes. -/
structure RawCarrierAddress where
  occurrence : Nat
  specification : Nat
  coordinate : Nat
  deriving DecidableEq, Repr

/-- The nested documented address code. -/
def rawAddressCode (address : RawCarrierAddress) : Nat :=
  cantorPair address.occurrence
    (cantorPair address.specification address.coordinate)

/--
An exact canonical enumeration capability for a validated address type.
`canonicalOrder` prevents an arbitrary countability equivalence from being
misreported as the increasing enumeration of the selected address code.
-/
structure AddressEnumeration (Address : Type) where
  enumerate : Nat ≃ Address
  code : Address → Nat
  codeInjective : Function.Injective code
  canonicalOrder : ∀ left right,
    left < right ↔ code (enumerate left) < code (enumerate right)

/-- Mathlib's pairing gives an executable bijection for the raw triple type. -/
def rawAddressEquivNat : RawCarrierAddress ≃ Nat where
  toFun address :=
    Nat.pair address.occurrence
      (Nat.pair address.specification address.coordinate)
  invFun value :=
    let outer := Nat.unpair value
    let inner := Nat.unpair outer.2
    ⟨outer.1, inner.1, inner.2⟩
  left_inv address := by
    cases address
    simp
  right_inv value := by
    simp

/-- A concrete enumeration of raw triples; it is not the certified increasing
enumeration of the restricted sequential-prime carrier. -/
def rawAddressEnumeration : Nat ≃ RawCarrierAddress :=
  rawAddressEquivNat.symm

end BitMatrix.Carrier
