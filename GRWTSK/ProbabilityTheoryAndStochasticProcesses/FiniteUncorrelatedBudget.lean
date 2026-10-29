import Mathlib.Probability.Moments.Variance
import Mathlib.Tactic

/-! Finite second-moment budgets for S3/S5 of the status manuscript.
Exact decorrelation and L² integrability are supplied, not inferred from GUE
labels, limiting correlation decay, or an arithmetic source. -/
namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments
open MeasureTheory ProbabilityTheory
open scoped ProbabilityTheory

variable {Ω ι : Type*} [MeasurableSpace Ω] [Fintype ι]
    {μ : Measure Ω} [IsProbabilityMeasure μ]

/-- Exact pairwise zero covariance suffices for this finite variance sum;
no converse from uncorrelatedness to independence is asserted. -/
theorem variance_sum_of_uncorrelated (X : ι → Ω → ℝ)
    (hX : ∀ i, MemLp (X i) 2 μ)
    (hoff : ∀ i j, i ≠ j → cov[X i, X j; μ] = 0) :
    Var[fun ω => ∑ i, X i ω; μ] = ∑ i, Var[X i; μ] := by
  classical
  rw [variance_fun_sum hX]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_eq_single i]
  · exact covariance_self (hX i).aemeasurable
  · intro j _ hji
    exact hoff i j (Ne.symm hji)
  · simp

/-- A diagonal variance bound controls the aggregate at finite cardinality. -/
theorem variance_sum_le_card_mul (X : ι → Ω → ℝ) (C : ℝ)
    (hX : ∀ i, MemLp (X i) 2 μ)
    (hoff : ∀ i j, i ≠ j → cov[X i, X j; μ] = 0)
    (hdiag : ∀ i, Var[X i; μ] ≤ C) :
    Var[fun ω => ∑ i, X i ω; μ] ≤ (Fintype.card ι : ℝ) * C := by
  rw [variance_sum_of_uncorrelated X hX hoff]
  calc
    _ ≤ ∑ _i : ι, C := Finset.sum_le_sum (fun i _ => hdiag i)
    _ = _ := by simp
/-- With N>0, the normalized sum has variance at most C/N.
This is a second-moment statement, not almost-sure convergence or a deterministic bound. -/
theorem variance_average_le (X : ι → Ω → ℝ) (C : ℝ)
    (hX : ∀ i, MemLp (X i) 2 μ)
    (hoff : ∀ i j, i ≠ j → cov[X i, X j; μ] = 0)
    (hdiag : ∀ i, Var[X i; μ] ≤ C) (hcard : 0 < Fintype.card ι) :
    Var[fun ω => (Fintype.card ι : ℝ)⁻¹ * ∑ i, X i ω; μ] ≤
      C / (Fintype.card ι : ℝ) := by
  rw [variance_const_mul]
  have hn : (Fintype.card ι : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hcard)
  calc
    _ ≤ ((Fintype.card ι : ℝ)⁻¹) ^ 2 * ((Fintype.card ι : ℝ) * C) :=
      mul_le_mul_of_nonneg_left (variance_sum_le_card_mul X C hX hoff hdiag) (sq_nonneg _)
    _ = _ := by field_simp [hn]
end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments
