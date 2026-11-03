/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualPrefixMatchedQuadraticError

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! One-sided actual signed-source transfer paying full mixed and square
error costs. No arithmetic upper-bound supplier is constructed. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMatchedSignedUpperBudget
open CyclicConstantModeSignedPrefixObstruction CyclicActualMertensPrefixSource
open ActualPrefixMatchedVector ActualPrefixMatchedQuadraticError
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

theorem signed_upper_of_square_envelope (A H D E : ℝ) (hD : 0≤D) (hE : 0≤E)
    (henv : (A-H+E)^2 ≤ 4*D*E) :
    H ≤ A+E+2*Real.sqrt D*Real.sqrt E := by
  have hs : (2*Real.sqrt D*Real.sqrt E)^2=4*D*E := by
    rw [mul_pow,mul_pow,Real.sq_sqrt hD,Real.sq_sqrt hE]
    ring
  have hp : 0≤2*Real.sqrt D*Real.sqrt E := by positivity
  rw [← hs] at henv
  nlinarith

theorem actual_matched_signed_upper (e : ZMod N ≃ Fin N) (z : ZMod N → ℝ) :
    let E := ∑ i, (matchActualPrefix N z i-actualIncrement N e i)^2
    sampleSignedMixedPrefix N ≤ signedPrefixStatistic N (matchActualPrefix N z)+E+
      2*Real.sqrt (sampleUnweightedDiagonal N)*Real.sqrt E := by
  have hD : 0≤sampleUnweightedDiagonal N := by
    rw [← actual_full_diagonal N e]
    exact Finset.sum_nonneg (fun i _ => sq_nonneg _)
  have hE : 0≤∑ i, (matchActualPrefix N z i-actualIncrement N e i)^2 :=
    Finset.sum_nonneg (fun i _ => sq_nonneg _)
  exact signed_upper_of_square_envelope _ _ _ _ hD hE
    (actual_matched_quadratic_error_envelope N e z)

end GRWTSK.NumberTheory.Zeta.Riemann.ActualMatchedSignedUpperBudget
