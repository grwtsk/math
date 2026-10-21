/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCoarseCount
import GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier

set_option autoImplicit false

/-!
# Exact two-sign decomposition and a halved coarse positive-height count

The canonical absolute-height head contains both height signs. The sourced Mellin theorem excludes
height zero. Conjugation is an involution between the positive and negative heads, and the existing
analytic-order transport theorem proves equality of their actual zeta multiplicities. Therefore

  heightCount T = 2 * positiveHeightCount T.

This is an exact identity of the maintained canonical divisor, not a heuristic halving of a zero
asymptotic or an assumption that external records occur in pairs.

The identity legitimately halves the repository's existing both-sign Jensen upper bound. The
resulting natural upper is obtained by dividing the full real bound by two and rounding UP. It is
still coarse, retains half of the low-head contribution inside the ceiling, and supplies no exact
Turing count or passing credit margin.

All conclusions remain source-only and conditional on the imported unelaborated proof scripts.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Classical dependency closure remains unaudited.
-/

namespace GRWTSK.RiemannHypothesis.PositiveHeightSymmetricCount

open Set Metric
open scoped BigOperators ComplexConjugate
open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open PositiveHeightCoarseCount
open CanonicalHighCounting
open CanonicalLocalZeroContour
open ContourCountDeficit
open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier

noncomputable section

/-- Exact negative-height projection of the same canonical absolute-height head. -/
def negativeHeightHead (T : ℝ) : Finset ZeroPoint := by
  classical
  exact (heightHead T).filter (fun z => z.1.im < 0)

/-- Canonical multiplicity count on the negative-height half. -/
def negativeHeightCount (T : ℝ) : ℕ :=
  mass (negativeHeightHead T) multiplicity

@[simp] theorem mem_negativeHeightHead (T : ℝ) (z : ZeroPoint) :
    z ∈ negativeHeightHead T ↔ z.1.im < 0 ∧ -z.1.im ≤ T := by
  classical
  constructor
  · intro hz
    rcases Finset.mem_filter.mp hz with ⟨headMember, negative⟩
    have heightBound := (mem_heightHead T z).mp headMember
    exact ⟨negative, by
      simpa only [height, abs_of_neg negative] using heightBound⟩
  · rintro ⟨negative, upper⟩
    apply Finset.mem_filter.mpr
    refine ⟨(mem_heightHead T z).mpr ?_, negative⟩
    simpa only [height, abs_of_neg negative] using upper

/-- Conjugation transports the actual analytic order before conversion to natural multiplicity. -/
@[simp] theorem multiplicity_conjugated (z : ZeroPoint) :
    multiplicity (conjugated z) = multiplicity z := by
  change (analyticOrderAt riemannZeta (conj z.1)).toNat =
    (analyticOrderAt riemannZeta z.1).toNat
  exact congrArg (fun n : ℕ∞ => n.toNat) (zeta_order_conjugate z)

/-- Positive height maps to negative height with the same closed upper endpoint. -/
theorem conjugated_mem_negativeHeightHead (T : ℝ) (z : ZeroPoint)
    (member : z ∈ positiveHeightHead T) :
    conjugated z ∈ negativeHeightHead T := by
  rcases (mem_positiveHeightHead T z).mp member with ⟨positive, upper⟩
  apply (mem_negativeHeightHead T (conjugated z)).mpr
  constructor
  · simpa only [conjugated_im] using (neg_lt_zero.mpr positive)
  · simpa only [conjugated_im, neg_neg] using upper

/-- Negative height maps back to positive height with the same endpoint. -/
theorem conjugated_mem_positiveHeightHead_of_negative (T : ℝ) (z : ZeroPoint)
    (member : z ∈ negativeHeightHead T) :
    conjugated z ∈ positiveHeightHead T := by
  rcases (mem_negativeHeightHead T z).mp member with ⟨negative, upper⟩
  apply (mem_positiveHeightHead T (conjugated z)).mpr
  constructor
  · simpa only [conjugated_im] using (neg_pos.mpr negative)
  · simpa only [conjugated_im] using upper

/-- The negative head is exactly the conjugate image of the positive head. -/
theorem image_positiveHeightHead_eq_negativeHeightHead (T : ℝ) :
    (positiveHeightHead T).image conjugated = negativeHeightHead T := by
  classical
  ext z
  constructor
  · intro hz
    obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hz
    exact conjugated_mem_negativeHeightHead T w hw
  · intro hz
    have hpos := conjugated_mem_positiveHeightHead_of_negative T z hz
    exact Finset.mem_image.mpr ⟨conjugated z, hpos, conjugated_involutive z⟩

/-- Conjugation preserves the complete multiplicity mass of either height sign. -/
theorem negativeHeightCount_eq_positiveHeightCount (T : ℝ) :
    negativeHeightCount T = positiveHeightCount T := by
  classical
  rw [negativeHeightCount, positiveHeightCount,
    ← image_positiveHeightHead_eq_negativeHeightHead]
  unfold mass
  rw [Finset.sum_image conjugated_injective.injOn]
  exact Finset.sum_congr rfl (fun z _ => multiplicity_conjugated z)

/-- Positive and negative heads are disjoint by their strict sign conventions. -/
theorem positive_negative_disjoint (T : ℝ) :
    Disjoint (positiveHeightHead T) (negativeHeightHead T) := by
  apply Finset.disjoint_left.mpr
  intro z hp hn
  have positive := ((mem_positiveHeightHead T z).mp hp).1
  have negative := ((mem_negativeHeightHead T z).mp hn).1
  linarith

/-- The sourced real-axis theorem makes the two strict-sign heads exhaustive. -/
theorem positive_union_negative_eq_heightHead (T : ℝ) :
    positiveHeightHead T ∪ negativeHeightHead T = heightHead T := by
  classical
  ext z
  constructor
  · intro hz
    rcases Finset.mem_union.mp hz with hp | hn
    · rcases (mem_positiveHeightHead T z).mp hp with ⟨positive, upper⟩
      apply (mem_heightHead T z).mpr
      simpa only [height, abs_of_pos positive] using upper
    · rcases (mem_negativeHeightHead T z).mp hn with ⟨negative, upper⟩
      apply (mem_heightHead T z).mpr
      simpa only [height, abs_of_neg negative] using upper
  · intro hz
    have heightBound := (mem_heightHead T z).mp hz
    have nonzero := CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero z.2
    by_cases positive : 0 < z.1.im
    · apply Finset.mem_union.mpr
      left
      apply (mem_positiveHeightHead T z).mpr
      exact ⟨positive, by
        simpa only [height, abs_of_pos positive] using heightBound⟩
    · have negative : z.1.im < 0 :=
        lt_of_le_of_ne (le_of_not_gt positive) nonzero
      apply Finset.mem_union.mpr
      right
      apply (mem_negativeHeightHead T z).mpr
      exact ⟨negative, by
        simpa only [height, abs_of_neg negative] using heightBound⟩

/-- Exact conversion between the repository's both-sign count and standard positive-height count. -/
theorem heightCount_eq_two_mul_positiveHeightCount (T : ℝ) :
    heightCount T = 2 * positiveHeightCount T := by
  classical
  calc
    heightCount T = positiveHeightCount T + negativeHeightCount T := by
      unfold heightCount positiveHeightCount negativeHeightCount mass
      rw [← positive_union_negative_eq_heightHead T,
        Finset.sum_union (positive_negative_disjoint T)]
    _ = 2 * positiveHeightCount T := by
      rw [negativeHeightCount_eq_positiveHeightCount]
      omega

/-- In particular every complete absolute-height multiplicity count is even. -/
theorem heightCount_even (T : ℝ) : Even (heightCount T) := by
  refine ⟨positiveHeightCount T, ?_⟩
  simpa only [two_mul] using heightCount_eq_two_mul_positiveHeightCount T

/-- Upward-rounded half of the existing complete-head Jensen upper. -/
def symmetricCoarsePositiveUpper (N : ℕ) : ℕ :=
  ⌈((heightCount 2 : ℝ) +
      countingCoefficient * ((N : ℝ) * Real.log (N : ℝ))) / 2⌉₊

/-- The halved real bound is rounded upward before use as a natural count. -/
theorem halfCoarseTerm_le_symmetricUpper (N : ℕ) :
    ((heightCount 2 : ℝ) +
      countingCoefficient * ((N : ℝ) * Real.log (N : ℝ))) / 2 ≤
      (symmetricCoarsePositiveUpper N : ℝ) := by
  simpa only [symmetricCoarsePositiveUpper] using
    (Nat.le_ceil (((heightCount 2 : ℝ) +
      countingCoefficient * ((N : ℝ) * Real.log (N : ℝ))) / 2))

/-- Exact conjugate pairing legitimately halves the old both-sign coarse bound. -/
theorem positiveHeightCount_le_symmetricCoarseUpper (N : ℕ) (hN : 2 ≤ N) :
    positiveHeightCount (N : ℝ) ≤ symmetricCoarsePositiveUpper N := by
  have hNreal : (2 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have htotal := heightCount_le_low_add (N : ℝ) hNreal
  have hsym : (heightCount (N : ℝ) : ℝ) =
      2 * (positiveHeightCount (N : ℝ) : ℝ) := by
    exact_mod_cast heightCount_eq_two_mul_positiveHeightCount (N : ℝ)
  have hhalf : (positiveHeightCount (N : ℝ) : ℝ) ≤
      ((heightCount 2 : ℝ) +
        countingCoefficient * ((N : ℝ) * Real.log (N : ℝ))) / 2 := by
    rw [hsym] at htotal
    linarith
  have hcast : (positiveHeightCount (N : ℝ) : ℝ) ≤
      (symmetricCoarsePositiveUpper N : ℝ) :=
    hhalf.trans (halfCoarseTerm_le_symmetricUpper N)
  exact_mod_cast hcast

/-- The symmetry-improved coarse upper feeds the reflected-pair contradiction. -/
theorem rhThrough_of_symmetric_coarse_credit (N : ℕ) (hN : 2 ≤ N)
    (known : Finset ZeroPoint) (credit : ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (strict : symmetricCoarsePositiveUpper N < credit + 2) : RHThrough N := by
  exact rhThrough_of_positive_credit N known credit (symmetricCoarsePositiveUpper N)
    knownSubset knownOnLine creditLower
    (positiveHeightCount_le_symmetricCoarseUpper N hN) strict

/-- Per-root lower multiplicity credits specialize the symmetry-improved criterion. -/
theorem rhThrough_of_symmetric_coarse_weighted_inventory (N : ℕ) (hN : 2 ≤ N)
    (known : Finset ZeroPoint) (lower : ZeroPoint → ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (lowerBound : ∀ z ∈ known, lower z ≤ multiplicity z)
    (strict : symmetricCoarsePositiveUpper N < (∑ z ∈ known, lower z) + 2) :
    RHThrough N := by
  exact rhThrough_of_positive_weighted_inventory N known lower
    (symmetricCoarsePositiveUpper N) knownSubset knownOnLine lowerBound
    (positiveHeightCount_le_symmetricCoarseUpper N hN) strict

/-- Multiplicity-correct isolated contours can supply the same symmetry-improved credits. -/
theorem rhThrough_of_symmetric_coarse_local_contours (N : ℕ) (hN : 2 ≤ N)
    (known : Finset ZeroPoint)
    (center : ZeroPoint → ℂ) (radius : ZeroPoint → ℝ)
    (lower : ZeroPoint → ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (centered : ∀ z ∈ known, (center z).re = 1 / 2)
    (analytic : ∀ z ∈ known,
      AnalyticOnNhd ℂ riemannZeta (closedBall (center z) (radius z)))
    (inside : ∀ z ∈ known, z.1 ∈ ball (center z) (radius z))
    (isolated : ∀ z ∈ known, ∀ w ∈ closedBall (center z) (radius z),
      riemannZeta w = 0 → w = z.1)
    (contourLower : ∀ z ∈ known, (lower z : ℝ) ≤
      ((2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        (∮ w in C(center z, radius z), deriv riemannZeta w / riemannZeta w)).re)
    (strict : symmetricCoarsePositiveUpper N < (∑ z ∈ known, lower z) + 2) :
    RHThrough N := by
  apply rhThrough_of_symmetric_coarse_weighted_inventory N hN known lower knownSubset ?_ ?_ strict
  · intro z hz
    exact (centered_isolated_zero_geometry z (center z) (radius z) (centered z hz)
      (analytic z hz) (inside z hz) (isolated z hz)).1
  · intro z hz
    exact contour_credit_le_multiplicity z (center z) (radius z) (lower z)
      (analytic z hz) (inside z hz) (isolated z hz) (contourLower z hz)

/-- An all-height symmetry-improved credit supplier would imply RH.
Each target uses max(N,2); no global inventory family is selected. -/
theorem riemannHypothesis_of_symmetric_coarse_credits
    (supplier : ∀ M : ℕ, 2 ≤ M →
      ∃ (known : Finset ZeroPoint) (credit : ℕ),
        known ⊆ positiveHeightHead (M : ℝ) ∧
        (∀ z ∈ known, z.1.re = 1 / 2) ∧
        credit ≤ mass known multiplicity ∧
        symmetricCoarsePositiveUpper M < credit + 2) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_iff_all_heights.mpr
  intro N
  let M := max N 2
  have hNM : N ≤ M := le_max_left N 2
  have hM2 : 2 ≤ M := le_max_right N 2
  obtain ⟨known, credit, subset, onLine, creditLower, strict⟩ := supplier M hM2
  have hM : RHThrough M := rhThrough_of_symmetric_coarse_credit M hM2
    known credit subset onLine creditLower strict
  exact hM.mono hNM

/-- Equality at the symmetry-improved two-unit margin is still insufficient. -/
theorem symmetric_nonstrict_margin_fixture (credit : ℕ) :
    ¬ credit + 2 < credit + 2 := by omega

end

end GRWTSK.RiemannHypothesis.PositiveHeightSymmetricCount
