/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCofinalStageCriterion

/-! # Uniform finite-height approximation for primitive Weil stages -/

set_option autoImplicit false

open Filter
open scoped ContDiff Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
  (derivativeL1Cost derivativeL1Cost_nonneg)
open GRWTSK.NumberTheory.WeilNegativeWitness
  (heightCount heightCount_le_source_bound sourceCountConstant sourceCountConstant_nonneg)
open SourcePrimeCorrelation

/-- For a fixed primitive nonprincipal character and support radius, one
cutoff controls both the tail budget and the error at every higher height
for all admissible smooth tests with bounded first-order derivative cost. -/
theorem exists_uniform_primitiveHeightTailBudget_and_error_le_of_heightCount
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U →
      (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T A : ℝ} (hA : 0 ≤ A) (ε : ℝ) (hε : 0 < ε) :
    ∃ J : ℕ, ∀ f : ℝ → ℝ, Admissible χ T f → ContDiff ℝ ∞ f →
      derivativeL1Cost (liftReal f) 1 ≤ A →
      primitiveHeightTailBudget D L (liftReal f) T J ≤ ε ∧
      ∀ H : ℝ, (2 : ℝ) ^ J ≤ 1 + H →
        |primitiveArithmeticValue χ hp hn T (liftReal f) -
          primitiveHeightContribution χ hp (liftReal f) H| ≤ ε := by
  let K : ℝ := 4 * Real.exp T * D * (L + 1)
  have hK : 0 ≤ K := by
    dsimp [K]
    positivity
  have h₁ := tendsto_self_mul_const_pow_of_lt_one
    (by norm_num : (0 : ℝ) ≤ 1 / 2) (by norm_num : (1 / 2 : ℝ) < 1)
  have h₂ := (tendsto_pow_atTop_nhds_zero_of_lt_one
    (by norm_num : (0 : ℝ) ≤ 1 / 2) (by norm_num : (1 / 2 : ℝ) < 1)).const_mul (2 : ℝ)
  have hlim : Tendsto (fun J : ℕ => K * A ^ 2 * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J)
      atTop (𝓝 0) := by
    have h := (h₁.add h₂).const_mul (K * A ^ 2)
    simp only [mul_zero, add_zero] at h
    convert h using 1
    funext J
    ring
  obtain ⟨J, hJ⟩ := (hlim.eventually (eventually_lt_nhds hε)).exists
  change K * A ^ 2 * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J < ε at hJ
  refine ⟨J, fun f hf hsmooth hcost => ?_⟩
  have hcost_sq : derivativeL1Cost (liftReal f) 1 ^ 2 ≤ A ^ 2 :=
    sq_le_sq' ((neg_nonpos.mpr hA).trans (derivativeL1Cost_nonneg _ _)) hcost
  have htail : primitiveHeightTailBudget D L (liftReal f) T J ≤ ε := by
    calc
      _ = K * derivativeL1Cost (liftReal f) 1 ^ 2 * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J := rfl
      _ ≤ K * A ^ 2 * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J := by gcongr
      _ ≤ ε := hJ.le
  exact ⟨htail, fun H hH =>
    (abs_primitiveArithmeticValue_sub_heightContribution_le χ hp hn hD hL hcount
      hf hsmooth J hH).trans htail⟩

/-- The original zero count supplies a uniform cutoff for a fixed primitive
nonprincipal character and a bounded first-order derivative cost. -/
theorem exists_uniform_primitiveHeightTailBudget_and_error_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T A ε : ℝ} (hA : 0 ≤ A) (hε : 0 < ε) :
    ∃ J : ℕ, ∀ f : ℝ → ℝ, Admissible χ T f → ContDiff ℝ ∞ f →
      derivativeL1Cost (liftReal f) 1 ≤ A →
      primitiveHeightTailBudget (sourceCountConstant χ) 3 (liftReal f) T J ≤ ε ∧
      ∀ H : ℝ, (2 : ℝ) ^ J ≤ 1 + H →
        |primitiveArithmeticValue χ hp hn T (liftReal f) -
          primitiveHeightContribution χ hp (liftReal f) H| ≤ ε :=
  exists_uniform_primitiveHeightTailBudget_and_error_le_of_heightCount χ hp hn
    (sourceCountConstant_nonneg χ) (by norm_num) (heightCount_le_source_bound χ hp) hA ε hε

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
