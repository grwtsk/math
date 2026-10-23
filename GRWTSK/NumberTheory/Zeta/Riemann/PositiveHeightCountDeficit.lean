/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ContourCountDeficit
import GRWTSK.NumberTheory.Zeta.Riemann.QuartetBandDeficit
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin

set_option autoImplicit false

/-!
# Positive-height canonical counts and a standard N(T)-style deficit criterion

The repository's complete height count uses absolute height and therefore carries both signs.
Standard zero-count theorems are usually normalized on positive height. This file defines that
positive-height head directly from the EXISTING canonical zero divisor:

  0 < Im(rho) <= T.

No new zero predicate, multiplicity, or external list is introduced.

Critical reflection preserves positive imaginary height, so an off-line positive-height zero and
its reflected partner consume at least two positive multiplicity units. A known on-line subset
with lower credit C and an independently proved complete positive-height upper count U therefore
exclude every off-line positive-height zero when U < C + 2.

The existing source-derived Mellin theorem excludes nontrivial zeros on the real axis. Negative-
height zeros are transported by exact conjugation to the positive side, preserving the real
coordinate. Thus the positive-height criterion yields the repository's absolute-height RHThrough
conclusion without a separate height-zero premise. No equality of multiplicities under conjugation
or reflection is assumed.

This is an interface for an eventual Turing/argument-principle supplier such as issue #135.
It does not provide that analytic supplier, a SourceAcceptance proof, an exact count, or RH.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Classical imported dependencies remain unaudited.
-/

namespace GRWTSK.RiemannHypothesis.PositiveHeightCountDeficit

open Set
open CanonicalZeroDivisor
open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.Combinatorics.WeightedInventoryDeficit
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
open ContourCountDeficit
open scoped BigOperators ComplexConjugate

noncomputable section

/-- Exact positive-height projection of the existing complete absolute-height head. -/
def positiveHeightHead (T : ℝ) : Finset ZeroPoint := by
  classical
  exact (heightHead T).filter (fun z => 0 < z.1.im)

/-- Standard positive-height multiplicity count in the repository's source convention. -/
def positiveHeightCount (T : ℝ) : ℕ :=
  mass (positiveHeightHead T) multiplicity

@[simp] theorem mem_positiveHeightHead (T : ℝ) (z : ZeroPoint) :
    z ∈ positiveHeightHead T ↔ 0 < z.1.im ∧ z.1.im ≤ T := by
  classical
  constructor
  · intro hz
    rcases Finset.mem_filter.mp hz with ⟨headMember, positive⟩
    have heightBound := (mem_heightHead T z).mp headMember
    exact ⟨positive, by
      simpa only [height, abs_of_pos positive] using heightBound⟩
  · rintro ⟨positive, upper⟩
    apply Finset.mem_filter.mpr
    refine ⟨(mem_heightHead T z).mpr ?_, positive⟩
    simpa only [height, abs_of_pos positive] using upper

/-- This is a projection of the existing complete head, not a competing divisor. -/
theorem positiveHeightHead_subset_heightHead (T : ℝ) :
    positiveHeightHead T ⊆ heightHead T := by
  intro z hz
  exact (Finset.mem_filter.mp hz).1

/-- The positive-height count cannot exceed the existing both-sign multiplicity count. -/
theorem positiveHeightCount_le_heightCount (T : ℝ) :
    positiveHeightCount T ≤ heightCount T := by
  classical
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (positiveHeightHead_subset_heightHead T)
    (fun z _ _ => Nat.zero_le (multiplicity z))

/-- Critical reflection preserves the positive-height source convention exactly. -/
theorem reflected_mem_positiveHeightHead (T : ℝ) (z : ZeroPoint)
    (member : z ∈ positiveHeightHead T) :
    reflected z ∈ positiveHeightHead T := by
  rcases (mem_positiveHeightHead T z).mp member with ⟨positive, upper⟩
  apply (mem_positiveHeightHead T (reflected z)).mpr
  simpa [reflected, criticalReflection] using And.intro positive upper

/-- An off-line point and its reflected partner are absent from any on-line known inventory. -/
theorem off_line_pair_missing_positive (known : Finset ZeroPoint) (z : ZeroPoint)
    (knownOnLine : ∀ w ∈ known, w.1.re = 1 / 2)
    (offLine : z.1.re ≠ 1 / 2) :
    z ∉ known ∧ reflected z ∉ known :=
  off_line_pair_missing known z knownOnLine offLine

/-- Fewer than two uncredited positive-height multiplicity units exclude an off-line pair.
The known inventory need not be complete. -/
theorem all_on_line_of_positive_credit (T : ℝ) (known : Finset ZeroPoint)
    (credit upper : ℕ)
    (knownSubset : known ⊆ positiveHeightHead T)
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : positiveHeightCount T ≤ upper)
    (strict : upper < credit + 2) :
    ∀ z ∈ positiveHeightHead T, z.1.re = 1 / 2 := by
  classical
  intro z member
  by_contra offLine
  have missing := off_line_pair_missing_positive known z knownOnLine offLine
  have reflectedMember := reflected_mem_positiveHeightHead T z member
  have leftLower : 1 ≤ multiplicity z := multiplicity_pos z
  have rightLower : 1 ≤ multiplicity (reflected z) := multiplicity_pos (reflected z)
  change mass (positiveHeightHead T) multiplicity ≤ upper at countUpper
  exact no_room_for_unrecorded_pair (positiveHeightHead T) known multiplicity knownSubset
    z (reflected z) member reflectedMember missing.1 missing.2
    (distinct_of_off_line z offLine) credit 1 1 upper
    creditLower leftLower rightLower countUpper (by omega)

/-- The sourced Mellin argument already discharges the height-zero base case. -/
theorem rhThrough_zero : RHThrough 0 := by
  intro s zero heightBound
  have habs : |s.im| = 0 :=
    le_antisymm (by simpa using heightBound) (abs_nonneg s.im)
  have him : s.im = 0 := abs_eq_zero.mp habs
  exact False.elim
    (CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero zero him)

/-- Canonical conjugation moves a negative-height zero to positive height without changing real part. -/
def conjugated (z : ZeroPoint) : ZeroPoint :=
  ⟨zeroConjugate z.1, z.2.conjugate⟩

@[simp] theorem conjugated_re (z : ZeroPoint) : (conjugated z).1.re = z.1.re := by
  simp [conjugated, zeroConjugate]

@[simp] theorem conjugated_im (z : ZeroPoint) : (conjugated z).1.im = -z.1.im := by
  simp [conjugated, zeroConjugate]

@[simp] theorem conjugated_involutive (z : ZeroPoint) : conjugated (conjugated z) = z := by
  apply Subtype.ext
  simp [conjugated, zeroConjugate]

/-- Conjugation is injective because it is an involution on the canonical source points. -/
theorem conjugated_injective : Function.Injective conjugated :=
  conjugated_involutive.injective

/-- A negative-height source point through T transports into the positive-height head at T. -/
theorem conjugated_mem_positiveHeightHead {T : ℝ} (z : ZeroPoint)
    (negative : z.1.im < 0) (heightBound : height z ≤ T) :
    conjugated z ∈ positiveHeightHead T := by
  apply (mem_positiveHeightHead T (conjugated z)).mpr
  constructor
  · simpa only [conjugated_im] using (neg_pos.mpr negative)
  · have habs : |z.1.im| = -z.1.im := abs_of_neg negative
    simpa only [height, conjugated_im, habs] using heightBound

/-- Standard positive-height counts imply the repository's absolute-height conclusion.
Height zero is excluded by the sourced Mellin theorem; negative height is transported by conjugation. -/
theorem rhThrough_of_positive_credit (N : ℕ)
    (known : Finset ZeroPoint) (credit upper : ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : positiveHeightCount (N : ℝ) ≤ upper)
    (strict : upper < credit + 2) : RHThrough N := by
  have positiveOnLine := all_on_line_of_positive_credit (N : ℝ) known credit upper
    knownSubset knownOnLine creditLower countUpper strict
  intro s zero heightBound
  by_cases zeroHeight : s.im = 0
  · exact False.elim
      (CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero zero zeroHeight)
  by_cases positive : 0 < s.im
  · let z : ZeroPoint := ⟨s, zero⟩
    have member : z ∈ positiveHeightHead (N : ℝ) := by
      apply (mem_positiveHeightHead (N : ℝ) z).mpr
      constructor
      · exact positive
      · have absEq : |s.im| = s.im := abs_of_pos positive
        simpa only [absEq] using heightBound
    exact positiveOnLine z member
  · have negative : s.im < 0 := lt_of_le_of_ne (le_of_not_gt positive) zeroHeight
    let z : ZeroPoint := ⟨s, zero⟩
    have member : conjugated z ∈ positiveHeightHead (N : ℝ) := by
      apply conjugated_mem_positiveHeightHead z negative
      exact heightBound
    have line := positiveOnLine (conjugated z) member
    simpa only [conjugated_re] using line

/-- Per-root lower multiplicity credits specialize the same criterion. -/
theorem rhThrough_of_positive_weighted_inventory (N : ℕ)
    (known : Finset ZeroPoint) (lower : ZeroPoint → ℕ) (upper : ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (lowerBound : ∀ z ∈ known, lower z ≤ multiplicity z)
    (countUpper : positiveHeightCount (N : ℝ) ≤ upper)
    (strict : upper < (∑ z ∈ known, lower z) + 2) : RHThrough N := by
  apply rhThrough_of_positive_credit N known (∑ z ∈ known, lower z) upper
    knownSubset knownOnLine ?_ countUpper strict
  exact Finset.sum_le_sum (fun z hz => lowerBound z hz)

/-- An all-height positive-count supplier would imply RH, but no supplier is constructed here.
Existentials are eliminated separately at each N; no global root inventory is selected. -/
theorem riemannHypothesis_of_positive_count_credits
    (supplier : ∀ N : ℕ, ∃ (known : Finset ZeroPoint) (credit upper : ℕ),
      known ⊆ positiveHeightHead (N : ℝ) ∧
      (∀ z ∈ known, z.1.re = 1 / 2) ∧
      credit ≤ mass known multiplicity ∧
      positiveHeightCount (N : ℝ) ≤ upper ∧
      upper < credit + 2) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_iff_all_heights.mpr
  intro N
  obtain ⟨known, credit, upper, subset, onLine, creditLower, countUpper, strict⟩ := supplier N
  exact rhThrough_of_positive_credit N known credit upper
    subset onLine creditLower countUpper strict

/-- Positive-height counting does not include the real axis by definition. -/
theorem zero_height_not_mem_positive_fixture (T : ℝ) (nonnegative : 0 ≤ T) :
    ¬ ((0 : ℂ).im > 0 ∧ (0 : ℂ).im ≤ T) := by simp

/-- Conjugation transports a negative imaginary coordinate to the matching positive one. -/
theorem negative_height_transport_fixture :
    (zeroConjugate (1 / 4 - Complex.I : ℂ)).im = 1 := by
  norm_num [zeroConjugate]

end

end GRWTSK.RiemannHypothesis.PositiveHeightCountDeficit
