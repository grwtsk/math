/-
Dependent valid addresses and exact increasing image enumeration
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c
Organized SHA-256: 8b26a214146396c3bca993b027ce70c07fd75d180e9923ee158928caab86f407
PMD: 510.0.010.030.010 cardinal arithmetic (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Original namespace blocks are retained exactly for imported-type extension/field lookup; no containing namespace is changed in this output and no GRWTSK alias is fabricated. Isolated uncompiled historical declarations must not be coimported with another full copy/version. This is pure supplied mathematics, not a source/runtime acceptance or foreign provider construction. -/

import GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeCoordinateAxes.Variante097301879a07848.AxisExpansion
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.FamilyExamples.FiniteIndexTypes.MixedRadixCoordinateFibers.Variante097301879a07848.FiniteProductEquivalence
import GRWTSK.NumberTheory.ElementaryNumberTheory.NaturalSequencePairingCodes.Variante097301879a07848.CantorAndSequenceInjectivity

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
