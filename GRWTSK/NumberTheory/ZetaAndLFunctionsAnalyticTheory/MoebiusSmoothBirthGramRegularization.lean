/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensPrimitive
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-exact smooth-birth Gram regularization

The ORIGINAL r_n and pickupCross are unchanged. A supplied smooth
transition eta creates a candidate C-infinity response which agrees
with r_n before the birth and after a short right-hand window,
and whose COMPLETE ordered signed Gram defect is preserved.

An independent paper proof bounds that defect uniformly in T
for eta in [0,1] with flat ends and window kappa / n^2:
|defect(T)| <= (32/3) * sqrt(e) * kappa^2.
That quantitative theorem is NOT yet formalized in this module.
This is not a use or proof of Euclidean Kakeya local smoothing.
-/

namespace GRWTSK.NumberTheory.Moebius.SmoothBirthGramRegularization

open GRWTSK.RiemannHypothesis.CCC

/-- Right-hand birth regularization. Original support uses n >= 1.
The zero index is not part of pickupCross. -/
def smoothBirthResponse (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ) (u : ℝ) : ℝ :=
  2 * ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) *
    eta (((n : ℝ) ^ 2 / κ) * (u - Real.log n))

/-- Pointwise vanishing before birth from a right-flat cutoff. -/
theorem smoothBirthResponse_before
    (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ) (u : ℝ)
    (hκ : 0 < κ)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0)
    (hu : u ≤ Real.log n) :
    smoothBirthResponse eta κ n u = 0 := by
  have hs : 0 ≤ ((n : ℝ) ^ 2 / κ) :=
    div_nonneg (sq_nonneg _) (le_of_lt hκ)
  have hu' : u - Real.log n ≤ 0 := sub_nonpos.mpr hu
  have harg :
      ((n : ℝ) ^ 2 / κ) * (u - Real.log n) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos hs hu'
  simp [smoothBirthResponse, hzero _ harg]

/-- Exact original response after the cutoff is already one. -/
theorem smoothBirthResponse_after
    (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ) (u : ℝ)
    (hone : ∀ x : ℝ, 1 ≤ x → eta x = 1)
    (hbirth : Real.log n ≤ u)
    (harg : 1 ≤ ((n : ℝ) ^ 2 / κ) * (u - Real.log n)) :
    smoothBirthResponse eta κ n u = pickupResponse n u := by
  simp [smoothBirthResponse, pickupResponse, hone _ harg, hbirth]

/-- Scalar pointwise smoothing is conditional only on smoothness of
eta, not on a Kakeya theorem or any arithmetic estimate. -/
theorem smoothBirthResponse_contDiff
    (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ)
    (hη : ContDiff ℝ ∞ eta) :
    ContDiff ℝ ∞ (smoothBirthResponse eta κ n) := by
  unfold smoothBirthResponse
  fun_prop

/-- True original response Gram with the smoothed responses only. -/
def smoothBirthGram (eta : ℝ → ℝ) (κ T : ℝ) (m n : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..T,
    smoothBirthResponse eta κ m u * smoothBirthResponse eta κ n u

/-- Both original ordered off-diagonal orientations, same time and indices. -/
def smoothBirthCross (eta : ℝ → ℝ) (κ T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if m ≠ n then
        moebiusReal m * moebiusReal n * smoothBirthGram eta κ T m n
      else 0

/-- Literal original-minus-smoothed signed Gram, not a free remainder.
Every original integer, original birth and ordered pair survives. -/
def signedSmoothBirthDefect (eta : ℝ → ℝ) (κ T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if m ≠ n then
        moebiusReal m * moebiusReal n *
          (pickupResponseGram T m n - smoothBirthGram eta κ T m n)
      else 0

/-- Source-exact finite identity, without dropping the signed
regularization error or replacing source indices by residue keys. -/
theorem pickupCross_eq_smoothBirthCross_add_defect
    (eta : ℝ → ℝ) (κ T : ℝ) :
    pickupCross T =
      smoothBirthCross eta κ T + signedSmoothBirthDefect eta κ T := by
  classical
  unfold pickupCross smoothBirthCross signedSmoothBirthDefect
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n
  · simp only [if_pos h]
    ring
  · simp [h]

end GRWTSK.NumberTheory.Moebius.SmoothBirthGramRegularization
