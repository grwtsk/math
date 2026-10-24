# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.06SourceExactTailEnergy.Variant834c8273905972727fd237cb9fc955ff67747597903d8412c614c1e049b40167

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e33d54e535634d40c5bf3a58f3f742b39ff3ab40` · SHA-256 `dc91d0929ab20f8ef0e28df156817dba6f6ff12a70276f33eeb71e35fe69f000`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TailEnergyCoefficient.Varianta90dbeffdffd74dbcbfd2fc20002df2d2518fcb46194c526c7758512d684f3fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a90dbeffdffd74dbcbfd2fc20002df2d2518fcb46194c526c7758512d684f3fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.TailEnergyCoefficient.Varianta90dbeffdffd74dbcbfd2fc20002df2d2518fcb46194c526c7758512d684f3fe","mathematical_subject":"Analysis.Calculus","original_sha256":"a90dbeffdffd74dbcbfd2fc20002df2d2518fcb46194c526c7758512d684f3fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-whole-plain-followthrough/author-copy/source-copies/06-SourceExactTailEnergy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
Exact monotone radius calibration for the actual derivative energy.
This improves the existing F7 mean consumer; no arithmetic mean is constructed.
Research direction and conceptual origin: grwtsk contributors.
Finite algebra, source application and native proof construction: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TailEnergyCoefficient.Varianta90dbeffdffd74dbcbfd2fc20002df2d2518fcb46194c526c7758512d684f3fe

set_option autoImplicit false
noncomputable section

namespace RH16ExactTailEnergy

open MeasureTheory
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDerivativeEnergy SourceDerivativeCoefficientBound
open SourceCorrelationEnergy SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- Exact physical derivative energy coefficient, preserving source normalization. -/
def tailEnergyCoefficient (R : ℝ) : ℝ :=
  derivativePolynomial ((R ^ 2)⁻¹) / normPolynomial ((R ^ 2)⁻¹)

/-- The cross-multiplied ratio comparison has strictly positive coefficients. -/
theorem exact_ratio_comparison (x y : ℝ) :
    derivativePolynomial y * normPolynomial x -
      derivativePolynomial x * normPolynomial y =
    (y - x) * ((134217728 / 285073425 : ℝ) +
      (94757715968 / 3832653825 : ℝ) * (x + y) +
      (2147483648 / 4601025 : ℝ) * x * y) := by
  unfold derivativePolynomial normPolynomial
  ring

/-- Monotonicity holds on the full nonnegative parameter axis. -/
theorem exact_ratio_mono {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    derivativePolynomial x / normPolynomial x ≤
      derivativePolynomial y / normPolynomial y := by
  have hy : 0 ≤ y := hx.trans hxy
  apply (div_le_div_iff₀ (normPolynomial_pos x hx) (normPolynomial_pos y hy)).mpr
  have hnon : 0 ≤ (y - x) * ((134217728 / 285073425 : ℝ) +
      (94757715968 / 3832653825 : ℝ) * (x + y) +
      (2147483648 / 4601025 : ℝ) * x * y) := by positivity
  rw [← exact_ratio_comparison] at hnon
  linarith

theorem tailEnergyCoefficient_pos (R : ℝ) : 0 < tailEnergyCoefficient R := by
  unfold tailEnergyCoefficient derivativePolynomial
  exact div_pos (by positivity) (normPolynomial_pos _ (inv_nonneg.mpr (sq_nonneg R)))

/-- A larger physical radius has a smaller exact energy coefficient. -/
theorem tailEnergyCoefficient_antitone {R A : ℝ} (hR : 0 < R) (hRA : R ≤ A) :
    tailEnergyCoefficient A ≤ tailEnergyCoefficient R := by
  have hA : 0 < A := hR.trans_le hRA
  apply exact_ratio_mono (inv_nonneg.mpr (sq_nonneg A))
  apply inv_le_inv₀ (sq_pos_of_pos hA) (sq_pos_of_pos hR) |>.mpr
  nlinarith

/-- The exact energy, not the all-radius majorant, is applied to actual bytes. -/
theorem actual_derivative_energy_le_tail {R A : ℝ} (hR : 0 < R) (hRA : R ≤ A) :
    (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) ≤
      tailEnergyCoefficient R / A ^ 2 := by
  have hA : 0 < A := hR.trans_le hRA
  apply (le_div_iff₀ (sq_pos_of_pos hA)).mpr
  rw [mul_comm, actual_derivative_energy_eq hA]
  exact tailEnergyCoefficient_antitone hR hRA

/-- Exact Cauchy-Schwarz with the unchanged unit norm gives the first derivative. -/
theorem actual_correlation_deriv_abs_le_tail {R A : ℝ} (hR : 1 ≤ R)
    (hRA : R ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
      Real.sqrt (tailEnergyCoefficient R) / A := by
  have hRp : 0 < R := by linarith
  have hAp : 0 < A := hRp.trans_le hRA
  apply abs_le_of_sq_le_sq ?_ (by positivity)
  rw [div_pow, Real.sq_sqrt (tailEnergyCoefficient_pos R).le]
  exact (sourceCorrelation_deriv_square_le_energy (hR.trans hRA) t).trans
    (actual_derivative_energy_le_tail hRp hRA)

/-- The same actual energy controls curvature at every separation. -/
theorem actual_correlation_second_deriv_abs_le_tail {R A : ℝ} (hR : 1 ≤ R)
    (hRA : R ≤ A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      tailEnergyCoefficient R / A ^ 2 := by
  have hRp : 0 < R := by linarith
  exact (sourceCorrelation_second_deriv_abs_le_energy (hRp.trans_le hRA) t).trans
    (actual_derivative_energy_le_tail hRp hRA)

/-- The exactly evaluated coefficient at the existing source consumer radius. -/
theorem tailEnergyCoefficient_ninety_one :
    tailEnergyCoefficient 91 = (2362115626 / 482284503 : ℝ) := by
  norm_num [tailEnergyCoefficient, derivativePolynomial, normPolynomial]

theorem tailEnergyCoefficient_ninety_one_lt_five : tailEnergyCoefficient 91 < 5 := by
  rw [tailEnergyCoefficient_ninety_one]
  norm_num

/-- A convenient rational majorant for any source radius at least 91. -/
theorem tailEnergyCoefficient_le_five {R : ℝ} (hR : 91 ≤ R) :
    tailEnergyCoefficient R ≤ 5 :=
  (tailEnergyCoefficient_antitone (by norm_num : (0 : ℝ) < 91) hR).trans
    tailEnergyCoefficient_ninety_one_lt_five.le

/-- Both physical derivatives retain their exact simultaneous radius calibration. -/
theorem actual_correlation_derivative_bounds {R A : ℝ} (hR : 1 ≤ R)
    (hRA : R ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
        Real.sqrt (tailEnergyCoefficient R) / A ∧
      |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
        tailEnergyCoefficient R / A ^ 2 :=
  ⟨actual_correlation_deriv_abs_le_tail hR hRA t,
    actual_correlation_second_deriv_abs_le_tail hR hRA t⟩

end RH16ExactTailEnergy
```
