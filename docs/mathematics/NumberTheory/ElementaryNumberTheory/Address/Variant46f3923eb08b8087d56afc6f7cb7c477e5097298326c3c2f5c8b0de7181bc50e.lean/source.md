# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Address.Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `582efcab40f7eeef9fd47565664de208cf778b9b` · SHA-256 `46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Pairing
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Prime.Nth
import Mathlib.Data.Nat.PrimeFin

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

/--
The actual increasing prime enumeration used by the project formalization.
Its two substantive obligations are Mathlib's infinitude-of-primes theorem and
the strict monotonicity theorem for `Nat.nth` on an infinite set.
-/
noncomputable def canonicalPrimeEnumeration : PrimeEnumeration where
  value := Nat.nth Nat.Prime
  prime := Nat.nth_mem_of_infinite Nat.infinite_setOf_prime
  strictlyIncreasing := Nat.nth_strictMono Nat.infinite_setOf_prime
  canonical := fun _ => rfl

@[simp]
theorem canonicalPrimeEnumeration_value (index : Nat) :
    canonicalPrimeEnumeration.value index = Nat.nth Nat.Prime index :=
  rfl

theorem canonicalPrimeEnumeration_prime (index : Nat) :
    Nat.Prime (canonicalPrimeEnumeration.value index) :=
  canonicalPrimeEnumeration.prime index

theorem canonicalPrimeEnumeration_strictlyIncreasing :
    StrictMono canonicalPrimeEnumeration.value :=
  canonicalPrimeEnumeration.strictlyIncreasing

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

/-- Natural numbers with their identity code form the simplest fully
validated canonical address enumeration. -/
def naturalAddressEnumeration : AddressEnumeration Nat where
  enumerate := Equiv.refl Nat
  code := id
  codeInjective := Function.injective_id
  canonicalOrder := by simp

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

/--
A fully certified canonical enumeration for raw carrier triples, ordered by
Mathlib's pairing code.  This is deliberately not identified with the
documented restricted sequential-prime address subspace: that restriction
requires a separate membership proof and filtering enumeration.
-/
def rawCanonicalAddressEnumeration : AddressEnumeration RawCarrierAddress where
  enumerate := rawAddressEnumeration
  code := rawAddressEquivNat
  codeInjective := rawAddressEquivNat.injective
  canonicalOrder := by
    intro left right
    simp [rawAddressEnumeration]

@[simp]
theorem rawCanonicalAddressEnumeration_code_enumerate (index : Nat) :
    rawCanonicalAddressEnumeration.code
      (rawCanonicalAddressEnumeration.enumerate index) = index := by
  simp [rawCanonicalAddressEnumeration, rawAddressEnumeration]

theorem rawCanonicalAddressEnumeration_order (left right : Nat) :
    left < right ↔
      rawCanonicalAddressEnumeration.code
        (rawCanonicalAddressEnumeration.enumerate left) <
      rawCanonicalAddressEnumeration.code
        (rawCanonicalAddressEnumeration.enumerate right) :=
  rawCanonicalAddressEnumeration.canonicalOrder left right

end BitMatrix.Carrier
```
