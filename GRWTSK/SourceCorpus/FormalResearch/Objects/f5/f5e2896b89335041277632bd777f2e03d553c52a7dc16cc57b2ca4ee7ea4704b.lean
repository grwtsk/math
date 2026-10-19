import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Literal low-time scalar budget

UNCOMPILED proof-text preparation. The actual centered prefix is bounded using
its recorded discrepancy theorem. The exponential strip mass pays its cutoff
factor. These scalar facts do not bound the full signed interaction. Region
restriction, Fubini and actual state composition remain separate prerequisites.

AI attribution: OpenAI Codex proof-text preparation; native execution is held.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceLowTimeScalarBudget

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering SourceMangoldtAbel

noncomputable section

/-- The original finite divisor budget has its literal U factor. -/
theorem short_moebius_abs_sum_le_cutoff (U : ℕ) :
    (∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ)|) ≤ (U : ℝ) := by
  calc
    _ ≤ ∑ _d ∈ Finset.Icc 1 U, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro d _
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
    _ = _ := by simp

/-- This uses the original centered row, not a substitute bounded coefficient. -/
theorem centered_beta_prefix_abs_le_cutoff (U k : ℕ) (hU : 1 ≤ U) (hUk : U ≤ k) :
    |∑ n ∈ Finset.Ioc U k, centeredBeta U n| ≤ (U : ℝ) := by
  exact (centeredBeta_interval_abs_le U U k hU le_rfl hUk).trans
    (short_moebius_abs_sum_le_cutoff U)

/-- The disclosed Mangoldt error budget has a positive exact value. -/
theorem mangoldt_error_budget_pos : 0 < Real.log 4 + 4 + Real.log 2 := by
  have h4 : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
  have h2 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  linarith

/-- The below-zero error convention is not used on this actual positive strip. -/
theorem mangoldt_error_on_low_time_abs_le (U : ℕ) (hU : 1 ≤ U)
    (t : ℝ) (ht : Real.log (U : ℝ) ≤ t) :
    |mangoldtLogError t| ≤ Real.log 4 + 4 + Real.log 2 := by
  have hUr : (1 : ℝ) ≤ U := by exact_mod_cast hU
  exact mangoldtLogError_abs_le t ((Real.log_nonneg hUr).trans ht)

/-- U>0 is essential: Real.log 0 is assigned zero and cannot be exponentiated back. -/
theorem exponential_low_time_mass (U : ℕ) (hU : 1 ≤ U) :
    (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) =
      2 * (Real.sqrt ((U + 1 : ℕ) : ℝ) - Real.sqrt (U : ℝ)) := by
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have ha0 : 0 < ((U + 1 : ℕ) : ℝ) := by positivity
  rw [intervalIntegral.integral_comp_div (f := Real.exp) (by norm_num : (2 : ℝ) ≠ 0),
    _root_.integral_exp]
  simp only [smul_eq_mul, Real.exp_half, Real.exp_log ha0, Real.exp_log hU0]

/-- The exact strip mass absorbs the actual centered-prefix and cell-mass factors. -/
theorem exponential_low_time_mass_prefix_budget (U : ℕ) (hU : 1 ≤ U) :
    (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) *
      (2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) ≤ 2 := by
  rw [exponential_low_time_mass U hU]
  let u : ℝ := U
  let r := Real.sqrt u
  let s := Real.sqrt (u + 1)
  have hu : 1 ≤ u := by dsimp only [u]; exact_mod_cast hU
  have hr0 : 0 ≤ r := Real.sqrt_nonneg _
  have hs0 : 0 < s := Real.sqrt_pos.mpr (by linarith)
  have hrs : r ≤ s := Real.sqrt_le_sqrt (by linarith)
  have hr2 : r ^ 2 = u := Real.sq_sqrt (by linarith)
  have hs2 : s ^ 2 = u + 1 := Real.sq_sqrt (by linarith)
  have hsr : (s - r) * (s + r) = 1 := by nlinarith
  have hprod : u ≤ s * r := by nlinarith [mul_le_mul_of_nonneg_right hrs hr0]
  have hden : 2 * u ≤ s * (s + r) := by nlinarith
  have hsum : 0 < s + r := by linarith
  have hnum : 4 * u * (s - r) ≤ 2 * s := by
    apply le_of_mul_le_mul_right (a := s + r) _ hsum
    calc
      (4 * u * (s - r)) * (s + r) = 4 * u := by rw [mul_assoc, hsr]; ring
      _ ≤ (2 * s) * (s + r) := by nlinarith
  simp only [Nat.cast_add, Nat.cast_one]
  change 2 * (s - r) * (2 * u / s) ≤ 2
  rw [show 2 * (s - r) * (2 * u / s) = (4 * u * (s - r)) / s by ring]
  apply (div_le_iff₀ hs0).mpr
  exact hnum

/-- The inherited curvature coefficient is used, not recomputed. -/
theorem twice_curvature_budget_le_margin {A : ℝ} (hA : 1 ≤ A) :
    2 * (162826 / (7623 * A ^ 2) + 1 / 4) ≤ (45 : ℝ) := by
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hc : 162826 / (7623 * A ^ 2) ≤ (162826 : ℝ) / 7623 := by
    apply div_le_div_of_nonneg_left (by norm_num) (by norm_num)
    nlinarith
  have hm : 2 * ((162826 : ℝ) / 7623 + 1 / 4) < 45 := by norm_num
  linarith

/-- The scale-independent margin remains multiplied by the actual error budget. -/
theorem error_times_twice_curvature_budget_le_margin {A : ℝ} (hA : 1 ≤ A) :
    (Real.log 4 + 4 + Real.log 2) *
      (2 * (162826 / (7623 * A ^ 2) + 1 / 4)) ≤
      45 * (Real.log 4 + 4 + Real.log 2) := by
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left
    (twice_curvature_budget_le_margin hA) mangoldt_error_budget_pos.le

end
end FormalResearch.RiemannHypothesis.SourceLowTimeScalarBudget
