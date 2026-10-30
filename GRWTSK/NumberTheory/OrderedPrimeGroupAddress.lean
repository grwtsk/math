/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.AddressCanonicalPrimeEnumeration
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.List.OfFn
import Mathlib.Data.Nat.Factors
import Mathlib.Data.ZMod.Basic

set_option autoImplicit false

/-!
# Ordered prime-group addresses

A prime is used here in three separate roles that must not be collapsed:

* it indexes a genuinely prime-specific type;
* it supplies the local cyclic group `ZMod p`;
* its order `p` is the radix of one address coordinate.

An ordered finite family of prime occurrences therefore determines the dependent
product of its local cyclic groups.  The order is part of the serialization,
while the abstract address group is the corresponding dependent function type.
Repeated primes remain repeated axes.

For a nonzero natural number `n`, Mathlib's increasing `primeFactorsList n`
supplies the canonical ordered axes.  The resulting atomic address group has
exactly `n` elements.  This is a cardinality theorem, not an identification with
`ZMod n`: grouping repeated prime occurrences into prime-power blocks changes the
group structure in general.

SOURCE_PROOF_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN /
TRANSITIVE AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.OrderedPrimeGroupAddress

open scoped BigOperators

/-- A prime together with its proof, used as a dependent group index. -/
abbrev PrimeIndex := {p : ℕ // Nat.Prime p}

instance primeIndexNeZero (p : PrimeIndex) : NeZero p.1 :=
  ⟨p.2.ne_zero⟩

/-- A finite ordered collection of prime occurrences.  Repeated primes are
separate axes; `length` is the atomic address length. -/
structure OrderedPrimeAxes where
  length : ℕ
  primeAt : Fin length → PrimeIndex

namespace OrderedPrimeAxes

/-- The local cyclic group carried by one ordered prime occurrence. -/
abbrev LocalGroup (axes : OrderedPrimeAxes) (i : Fin axes.length) :=
  ZMod (axes.primeAt i).1

/-- The complete atomic address group: one residue coordinate for every ordered
prime occurrence. -/
abbrev Address (axes : OrderedPrimeAxes) :=
  (i : Fin axes.length) → axes.LocalGroup i

/-- Exact bounded natural digits underlying an address. -/
abbrev BoundedDigits (axes : OrderedPrimeAxes) :=
  {digits : (i : Fin axes.length) → ℕ //
    ∀ i, digits i < (axes.primeAt i).1}

/-- The number of atomic prime axes. -/
def atomicLength (axes : OrderedPrimeAxes) : ℕ :=
  axes.length

/-- Product of the local group orders. -/
def radixProduct (axes : OrderedPrimeAxes) : ℕ :=
  ∏ i : Fin axes.length, (axes.primeAt i).1

/-- The ordered prime-radix list.  Changing this order changes serialized
addresses even when the abstract multiset of prime axes is unchanged. -/
def primeOrder (axes : OrderedPrimeAxes) : List ℕ :=
  List.ofFn fun i => (axes.primeAt i).1

/-- A self-describing exact serialization: each position records both its local
prime radix and its canonical residue representative. -/
def serialize (axes : OrderedPrimeAxes) (address : axes.Address) :
    List (ℕ × ℕ) :=
  List.ofFn fun i => ((axes.primeAt i).1, (address i).val)

@[simp]
theorem primeOrder_length (axes : OrderedPrimeAxes) :
    axes.primeOrder.length = axes.length := by
  simp [primeOrder]

@[simp]
theorem serialize_length (axes : OrderedPrimeAxes) (address : axes.Address) :
    (axes.serialize address).length = axes.length := by
  simp [serialize]

/-- Every address is equivalent to its exact bounded natural digits. -/
def addressEquivBoundedDigits (axes : OrderedPrimeAxes) :
    axes.Address ≃ axes.BoundedDigits where
  toFun address :=
    ⟨fun i => (address i).val, fun i => ZMod.val_lt (address i)⟩
  invFun digits i := (digits.1 i : ZMod (axes.primeAt i).1)
  left_inv address := by
    funext i
    exact ZMod.natCast_zmod_val (address i)
  right_inv digits := by
    apply Subtype.ext
    funext i
    exact ZMod.val_natCast_of_lt (digits.2 i)

/-- The ordered radix-and-digit serialization loses no address information. -/
theorem serialize_injective (axes : OrderedPrimeAxes) :
    Function.Injective axes.serialize := by
  intro left right hserialized
  have hentries :
      (fun i : Fin axes.length =>
        ((axes.primeAt i).1, (left i).val)) =
      (fun i : Fin axes.length =>
        ((axes.primeAt i).1, (right i).val)) :=
    List.ofFn_injective hserialized
  funext i
  have hval : (left i).val = (right i).val :=
    congrArg Prod.snd (congrFun hentries i)
  calc
    left i = ((left i).val : ZMod (axes.primeAt i).1) :=
      (ZMod.natCast_zmod_val (left i)).symm
    _ = ((right i).val : ZMod (axes.primeAt i).1) := by rw [hval]
    _ = right i := ZMod.natCast_zmod_val (right i)

@[simp]
theorem serialize_eq_iff (axes : OrderedPrimeAxes)
    (left right : axes.Address) :
    axes.serialize left = axes.serialize right ↔ left = right :=
  axes.serialize_injective.eq_iff

/-- The exact number of atomic addresses is the product of the prime radices. -/
theorem card_address (axes : OrderedPrimeAxes) :
    Fintype.card axes.Address = axes.radixProduct := by
  classical
  simp [Address, LocalGroup, radixProduct]

/-- The ordered group address specializes the existing checked finite-coordinate
carrier. -/
def toFiberCoordinate (axes : OrderedPrimeAxes) (address : axes.Address) :
    BitMatrix.Carrier.FiberCoordinate where
  values := List.ofFn fun i => (address i).val
  axisCardinalities := axes.primeOrder
  sameLength := by simp [primeOrder]
  inBounds := by
    intro i
    simpa [primeOrder] using
      ZMod.val_lt (address (Fin.cast (by simp) i))

/-- Build ordered axes from an already typed prime list. -/
def ofPrimeList (primes : List PrimeIndex) : OrderedPrimeAxes where
  length := primes.length
  primeAt := fun i => primes[i]

@[simp]
theorem ofPrimeList_length (primes : List PrimeIndex) :
    (ofPrimeList primes).length = primes.length :=
  rfl

@[simp]
theorem ofPrimeList_primeOrder (primes : List PrimeIndex) :
    (ofPrimeList primes).primeOrder = primes.map Subtype.val := by
  simp [ofPrimeList, primeOrder]

@[simp]
theorem ofPrimeList_radixProduct (primes : List PrimeIndex) :
    (ofPrimeList primes).radixProduct = (primes.map Subtype.val).prod := by
  simp [ofPrimeList, radixProduct]

/-- The increasing prime-factor list with every prime proof retained. -/
def factorPrimeList (n : ℕ) : List PrimeIndex :=
  n.primeFactorsList.attach.map fun p =>
    ⟨p.1, Nat.prime_of_mem_primeFactorsList p.2⟩

@[simp]
theorem factorPrimeList_values (n : ℕ) :
    (factorPrimeList n).map Subtype.val = n.primeFactorsList := by
  simp [factorPrimeList]

/-- Canonical ordered prime axes of a natural number, retaining repeated prime
factors in Mathlib's increasing factor order. -/
def factorAxes (n : ℕ) : OrderedPrimeAxes :=
  ofPrimeList (factorPrimeList n)

@[simp]
theorem factorAxes_length (n : ℕ) :
    (factorAxes n).length = n.primeFactorsList.length := by
  simp [factorAxes, factorPrimeList]

@[simp]
theorem factorAxes_primeOrder (n : ℕ) :
    (factorAxes n).primeOrder = n.primeFactorsList := by
  simp [factorAxes]

/-- Fundamental theorem of arithmetic as an address-radix product. -/
theorem factorAxes_radixProduct {n : ℕ} (hn : n ≠ 0) :
    (factorAxes n).radixProduct = n := by
  rw [factorAxes, ofPrimeList_radixProduct, factorPrimeList_values,
    Nat.prod_primeFactorsList hn]

/-- A nonzero natural number determines an ordered atomic prime-group address
space with exactly that many addresses. -/
theorem card_factorAddress {n : ℕ} (hn : n ≠ 0) :
    Fintype.card (factorAxes n).Address = n := by
  rw [card_address, factorAxes_radixProduct hn]

/-- The prime-factor list length is the atomic coordinate length. -/
def factorAtomicLength (n : ℕ) : ℕ :=
  (factorAxes n).atomicLength

@[simp]
theorem factorAtomicLength_eq (n : ℕ) :
    factorAtomicLength n = n.primeFactorsList.length := by
  simp [factorAtomicLength, atomicLength, factorAxes, factorPrimeList]

/-- The compressed single-block address convention.  It has the same number of
points as the atomic factor address for nonzero `n`, but is not silently
identified with it as a group. -/
abbrev CompressedAddress (n : ℕ) := ZMod n

/-- Atomic and compressed conventions have equal cardinality for nonzero `n`.
This theorem deliberately proves only cardinality equality. -/
theorem atomic_compressed_same_card {n : ℕ} (hn : n ≠ 0) :
    Fintype.card (factorAxes n).Address = Fintype.card (CompressedAddress n) := by
  letI : NeZero n := ⟨hn⟩
  rw [card_factorAddress hn, ZMod.card]

/-! ### Hostile convention controls -/

/-- Atomic radices for `12 = 2 * 2 * 3`. -/
def atomicTwelveRadices : List ℕ := [2, 2, 3]

/-- Prime-power block radices for `12 = 4 * 3`. -/
def compressedTwelveRadices : List ℕ := [4, 3]

/-- The two conventions have the same number of points. -/
theorem twelve_radix_products_agree :
    atomicTwelveRadices.prod = compressedTwelveRadices.prod := by
  decide

/-- Equal address count does not collapse atomic and prime-power block lengths. -/
theorem twelve_address_lengths_differ :
    atomicTwelveRadices.length ≠ compressedTwelveRadices.length := by
  decide

/-- Therefore an address representation must retain its multiplicity convention,
not merely its total cardinality. -/
theorem cardinality_does_not_determine_axis_convention :
    ∃ atomic compressed : List ℕ,
      atomic.prod = compressed.prod ∧ atomic.length ≠ compressed.length := by
  exact ⟨atomicTwelveRadices, compressedTwelveRadices,
    twelve_radix_products_agree, twelve_address_lengths_differ⟩

end OrderedPrimeAxes

end GRWTSK.NumberTheory.OrderedPrimeGroupAddress
