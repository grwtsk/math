# Complete source: GRWTSK.Algebra.SequentialPrime.Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7644e8659184af2ba98eb2e49d7d50d35bcd1d84` · SHA-256 `e097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Carrier.Address
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Data.Nat.Nth

/-!
# Complete sequential-prime carrier

This module constructs the restricted carrier described by the rhetorical
specification.  Unlike `RawCarrierAddress`, every coordinate here belongs to
the finite dependent product selected by its sequential-prime specification.
The canonical enumeration is obtained by increasing enumeration of the exact
image of the documented address code.
-/

namespace BitMatrix.Carrier

open scoped BigOperators

namespace SequentialPrimeSpecification

@[ext]
theorem ext
    {left right : SequentialPrimeSpecification}
    (start : left.start = right.start)
    (multiplicities : left.multiplicities = right.multiplicities) :
    left = right := by
  cases left
  cases right
  cases start
  cases multiplicities
  rfl

/-- Expand one prime index per multiplicity into the documented axis list. -/
noncomputable def axesFrom : Nat → List Nat → List Nat
  | _, [] => []
  | primeIndex, multiplicity :: tail =>
      List.replicate multiplicity (canonicalPrimeEnumeration.value primeIndex) ++
        axesFrom (primeIndex + 1) tail

/-- Cardinalities of all axes of a sequential-prime coordinate fiber. -/
noncomputable def axisCardinalities
    (specification : SequentialPrimeSpecification) : List Nat :=
  axesFrom specification.start specification.multiplicities

theorem axesFrom_positive
    {start : Nat} {multiplicities : List Nat}
    {axis : Nat}
    (member : axis ∈ axesFrom start multiplicities) :
    0 < axis := by
  induction multiplicities generalizing start with
  | nil => simp [axesFrom] at member
  | cons multiplicity tail inductionHypothesis =>
      simp only [axesFrom, List.mem_append, List.mem_replicate] at member
      rcases member with member | member
      · rw [member.2]
        exact (canonicalPrimeEnumeration_prime start).pos
      · exact inductionHypothesis member

theorem axisCardinalities_positive
    (specification : SequentialPrimeSpecification)
    {axis : Nat}
    (member : axis ∈ specification.axisCardinalities) :
    0 < axis :=
  axesFrom_positive member

end SequentialPrimeSpecification

/-- A finite dependent product of finite axes, represented recursively. -/
def CoordinateFiber : List Nat → Type
  | [] => PUnit
  | cardinality :: tail => Fin cardinality × CoordinateFiber tail

namespace CoordinateFiber

/-- Cardinality of the dependent finite product. -/
def cardinality : List Nat → Nat
  | [] => 1
  | radix :: tail => radix * cardinality tail

/-- Least-significant-coordinate-first mixed-radix evaluation. -/
def mixedRadix : {radices : List Nat} → CoordinateFiber radices → Nat
  | [], _ => 0
  | radix :: _, coordinate =>
      coordinate.1.val + radix * mixedRadix coordinate.2

/-- The all-zero point of a fiber whose axes are all nonempty. -/
def zero : (radices : List Nat) →
    (∀ radix ∈ radices, 0 < radix) → CoordinateFiber radices
  | [], _ => PUnit.unit
  | radix :: tail, positive =>
      (⟨0, positive radix (by simp)⟩,
        zero tail (fun value member => positive value (by simp [member])))

@[simp]
theorem mixedRadix_zero
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix) :
    mixedRadix (zero radices positive) = 0 := by
  induction radices with
  | nil => rfl
  | cons radix tail inductionHypothesis =>
      simp only [zero, mixedRadix, zero_add]
      rw [inductionHypothesis]
      simp

theorem cardinality_positive
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix) :
    0 < cardinality radices := by
  induction radices with
  | nil => simp [cardinality]
  | cons radix tail inductionHypothesis =>
      simp only [cardinality]
      exact Nat.mul_pos (positive radix (by simp))
        (inductionHypothesis (fun value member => positive value (by simp [member])))

/-- Decode a bounded natural into least-significant-coordinate-first digits. -/
def ofNat : (radices : List Nat) →
    (∀ radix ∈ radices, 0 < radix) → Nat → CoordinateFiber radices
  | [], _, _ => PUnit.unit
  | radix :: tail, positive, value =>
      (⟨value % radix, Nat.mod_lt value (positive radix (by simp))⟩,
        ofNat tail (fun axis member => positive axis (by simp [member]))
          (value / radix))

theorem mixedRadix_ofNat
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix)
    (value : Nat)
    (bound : value < cardinality radices) :
    mixedRadix (ofNat radices positive value) = value := by
  induction radices generalizing value with
  | nil =>
      simp only [cardinality] at bound
      have : value = 0 := by omega
      subst value
      rfl
  | cons radix tail inductionHypothesis =>
      have radixPositive := positive radix (by simp)
      have tailBound : value / radix < cardinality tail := by
        rw [Nat.div_lt_iff_lt_mul radixPositive]
        simpa [cardinality, Nat.mul_comm] using bound
      simp only [ofNat, mixedRadix]
      rw [inductionHypothesis
        (fun axis member => positive axis (by simp [member]))
        (value / radix) tailBound]
      exact Nat.mod_add_div value radix

theorem mixedRadix_injective
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix) :
    Function.Injective (@mixedRadix radices) := by
  induction radices with
  | nil =>
      intro left right _
      cases left
      cases right
      rfl
  | cons radix tail inductionHypothesis =>
      intro left right equality
      have radixPositive : 0 < radix := positive radix (by simp)
      have headEquality : left.1.val = right.1.val := by
        have moduloEquality := congrArg (fun value => value % radix) equality
        simpa [mixedRadix, Nat.add_mul_mod_self_left,
          Nat.mod_eq_of_lt left.1.isLt, Nat.mod_eq_of_lt right.1.isLt]
          using moduloEquality
      have headSubtypeEquality : left.1 = right.1 := Fin.ext headEquality
      have tailProductEquality :
          radix * mixedRadix left.2 = radix * mixedRadix right.2 := by
        simpa [mixedRadix, headEquality] using equality
      have tailCodeEquality : mixedRadix left.2 = mixedRadix right.2 :=
        Nat.mul_left_cancel radixPositive tailProductEquality
      have tailEquality : left.2 = right.2 :=
        inductionHypothesis
          (fun value member => positive value (by simp [member]))
          tailCodeEquality
      exact Prod.ext headSubtypeEquality tailEquality

theorem mixedRadix_lt_cardinality
    {radices : List Nat}
    (coordinate : CoordinateFiber radices) :
    mixedRadix coordinate < cardinality radices := by
  induction radices with
  | nil =>
      cases coordinate
      simp [mixedRadix, cardinality]
  | cons radix tail inductionHypothesis =>
      have headBound : coordinate.1.val < radix := coordinate.1.isLt
      have tailBound : mixedRadix coordinate.2 < cardinality tail :=
        inductionHypothesis coordinate.2
      calc
        mixedRadix coordinate =
            coordinate.1.val + radix * mixedRadix coordinate.2 := rfl
        _ < radix + radix * mixedRadix coordinate.2 :=
          Nat.add_lt_add_right headBound _
        _ = radix * (mixedRadix coordinate.2 + 1) := by
          rw [Nat.mul_add, Nat.mul_one, Nat.add_comm]
        _ ≤ radix * cardinality tail :=
          Nat.mul_le_mul_left radix (Nat.succ_le_iff.mpr tailBound)
        _ = cardinality (radix :: tail) := rfl

/-- Exact documented mixed-radix equivalence for any nonempty-axis list. -/
noncomputable def mixedRadixEquiv
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix) :
    CoordinateFiber radices ≃ Fin (cardinality radices) where
  toFun coordinate := ⟨mixedRadix coordinate, mixedRadix_lt_cardinality coordinate⟩
  invFun index := ofNat radices positive index.val
  left_inv coordinate := by
    apply mixedRadix_injective radices positive
    exact mixedRadix_ofNat radices positive
      (mixedRadix coordinate) (mixedRadix_lt_cardinality coordinate)
  right_inv index := by
    apply Fin.ext
    exact mixedRadix_ofNat radices positive index.val index.isLt

@[simp]
theorem mixedRadixEquiv_apply
    (radices : List Nat)
    (positive : ∀ radix ∈ radices, 0 < radix)
    (coordinate : CoordinateFiber radices) :
    (mixedRadixEquiv radices positive coordinate).val = mixedRadix coordinate :=
  rfl

end CoordinateFiber

namespace CantorCode

/-- Triangular numbers, used to reason about the displayed Cantor formula. -/
def triangular (diagonal : Nat) : Nat :=
  ∑ index ∈ Finset.range (diagonal + 1), index

theorem triangular_formula (diagonal : Nat) :
    triangular diagonal = diagonal * (diagonal + 1) / 2 := by
  rw [triangular, Finset.sum_range_id]
  simp only [Nat.add_sub_cancel]
  rw [Nat.mul_comm]

theorem triangular_succ (diagonal : Nat) :
    triangular (diagonal + 1) = triangular diagonal + diagonal + 1 := by
  simp [triangular, Finset.sum_range_succ, Nat.add_assoc]

theorem triangular_strictMono : StrictMono triangular :=
  strictMono_nat_of_lt_succ (fun diagonal => by
    rw [triangular_succ]
    omega)

theorem pair_eq_triangular (left right : Nat) :
    cantorPair left right = triangular (left + right) + right := by
  rw [cantorPair, triangular_formula]

theorem pair_lower (left right : Nat) :
    triangular (left + right) ≤ cantorPair left right := by
  rw [pair_eq_triangular]
  omega

theorem pair_upper (left right : Nat) :
    cantorPair left right < triangular (left + right + 1) := by
  rw [pair_eq_triangular, triangular_succ]
  omega

theorem pair_injective : Function.Injective (fun pair : Nat × Nat =>
    cantorPair pair.1 pair.2) := by
  intro left right equality
  change cantorPair left.1 left.2 = cantorPair right.1 right.2 at equality
  have diagonalEquality : left.1 + left.2 = right.1 + right.2 := by
    by_contra different
    rcases lt_or_gt_of_ne different with less | greater
    · have step : left.1 + left.2 + 1 ≤ right.1 + right.2 := by omega
      have triangleOrder :
          triangular (left.1 + left.2 + 1) ≤
            triangular (right.1 + right.2) :=
        triangular_strictMono.monotone step
      have leftUpper := pair_upper left.1 left.2
      have rightLower := pair_lower right.1 right.2
      omega
    · have step : right.1 + right.2 + 1 ≤ left.1 + left.2 := by omega
      have triangleOrder :
          triangular (right.1 + right.2 + 1) ≤
            triangular (left.1 + left.2) :=
        triangular_strictMono.monotone step
      have leftLower := pair_lower left.1 left.2
      have rightUpper := pair_upper right.1 right.2
      omega
  have secondEquality : left.2 = right.2 := by
    rw [pair_eq_triangular, pair_eq_triangular, diagonalEquality] at equality
    omega
  exact Prod.ext (by omega) secondEquality

theorem pair_injective₂ {a b c d : Nat}
    (equality : cantorPair a b = cantorPair c d) :
    a = c ∧ b = d := by
  have pairEquality : (a, b) = (c, d) := by
    apply pair_injective
    exact equality
  exact Prod.ext_iff.mp pairEquality

end CantorCode

theorem finiteSequenceCode_injective : Function.Injective finiteSequenceCode := by
  intro left
  induction left with
  | nil =>
      intro right equality
      cases right with
      | nil => rfl
      | cons head tail =>
          simp only [finiteSequenceCode] at equality
          omega
  | cons head tail inductionHypothesis =>
      intro right equality
      cases right with
      | nil =>
          simp only [finiteSequenceCode] at equality
          omega
      | cons otherHead otherTail =>
          simp only [finiteSequenceCode] at equality
          have paired := Nat.add_left_cancel equality
          have parts := CantorCode.pair_injective₂ paired
          congr
          · exact parts.1
          · exact inductionHypothesis parts.2

theorem specificationCode_injective : Function.Injective specificationCode := by
  intro left right equality
  have parts := CantorCode.pair_injective₂ equality
  apply SequentialPrimeSpecification.ext parts.1
  exact finiteSequenceCode_injective parts.2

/-- One fully validated address of the documented countable carrier. -/
structure SequentialPrimeCarrierAddress where
  occurrence : Nat
  specification : SequentialPrimeSpecification
  coordinate : CoordinateFiber specification.axisCardinalities

namespace SequentialPrimeCarrierAddress

@[ext]
theorem ext
    {left right : SequentialPrimeCarrierAddress}
    (occurrence : left.occurrence = right.occurrence)
    (specification : left.specification = right.specification)
    (coordinate : HEq left.coordinate right.coordinate) :
    left = right := by
  cases left
  cases right
  cases occurrence
  cases specification
  cases coordinate
  rfl

/-- The exact nested address formula from the project specification. -/
noncomputable def code (address : SequentialPrimeCarrierAddress) : Nat :=
  cantorPair address.occurrence
    (cantorPair (specificationCode address.specification)
      (CoordinateFiber.mixedRadix address.coordinate))

theorem code_injective : Function.Injective code := by
  intro left right equality
  have outer := CantorCode.pair_injective₂ equality
  have inner := CantorCode.pair_injective₂ outer.2
  have specificationEquality : left.specification = right.specification :=
    specificationCode_injective inner.1
  cases left with
  | mk leftOccurrence leftSpecification leftCoordinate =>
      cases right with
      | mk rightOccurrence rightSpecification rightCoordinate =>
          dsimp only at outer inner specificationEquality
          cases outer.1
          cases specificationEquality
          have coordinateEquality : leftCoordinate = rightCoordinate :=
            CoordinateFiber.mixedRadix_injective
              leftSpecification.axisCardinalities
              (fun radix member =>
                leftSpecification.axisCardinalities_positive member)
              inner.2
          cases coordinateEquality
          rfl

/-- A concrete admissible one-axis specification used to witness infinitude. -/
def unitSpecification : SequentialPrimeSpecification where
  start := 0
  multiplicities := [1]
  nonempty := by simp
  admissible := by simp

/-- Its zero coordinate, defined from primality rather than a numeric reduction. -/
noncomputable def unitCoordinate :
    CoordinateFiber unitSpecification.axisCardinalities :=
  CoordinateFiber.zero unitSpecification.axisCardinalities
    (fun _ member => unitSpecification.axisCardinalities_positive member)

/-- Varying occurrence yields an injection into the full carrier. -/
noncomputable def occurrenceEmbedding : Nat ↪ SequentialPrimeCarrierAddress where
  toFun occurrence := ⟨occurrence, unitSpecification, unitCoordinate⟩
  inj' := by
    intro left right equality
    exact congrArg occurrence equality

/-- The exact image `V = Image(addr)` of valid sequential-prime addresses. -/
def AddressImage : Set Nat := Set.range code

theorem addressImage_infinite : AddressImage.Infinite := by
  have occurrenceRange : (Set.range (code ∘ occurrenceEmbedding)).Infinite :=
    Set.infinite_range_of_injective (code_injective.comp occurrenceEmbedding.injective)
  exact occurrenceRange.mono (by
    rintro value ⟨occurrence, rfl⟩
    exact ⟨occurrenceEmbedding occurrence, rfl⟩)

noncomputable local instance : Infinite AddressImage :=
  addressImage_infinite.to_subtype

/-- Increasing enumeration of the valid address-code image. -/
noncomputable def increasingImageEnumeration : Nat ≃o AddressImage :=
  Nat.Subtype.orderIsoOfNat AddressImage

theorem increasingImageEnumeration_coe (index : Nat) :
    (increasingImageEnumeration index : Nat) =
      Nat.nth (fun value => value ∈ AddressImage) index := by
  have equality := congrFun
    (Nat.nth_eq_orderIsoOfNat
      (p := fun value => value ∈ AddressImage) addressImage_infinite) index
  exact equality.symm

/-- The increasing image enumeration, decoded back to exact carrier data. -/
noncomputable def filteredEnumeration : Nat ≃ SequentialPrimeCarrierAddress :=
  increasingImageEnumeration.toEquiv.trans
    (Equiv.ofInjective code code_injective).symm

@[simp]
theorem code_filteredEnumeration (index : Nat) :
    code (filteredEnumeration index) = increasingImageEnumeration index := by
  change code ((Equiv.ofInjective code code_injective).symm
    (increasingImageEnumeration index)) = _
  have restored := (Equiv.ofInjective code code_injective).apply_symm_apply
    (increasingImageEnumeration index)
  exact congrArg Subtype.val restored

/-- The documented filtered increasing address enumeration `ε`. -/
noncomputable def canonicalEnumeration :
    AddressEnumeration SequentialPrimeCarrierAddress where
  enumerate := filteredEnumeration
  code := code
  codeInjective := code_injective
  canonicalOrder := by
    intro left right
    rw [code_filteredEnumeration, code_filteredEnumeration]
    exact increasingImageEnumeration.lt_iff_lt.symm

@[simp]
theorem code_canonicalEnumeration (index : Nat) :
    code (canonicalEnumeration.enumerate index) =
      increasingImageEnumeration index := by
  exact code_filteredEnumeration index

theorem canonicalEnumeration_code_mem (index : Nat) :
    canonicalEnumeration.code (canonicalEnumeration.enumerate index) ∈ AddressImage := by
  change code (canonicalEnumeration.enumerate index) ∈ AddressImage
  rw [code_canonicalEnumeration]
  exact (increasingImageEnumeration index).property

theorem canonicalEnumeration_increasing :
    StrictMono (fun index =>
      canonicalEnumeration.code (canonicalEnumeration.enumerate index)) := by
  intro left right less
  exact (canonicalEnumeration.canonicalOrder left right).mp less

/-- Number of valid address codes strictly below a selected bound. -/
noncomputable def addressImageCount (bound : Nat) : Nat := by
  classical
  exact Nat.count (fun value => value ∈ AddressImage) bound

theorem canonicalEnumeration_inverse_count (address : SequentialPrimeCarrierAddress) :
    canonicalEnumeration.enumerate.symm address =
      addressImageCount (code address) := by
  classical
  unfold addressImageCount
  apply canonicalEnumeration.enumerate.injective
  simp only [Equiv.apply_symm_apply]
  apply code_injective
  rw [code_canonicalEnumeration]
  rw [increasingImageEnumeration_coe]
  exact (Nat.nth_count ⟨address, rfl⟩).symm

end SequentialPrimeCarrierAddress

end BitMatrix.Carrier
```
