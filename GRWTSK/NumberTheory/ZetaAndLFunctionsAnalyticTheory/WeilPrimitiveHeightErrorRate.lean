/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilHeightCutoffBudget

/-! # A logarithmic-over-height bound for the original primitive Weil error -/

set_option autoImplicit false

open scoped ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
  (derivativeL1Cost derivativeL1Cost_nonneg)
open GRWTSK.NumberTheory.WeilNegativeWitness
  (sourceCountConstant sourceCountConstant_nonneg heightCount_le_source_bound)

/-- At any nonnegative height, the largest admissible dyadic index gives an
explicit upper bound for the original tail budget on the derivative-cost ball. -/
theorem primitiveHeightTailBudget_maxDyadicHeightIndex_le
    {D L T H A : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L) (hH : 0 ≤ H) (hA : 0 ≤ A)
    {f : ℝ → ℂ} (hcost : derivativeL1Cost f 1 ≤ A) :
    primitiveHeightTailBudget D L f T (maxDyadicHeightIndex H) ≤
      8 * Real.exp T * D * (L + 1) * A ^ 2 *
        (Real.log (1 + H) / Real.log 2 + 2) / (1 + H) := by
  let J := maxDyadicHeightIndex H
  have hpos : 0 < 1 + H := by linarith
  have hpow : (2 : ℝ) ^ J ≤ 1 + H :=
    (dyadicHeightCutoff_iff_le_maxDyadicHeightIndex hH J).mpr le_rfl
  have hnext : 1 + H < (2 : ℝ) ^ (J + 1) := by
    apply lt_of_not_ge
    intro h
    exact Nat.not_succ_le_self J ((dyadicHeightCutoff_iff_le_maxDyadicHeightIndex hH _).mp h)
  have hlogTwo : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hlogHeight : 0 ≤ Real.log (1 + H) := Real.log_nonneg (by linarith)
  have hlog : (J : ℝ) ≤ Real.log (1 + H) / Real.log 2 := by
    apply (le_div_iff₀ hlogTwo).mpr
    rw [← Real.log_pow]
    exact Real.log_le_log (by positivity) hpow
  have hinv : (1 / 2 : ℝ) ^ J ≤ 2 / (1 + H) := by
    apply (le_div_iff₀ hpos).mpr
    calc
      _ ≤ (1 / 2 : ℝ) ^ J * (2 : ℝ) ^ (J + 1) :=
        mul_le_mul_of_nonneg_left hnext.le (by positivity)
      _ = 2 := by rw [pow_succ, ← mul_assoc, ← mul_pow]; norm_num
  have hcostSq : derivativeL1Cost f 1 ^ 2 ≤ A ^ 2 :=
    sq_le_sq' ((neg_nonpos.mpr hA).trans (derivativeL1Cost_nonneg f 1)) hcost
  calc
    _ = 4 * Real.exp T * D * (L + 1) * derivativeL1Cost f 1 ^ 2 *
        ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J := rfl
    _ ≤ 4 * Real.exp T * D * (L + 1) * A ^ 2 *
        (Real.log (1 + H) / Real.log 2 + 2) * (2 / (1 + H)) := by gcongr
    _ = _ := by ring

/-- The signed finite-height head of the original character approximates its
arithmetic value at an explicit rate at every nonnegative height. -/
theorem abs_primitiveArithmeticValue_sub_heightContribution_le_log_height
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T H A : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f)
    (hH : 0 ≤ H) (hA : 0 ≤ A) (hcost : derivativeL1Cost (liftReal f) 1 ≤ A) :
    |primitiveArithmeticValue χ hp hn T (liftReal f) -
        primitiveHeightContribution χ hp (liftReal f) H| ≤
      32 * Real.exp T * sourceCountConstant χ * A ^ 2 *
        (Real.log (1 + H) / Real.log 2 + 2) / (1 + H) := by
  have hD := sourceCountConstant_nonneg χ
  have hL : (0 : ℝ) ≤ 3 := by norm_num
  have hcutoff := (dyadicHeightCutoff_iff_le_maxDyadicHeightIndex hH _).mpr (le_refl _)
  calc
    _ ≤ primitiveHeightTailBudget (sourceCountConstant χ) 3 (liftReal f) T
        (maxDyadicHeightIndex H) :=
      abs_primitiveArithmeticValue_sub_heightContribution_le χ hp hn hD hL
        (heightCount_le_source_bound χ hp) hf hsmooth _ hcutoff
    _ ≤ 8 * Real.exp T * sourceCountConstant χ * (3 + 1) * A ^ 2 *
        (Real.log (1 + H) / Real.log 2 + 2) / (1 + H) :=
      primitiveHeightTailBudget_maxDyadicHeightIndex_le hD hL hH hA hcost
    _ = _ := by ring

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
