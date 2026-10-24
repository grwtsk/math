# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant8cd6923627d9754985972f9d43739d79140efeee4a1ab5192e8fca2490e8c59e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5bc4d278435adb27f5a567e17ca9763436c5950` · SHA-256 `1c9b8001c356d837463617a7de266b93d979357f44f2a9f616d248e4a81ab37b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScaleWeight.Variantbbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ScaleWeight.Variantbbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4","mathematical_subject":"Analysis.Calculus","original_sha256":"bbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/bbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceCorrelationPolynomial
import FormalResearch.RiemannHypothesis.Landau.Correction

/-!
# Exact scale primitive of the unchanged signed correlation

The polynomial transport is restricted to the actual positive half-support.
The antiderivative is a polynomial in scale; no negative exponent is used.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScaleWeight.Variantbbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateScalePrimitive

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateSourceCorrelationPolynomial

noncomputable section

/-- The actual source weight, with its normalization retained. -/
def scaleWeight (A : ℝ) : ℝ := A^17 * sourceNormalization A

/-- Coefficients of the already proved right-half bump autocorrelation. -/
def bumpCoefficient : ℕ → ℝ
  | 0 => 65536/109395
  | 2 => -65536/45045
  | 4 => 8192/5005
  | 6 => -4096/3465
  | 8 => 256/315
  | 9 => -128/315
  | 11 => 128/3465
  | 13 => -16/5005
  | 15 => 8/45045
  | 17 => -1/218790
  | _ => 0

/-- Derivative corrections occur only at indices for which their exponents exist. -/
def scaleCoefficient (j : ℕ) (t : ℝ) : ℝ :=
  t^j/16 - (if 2 ≤ j then (j:ℝ)*(j-1)/2 * t^(j-2) else 0) +
    (if 4 ≤ j then (j:ℝ)*(j-1)*(j-2)*(j-3)*t^(j-4) else 0)

/-- The polynomial obtained after clearing the actual source normalization. -/
def scalePolynomial (A t : ℝ) : ℝ :=
  ∑ j ∈ Finset.range 18, bumpCoefficient j * scaleCoefficient j t * A^(17-j)

/-- Exact antiderivative in scale, with positive denominators on its finite inventory. -/
def scalePrimitive (A t : ℝ) : ℝ :=
  ∑ j ∈ Finset.range 18,
    bumpCoefficient j * scaleCoefficient j t * A^(18-j) / ((18-j : ℕ) : ℝ)

/-- The coefficient list is proved equal to the original local polynomial. -/
theorem bumpCorrelation_eq_coefficients (v : ℝ) :
    bumpCorrelation v = ∑ j ∈ Finset.range 18, bumpCoefficient j * v^j := by
  norm_num [Finset.sum_range_succ, bumpCoefficient, bumpCorrelation]
  ring

/-- The polynomial itself vanishes at the moving product-support endpoint. -/
theorem scalePolynomial_upper_seam (A : ℝ) : scalePolynomial A (2*A) = 0 := by
  norm_num [scalePolynomial, scaleCoefficient, bumpCoefficient, Finset.sum_range_succ]
  ring

/-- Every scale-primitive denominator is strictly positive. -/
theorem primitive_denominator_pos (j : ℕ) (hj : j ∈ Finset.range 18) :
    0 < ((18-j : ℕ) : ℝ) := by
  have h := Finset.mem_range.mp hj
  exact_mod_cast (show 0 < 18-j by omega)

/-- Algebraic differentiation holds at all scales, independently of source support. -/
theorem scalePrimitive_hasDerivAt (A t : ℝ) :
    HasDerivAt (fun x ↦ scalePrimitive x t) (scalePolynomial A t) A := by
  unfold scalePrimitive scalePolynomial
  apply HasDerivAt.fun_sum
  intro j hj
  have hpos := primitive_denominator_pos j hj
  have he : 18-j-1 = 17-j := by have := Finset.mem_range.mp hj; omega
  exact ((((hasDerivAt_id A).pow (18-j)).const_mul
    (bumpCoefficient j * scaleCoefficient j t)).div_const ((18-j : ℕ) : ℝ)).congr_deriv (by
      dsimp
      rw [he]
      field_simp)

/-- Clearing normalization agrees with the actual source only on its proved half-support. -/
theorem scalePolynomial_eq_source (A t : ℝ) (hA : 1 ≤ A)
    (ht : 0 ≤ t) (htA : t ≤ 2 * A) :
    scalePolynomial A t = scaleWeight A * sourceCorrelation explicitSecondDerivative A t := by
  have hA0 : 0 < A := by linarith
  have hz := ne_of_gt (source_normalization_pos A hA)
  have hs := sourceCorrelation_eq_polynomial A (t/A) hA (div_nonneg ht hA0.le)
    ((div_le_iff₀ hA0).2 (by linarith))
  rw [mul_div_cancel₀ _ hA0.ne'] at hs
  rw [hs]
  norm_num [scalePolynomial, scaleCoefficient, bumpCoefficient, Finset.sum_range_succ,
    scaleWeight, bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]
  field_simp
  ring

/-- The supported weighted source has a genuine interval integral with this primitive. -/
theorem integral_weighted_correlation (t a b : ℝ) (ha : 1 ≤ a) (hab : a ≤ b)
    (ht : 0 ≤ t) (hta : t ≤ 2 * a) :
    (∫ A in a..b, scaleWeight A * sourceCorrelation explicitSecondDerivative A t) =
      scalePrimitive b t - scalePrimitive a t := by
  have he : (∫ A in a..b, scaleWeight A * sourceCorrelation explicitSecondDerivative A t) =
      ∫ A in a..b, scalePolynomial A t := by
    apply intervalIntegral.integral_congr
    intro A hA
    rw [uIcc_of_le hab] at hA
    exact (scalePolynomial_eq_source A t (ha.trans hA.1) ht (by linarith [hA.1])).symm
  rw [he]
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro A _
    exact scalePrimitive_hasDerivAt A t
  · exact (by unfold scalePolynomial; fun_prop :
      Continuous (fun A ↦ scalePolynomial A t)).intervalIntegrable _ _

/-- The original normalization has an explicit uniform upper bound for real scale at least one. -/
theorem sourceNormalization_le (A : ℝ) (hA : 1 ≤ A) :
    sourceNormalization A ≤ 45056/1105 := by
  have h2 : 1 ≤ A^2 := by nlinarith
  have h4 : 1 ≤ A^4 := by nlinarith [sq_nonneg (A^2-1)]
  have h2' : (1:ℝ)/A^2 ≤ 1 := (div_le_one (by positivity)).2 h2
  have h4' : (1:ℝ)/A^4 ≤ 1 := (div_le_one (by positivity)).2 h4
  unfold sourceNormalization
  have h := add_le_add
    (mul_le_mul_of_nonneg_left h2' (by norm_num : (0:ℝ) ≤ (131072/45045)/2))
    (mul_le_mul_of_nonneg_left h4' (by norm_num : (0:ℝ) ≤ 196608/5005))
  simp only [div_eq_mul_inv, mul_inv_rev] at h ⊢
  nlinarith

/-- The scale weight is positive on the complete admitted real range. -/
theorem scaleWeight_pos (A : ℝ) (hA : 1 ≤ A) : 0 < scaleWeight A :=
  mul_pos (pow_pos (by linarith) _) (source_normalization_pos A hA)

/-- A polynomial upper bound for the actual scale weight, retaining its normalization. -/
theorem scaleWeight_le (A : ℝ) (hA : 1 ≤ A) :
    scaleWeight A ≤ (45056/1105)*A^17 := by
  unfold scaleWeight
  nlinarith [mul_le_mul_of_nonneg_left (sourceNormalization_le A hA)
    (pow_nonneg (by linarith : 0 ≤ A) 17)]

end
end EstimateScalePrimitive
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
