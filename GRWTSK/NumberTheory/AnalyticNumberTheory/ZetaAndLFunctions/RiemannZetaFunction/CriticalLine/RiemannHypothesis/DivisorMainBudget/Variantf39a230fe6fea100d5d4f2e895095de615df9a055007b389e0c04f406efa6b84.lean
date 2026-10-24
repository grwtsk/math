-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ComparisonBudget.Variantae34a42297b11b4cdb27942d00b3e3ff97438986792af8db4ec2b288c8d46bf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae34a42297b11b4cdb27942d00b3e3ff97438986792af8db4ec2b288c8d46bf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ComparisonBudget.Variantae34a42297b11b4cdb27942d00b3e3ff97438986792af8db4ec2b288c8d46bf7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ae34a42297b11b4cdb27942d00b3e3ff97438986792af8db4ec2b288c8d46bf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/DivisorMainBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.DivisorMainComparison
import FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorSchedule
import FormalResearch.RiemannHypothesis.SourceComparison.WeightedResidualNorm

/-! The original signed arithmetic error, compared with its complete divisor main term. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ComparisonBudget.Variantae34a42297b11b4cdb27942d00b3e3ff97438986792af8db4ec2b288c8d46bf7

set_option autoImplicit false
namespace DivisorMainBudgetScratch
open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open DampedDivisorSchedule SourceTailSchedule SourceWeightedMultiplier DivisorMainComparison
open ArithmeticErrorIntegrability
noncomputable section

/-- All three comparison budgets vanish, uniformly in the retained smoothing parameter. -/
def comparisonBudget (X : ℕ) : ℝ :=
  ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
    (logScale X ^ 2 / (X : ℝ) + 3 / Real.sqrt (X : ℝ) +
      25 * logScale X ^ 3 / Real.sqrt (X : ℝ))

/-- The exact original error retains the full signed post-cutoff divisor main term. -/
theorem arithmeticError_le_main_budget (X : ℕ) (hX : 4 ≤ X) (h : ℝ) (hh : 0 ≤ h) :
    Real.sqrt (arithmeticErrorSq X (fastEpsilon X) h) ≤
      ‖sourceMultiplier (fastEpsilon X) h (fast_schedule_admissible X hX).1
        (fast_schedule_admissible X hX).2.1 hh
        (divisorMainVector X (fastEpsilon X) (by omega)
          (fast_schedule_admissible X hX).1.le (cutoffSchedule X)
          (fast_schedule_admissible X hX).2.2)‖ + comparisonBudget X := by
  obtain ⟨he, hes, hY⟩ := fast_schedule_admissible X hX
  obtain ⟨hn, hp⟩ := fast_endpoint_bounds X hX
  have ht := fast_taylor_bound X hX
  have hB : 0 ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) := by positivity
  have hd := filtered_core_main_norm_difference_le X (fastEpsilon X) (by omega)
    h he hes hh (cutoffSchedule X) hY
  have hc := (abs_le.mp hd).2
  have hn' := mul_le_mul_of_nonneg_left hn hB
  have hp' := mul_le_mul_of_nonneg_left hp hB
  have ht' := mul_le_mul_of_nonneg_left ht hB
  have hb := WeightedResidualNorm.arithmeticError_le_core_tails X (fastEpsilon X)
    (by omega) h he hes hh (cutoffSchedule X) hY
  simp only [← mul_div_assoc] at hp' hn' ht'
  unfold comparisonBudget
  simp only [mul_add, ← mul_div_assoc]
  linarith

/-- The proved comparison error tends to zero; no claim about the main norm is assumed. -/
theorem comparisonBudget_tendsto_zero : Tendsto comparisonBudget atTop (nhds 0) := by
  obtain ⟨_, hn, hp, ht⟩ := fast_explicit_budgets_tendsto
  change Tendsto (fun X : ℕ => ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
    (logScale X ^ 2 / (X : ℝ) + 3 / Real.sqrt (X : ℝ) +
      25 * logScale X ^ 3 / Real.sqrt (X : ℝ))) atTop (nhds 0)
  simpa only [add_zero, mul_zero] using ((hn.add hp).add ht).const_mul
    ((4 / 3 : ℝ) * Real.exp (1 / 4))

end
end DivisorMainBudgetScratch
