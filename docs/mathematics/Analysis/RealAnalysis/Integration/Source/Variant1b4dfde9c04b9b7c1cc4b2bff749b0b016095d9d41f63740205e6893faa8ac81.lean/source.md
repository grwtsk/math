# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Source.Variant1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34114111aca5f0278531bb06d2a61309f4c4f6ed` · SHA-256 `1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCubicSamplingRemainder
import SourceFullPositiveKappa
import SourceFullDivisorLogInventory
import SourceActualCubicCenteredRows
import FormalResearch.RiemannHypothesis.SourceFractionalQuadrature

/-!
Actual all-positive-axis cubic sampling error, including the negative log head.
Direction and conceptual origin: grwtsk contributors.
Native source construction and calculation: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16WholeCubic
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePositiveSampling SourceSamplingRemainder SourceCubicCorrelationTaylor
open SourceCubicSamplingRemainder SourceSamplingCoefficients SourceFullPositiveKappa
open SourceActualCubicCenteredRows SourceSignedSamplingExplicitBudget
open SourceFullDivisorLogInventory SourceFractionalQuadrature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel

/-- Whole-axis integrable remainder majorant, retaining fractional part below one. -/
def wholeCubicMajorant (A k u : ℝ) : ℝ :=
  67 / (A ^ 4 * Real.sqrt k) *
    ((5 / 24 : ℝ) * absoluteCoefficientWeight 4 u + absoluteCoefficientWeight 5 u / 48)

/-- Literal actual signed whole-axis sampling remainder. -/
def wholeCubicErrorRow (A k : ℝ) : ℝ :=
  ∫ u in Ioi (0 : ℝ), Int.fract u *
    (deriv (logProfile A k) u - cubicLogModelDerivative A k u)

/-- All real logarithmic displacements are admitted, including zero and negative ones. -/
theorem cubic_log_error_all_positive {A k u : ℝ} (hA : 91 ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |deriv (logProfile A k) u - cubicLogModelDerivative A k u| ≤
      67 / (A ^ 4 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        ((5 / 24 : ℝ) * |Real.log u| ^ 4 + |Real.log u| ^ 5 / 48) := by
  have hw : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  have hR := cubicCorrelationRemainder_abs_le A (Real.log k) (Real.log u) hA
  have hd := cubicCorrelationRemainder_deriv_abs_le A (Real.log k) (Real.log u) hA
  have h4 : |Real.log u| ^ 4 = (Real.log u) ^ 4 := by
    rw [show (4 : ℕ) = 2 * 2 from rfl, pow_mul, pow_mul, sq_abs]
  rw [← h4] at hR
  have hc : |1 - Real.log u / 2| ≤ 1 + |Real.log u| / 2 := by
    simpa only [abs_one, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
      abs_sub (1 : ℝ) (Real.log u / 2)
  rw [cubic_log_derivative_difference (by linarith) hk hu, abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|1 - Real.log u / 2| * |cubicCorrelationRemainder A (Real.log k) (Real.log u)| +
          |Real.log u| * |deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u)|) := by
      apply mul_le_mul_of_nonneg_left _ hw
      simpa only [abs_mul] using abs_add_le
        ((1 - Real.log u / 2) * cubicCorrelationRemainder A (Real.log k) (Real.log u))
        (Real.log u * deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u))
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        ((1 + |Real.log u| / 2) * (67 / A ^ 4 * |Real.log u| ^ 4 / 24) +
          |Real.log u| * (67 / A ^ 4 * |Real.log u| ^ 3 / 6)) := by
      gcongr
    _ = _ := by ring

theorem wholeCubicMajorant_integrable (A k : ℝ) :
    IntegrableOn (wholeCubicMajorant A k) (Ioi (0 : ℝ)) :=
  (((absoluteCoefficientWeight_integrable 4).const_mul (5 / 24 : ℝ)).add
    ((absoluteCoefficientWeight_integrable 5).div_const 48)).const_mul _

theorem actual_whole_error_le_majorant {A k u : ℝ} (hA : 91 ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |Int.fract u * (deriv (logProfile A k) u - cubicLogModelDerivative A k u)| ≤
      wholeCubicMajorant A k u := by
  rw [abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
  have hb := mul_le_mul_of_nonneg_left (cubic_log_error_all_positive hA hk hu)
    (Int.fract_nonneg u)
  convert hb using 1
  unfold wholeCubicMajorant absoluteCoefficientWeight
  ring

theorem actual_whole_error_integrable {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    IntegrableOn (fun u => Int.fract u *
      (deriv (logProfile A k) u - cubicLogModelDerivative A k u)) (Ioi (0 : ℝ)) := by
  apply (wholeCubicMajorant_integrable A k).mono'
  · exact (measurable_fract.mul
      ((logProfile_contDiff (by linarith : 0 < A) k).continuous_deriv_one.measurable.sub
        (cubicLogModelDerivative_measurable A k))).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs]
    exact actual_whole_error_le_majorant hA hk hu

theorem wholeCubicMajorant_integral_le (A k : ℝ) :
    (∫ u in Ioi (0 : ℝ), wholeCubicMajorant A k u) ≤
      42880 / (A ^ 4 * Real.sqrt k) := by
  have h4 := absoluteCoefficientMoment_le_factorial 4
  have h5 := absoluteCoefficientMoment_le_factorial 5
  norm_num at h4 h5
  unfold wholeCubicMajorant
  rw [integral_const_mul,
    integral_add ((absoluteCoefficientWeight_integrable 4).const_mul (5 / 24 : ℝ))
      ((absoluteCoefficientWeight_integrable 5).div_const 48), integral_const_mul, integral_div]
  change 67 / (A ^ 4 * Real.sqrt k) *
    ((5 / 24 : ℝ) * absoluteCoefficientMoment 4 + absoluteCoefficientMoment 5 / 48) ≤ _
  calc
    _ ≤ 67 / (A ^ 4 * Real.sqrt k) * ((5 / 24 : ℝ) * 1536 + 15360 / 48) := by
      gcongr
    _ = _ := by ring

theorem wholeCubicErrorRow_abs_le {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    |wholeCubicErrorRow A k| ≤ 42880 / (A ^ 4 * Real.sqrt k) := by
  unfold wholeCubicErrorRow
  have hb := norm_integral_le_of_norm_le (wholeCubicMajorant_integrable A k) (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs]
    exact actual_whole_error_le_majorant hA hk hu)
  rw [Real.norm_eq_abs] at hb
  exact hb.trans (wholeCubicMajorant_integral_le A k)

theorem whole_short_error_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicErrorRow A (d : ℝ)| ≤ 85760 / A ^ 3 := by
  have hc : 0 ≤ 42880 / A ^ 4 := by positivity
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * wholeCubicErrorRow A (d : ℝ)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        (42880 / A ^ 4) * (|realMoebius d| / Real.sqrt (d : ℝ)) := by
      apply Finset.sum_le_sum
      intro d hd
      have hd0 : 0 < (d : ℝ) := by
        exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
      rw [abs_mul]
      apply (mul_le_mul_of_nonneg_left (wholeCubicErrorRow_abs_le hA hd0)
        (abs_nonneg _)).trans
      apply le_of_eq
      ring
    _ = (42880 / A ^ 4) *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (42880 / A ^ 4) * (2 * A) :=
      mul_le_mul_of_nonneg_left (actualMoebiusSqrtMass_le A (by linarith)) hc
    _ = _ := by
      field_simp [show A ≠ 0 by linarith]
      ring
end RH16WholeCubic
```
