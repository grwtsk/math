# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPolynomialWeightedCriticalVariation.Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c5e65afba1f0c24c84364d80d38e4e86265fc3d` · SHA-256 `dc810f6b9d9a5903406f85bd6a14ee144ea90e40fb6020cd335e51950fb7611e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPolynomialWeightedCriticalVariation.Variant3879572091d4e09475f68adf0df3264bb6c75e428da3941b03e16e5959d15999","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3879572091d4e09475f68adf0df3264bb6c75e428da3941b03e16e5959d15999","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualPolynomialWeightedCriticalVariation.Variant3879572091d4e09475f68adf0df3264bb6c75e428da3941b03e16e5959d15999","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3879572091d4e09475f68adf0df3264bb6c75e428da3941b03e16e5959d15999","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T020109Z-1791338469130596000/ActualPolynomialWeightedCriticalVariation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePhaseMassFTC

/-!
Polynomial weighting does not uniformly bound the literal critical test's
derivative variation. This concerns an absolute-value method budget, not the
actual signed Mangoldt work or the original source estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPolynomialWeightedCriticalVariation.Variant3879572091d4e09475f68adf0df3264bb6c75e428da3941b03e16e5959d15999

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ActualPolynomialWeightedCriticalVariation

open MeasureTheory Filter Set SourceFirstPrimeAbel SourcePhaseMassFTC
open scoped Interval Topology

noncomputable section

/-- The literal critical derivative variation with a quadratic time weight. -/
def actualPolynomialWeightedCriticalVariation (A : ℝ) : ℝ :=
  ∫ t in 0..2 * A, |deriv (criticalPrimeTest A) t| / (1 + t) ^ 2

/-- An explicit lower budget for that actual weighted variation. -/
def actualCriticalPolynomialVariationLowerBudget (A : ℝ) : ℝ :=
  ((7 / 4 : ℝ) * Real.exp (A / 80) - 1) / (9 * A ^ 2)

/-- The weight has no pole on the genuine nonnegative source interval. -/
theorem actualPolynomialWeightedCriticalVariation_intervalIntegrable
    {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => |deriv (criticalPrimeTest A) t| / (1 + t) ^ 2)
      volume 0 (2 * A) := by
  have hp : 0 < A := by linarith
  have hi : ContinuousOn
      (fun t => |deriv (criticalPrimeTest A) t| / (1 + t) ^ 2)
      (uIcc 0 (2 * A)) := by
    apply (criticalPrimeTest_contDiff A hp).continuous_deriv_one.abs.continuousOn.div
      (by fun_prop : Continuous (fun t : ℝ => (1 + t) ^ 2)).continuousOn
    intro t ht
    rw [uIcc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)] at ht
    exact ne_of_gt (pow_pos (by linarith [ht.1] : 0 < 1 + t) 2)
  exact hi.intervalIntegrable

/-- The exact source variation lower bound survives polynomial weighting. -/
theorem actualPolynomialWeightedCriticalVariation_ge_exponential
    {A : ℝ} (hA : 1 ≤ A) :
    ((7 / 4 : ℝ) * Real.exp (A / 80) - 1) / (1 + 2 * A) ^ 2 ≤
      actualPolynomialWeightedCriticalVariation A := by
  have hp : 0 < A := by linarith
  have hi := (criticalPrimeTest_contDiff A hp).continuous_deriv_one.abs.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have hw := actualPolynomialWeightedCriticalVariation_intervalIntegrable hA
  have hm : (∫ t in 0..2 * A, |deriv (criticalPrimeTest A) t| / (1 + 2 * A) ^ 2) ≤
      actualPolynomialWeightedCriticalVariation A := by
    apply intervalIntegral.integral_mono_on (by linarith) (hi.div_const _) hw
    intro t ht
    apply div_le_div_of_nonneg_left (abs_nonneg _) (by positivity)
    nlinarith [ht.1, ht.2]
  rw [intervalIntegral.integral_div_const] at hm
  exact (div_le_div_of_nonneg_right
    (criticalPrimeTest_variation_ge_early_exponential hA) (sq_nonneg _)).trans hm

/-- A simpler polynomial denominator still gives an actual exponential lower budget. -/
theorem actualPolynomialWeightedCriticalVariation_ge_lowerBudget
    {A : ℝ} (hA : 1 ≤ A) :
    actualCriticalPolynomialVariationLowerBudget A ≤
      actualPolynomialWeightedCriticalVariation A := by
  unfold actualCriticalPolynomialVariationLowerBudget
  have he : 1 ≤ Real.exp (A / 80) := Real.one_le_exp_iff.mpr (by linarith)
  have h := div_le_div_of_nonneg_left
    (by linarith : 0 ≤ (7 / 4 : ℝ) * Real.exp (A / 80) - 1)
    (by positivity : 0 < (1 + 2 * A) ^ 2)
    (by nlinarith : (1 + 2 * A) ^ 2 ≤ 9 * A ^ 2)
  exact h.trans (actualPolynomialWeightedCriticalVariation_ge_exponential hA)

/-- The explicit method budget grows at every real scale, not only on integers. -/
theorem actualCriticalPolynomialVariationLowerBudget_tendsto_atTop :
    Tendsto actualCriticalPolynomialVariationLowerBudget atTop atTop := by
  have ha : Tendsto (fun A : ℝ => A / 80) atTop atTop :=
    tendsto_id.atTop_div_const (by norm_num)
  have h := (Real.tendsto_mul_exp_add_div_pow_atTop (7 / 4) (-1) 2
    (by norm_num)).comp ha
  convert h.const_mul_atTop (by norm_num : 0 < (1 / 57600 : ℝ)) using 1
  ext A
  unfold actualCriticalPolynomialVariationLowerBudget
  simp only [Function.comp_apply, div_pow, div_div, mul_div_assoc]
  ring

/-- The actual weighted derivative variation has no eventual uniform upper budget. -/
theorem actualPolynomialWeightedCriticalVariation_not_eventually_bounded :
    ¬ ∃ B R : ℝ, ∀ A : ℝ, 1 ≤ A → R ≤ A →
      actualPolynomialWeightedCriticalVariation A ≤ B := by
  rintro ⟨B, R, h⟩
  obtain ⟨S, hS⟩ := eventually_atTop.mp
    (actualCriticalPolynomialVariationLowerBudget_tendsto_atTop.eventually_gt_atTop B)
  let A : ℝ := max 1 (max R S)
  have hA : 1 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hSA : S ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hl := actualPolynomialWeightedCriticalVariation_ge_lowerBudget hA
  have hh := hS A hSA
  have hu := h A hA hR
  linarith

end
end FormalResearch.RiemannHypothesis.ActualPolynomialWeightedCriticalVariation
```
