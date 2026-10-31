/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupDyadicEndpoint
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Reflect the ACTUAL signed dyadic birth source without losing a cell

A natural-index reflection is a finite involutive REINDEXING of the exact
birthExpression coefficients already supplied by PickupDyadicEndpoint.
It does not assert that birth pairs are individually symmetric, negative,
prime-preserving, or more cancellative than the original source. Both input
births, their five moments, signs, diagonal subtraction and complete range
remain inside the unaltered original arithmetic function.

The one-sided bound below is preferable to prematurely taking absolute
values: a future number-theoretic supplier may derive local signed upper
bounds on the original paired values. Such a supplier is OPEN. The
absolute-value bound is separately retained for hostile comparison.
No RH theorem, asymptotic gain or analytic error interpolation is claimed.
-/

namespace GRWTSK.NumberTheory.Moebius.PickupSignedRotation

open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

/-- Exact number of positive full births at dyadic height j. -/
def birthCount (j : ℕ) : ℕ := 2 ^ j - 1

/-- Involution candidate on the exact finite range; its domain matters.
The finite sum never evaluates an out-of-range index. -/
def reflectedBirthIndex (j k : ℕ) : ℕ :=
  birthCount j - 1 - k

/-- The fully original signed source value, not a randomized or positive model. -/
def sourceBirth (k : ℕ) : ℝ := birthExpression (k + 1)

/-- Pair both original source coordinates. This is only a rotation of their
positions, not an assertion that the two signed values are equal. -/
def pairedBirth (j k : ℕ) : ℝ :=
  sourceBirth k + sourceBirth (reflectedBirthIndex j k)

/-- The reflected full sum is the same original arithmetic source sum.
This handles j=0 (empty) and j=1 (singleton) without new cases. -/
theorem reflected_source_sum (j : ℕ) :
    (∑ k ∈ Finset.range (birthCount j),
      sourceBirth (reflectedBirthIndex j k)) = dyadicBirthSum j := by
  change (∑ k ∈ Finset.range (birthCount j),
      sourceBirth (birthCount j - 1 - k)) =
        ∑ k ∈ Finset.range (birthCount j), sourceBirth k
  exact Finset.sum_range_reflect sourceBirth (birthCount j)

/-- Exactly half of the complete paired sum reconstructs the signed
dyadic endpoint sum. No absolute value, modulus, source loss, or
unpaid complement appears in this identity. -/
theorem dyadicBirthSum_eq_half_paired (j : ℕ) :
    dyadicBirthSum j =
      (∑ k ∈ Finset.range (birthCount j), pairedBirth j k) / 2 := by
  have hreflection := reflected_source_sum j
  simp only [pairedBirth, Finset.sum_add_distrib]
  rw [hreflection]
  change dyadicBirthSum j =
    (dyadicBirthSum j + dyadicBirthSum j) / 2
  ring

/-- Real source-derived signed pair allowances, at this SAME cutoff.
A local arithmetic estimate, rather than mere graph adjacency, must
supply each inequality when this theorem is applied. -/
theorem dyadicBirthSum_le_of_pairwise_upper
    (j : ℕ) (upper : ℕ → ℝ)
    (hupper : ∀ k ∈ Finset.range (birthCount j),
      pairedBirth j k ≤ upper k) :
    dyadicBirthSum j ≤
      (∑ k ∈ Finset.range (birthCount j), upper k) / 2 := by
  rw [dyadicBirthSum_eq_half_paired]
  exact div_le_div_of_nonneg_right
    (Finset.sum_le_sum hupper) (by norm_num)

/-- Positive aggregate pair discrepancy. It is a diagnostic, not an
assumed small remainder or an independent source of cancellation. -/
def pairedAbsoluteMass (j : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (birthCount j), |pairedBirth j k|

/-- The absolute inequality is valid for the EXACT original signed source,
but taking this allowance may discard cancellation. No gain over the
existing dyadic obligation is inferred without an actual estimate. -/
theorem abs_dyadicBirthSum_le_pairMass (j : ℕ) :
    |dyadicBirthSum j| ≤ pairedAbsoluteMass j / 2 := by
  calc
    |dyadicBirthSum j| =
      |∑ k ∈ Finset.range (birthCount j), pairedBirth j k| / 2 := by
        rw [dyadicBirthSum_eq_half_paired, abs_div]
        norm_num
    _ ≤ pairedAbsoluteMass j / 2 := by
      unfold pairedAbsoluteMass
      exact div_le_div_of_nonneg_right
        (Finset.abs_sum_le_sum_abs (fun k => pairedBirth j k)
          (Finset.range (birthCount j))) (by norm_num)

/-- Reflection really maps the entire finite birth index set onto itself.
No fictitious terminal birth is produced, including when j=0. -/
theorem reflectedBirthIndex_mem_range
    (j k : ℕ) (hk : k ∈ Finset.range (birthCount j)) :
    reflectedBirthIndex j k ∈ Finset.range (birthCount j) := by
  simp only [Finset.mem_range] at hk ⊢
  unfold reflectedBirthIndex
  omega

/-- Hostile control: if every actual birth has the same nonpositive
sign, the paired absolute allowance is EXACTLY the negative signed
source. Rotating the cells gives no strict cancellation gain. -/
theorem pairedAbsoluteMass_eq_neg_twice_birthSum_of_nonpos
    (j : ℕ)
    (hnonpos : ∀ k ∈ Finset.range (birthCount j),
      sourceBirth k ≤ 0) :
    pairedAbsoluteMass j = -(2 * dyadicBirthSum j) := by
  have hpair : ∀ k ∈ Finset.range (birthCount j),
      pairedBirth j k ≤ 0 := by
    intro k hk
    unfold pairedBirth
    exact add_nonpos (hnonpos k hk)
      (hnonpos (reflectedBirthIndex j k)
        (reflectedBirthIndex_mem_range j k hk))
  unfold pairedAbsoluteMass
  calc
    (∑ k ∈ Finset.range (birthCount j), |pairedBirth j k|) =
      ∑ k ∈ Finset.range (birthCount j), -pairedBirth j k := by
        apply Finset.sum_congr rfl
        intro k hk
        exact abs_of_nonpos (hpair k hk)
    _ = -(∑ k ∈ Finset.range (birthCount j), pairedBirth j k) := by
        rw [Finset.sum_neg_distrib]
    _ = -(2 * dyadicBirthSum j) := by
        have hs := dyadicBirthSum_eq_half_paired j
        linarith

/-- If actual number-theoretic upper suppliers are provided at each original
birth and their SUM has the required all-positive-rate upper bound,
the existing RH-facing DYADIC BIRTH obligation follows. This is an
honest joint-premise interface, NOT a newly derived growth estimate. -/
theorem dyadicBirthBound_of_pairwise_budget
    (upper : ℕ → ℕ → ℝ)
    (hsource : ∀ j k, k ∈ Finset.range (birthCount j) →
      pairedBirth j k ≤ upper j k)
    (hbudget : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        (∑ k ∈ Finset.range (birthCount j), upper j k) / 2 ≤
          C * (2 : ℝ) ^ (δ * (j : ℝ))) :
    DyadicBirthBound := by
  intro δ hδ
  obtain ⟨C, hC, hCj⟩ := hbudget δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  exact (dyadicBirthSum_le_of_pairwise_upper j (upper j)
    (fun k hk => hsource j k hk)).trans (hCj j)

/-- Explicitly record the no-gain boundary: a full pairwise signed budget
would suffice for RH only THROUGH the already published conditional return.
This theorem supplies no unconditional pairwise arithmetic supplier. -/
theorem riemannHypothesis_of_pairwise_budget
    (upper : ℕ → ℕ → ℝ)
    (hsource : ∀ j k, k ∈ Finset.range (birthCount j) →
      pairedBirth j k ≤ upper j k)
    (hbudget : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        (∑ k ∈ Finset.range (birthCount j), upper j k) / 2 ≤
          C * (2 : ℝ) ^ (δ * (j : ℝ))) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_dyadicBirthBound
    (dyadicBirthBound_of_pairwise_budget upper hsource hbudget)

end GRWTSK.NumberTheory.Moebius.PickupSignedRotation
