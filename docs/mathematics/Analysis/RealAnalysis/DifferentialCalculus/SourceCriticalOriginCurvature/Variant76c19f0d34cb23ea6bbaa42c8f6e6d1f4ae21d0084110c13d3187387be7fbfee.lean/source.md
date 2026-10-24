# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCriticalOriginCurvature.Variant76c19f0d34cb23ea6bbaa42c8f6e6d1f4ae21d0084110c13d3187387be7fbfee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b335a458171097b7ecf9c60fecf37056e49f446` · SHA-256 `e52bd681d7ca19b154de08b5ffdc3007a3910f384a731ef8e4ad34809596a1f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PairedTailTestSecondDerivAtZeroEqEnergy.Variant5bdec7810e15b89ea47044131333649fae3e1daee01cbf0c2d6108e42cf528e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bdec7810e15b89ea47044131333649fae3e1daee01cbf0c2d6108e42cf528e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PairedTailTestSecondDerivAtZeroEqEnergy.Variant5bdec7810e15b89ea47044131333649fae3e1daee01cbf0c2d6108e42cf528e1","mathematical_subject":"Analysis.Calculus","original_sha256":"5bdec7810e15b89ea47044131333649fae3e1daee01cbf0c2d6108e42cf528e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/principal-origin/prepared-v1/SourceCriticalOriginCurvature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase

/-!
# Actual paired curvature at the origin

Research candidate; local/kernel/main acceptance are separate receipt gates.
The origin lies in the strict positive derivative phase of the actual critical
test. Its paired curvature is the actual normalized derivative energy minus
one quarter. The exact coefficient polynomials give a scale threshold of seven;
the source at scale one retains the opposite sign. No global paired C2 premise,
prime-error estimate or uniform signed arithmetic witness is introduced.

Research direction, selection and evaluation: grwtsk contributors.
Construction: OpenAI Codex; independent AI review is a separate gate.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PairedTailTestSecondDerivAtZeroEqEnergy.Variant5bdec7810e15b89ea47044131333649fae3e1daee01cbf0c2d6108e42cf528e1

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalOriginCurvature

open MeasureTheory
open SourcePairing SourcePairedTailTest SourceFirstPrimeAbel SourceCriticalCurvaturePhase
open SourceCorrelationCurvature SourceDerivativeEnergy SourceDerivativeCoefficientBound
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

/-- The actual strict-positive origin phase gives derivative energy minus one quarter. -/
theorem pairedTailTest_second_deriv_at_zero_eq_energy
    {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (pairedTailTest A)) 0 =
      (∫ x : ℝ, (deriv (SourcePairing.normalizedTest explicitSecondDerivative A) x) ^ 2) -
        1 / 4 := by
  have hp : 0 < A := by linarith
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hp)).1 0).hasDerivAt
  have hcn : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt
      (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A :=
    funext (sourceCorrelation_even A)
  rw [he] at hn
  have hc0 : deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
    have hd := hc.unique hn
    linarith
  have hg : deriv (criticalPrimeTest A) 0 = 1 / 2 := by
    rw [criticalPrimeTest_deriv A 0 hp, hc0, actual_correlation_at_zero A hA]
    norm_num
  have hphase : 0 < deriv (criticalPrimeTest A) 0 := by rw [hg]; norm_num
  have hc2 : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 =
      -(∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
    simpa only [sub_zero, ← pow_two] using sourceCorrelation_second_deriv_eq_integral hp 0
  rw [pairedTailTest_second_deriv_eq_neg_of_deriv_pos hA hphase,
    criticalPrimeTest_second_deriv_eq_correlation hp, hc0,
    actual_correlation_at_zero A hA, hc2]
  simp only [zero_div, Real.exp_zero, one_mul]
  ring

/-- A positive shifted cubic proves the exact source curvature is negative from scale seven. -/
theorem pairedTailTest_second_deriv_at_zero_neg_of_seven_le
    {A : ℝ} (hA : 7 ≤ A) :
    deriv (deriv (pairedTailTest A)) 0 < 0 := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  let x : ℝ := A ^ 2
  let E : ℝ := ∫ u : ℝ, (deriv (normalizedTest explicitSecondDerivative A) u) ^ 2
  have hx49 : 49 ≤ x := by dsimp only [x]; nlinarith
  have hx : 0 < x := by linarith
  have hxn : x ≠ 0 := ne_of_gt hx
  have hy : 0 ≤ x - 49 := by linarith
  have hidentity :
      x ^ 3 * (normPolynomial x⁻¹ - 4 * x⁻¹ * derivativePolynomial x⁻¹) =
        (4096 / 109395 : ℝ) * (x - 49) ^ 3 +
          (954368 / 153153 : ℝ) * (x - 49) ^ 2 +
          (46206976 / 153153 : ℝ) * (x - 49) + 629731328 / 765765 := by
    unfold normPolynomial derivativePolynomial
    field_simp [hxn]
    ring
  have hproduct :
      0 < x ^ 3 * (normPolynomial x⁻¹ - 4 * x⁻¹ * derivativePolynomial x⁻¹) := by
    rw [hidentity]
    positivity
  have hgap : 0 < normPolynomial x⁻¹ - 4 * x⁻¹ * derivativePolynomial x⁻¹ :=
    (mul_pos_iff_of_pos_left (pow_pos hx 3)).mp hproduct
  have hcancel :
      x * (normPolynomial x⁻¹ - 4 * x⁻¹ * derivativePolynomial x⁻¹) =
        x * normPolynomial x⁻¹ - 4 * derivativePolynomial x⁻¹ := by
    field_simp [hxn]
    ring
  have hscaled : 0 < x * normPolynomial x⁻¹ - 4 * derivativePolynomial x⁻¹ := by
    rw [← hcancel]
    exact mul_pos hx hgap
  have hn : 0 < normPolynomial x⁻¹ := normPolynomial_pos _ (inv_nonneg.mpr hx.le)
  have hratio : derivativePolynomial x⁻¹ / normPolynomial x⁻¹ < x / 4 := by
    apply (div_lt_iff₀ hn).2
    nlinarith
  have he : x * E = derivativePolynomial x⁻¹ / normPolynomial x⁻¹ :=
    actual_derivative_energy_eq hp
  have hxE : x * E < x * (1 / 4) := by
    calc
      x * E = derivativePolynomial x⁻¹ / normPolynomial x⁻¹ := he
      _ < x / 4 := hratio
      _ = x * (1 / 4) := by ring
  have henergy : E < 1 / 4 := (mul_lt_mul_iff_right₀ hx).mp hxE
  rw [pairedTailTest_second_deriv_at_zero_eq_energy hA1]
  change E - 1 / 4 < 0
  exact sub_neg.mpr henergy

/-- The exact actual scale-one value is positive, guarding a false all-scale sign claim. -/
theorem pairedTailTest_second_deriv_at_zero_one
    : deriv (deriv (pairedTailTest (1 : ℝ))) 0 = 643681 / 30492 := by
  rw [pairedTailTest_second_deriv_at_zero_eq_energy (by norm_num : (1 : ℝ) ≤ 1)]
  have he := actual_derivative_energy_eq (by norm_num : (0 : ℝ) < 1)
  norm_num [normPolynomial, derivativePolynomial] at he
  linarith

end FormalResearch.RiemannHypothesis.SourceCriticalOriginCurvature
```
