# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivativeAttempt01.Variantb5df7157d36ca8d00a3acced73106ede2f3d4f12457bc8c2486c22b71a5a1ece

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db99d3b4c084a9e0ff62baaba89f17b018f389c4` · SHA-256 `1e4c6e494485ca011611f5a07307e2c2d50a6aea2b8a9b22c23dd8a1118e99d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualNormalizationGeOneDiv.Variantd52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualNormalizationGeOneDiv.Variantd52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d","mathematical_subject":"Analysis.Calculus","original_sha256":"d52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-source-edge-recovery/derivative-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy

/-!
The genuine first derivative of the unchanged normalized correlation retains
the support-edge factor A^-9. The proof uses the actual compact C1 convolution
and both closed support endpoints. This finite-power edge bound supplies no
uniform signed arithmetic estimate.
AI attribution: OpenAI Codex mathematical research.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualNormalizationGeOneDiv.Variantd52503d7b8f58161c9e5c53f48abfb286514ed794fadeee09b0b2e9868b8323d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualEdgeCorrelationDerivative

open MeasureTheory Set
open SourcePairing SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateSourceEdgeProfile

noncomputable section

/-- The literal rational normalization has a fixed floor for every real scale. -/
theorem actualNormalization_ge_one_div_32 (A : ℝ) :
    (1 / 32 : ℝ) ≤ sourceNormalization A := by
  have h2 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
  have h4 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
  unfold sourceNormalization
  linarith

/-- The ordinary derivative of the actual endpoint numerator, in factored form. -/
def endpointDerivativePolynomial (A r : ℝ) : ℝ :=
  4 * r * (2 - r / A) * (1 - r / A) *
      (8 * (7 * (1 - r / A) ^ 2 - 1) - r ^ 2 * (2 - r / A) ^ 2 / 4) +
    r ^ 2 * (2 - r / A) ^ 2 *
      (-112 * (1 - r / A) / A - r * (2 - r / A) * (1 - r / A))

private theorem actual_deriv_eq_indicator (A : ℝ) (hA : 0 < A) :
    deriv (normalizedTest explicitSecondDerivative A) =
      (Icc (-A) A).indicator (normalizedInteriorDerivative A) := by
  rw [normalizedTest_eq_indicator A hA]
  exact funext fun x ↦ (indicator_hasDerivAt
    (normalizedInterior_hasDerivAt A) (normalizedInterior_frontier A hA) x).deriv

/-- Differentiation at the endpoint reverses the endpoint coordinate sign. -/
theorem actual_normalized_deriv_endpoint (A r : ℝ) (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    deriv (normalizedTest explicitSecondDerivative A) (A - r) =
      -endpointDerivativePolynomial A r /
        (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have hA0 : 0 < A := by linarith
  have hm : A - r ∈ Icc (-A) A := ⟨by linarith, by linarith⟩
  rw [actual_deriv_eq_indicator A hA0, indicator_of_mem hm]
  unfold normalizedInteriorDerivative thirdInterior firstInterior endpointDerivativePolynomial
  field_simp [hA0.ne', Real.sqrt_ne_zero'.mpr hA0,
    Real.sqrt_ne_zero'.mpr (source_normalization_pos A hA)]
  ring

/-- A fixed endpoint polynomial bound retains the genuine linear derivative vanishing. -/
theorem endpointDerivativePolynomial_abs_le (A r : ℝ) (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    |endpointDerivativePolynomial A r| ≤ 1280 * r + 16 * r ^ 3 := by
  have hA0 : 0 < A := by linarith
  have hq0 : 0 ≤ r / A := div_nonneg hr hA0.le
  have hq2 : r / A ≤ 2 := (div_le_iff₀ hA0).2 hrA
  have hv : |2 - r / A| ≤ 2 := by rw [abs_le]; constructor <;> linarith
  have hs : |1 - r / A| ≤ 1 := by rw [abs_le]; constructor <;> linarith
  have hv2 : (2 - r / A) ^ 2 ≤ 4 := by nlinarith
  have hs2 : (1 - r / A) ^ 2 ≤ 1 := by nlinarith
  have hc : |7 * (1 - r / A) ^ 2 - 1| ≤ 6 := by
    rw [abs_le]
    constructor <;> nlinarith [sq_nonneg (1 - r / A)]
  have hi : |8 * (7 * (1 - r / A) ^ 2 - 1) -
      r ^ 2 * (2 - r / A) ^ 2 / 4| ≤ 48 + r ^ 2 := by
    calc
      _ ≤ |8 * (7 * (1 - r / A) ^ 2 - 1)| +
        |r ^ 2 * (2 - r / A) ^ 2 / 4| := abs_sub _ _
      _ = 8 * |7 * (1 - r / A) ^ 2 - 1| +
        r ^ 2 * (2 - r / A) ^ 2 / 4 := by
          rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 8),
            abs_of_nonneg (by positivity)]
      _ ≤ _ := by nlinarith [mul_le_mul_of_nonneg_left hv2 (sq_nonneg r)]
  have hrv : |r * (2 - r / A) * (1 - r / A)| ≤ 2 * r := by
    rw [abs_mul, abs_mul, abs_of_nonneg hr]
    exact (mul_le_mul_of_nonneg_left
      (mul_le_mul hv hs (abs_nonneg _) (by norm_num)) hr).trans_eq (by ring)
  have hj : |-112 * (1 - r / A) / A -
      r * (2 - r / A) * (1 - r / A)| ≤ 112 / A + 2 * r := by
    calc
      _ ≤ |-112 * (1 - r / A) / A| +
        |r * (2 - r / A) * (1 - r / A)| := abs_sub _ _
      _ = 112 * |1 - r / A| / A +
        |r * (2 - r / A) * (1 - r / A)| := by
          rw [abs_div, abs_mul, abs_of_pos hA0]
          norm_num
      _ ≤ _ := add_le_add
        (div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hs (by norm_num)) hA0.le) hrv
  have hg : r ^ 2 * (2 - r / A) ^ 2 ≤ 4 * r ^ 2 := by
    nlinarith [mul_le_mul_of_nonneg_left hv2 (sq_nonneg r)]
  have hrr : r ^ 2 / A ≤ 2 * r := by
    rw [div_le_iff₀ hA0]
    nlinarith [mul_le_mul_of_nonneg_left hrA hr]
  unfold endpointDerivativePolynomial
  calc
    _ ≤ |4 * r * (2 - r / A) * (1 - r / A)| *
        |8 * (7 * (1 - r / A) ^ 2 - 1) - r ^ 2 * (2 - r / A) ^ 2 / 4| +
      |r ^ 2 * (2 - r / A) ^ 2| *
        |-112 * (1 - r / A) / A - r * (2 - r / A) * (1 - r / A)| := by
          exact (abs_add _ _).trans_eq (by rw [abs_mul, abs_mul])
    _ ≤ 8 * r * (48 + r ^ 2) + 4 * r ^ 2 * (112 / A + 2 * r) := by
      apply add_le_add
      · apply mul_le_mul _ hi (abs_nonneg _) (by positivity)
        have := mul_le_mul_of_nonneg_left hrv (show (0 : ℝ) ≤ 4 by norm_num)
        simpa only [← abs_mul, abs_of_nonneg (show (0 : ℝ) ≤ 4 by norm_num),
          mul_assoc] using this
      · apply mul_le_mul _ hj (abs_nonneg _) (by positivity)
        simpa only [abs_of_nonneg (show 0 ≤ r ^ 2 * (2 - r / A) ^ 2 by positivity)] using hg
    _ ≤ _ := by
      have := mul_le_mul_of_nonneg_left hrr (show (0 : ℝ) ≤ 448 by norm_num)
      nlinarith

/-- The exact finite overlap remains valid after differentiating the first factor. -/
theorem actual_correlation_deriv_edge_overlap (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) :
    deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - z) =
      ∫ x in A - z..A, deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - z)) := by
  have hA0 : 0 < A := by linarith
  have heq : (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - z))) =
      (Icc (A - z) A).indicator (fun x ↦
        deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - z))) := by
    funext x
    by_cases hm : x ∈ Icc (A - z) A
    · simp [hm]
    · have hf : deriv (normalizedTest explicitSecondDerivative A) x *
          normalizedTest explicitSecondDerivative A (x - (2 * A - z)) = 0 := by
        simp only [mem_Icc, not_and_or, not_le] at hm
        rcases hm with hl | hr
        · rw [normalizedTest_zero_of_le_abs A (x - (2 * A - z)) hA0
            (by rw [abs_of_nonpos (by linarith)]; linarith), mul_zero]
        · rw [actual_deriv_eq_indicator A hA0,
            indicator_of_notMem (show x ∉ Icc (-A) A by simp; linarith), zero_mul]
      simp [hm, hf]
  rw [sourceCorrelation_deriv_eq_integral hA0]
  calc
    _ = ∫ x, (Icc (A - z) A).indicator (fun x ↦
        deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - z))) x :=
      congrArg (fun f : ℝ → ℝ ↦ ∫ x, f x) heq
    _ = _ := zeroExtension_integral _ (A - z) A (by linarith)

/-- Genuine first-derivative support-edge identity, including its minus sign. -/
theorem actual_correlation_deriv_upper_edge (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) (hzA : z ≤ 2 * A) :
    deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - z) =
      -(1 / (A ^ 9 * sourceNormalization A)) *
        ∫ r in (0 : ℝ)..z,
          endpointDerivativePolynomial A r * endpointPolynomial A (z - r) := by
  have hA0 : 0 < A := by linarith
  rw [actual_correlation_deriv_edge_overlap A z hA hz]
  have hs := intervalIntegral.integral_comp_sub_left (a := (0 : ℝ)) (b := z)
    (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - z))) A
  simp only [sub_zero] at hs
  rw [← hs, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro r hr
  have hr' : r ∈ Icc (0 : ℝ) z := (uIcc_of_le hz) ▸ hr
  dsimp only
  rw [show A - r - (2 * A - z) = -(A - (z - r)) by ring,
    normalizedTest_even A hA (A - (z - r)),
    actual_normalized_deriv_endpoint A r hA hr'.1 (hr'.2.trans hzA),
    normalizedTest_endpoint A (z - r) hA (by linarith [hr'.2]) (by linarith [hr'.1])]
  have hZ := source_normalization_pos A hA
  field_simp [hA0.ne', hZ.ne', Real.sqrt_ne_zero'.mpr hA0, Real.sqrt_ne_zero'.mpr hZ]
  rw [Real.sq_sqrt hA0.le, Real.sq_sqrt hZ.le]
  ring

/-- A fixed nonnegative polynomial for the original first-derivative edge. -/
def edgeFirstPolynomial (z : ℝ) : ℝ := 2048 * z ^ 4 * (80 + z ^ 2) * (48 + z ^ 2)

/-- The true first derivative has the same A^-9 edge scale as the correlation. -/
theorem actual_correlation_deriv_upper_edge_abs_le (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) (hzA : z ≤ 2 * A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - z)| ≤
      edgeFirstPolynomial z / A ^ 9 := by
  have hA0 : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hi : |∫ r in (0 : ℝ)..z,
      endpointDerivativePolynomial A r * endpointPolynomial A (z - r)| ≤
      (1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4) * z := by
    have h := intervalIntegral.norm_integral_le_of_norm_le_const
      (a := (0 : ℝ)) (b := z)
      (f := fun r ↦ endpointDerivativePolynomial A r * endpointPolynomial A (z - r))
      (C := (1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4)) ?_
    · simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hz] using h
    · intro r hr
      have hrI : r ∈ Ioc (0 : ℝ) z := uIoc_of_le hz ▸ hr
      have hr' : r ∈ Icc (0 : ℝ) z := ⟨hrI.1.le, hrI.2⟩
      have hder := endpointDerivativePolynomial_abs_le A r hA hr'.1 (hr'.2.trans hzA)
      have h3 : r ^ 3 ≤ z ^ 3 := pow_le_pow_left₀ hr'.1 hr'.2 3
      have hd : |endpointDerivativePolynomial A r| ≤ 1280 * z + 16 * z ^ 3 :=
        hder.trans (by nlinarith)
      have he := endpointPolynomial_abs_le A (z - r) hA
        (by linarith [hr'.2]) (by linarith [hr'.1])
      have h2 : (z - r) ^ 2 ≤ z ^ 2 :=
        (sq_le_sq₀ (by linarith [hr'.2]) hz).2 (by linarith [hr'.1])
      have h4 : (z - r) ^ 4 ≤ z ^ 4 := by nlinarith [sq_nonneg (z ^ 2 - (z - r) ^ 2)]
      have hp : |endpointPolynomial A (z - r)| ≤ 192 * z ^ 2 + 4 * z ^ 4 :=
        he.trans (by nlinarith)
      rw [Real.norm_eq_abs, abs_mul]
      exact mul_le_mul hd hp (abs_nonneg _) (by positivity)
  rw [actual_correlation_deriv_upper_edge A z hA hz hzA, abs_mul, abs_neg,
    abs_of_nonneg (by positivity : 0 ≤ 1 / (A ^ 9 * sourceNormalization A))]
  calc
    _ ≤ 1 / (A ^ 9 * sourceNormalization A) *
        ((1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4) * z) :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ edgeFirstPolynomial z / A ^ 9 := by
      apply (le_div_iff₀ (pow_pos hA0 9)).2
      have hn := actualNormalization_ge_one_div_32 A
      have hb : 1 / sourceNormalization A ≤ 32 := by
        apply (div_le_iff₀ hZ).2
        linarith
      calc
        _ = (1 / sourceNormalization A) *
            ((1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4) * z) := by field_simp
        _ ≤ 32 * ((1280 * z + 16 * z ^ 3) * (192 * z ^ 2 + 4 * z ^ 4) * z) :=
          mul_le_mul_of_nonneg_right hb (by positivity)
        _ = _ := by unfold edgeFirstPolynomial; ring

end
end FormalResearch.RiemannHypothesis.SourceActualEdgeCorrelationDerivative
```
