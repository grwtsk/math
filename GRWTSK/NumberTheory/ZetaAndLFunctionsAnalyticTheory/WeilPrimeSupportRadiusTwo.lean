/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeSupportBound
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilIntegerInventory
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalPrimeWeights
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPoleTailEnergy
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# An evaluated prime-loss bound on the original radius-two source

The exact original inventory is 2..54. Shifts of labels 8..54 are longer
than two, and hence receive the proved half-mass correlation bound. Labels
2..7 keep the full translation allowance. Every prime power is present;
non-prime-powers have their exact zero von Mangoldt coefficient.

An exact rational finite comparison supplies prime loss <= 378/25. Return
this to the existing HighFloor interface without changing its pole-free
meaning. Separately subtract the complete high-64 pole norm for the full
unbordered source. No positive high-64 floor, low-head sign or universal
cofinal certificate is asserted.

WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Lean elaboration, kernel replay, axiom audit and independent review NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimeSupportRadiusTwo

open LowSchur OddRootProjection OddSineForm OddHighComplement OddMultiplierBounds
open OddOutputTrace OddSineParseval OddWrapEnergy OddLiteralWindow
open PrimeSupportBound IntegerInventory

/-- This finite real budget still uses the original source weights. -/
def integerLoss (B K : ℕ) : ℝ :=
  ∑ q ∈ Finset.Icc 2 B, primeWeight q * (if q ≤ K then 2 else 1)

/-- A fully rational majorant; N and D are separate precision inputs. -/
def rationalLoss (B K N D : ℕ) : ℚ :=
  ∑ q ∈ Finset.Icc 2 B, RationalPrimeWeights.upper q N D * (if q ≤ K then 2 else 1)

/-- Source weight enclosures, not a numerical oracle for the integral form. -/
theorem integerLoss_le_rational (B K N D : ℕ) (hD : 0 < D) :
    integerLoss B K ≤ (rationalLoss B K N D : ℝ) := by
  unfold integerLoss rationalLoss
  push_cast
  apply Finset.sum_le_sum
  intro q hq
  have hq1 : 1 ≤ q := by have := (Finset.mem_Icc.mp hq).1; omega
  have hw := (RationalPrimeWeights.weight_enclosure hq1 hD N).2.2
  exact mul_le_mul_of_nonneg_right hw (by split_ifs <;> norm_num)

/-- All original labels at least eight have strictly long shifts at radius two. -/
theorem long_log_of_eight_le {q : ℕ} (hq : 8 ≤ q) : (2 : ℝ) < Real.log (q : ℝ) := by
  have h8 : (2 : ℝ) < Real.log 8 := by
    rw [show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
    nlinarith [Real.log_two_gt_d9]
  have hqR : (8 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq
  exact h8.trans_le (Real.log_le_log (by norm_num : (0 : ℝ) < 8) hqR)

/-- Exact inventory admission plus support geometry, with no rounded log test. -/
theorem supportPrimeLoss_two_le : supportPrimeLoss 2 ≤ integerLoss 54 7 := by
  unfold supportPrimeLoss integerLoss
  rw [active_two]
  apply Finset.sum_le_sum
  intro q _
  apply mul_le_mul_of_nonneg_left _ (primeWeight_nonneg q)
  by_cases hq : q ≤ 7
  · simpa only [if_pos hq] using (shiftCost_bounds 2 (Real.log q)).2
  · have hlong := long_log_of_eight_le (show 8 ≤ q by omega)
    simp [shiftCost, hlong, hq]

/-- A finite arithmetic fixture. External exact Fraction checks passed;
this kernel-evaluated numeral proof has NOT been executed. No native_decide. -/
set_option maxRecDepth 16384 in
set_option maxHeartbeats 16000000 in
theorem rational_budget : rationalLoss 54 7 128 1000000 ≤ (378 / 25 : ℚ) := by
  decide

/-- This upper bound holds for EVERY supported L2 test, not only the trial head. -/
theorem radius_two_prime_bound {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-2 : ℝ) 2 → f t = 0) :
    |primeEnergy 2 f| ≤ (378 / 25 : ℝ) * (∫ t : ℝ, ‖f t‖ ^ 2) := by
  have hC : supportPrimeLoss 2 ≤ (378 / 25 : ℝ) :=
    supportPrimeLoss_two_le.trans
      ((integerLoss_le_rational 54 7 128 1000000 (by norm_num)).trans
        (by exact_mod_cast rational_budget))
  have hm : 0 ≤ ∫ t : ℝ, (f t) ^ 2 := integral_nonneg fun _ => sq_nonneg _
  have h := (abs_primeEnergy_le_support 2 hf hs).trans
    (mul_le_mul_of_nonneg_right hC hm)
  simpa only [Real.norm_eq_abs, sq_abs] using h

/-- The same original periodic multiplier and complete boundary allowance.
This is a number, not a proposition asserting it is positive. -/
def coreFloor (β : ℝ) (N : ℕ) : ℝ :=
  gammaConstant 1 0 - β + periodicMultiplier 0 (frequency 2 (N + 1)) - 378 / 25 - 4

/-- The source-specific prime hypothesis is discharged on the actual high domain. -/
theorem radius_two_core_floor (β : ℝ) (N : ℕ) : HighFloor 2 β (coreFloor β N) N := by
  intro f hf hfm ho hs hh he
  have hp : primeEnergy 2 f ≤ (378 / 25 : ℝ) * (∫ t : ℝ, ‖f t‖ ^ 2) :=
    (le_abs_self _).trans (radius_two_prime_bound hf hs)
  exact OddExactPeriodization.shiftedOddCoreEnergy_ge_of_exactBudget 2 (by norm_num)
    β (378 / 25) 4 (coreFloor β N) le_rfl hfm hf ho hs hh he hp
    (OddBoundaryNorm.oddKernel_quadratic_ge 2 f hfm hf.integrable_sq.integrableOn)

/-- A positive requested high floor is allowed only after checking the scalar budget.
The unchanged bordered HighFloor has no negative pole charge. -/
theorem radius_two_highFloor_of_budget (β γ : ℝ) (N : ℕ)
    (hbudget : γ ≤ coreFloor β N) : HighFloor 2 β γ N := by
  intro f hf hfm ho hs hh he
  have hm : 0 ≤ ∫ t : ℝ, ‖f t‖ ^ 2 := integral_nonneg fun _ => sq_nonneg _
  exact (mul_le_mul_of_nonneg_right hbudget hm).trans
    (radius_two_core_floor β N hf hfm ho hs hh he)

/-- The unbordered source pays the previously evaluated COMPLETE pole tail.
At N>=64 every required low pole coefficient vanishes. This is not the
bordered HighFloor used by the existing Schur consumer. -/
theorem radius_two_full_high_lower (β : ℝ) {N : ℕ} (hN : 64 ≤ N)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hfm : Measurable f) (ho : Function.Odd f)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-2 : ℝ) 2 → f t = 0)
    (hh : ∀ n < N, sineCoefficient 2 f (n + 1) = 0)
    (he : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    (coreFloor β N - 17355583747 / 500000000000) *
        (∫ t : ℝ, ‖f t‖ ^ 2) ≤ shiftedOddWeilEnergy 2 β f := by
  have hc := radius_two_core_floor β N hf hfm ho hs hh he
  have hh64 : ∀ n < 64, sineCoefficient 2 f (n + 1) = 0 :=
    fun n hn => hh n (hn.trans_le hN)
  have hp := PoleTailEnergy.radius_two_high64_pole_lower hf hs hh64
  unfold shiftedOddWeilEnergy
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimeSupportRadiusTwo
