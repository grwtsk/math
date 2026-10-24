# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPositivity.Variantfd2aa9a4b1548edb3d4e2cf2850581e5d90f3bed7c1064f1cecdb8b52a9e4db5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cdccfd8c958358183d30a5cd4e7133a420a7ed8` · SHA-256 `fd2aa9a4b1548edb3d4e2cf2850581e5d90f3bed7c1064f1cecdb8b52a9e4db5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.EndpointMonotonicity

set_option autoImplicit false
namespace EndpointPositivityScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EndpointMonotonicity
noncomputable section

/-- Strict positivity uses the actual normalized test and excludes only its zero endpoint. -/
theorem normalizedTest_endpoint_pos (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Ico (A - 3 / 4) A) :
    0 < normalizedTest explicitSecondDerivative A x := by
  have hA1 : 1 ≤ A := by linarith
  have hA0 : 0 < A := by linarith
  have hz : 0 < sourceNormalization A := source_normalization_pos A hA1
  rw [normalizedTest_eq_indicator A hA0,
    indicator_of_mem (show x ∈ Icc (-A) A from ⟨by linarith [hx.1], hx.2.le⟩),
    normalizedInterior_factor A x hA1]
  obtain ⟨hlow, _, hw⟩ := endpoint_scaled_bounds A x hA ⟨hx.1, hx.2.le⟩
  have hupp : x / A < 1 := (div_lt_one hA0).mpr hx.2
  have hs : 0 < 1 - (x / A) ^ 2 := by
    nlinarith [mul_pos (sub_pos.mpr hupp) (show 0 < 1 + x / A by linarith)]
  have hsq : (3 / 4 : ℝ) ^ 2 ≤ (x / A) ^ 2 := by
    nlinarith [sq_nonneg (x / A - 3 / 4)]
  have hb : 367 / 16 ≤ 8 * (7 * (x / A) ^ 2 - 1) -
      A ^ 2 * (1 - (x / A) ^ 2) ^ 2 / 4 := by nlinarith
  apply mul_pos
  · apply div_pos
    · exact sq_pos_of_pos hs
    · positivity
  · linarith

/-- A genuine integrable overlap with a positive interior point gives strict positivity. -/
theorem sourceCorrelation_endpoint_pos (A t : ℝ) (hA : 3 ≤ A)
    (ht : t ∈ Ico (2 * A - 3 / 4) (2 * A)) :
    0 < sourceCorrelation explicitSecondDerivative A t := by
  have hA1 : 1 ≤ A := by linarith
  have hc := (normalizedTest_contDiff A (by linarith)).continuous
  have hcprod : Continuous (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t)) :=
    hc.mul (hc.comp (continuous_id.sub continuous_const))
  have hp : 0 < normalizedTest explicitSecondDerivative A (t / 2) :=
    normalizedTest_endpoint_pos A (t / 2) hA ⟨by linarith [ht.1], by linarith [ht.2]⟩
  have hp0 : normalizedTest explicitSecondDerivative A (t / 2) *
      normalizedTest explicitSecondDerivative A (t / 2 - t) ≠ 0 := by
    rw [show t / 2 - t = -(t / 2) by ring,
      CorrelationSecondMoment.normalizedTest_even A hA1]
    exact (mul_pos hp hp).ne'
  exact integral_pos_of_integrable_nonneg_nonzero hcprod
    (correlation_product_integrable A t (by linarith))
    (fun x ↦ (endpoint_product_signs A t x hA ht.1).1) hp0

private theorem upper_product_log_lower (A q : ℝ) (k : ℕ)
    (hq : Real.exp (2 * A) / 4 ≤ q) (hk : 2 ≤ k) :
    2 * A - 3 / 4 ≤ Real.log (q * (k : ℝ)) := by
  have hq0 : 0 < q := (div_pos (Real.exp_pos _) (by norm_num : (0 : ℝ) < 4)).trans_le hq
  have hk2 : (2 : ℝ) ≤ k := by exact_mod_cast hk
  have hprod : Real.exp (2 * A) / 2 ≤ q * (k : ℝ) := by nlinarith
  have hl : 2 * A - Real.log 2 ≤ Real.log (q * (k : ℝ)) := by
    have hh := Real.log_le_log (div_pos (Real.exp_pos _) (by norm_num : (0 : ℝ) < 2)) hprod
    simpa only [Real.log_div (Real.exp_ne_zero _) (by norm_num : (2 : ℝ) ≠ 0),
      Real.log_exp] using hh
  have hlog : Real.log 2 < 3 / 4 := by
    have he : (2 : ℝ) < Real.exp (3 / 4) := by
      have hh := Real.quadratic_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 3 / 4)
      norm_num at hh
      linarith
    exact (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 2)).mpr he
  linarith

/-- The unchanged kernel is strictly positive when its original second channel is present here. -/
theorem sourceSamplingKernel_upper_pos (A q : ℝ) (hA : 3 ≤ A)
    (hq : q ∈ Ico (Real.exp (2 * A) / 4) (Real.exp (2 * A) / 2)) :
    0 < SourceSampling.sourceSamplingKernel A q := by
  have hq0 : 0 < q := (div_pos (Real.exp_pos _) (by norm_num : (0 : ℝ) < 4)).trans_le hq.1
  have hnonneg (k : ℕ) (hk : k ∈ SourceSampling.samplingIndices A q) :
      0 ≤ Real.log (k : ℝ) / Real.sqrt (q * (k : ℝ)) *
        sourceCorrelation explicitSecondDerivative A (Real.log (q * (k : ℝ))) := by
    have hk1 := ((SourceSampling.mem_samplingIndices_iff A q k hq0).mp hk).1
    by_cases hkeq : k = 1
    · simp [hkeq]
    have hk2 : 2 ≤ k := by omega
    apply mul_nonneg
    · exact div_nonneg (Real.log_nonneg (by exact_mod_cast hk1)) (Real.sqrt_nonneg _)
    · exact sourceCorrelation_endpoint_nonneg A _ hA (upper_product_log_lower A q k hq.1 hk2)
  have hmem : 2 ∈ SourceSampling.samplingIndices A q :=
    (SourceSampling.mem_samplingIndices_iff A q 2 hq0).mpr ⟨by norm_num, by
      norm_num only [Nat.cast_ofNat]
      linarith [hq.2]⟩
  have hp : 0 < Real.log (2 : ℝ) / Real.sqrt (q * (2 : ℝ)) *
      sourceCorrelation explicitSecondDerivative A (Real.log (q * (2 : ℝ))) := by
    apply mul_pos
    · exact div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.mpr (by positivity))
    · apply sourceCorrelation_endpoint_pos A _ hA
      refine ⟨by simpa using upper_product_log_lower A q 2 hq.1 le_rfl, ?_⟩
      exact (Real.log_lt_iff_lt_exp (by positivity : 0 < q * (2 : ℝ))).mpr
        (by linarith [hq.2])
  exact hp.trans_le (Finset.single_le_sum hnonneg hmem)

end
end EndpointPositivityScratch
```
