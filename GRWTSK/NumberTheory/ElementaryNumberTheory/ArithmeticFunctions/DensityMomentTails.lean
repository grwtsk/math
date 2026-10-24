/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DensityHalfMoment
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DensityCorrectionReciprocalMass

/-!
# Complete moment tails with real closed heads

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
All correction prime powers are retained. The upper touching atom belongs to
the closed head; the complementary strict infinite tail is fully paid.
-/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions

def densityClosedReciprocalHead (R : ℝ) : ℝ :=
  ∑' n : ℕ, if (n : ℝ) ≤ R then densityCorrectionReciprocal n else 0

def densityReciprocalTail (R : ℝ) : ℝ :=
  ∑' n : ℕ, if R < (n : ℝ) then densityCorrectionReciprocal n else 0

theorem density_reciprocal_tail_summable (R : ℝ) :
    Summable (fun n : ℕ => if R < (n : ℝ) then densityCorrectionReciprocal n else 0) := by
  apply Summable.of_nonneg_of_le (fun n => by split_ifs; exact density_reciprocal_nonneg n; rfl)
    (fun n => by split_ifs; rfl; exact density_reciprocal_nonneg n) density_reciprocal_summable

theorem density_reciprocal_head_summable (R : ℝ) :
    Summable (fun n : ℕ => if (n : ℝ) ≤ R then densityCorrectionReciprocal n else 0) := by
  apply Summable.of_nonneg_of_le (fun n => by split_ifs; exact density_reciprocal_nonneg n; rfl)
    (fun n => by split_ifs; rfl; exact density_reciprocal_nonneg n) density_reciprocal_summable

theorem density_reciprocal_closed_head_tail (R : ℝ) :
    (∑' n : ℕ, densityCorrectionReciprocal n) =
      densityClosedReciprocalHead R + densityReciprocalTail R := by
  unfold densityClosedReciprocalHead densityReciprocalTail
  rw [← (density_reciprocal_head_summable R).tsum_add (density_reciprocal_tail_summable R)]
  apply tsum_congr
  intro n
  by_cases hn : (n : ℝ) ≤ R
  · simp [hn, not_lt.mpr hn]
  · simp [hn, lt_of_not_ge hn]

theorem density_reciprocal_tail_atom (n : ℕ) :
    (if (n : ℝ) < (n : ℝ) then densityCorrectionReciprocal n else 0) = 0 := by simp

theorem density_reciprocal_tail_term {R : ℝ} (hR : 1 ≤ R) (n : ℕ) :
    (if R < (n : ℝ) then densityCorrectionReciprocal n else 0) ≤
      densityCorrectionHalf n / Real.sqrt R := by
  have hR0 : 0 ≤ R := by linarith
  have hsR : 0 < Real.sqrt R := Real.sqrt_pos.mpr (by linarith)
  by_cases hn : R < (n : ℝ)
  · rw [if_pos hn, densityCorrectionReciprocal, densityCorrectionHalf, div_div]
    have hn0 : 0 < (n : ℝ) := by linarith
    have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr hn0
    have hroot : Real.sqrt R ≤ Real.sqrt (n : ℝ) := Real.sqrt_le_sqrt hn.le
    have hprod : Real.sqrt (n : ℝ) * Real.sqrt R ≤ (n : ℝ) := by
      nlinarith [Real.sq_sqrt hn0.le,
        mul_nonneg hsn.le (sub_nonneg.mpr hroot)]
    apply (div_le_div_iff₀ hn0 (mul_pos hsn hsR)).mpr
    exact mul_le_mul_of_nonneg_left hprod (density_moebius_correction_nonneg n)
  · rw [if_neg hn]
    exact div_nonneg (density_half_nonneg n) hsR.le

theorem density_reciprocal_tail_le_half {R : ℝ} (hR : 1 ≤ R) :
    densityReciprocalTail R ≤ (∑' n : ℕ, densityCorrectionHalf n) / Real.sqrt R := by
  unfold densityReciprocalTail
  calc
    _ ≤ ∑' n : ℕ, densityCorrectionHalf n / Real.sqrt R :=
      Summable.tsum_le_tsum (density_reciprocal_tail_term hR)
        (density_reciprocal_tail_summable R) (density_half_summable.div_const _)
    _ = _ := tsum_div_const

theorem density_reciprocal_tail_bound {R : ℝ} (hR : 1 ≤ R) :
    densityReciprocalTail R ≤
      Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) / Real.sqrt R :=
  (density_reciprocal_tail_le_half hR).trans
    (div_le_div_of_nonneg_right density_half_tsum_bound (Real.sqrt_nonneg R))

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
