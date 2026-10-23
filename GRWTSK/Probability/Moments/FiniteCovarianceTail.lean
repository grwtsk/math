import GRWTSK.Probability.Moments.FiniteCovarianceBudget

/-! Chebyshev consumers of finite covariance budgets for S3/S5.
These tails are centered at the actual expectation, not at an unproved model.
No arithmetic source, independence, almost-sure bound or deterministic rate is supplied. -/
namespace GRWTSK.Probability.Moments
open MeasureTheory ProbabilityTheory
open scoped ProbabilityTheory
variable {Ω ι : Type*} [MeasurableSpace Ω] [Fintype ι]
    {μ : Measure Ω} [IsProbabilityMeasure μ]

/-- Quantitative deviation bound for a sum with a supplied covariance budget. -/
theorem sum_tail_le_covariance_budget (X : ι → Ω → ℝ) (C δ ε : ℝ)
    (hX : ∀ i, MemLp (X i) 2 μ)
    (hdiag : ∀ i, Var[X i; μ] ≤ C)
    (hoff : ∀ i j, i ≠ j → cov[X i, X j; μ] ≤ δ) (hε : 0 < ε) :
    μ {ω | ε ≤ |(∑ i, X i ω) - μ[fun z => ∑ i, X i z]|} ≤
      ENNReal.ofReal (((Fintype.card ι : ℝ) * C +
        (Fintype.card ι : ℝ) * ((Fintype.card ι : ℝ) - 1) * δ) / ε ^ 2) := by
  have hs : MemLp (fun ω => ∑ i, X i ω) 2 μ := by
    simpa using memLp_finsetSum Finset.univ (fun i _ => hX i)
  exact (meas_ge_le_variance_div_sq hs hε).trans
    (ENNReal.ofReal_le_ofReal (div_le_div_of_nonneg_right
      (variance_sum_le_covariance_budget X C δ hX hdiag hoff) (sq_nonneg ε)))

/-- The average has an actual expectation-centered probability bound.
Its off-diagonal term only vanishes when independently controlled. -/
theorem average_tail_le_covariance_budget (X : ι → Ω → ℝ) (C δ ε : ℝ)
    (hX : ∀ i, MemLp (X i) 2 μ)
    (hdiag : ∀ i, Var[X i; μ] ≤ C)
    (hoff : ∀ i j, i ≠ j → cov[X i, X j; μ] ≤ δ)
    (hcard : 0 < Fintype.card ι) (hε : 0 < ε) :
    let Y := fun ω => (Fintype.card ι : ℝ)⁻¹ * ∑ i, X i ω
    μ {ω | ε ≤ |Y ω - μ[Y]|} ≤ ENNReal.ofReal
      ((C / (Fintype.card ι : ℝ) + (1 - (Fintype.card ι : ℝ)⁻¹) * δ) / ε ^ 2) := by
  have hs : MemLp (fun ω => ∑ i, X i ω) 2 μ := by
    simpa using memLp_finsetSum Finset.univ (fun i _ => hX i)
  exact (meas_ge_le_variance_div_sq (hs.const_mul _) hε).trans
    (ENNReal.ofReal_le_ofReal (div_le_div_of_nonneg_right
      (variance_average_le_covariance_budget X C δ hX hdiag hoff hcard) (sq_nonneg ε)))
end GRWTSK.Probability.Moments
