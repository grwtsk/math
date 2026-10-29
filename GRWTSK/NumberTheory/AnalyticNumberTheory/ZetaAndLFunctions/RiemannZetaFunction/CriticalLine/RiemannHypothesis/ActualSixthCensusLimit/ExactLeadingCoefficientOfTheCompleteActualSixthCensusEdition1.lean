import FormalResearch.RiemannHypothesis.Conversation.ActualSixthMomentLimit
import FormalResearch.RiemannHypothesis.Conversation.ActualCensusSharpError

/-!
# Exact leading coefficient of the complete actual sixth census

The entire integer inventory and the paper's uniform finite error are
retained. Multiplication by A^9/exp(A/3) sends that error to zero, so the
unchanged source moment limit transports to the actual census coefficient
1959910318080. The square census retains its separate uniform pole bound.
Human exact-source and complete-census direction: grwtsk contributors.
Local asymptotic error consumer: OpenAI Codex. Qualified source and upstream
limits retain their origins. Ray phases, Mobius signs, collision zeros and
joint arithmetic profiles are absent here; no signed exceptional-Gram lower
bound or RH conclusion follows from this census.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusLimit
open ActualSourceLaplaceMoment ActualSourceLaplaceSign ActualSixthNormalizedFormula
open ActualSixthMomentLimit ActualCensusCutoff ActualCensusSharpError Filter
open scoped Topology
noncomputable section

def normalizedSixthCensus (A : ℝ) : ℝ := actualCensus A 6 * (A ^ 9 / Real.exp (A / 3))

theorem actual_census_normalized_error_price {A : ℝ} (hA : 1 ≤ A) :
    |normalizedSixthCensus A - normalizedSixthMoment A| ≤
      (2 * Real.sqrt (65 / 3) + 1) * (A ^ 9 / Real.exp (A / 3)) := by
  have heq : normalizedSixthCensus A - normalizedSixthMoment A =
      (actualCensus A 6 - (1 / 6) * (testMoment A (1 / 6)) ^ 2) *
        (A ^ 9 / Real.exp (A / 3)) := by
    unfold normalizedSixthCensus normalizedSixthMoment
    ring
  have hcost : 0 ≤ A ^ 9 / Real.exp (A / 3) := by positivity
  rw [heq, abs_mul, abs_of_nonneg hcost]
  exact mul_le_mul_of_nonneg_right
    (actual_census_exact_uniform_moment_error hA (by norm_num : (0 : ℝ) < 6)) hcost

theorem exponential_census_error_scale_tends_to_zero :
    Tendsto (fun A : ℝ ↦ A ^ 9 / Real.exp (A / 3)) atTop (𝓝 0) := by
  have h := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (9 : ℝ) (1 / 3) (by norm_num)
  have h' : Tendsto (fun A : ℝ ↦ A ^ 9 * Real.exp (-(1 / 3) * A)) atTop (𝓝 0) := by
    convert h using 1
    funext A
    norm_num only [Real.rpow_ofNat]
  have heq : (fun A : ℝ ↦ A ^ 9 * Real.exp (-(1 / 3) * A)) =
      fun A ↦ A ^ 9 / Real.exp (A / 3) := by
    funext A
    have he : Real.exp (-(1 / 3) * A) = Real.exp (-(A / 3)) := by
      congr 1
      ring
    rw [he, Real.exp_neg]
    rfl
  rw [heq] at h'
  exact h'

theorem actual_complete_sixth_census_leading_coefficient :
    Tendsto normalizedSixthCensus atTop (𝓝 (1959910318080 : ℝ)) := by
  have hbound : ∀ᶠ A : ℝ in atTop,
      |normalizedSixthCensus A - normalizedSixthMoment A| ≤
        (2 * Real.sqrt (65 / 3) + 1) * (A ^ 9 / Real.exp (A / 3)) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact actual_census_normalized_error_price hA
  have hpaid : Tendsto (fun A : ℝ ↦ (2 * Real.sqrt (65 / 3) + 1) *
      (A ^ 9 / Real.exp (A / 3))) atTop (𝓝 0) := by
    simpa only [mul_zero] using exponential_census_error_scale_tends_to_zero.const_mul
      (2 * Real.sqrt (65 / 3) + 1)
  have habs := squeeze_zero' (Filter.Eventually.of_forall
    (fun A : ℝ ↦ abs_nonneg (normalizedSixthCensus A - normalizedSixthMoment A))) hbound hpaid
  have hdiff : Tendsto (fun A : ℝ ↦ normalizedSixthCensus A - normalizedSixthMoment A)
      atTop (𝓝 0) := (tendsto_zero_iff_norm_tendsto_zero).mpr
        (by simpa only [Real.norm_eq_abs] using habs)
  simpa only [sub_add_cancel, zero_add] using hdiff.add actual_normalized_sixth_moment_limit

theorem actual_square_census_paper_uniform_bound {A : ℝ} (hA : 1 ≤ A) :
    |actualCensus A 2| ≤ 2 * Real.sqrt (65 / 3) + 1 := by
  have h := actual_census_exact_uniform_moment_error hA (by norm_num : (0 : ℝ) < 2)
  rw [actual_square_laplace_annihilated hA] at h
  simpa using h

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusLimit
