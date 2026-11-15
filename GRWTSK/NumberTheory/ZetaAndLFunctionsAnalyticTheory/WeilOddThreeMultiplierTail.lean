/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddGammaSineReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeNativeLedger

/-!
# A uniform frequency tail for the original conductor-three odd sine multiplier

This formalizes the tail bound in WeilOddThreeMultiplierTail.md at math
commit 3c903d18f035c4b397bc3683194079a84c69c9ee. Separate the first four
nonnegative gamma terms from the full series. The remaining summable
series has exactly the index-shifted rate, so the existing logarithmic
lower bound applies. For the original conductor constant, use the
quarter-digamma identities through gammaConstant_one_zero_eq and bound
Euler's constant by the sixty-fourth upper harmonic-minus-log term.
The six exact native weights bound the signed cosine response uniformly.

The direct consumer is the vanishing sine deficit on [256,∞).
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt

open LowSchur OddRootProjection OddMultiplierBounds PeriodicBoundary
open OddThreeFullSignedShift OddShiftEnergySine OddContinuousSine
open DirichletStageChain SourcePrimeCorrelation

/-- The coefficient of the sine square in the original radius-one form plus energy. -/
def q3SineMultiplier (χ : DirichletCharacter ℂ 3) (ξ : ℝ) : ℝ :=
  1 + gammaConstant 3 (gammaParity χ) + periodicMultiplier (gammaParity χ) ξ -
    2 * ∑ n ∈ activePrimePowers 1,
      pairedPrimeWeight χ n * Real.cos (Real.log (n : ℝ) * ξ)

theorem originalPrimitiveQ_eq_q3SineMultiplier (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) {f : ℝ → ℝ} (hf : Admissible χ 1 f) :
    primitiveArithmeticValue χ hp hn 1 (liftReal f) + energy (liftReal f) =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
        q3SineMultiplier χ ξ * halfSineMoment 1 f ξ ^ 2 := by
  exact originalPrimitiveQ_eq_sineMultiplier χ hp hn hf

private theorem periodicMultiplier_one_eq_four_add_nine (w : ℝ) :
    periodicMultiplier 1 w =
      (∑ j ∈ Finset.range 4, periodicMultiplierTerm 1 w j) + periodicMultiplier 9 w := by
  have hrate (j : ℕ) : multiplierRate 1 (↑(j + 4 : ℕ) : ℝ) = multiplierRate 9 j := by
    unfold multiplierRate
    push_cast
    ring
  calc
    _ = (∑ j ∈ Finset.range 4, periodicMultiplierTerm 1 w j) +
        ∑' j : ℕ, periodicMultiplierTerm 1 w (↑(j + 4 : ℕ) : ℝ) :=
      ((periodicMultiplier_summable 1 w).sum_add_tsum_nat_add 4).symm
    _ = _ := by simp only [periodicMultiplier, periodicMultiplierTerm, hrate]

private theorem four_gamma_terms_gt :
    (253 / 100 : ℝ) < ∑ j ∈ Finset.range 4, periodicMultiplierTerm 1 256 j := by
  norm_num [Finset.sum_range_succ, periodicMultiplierTerm, multiplierRate, multiplierSummand]

private theorem log_eleven_eighths_gt : (3 / 10 : ℝ) < Real.log (11 / 8) := by
  have h := Real.sum_range_le_log_div (x := 3 / 19) (by norm_num) (by norm_num) 1
  norm_num [Finset.sum_range_succ] at h
  linarith

/-- Uniform lower bound for the complete original odd-parity gamma series. -/
theorem periodicMultiplier_one_gt_of_ge_256 {ξ : ℝ} (hξ : 256 ≤ ξ) :
    (11597 / 2000 : ℝ) < periodicMultiplier 1 ξ := by
  have hlog := log_lower_le_periodicMultiplier 9 256
  norm_num at hlog
  have hcompare : Real.log (704 : ℝ) < Real.log (262505 / 361) :=
    Real.log_lt_log (by norm_num) (by norm_num)
  rw [show (704 : ℝ) = 2 ^ (9 : ℕ) * (11 / 8) by norm_num,
    Real.log_mul (by norm_num) (by norm_num), Real.log_pow] at hcompare
  have htail : (6537 / 2000 : ℝ) < periodicMultiplier 9 256 := by
    linarith [Real.log_two_gt_d9, log_eleven_eighths_gt]
  have h256 : (11597 / 2000 : ℝ) < periodicMultiplier 1 256 := by
    rw [periodicMultiplier_one_eq_four_add_nine]
    linarith [four_gamma_terms_gt, htail]
  exact h256.trans_le (periodicMultiplier_abs_mono 1 (by
    rwa [abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 256),
      abs_of_nonneg (by linarith : 0 ≤ ξ)]))

private theorem eulerMascheroni_lt_59_100 : Real.eulerMascheroniConstant < (59 / 100 : ℝ) := by
  have h := Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' 64
  have h64 : ((harmonic 64 : ℚ) : ℝ) < 949 / 200 := by
    norm_num [harmonic, Finset.sum_range_succ]
  norm_num [Real.eulerMascheroniSeq'] at h
  rw [show (64 : ℝ) = 2 ^ (6 : ℕ) by norm_num, Real.log_pow] at h
  linarith [Real.log_two_gt_d9]

private theorem gammaConstant_three_one_gt : -(3 / 20 : ℝ) < 1 + gammaConstant 3 1 := by
  have hratio : Real.log (Real.pi / 3) < 1 / 21 := by
    have h := Real.log_le_sub_one_of_pos (show 0 < Real.pi / 3 by positivity)
    linarith [Real.pi_lt_d4]
  rw [Real.log_div Real.pi_pos.ne' (by norm_num)] at hratio
  rw [gammaConstant_odd_eq_even_add_pi, gammaConstant_even_eq_log_add 3 (by decide),
    gammaConstant_one_zero_eq]
  norm_num only [Nat.cast_ofNat]
  linarith [Real.pi_gt_d2, Real.log_two_lt_d9, eulerMascheroni_lt_59_100]

private theorem log_five_fourths_lt : Real.log (5 / 4) < (9 / 40 : ℝ) := by
  have h := Real.log_div_le_sum_range_add (x := 1 / 9) (by norm_num) (by norm_num) 2
  norm_num [Finset.sum_range_succ] at h
  linarith

private theorem log_eight_sevenths_ge : (2 / 15 : ℝ) ≤ Real.log (8 / 7) := by
  have h := Real.sum_range_le_log_div (x := 1 / 15) (by norm_num) (by norm_num) 1
  norm_num [Finset.sum_range_succ] at h
  linarith

private theorem q3_native_abs_mass_lt (χ : DirichletCharacter ℂ 3) (hodd : gammaParity χ = 1) :
    (∑ n ∈ activePrimePowers 1, |pairedPrimeWeight χ n|) < (58 / 25 : ℝ) := by
  obtain ⟨h2, h3, h4, h5, h6, h7⟩ := odd_three_native_signed_weights χ hodd
  have hlog5 : Real.log 5 < (73 / 100) * (221 / 100 : ℝ) := by
    rw [show (5 : ℝ) = (2 : ℝ) ^ (2 : ℕ) * (5 / 4) by norm_num,
      Real.log_mul (by norm_num) (by norm_num), Real.log_pow]
    linarith [Real.log_two_lt_d9, log_five_fourths_lt]
  have hlog7 : Real.log 7 < (74 / 100) * (66 / 25 : ℝ) := by
    have h := log_eight_sevenths_ge
    rw [Real.log_div (by norm_num) (by norm_num), show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num,
      Real.log_pow] at h
    linarith [Real.log_two_lt_d9]
  have hb2 : |pairedPrimeWeight χ 2| < (1 / 2 : ℝ) := by
    rw [h2, abs_neg, abs_of_nonneg (by positivity)]
    apply (div_lt_iff₀ (Real.sqrt_pos.2 (by norm_num))).2
    linarith [Real.log_two_lt_d9, Real.lt_sqrt_of_sq_lt (by norm_num : (7 / 5 : ℝ) ^ 2 < 2)]
  have hb4 : |pairedPrimeWeight χ 4| < (7 / 20 : ℝ) := by
    rw [h4, abs_of_nonneg (by positivity)]
    linarith [Real.log_two_lt_d9]
  have hb5 : |pairedPrimeWeight χ 5| < (73 / 100 : ℝ) := by
    rw [h5, abs_neg, abs_of_nonneg (by positivity)]
    apply (div_lt_iff₀ (Real.sqrt_pos.2 (by norm_num))).2
    linarith [hlog5, Real.lt_sqrt_of_sq_lt (by norm_num : (221 / 100 : ℝ) ^ 2 < 5)]
  have hb7 : |pairedPrimeWeight χ 7| < (74 / 100 : ℝ) := by
    rw [h7, abs_of_nonneg (by positivity)]
    apply (div_lt_iff₀ (Real.sqrt_pos.2 (by norm_num))).2
    linarith [hlog7, Real.lt_sqrt_of_sq_lt (by norm_num : (66 / 25 : ℝ) ^ 2 < 7)]
  rw [activePrimePowers_one_eq_Icc, show Finset.Icc (2 : ℕ) 7 = {2, 3, 4, 5, 6, 7} by decide]
  norm_num [Finset.sum_insert, h3, h6]
  linarith

/-- The original odd-character sine multiplier exceeds the certificate threshold on the full tail. -/
theorem original_q3_multiplier_tail_ge_one (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1) {ξ : ℝ} (hξ : 256 ≤ ξ) :
    (2017 / 2000 : ℝ) < q3SineMultiplier χ ξ := by
  have hp :
      (∑ n ∈ activePrimePowers 1, pairedPrimeWeight χ n * Real.cos (Real.log (n : ℝ) * ξ)) ≤
        ∑ n ∈ activePrimePowers 1, |pairedPrimeWeight χ n| := by
    apply Finset.sum_le_sum
    intro n _
    exact (le_abs_self _).trans (by
      rw [abs_mul]
      exact mul_le_of_le_one_right (abs_nonneg _) (Real.abs_cos_le_one _))
  unfold q3SineMultiplier
  rw [hodd]
  linarith [gammaConstant_three_one_gt, periodicMultiplier_one_gt_of_ge_256 hξ,
    q3_native_abs_mass_lt χ hodd]

/-- The deficit of the literal radius-one symbol vanishes at and beyond 256. -/
theorem q3_sine_deficit_eq_zero_of_ge_256 (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1) {ξ : ℝ} (hξ : 256 ≤ ξ) :
    max 0 (1 - q3SineMultiplier χ ξ) = 0 := by
  have h := original_q3_multiplier_tail_ge_one χ hodd hξ
  exact max_eq_left (by linarith)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
