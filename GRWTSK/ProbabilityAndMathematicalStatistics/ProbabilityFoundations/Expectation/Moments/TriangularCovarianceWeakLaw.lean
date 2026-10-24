import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.VarianceBudgetConvergence
import Mathlib.Analysis.SpecificLimits.Basic

/-! A weak-law consumer for an actual growing finite family (S3/S5).
The probability space, L² observables, uniform variance bound and decaying
cross-covariance budget are supplied. No independence or arithmetic source is inferred. -/
namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments
open MeasureTheory ProbabilityTheory Filter
open scoped ProbabilityTheory Topology
variable {Ω : Type*} [MeasurableSpace Ω] {μ : Measure Ω} [IsProbabilityMeasure μ]

/-- Decaying covariance budgets give expectation-centered convergence in probability
for averages of n+1 observables; no variance-decay premise is needed from the caller. -/
theorem triangular_average_centered_tail_tendsto_zero
    (X : (n : ℕ) → Fin (n + 1) → Ω → ℝ) (C : ℝ) (δ : ℕ → ℝ)
    (hX : ∀ n i, MemLp (X n i) 2 μ)
    (hdiag : ∀ n i, Var[X n i; μ] ≤ C)
    (hoff : ∀ n i j, i ≠ j → cov[X n i, X n j; μ] ≤ δ n)
    (hδ : Tendsto δ atTop (𝓝 0)) (ε : ℝ) (hε : 0 < ε) :
    let Y := fun (n : ℕ) ω => ((n : ℝ) + 1)⁻¹ * ∑ i, X n i ω
    Tendsto (fun n => μ {ω | ε ≤ |Y n ω - μ[Y n]|}) atTop (𝓝 0) := by
  let Y := fun (n : ℕ) ω => ((n : ℝ) + 1)⁻¹ * ∑ i, X n i ω
  let budget := fun (n : ℕ) => C / ((n : ℝ) + 1) + (1 - ((n : ℝ) + 1)⁻¹) * δ n
  have hY : ∀ n, MemLp (Y n) 2 μ := by
    intro n
    have hs : MemLp (fun ω => ∑ i, X n i ω) 2 μ := by
      simpa using memLp_finsetSum Finset.univ (fun i _ => hX n i)
    exact hs.const_mul _
  have hb : ∀ n, Var[Y n; μ] ≤ budget n := by
    intro n
    simpa [Y, budget] using variance_average_le_covariance_budget
      (X n) C (δ n) (hX n) (hdiag n) (hoff n) (by simp)
  have hinv : Tendsto (fun n : ℕ => ((n : ℝ) + 1)⁻¹) atTop (𝓝 0) := by
    simpa [one_div] using (tendsto_one_div_add_atTop_nhds_zero_nat (𝕜 := ℝ))
  have hbzero : Tendsto budget atTop (𝓝 0) := by
    have h1 := hinv.const_mul C
    have hc : Tendsto (fun _ : ℕ => (1 : ℝ)) atTop (𝓝 1) := tendsto_const_nhds
    have h2 := (hc.sub hinv).mul hδ
    simpa [budget, div_eq_mul_inv] using h1.add h2
  exact centered_tail_tendsto_zero Y budget hY hb hbzero ε hε
end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments
