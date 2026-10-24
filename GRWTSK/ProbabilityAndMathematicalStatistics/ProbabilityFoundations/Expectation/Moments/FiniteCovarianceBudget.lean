import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.FiniteUncorrelatedBudget

/-! Approximate decorrelation budgets for S3/S5. A uniform off-diagonal bound
is retained explicitly; its contribution is not silently set to zero. -/
namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments
open MeasureTheory ProbabilityTheory
open scoped ProbabilityTheory
variable {Ω ι : Type*} [MeasurableSpace Ω] [Fintype ι]
    {μ : Measure Ω} [IsProbabilityMeasure μ]

/-- A finite covariance budget retains every off-diagonal contribution. -/
theorem variance_sum_le_covariance_budget (X : ι → Ω → ℝ) (C δ : ℝ)
    (hX : ∀ i, MemLp (X i) 2 μ)
    (hdiag : ∀ i, Var[X i; μ] ≤ C)
    (hoff : ∀ i j, i ≠ j → cov[X i, X j; μ] ≤ δ) :
    Var[fun ω => ∑ i, X i ω; μ] ≤
      (Fintype.card ι : ℝ) * C +
        (Fintype.card ι : ℝ) * ((Fintype.card ι : ℝ) - 1) * δ := by
  classical
  rw [variance_fun_sum hX]
  calc
    _ ≤ ∑ i : ι, ∑ j : ι, (δ + if j = i then C - δ else 0) := by
      apply Finset.sum_le_sum
      intro i _
      apply Finset.sum_le_sum
      intro j _
      by_cases hij : j = i
      · subst j
        simpa [covariance_self (hX i).aemeasurable] using hdiag i
      · simpa [hij] using hoff i j (Ne.symm hij)
    _ = _ := by simp [Finset.sum_add_distrib]; ring

/-- Normalization yields C/N+(1−1/N)δ, rather than C/N alone. -/
theorem variance_average_le_covariance_budget (X : ι → Ω → ℝ) (C δ : ℝ)
    (hX : ∀ i, MemLp (X i) 2 μ)
    (hdiag : ∀ i, Var[X i; μ] ≤ C)
    (hoff : ∀ i j, i ≠ j → cov[X i, X j; μ] ≤ δ)
    (hcard : 0 < Fintype.card ι) :
    Var[fun ω => (Fintype.card ι : ℝ)⁻¹ * ∑ i, X i ω; μ] ≤
      C / (Fintype.card ι : ℝ) + (1 - (Fintype.card ι : ℝ)⁻¹) * δ := by
  rw [variance_const_mul]
  have hn : (Fintype.card ι : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hcard)
  calc
    _ ≤ ((Fintype.card ι : ℝ)⁻¹) ^ 2 *
        ((Fintype.card ι : ℝ) * C +
          (Fintype.card ι : ℝ) * ((Fintype.card ι : ℝ) - 1) * δ) :=
      mul_le_mul_of_nonneg_left
        (variance_sum_le_covariance_budget X C δ hX hdiag hoff) (sq_nonneg _)
    _ = _ := by field_simp [hn]
end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments
