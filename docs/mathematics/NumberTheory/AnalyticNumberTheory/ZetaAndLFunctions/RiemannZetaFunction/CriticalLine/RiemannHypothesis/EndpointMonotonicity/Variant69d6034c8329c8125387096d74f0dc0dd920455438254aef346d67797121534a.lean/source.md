# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMonotonicity.Variant69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88daa8b5b5e7a93bb619ea63c88701e6228cd89a` · SHA-256 `69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SourceSamplingDerivative
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment

set_option autoImplicit false
namespace EndpointMonotonicityScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity DerivativeEnergy
noncomputable section

/-- Dimensionless endpoint bounds for the unchanged source scale. -/
theorem endpoint_scaled_bounds (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    3 / 4 ≤ x / A ∧ x / A ≤ 1 ∧ A ^ 2 * (1 - (x / A) ^ 2) ^ 2 ≤ 9 / 4 := by
  have hA0 : 0 < A := by linarith
  have hlow : 3 / 4 ≤ x / A := (le_div_iff₀ hA0).mpr (by nlinarith [hx.1])
  have hupp : x / A ≤ 1 := (div_le_one hA0).mpr hx.2
  refine ⟨hlow, hupp, ?_⟩
  have hzero : 0 ≤ (A - x) * (1 + x / A) := mul_nonneg (by linarith [hx.2])
    (by linarith)
  have hbound : (A - x) * (1 + x / A) ≤ 3 / 2 := by
    nlinarith [hx.1, hx.2]
  have he : A ^ 2 * (1 - (x / A) ^ 2) ^ 2 = ((A - x) * (1 + x / A)) ^ 2 := by
    field_simp
    ring
  rw [he]
  nlinarith

/-- The exact actual normalized interior factors without changing its pole-annihilating term. -/
theorem normalizedInterior_factor (A x : ℝ) (hA : 1 ≤ A) :
    normalizedInterior A x =
      (1 - (x / A) ^ 2) ^ 2 / (A ^ 2 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        (8 * (7 * (x / A) ^ 2 - 1) - A ^ 2 * (1 - (x / A) ^ 2) ^ 2 / 4) := by
  have ha : A ≠ 0 := by linarith
  have hs : Real.sqrt A ≠ 0 := (Real.sqrt_pos.mpr (by linarith)).ne'
  have hz : Real.sqrt (sourceNormalization A) ≠ 0 :=
    (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  unfold normalizedInterior secondInterior bumpInterior
  field_simp
  ring

/-- The actual first derivative has a signed endpoint factorization. -/
theorem normalizedInteriorDerivative_factor (A x : ℝ) (hA : 1 ≤ A) :
    normalizedInteriorDerivative A x =
      (x / A) * (1 - (x / A) ^ 2) /
        (A ^ 3 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        (48 * (3 - 7 * (x / A) ^ 2) + 2 * A ^ 2 * (1 - (x / A) ^ 2) ^ 2) := by
  have ha : A ≠ 0 := by linarith
  have hs : Real.sqrt A ≠ 0 := (Real.sqrt_pos.mpr (by linarith)).ne'
  have hz : Real.sqrt (sourceNormalization A) ≠ 0 :=
    (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  unfold normalizedInteriorDerivative thirdInterior firstInterior
  field_simp
  ring

/-- The unchanged normalized zero extension is nonnegative on its final three-quarter strip. -/
theorem normalizedTest_endpoint_nonneg (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    0 ≤ normalizedTest explicitSecondDerivative A x := by
  have hA1 : 1 ≤ A := by linarith
  rw [normalizedTest_eq_indicator A (by linarith),
    indicator_of_mem (show x ∈ Icc (-A) A from ⟨by linarith [hx.1], hx.2⟩),
    normalizedInterior_factor A x hA1]
  obtain ⟨hlow, hupp, hw⟩ := endpoint_scaled_bounds A x hA hx
  have hsq : (3 / 4 : ℝ) ^ 2 ≤ (x / A) ^ 2 := by
    nlinarith [sq_nonneg (x / A - 3 / 4)]
  have hb : 367 / 16 ≤ 8 * (7 * (x / A) ^ 2 - 1) -
      A ^ 2 * (1 - (x / A) ^ 2) ^ 2 / 4 := by nlinarith
  apply mul_nonneg
  · positivity
  · linarith

/-- The actual global first derivative is nonpositive on that same endpoint strip. -/
theorem normalizedTest_derivative_endpoint_nonpos (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    deriv (normalizedTest explicitSecondDerivative A) x ≤ 0 := by
  have hA1 : 1 ≤ A := by linarith
  rw [normalized_derivative_eq_indicator A hA1,
    indicator_of_mem (show x ∈ Icc (-A) A from ⟨by linarith [hx.1], hx.2⟩),
    normalizedInteriorDerivative_factor A x hA1]
  obtain ⟨hlow, hupp, hw⟩ := endpoint_scaled_bounds A x hA hx
  have hsq : (3 / 4 : ℝ) ^ 2 ≤ (x / A) ^ 2 := by
    nlinarith [sq_nonneg (x / A - 3 / 4)]
  have hu : (x / A) ^ 2 ≤ 1 := by nlinarith
  have hb : 48 * (3 - 7 * (x / A) ^ 2) +
      2 * A ^ 2 * (1 - (x / A) ^ 2) ^ 2 ≤ -81 / 2 := by nlinarith
  apply mul_nonpos_of_nonneg_of_nonpos
  · apply div_nonneg
    · exact mul_nonneg (by linarith) (by linarith)
    · positivity
  · linarith

/-- Both literal correlation integrands have the asserted endpoint signs. -/
theorem endpoint_product_signs (A t x : ℝ) (hA : 3 ≤ A) (ht : 2 * A - 3 / 4 ≤ t) :
    0 ≤ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t) ∧
    deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - t) ≤ 0 := by
  have hA1 : 1 ≤ A := by linarith
  by_cases hx : x ≤ A
  · by_cases hxt : t - A ≤ x
    · have hm : x ∈ Icc (A - 3 / 4) A := ⟨by linarith, hx⟩
      have hn : t - x ∈ Icc (A - 3 / 4) A := ⟨by linarith, by linarith⟩
      have he : normalizedTest explicitSecondDerivative A (x - t) =
          normalizedTest explicitSecondDerivative A (t - x) := by
        rw [show x - t = -(t - x) by ring]
        exact CorrelationSecondMoment.normalizedTest_even A hA1 _
      rw [he]
      exact ⟨mul_nonneg (normalizedTest_endpoint_nonneg A x hA hm)
          (normalizedTest_endpoint_nonneg A (t - x) hA hn),
        mul_nonpos_of_nonpos_of_nonneg (normalizedTest_derivative_endpoint_nonpos A x hA hm)
          (normalizedTest_endpoint_nonneg A (t - x) hA hn)⟩
    · have hz : normalizedTest explicitSecondDerivative A (x - t) = 0 := by
        apply normalizedTest_zero_of_le_abs A _ (by linarith)
        rw [abs_of_nonpos (by linarith : x - t ≤ 0)]
        linarith
      simp only [hz, mul_zero, le_refl, and_self]
  · have hz : normalizedTest explicitSecondDerivative A x = 0 := by
      apply normalizedTest_zero_of_le_abs A _ (by linarith)
      exact (by linarith : A ≤ x).trans (le_abs_self _)
    have hd : deriv (normalizedTest explicitSecondDerivative A) x = 0 := by
      rw [normalized_derivative_eq_indicator A hA1]
      exact indicator_of_notMem (show x ∉ Icc (-A) A by intro hm; exact hx hm.2) _
    simp only [hz, hd, zero_mul, le_refl, and_self]

/-- Genuine source integrability transports endpoint positivity to the original correlation. -/
theorem sourceCorrelation_endpoint_nonneg (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    0 ≤ sourceCorrelation explicitSecondDerivative A t := by
  have h := integral_mono (integrable_zero ℝ ℝ volume)
    (correlation_product_integrable A t (by linarith))
    (fun x ↦ (endpoint_product_signs A t x hA ht).1)
  simpa only [Pi.zero_apply, integral_zero, sourceCorrelation] using h

/-- The actual derivative has its original convolution orientation and is nonpositive here. -/
theorem sourceCorrelation_derivative_endpoint_nonpos (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    deriv (sourceCorrelation explicitSecondDerivative A) t ≤ 0 := by
  rw [(sourceCorrelation_hasDerivAt A t (by linarith)).deriv]
  have h := integral_mono (derivative_correlation_product_integrable A t (by linarith))
    (integrable_zero ℝ ℝ volume)
    (fun x ↦ (endpoint_product_signs A t x hA ht).2)
  simpa only [Pi.zero_apply, integral_zero] using h

/-- The same source signed difference is nonpositive in the endpoint range. -/
theorem correlationDifference_endpoint_nonpos (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    CorrelationDifferenceMoments.correlationDifference A t ≤ 0 := by
  unfold CorrelationDifferenceMoments.correlationDifference
  have hC := sourceCorrelation_endpoint_nonneg A t hA ht
  have hd := sourceCorrelation_derivative_endpoint_nonpos A t hA ht
  linarith

/-- The actual sampling derivative is nonpositive on its entire upper product range. -/
theorem sourceSamplingKernel_derivative_upper_nonpos (A q : ℝ) (hA : 3 ≤ A)
    (hq : Real.exp (2 * A) / 4 ≤ q) :
    deriv (SourceSampling.sourceSamplingKernel A) q ≤ 0 := by
  have hq0 : 0 < q := (div_pos (Real.exp_pos _) (by norm_num : (0 : ℝ) < 4)).trans_le hq
  rw [SourceSamplingDerivative.sourceSamplingKernel_deriv A q (by linarith) hq0]
  apply mul_nonpos_of_nonneg_of_nonpos (by positivity)
  apply Finset.sum_nonpos
  intro k hk
  have hk1 := ((SourceSampling.mem_samplingIndices_iff A q k hq0).mp hk).1
  by_cases hkone : k = 1
  · simp [hkone]
  have hk2 : (2 : ℝ) ≤ k := by exact_mod_cast (show 2 ≤ k by omega)
  have hcoef : 0 ≤ Real.log (k : ℝ) / Real.sqrt (q * (k : ℝ)) := by
    exact div_nonneg (Real.log_nonneg (by linarith)) (Real.sqrt_nonneg _)
  apply mul_nonpos_of_nonneg_of_nonpos hcoef
  apply correlationDifference_endpoint_nonpos A _ hA
  have hprod : Real.exp (2 * A) / 2 ≤ q * (k : ℝ) := by nlinarith
  have hl : 2 * A - Real.log 2 ≤ Real.log (q * (k : ℝ)) := by
    have hh := Real.log_le_log (div_pos (Real.exp_pos _) (by norm_num : (0 : ℝ) < 2)) hprod
    simpa only [Real.log_div (Real.exp_ne_zero _) (by norm_num : (2 : ℝ) ≠ 0),
      Real.log_exp] using hh
  have hlog : Real.log 2 < 3 / 4 := by
    have he : (2 : ℝ) < Real.exp (3 / 4) := by
      have hseries := Real.quadratic_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 3 / 4)
      norm_num at hseries
      linarith
    exact (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 2)).mpr he
  linarith

end
end EndpointMonotonicityScratch
```
