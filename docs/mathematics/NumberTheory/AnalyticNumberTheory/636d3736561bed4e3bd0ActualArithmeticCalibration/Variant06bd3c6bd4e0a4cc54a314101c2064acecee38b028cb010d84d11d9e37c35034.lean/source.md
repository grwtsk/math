# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.636d3736561bed4e3bd0ActualArithmeticCalibration.Variant06bd3c6bd4e0a4cc54a314101c2064acecee38b028cb010d84d11d9e37c35034

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab00c04dbe6103e6f3fbda7c693e2c51f50b3562` · SHA-256 `06bd3c6bd4e0a4cc54a314101c2064acecee38b028cb010d84d11d9e37c35034`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualIntegerInventory
import LowerSampling
import ActualHalfCalibration

/-!
Unconditional calibration of the literal normalized finite integer inventory.
The independently defined compensated Mangoldt sum retains n=1, all prime powers,
and the closed floor endpoint; its upper-witness problem is not assumed or solved.
Research direction: grwtsk contributors. Scratch proof: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualArithmeticCalibration
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourceSamplingCoefficients SourcePositiveSampling SourceSamplingPointwise
open SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual EstimatePrimeSmoothDefect
open UpperSampling ActualIntegerInventory LowerSampling ActualHalfCalibration

theorem unit_sampling_main {A : ℝ} (hA : 1 ≤ A) :
    sourcePlainSamplingMainTerm A 1 = samplingAlpha0 := by
  simp only [sourcePlainSamplingMainTerm, Real.log_one, Real.sqrt_one,
    correlation_deriv_zero hA, EstimateCorrelation.actual_correlation_at_zero A hA,
    mul_one, mul_zero, add_zero, div_one]

theorem strict_source_inventory {A : ℝ} (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A =
      ∑ n ∈ Finset.Icc 1 (EstimateSourceMobiusKernel.sourceKernelCutoff A),
        ArithmeticFunction.vonMangoldt n * plainProfile A 1 n := by
  rw [primePowerContribution_eq_closedPrimeMoment A hA,
    ← mertensResidual_eq_closedPrimeMoment A hA]
  exact mangoldt_integer_inventory hA

theorem plain_calibration_identity {A : ℝ} (hA : 1 ≤ A) :
    plainInventory A - (riemannZeta (1/2)).re =
      criticalContinuousMoment A+2 + ∫ u in Ioi (1:ℝ), actualRemainder A u := by
  have hs := actual_remainder_sum_identity hA
  rw [unit_sampling_main hA, ActualSamplingConstant.samplingAlpha0_eq_riemannZeta_half_re,
    full_remainder_split hA, lower_remainder_integral hA] at hs
  exact hs

theorem actual_calibration_identity {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A-integerJ A-(riemannZeta (1/2)).re =
      criticalContinuousMoment A+2 + ∫ u in Ioi (1:ℝ), actualRemainder A u := by
  rw [residual_sub_integerJ_eq_plain hA]
  exact plain_calibration_identity hA

theorem plain_calibration_bound {A : ℝ} (hA : 1 ≤ A) :
    |plainInventory A-(riemannZeta (1/2)).re| <
      (8*(162826/7623 : ℝ)+81/2)/A^2 := by
  rw [plain_calibration_identity hA]
  calc
    _ ≤ |criticalContinuousMoment A+2| +
        |∫ u in Ioi (1:ℝ), actualRemainder A u| := abs_add_le _ _
    _ < (81/2)/A^2 + 8*(162826/7623 : ℝ)/A^2 :=
      add_lt_add_of_lt_of_le (half_error_abs_lt hA) (upper_remainder_bound hA)
    _ = _ := by ring

theorem actual_calibration_bound {A : ℝ} (hA : 1 ≤ A) :
    |mertensResidual A-integerJ A-(riemannZeta (1/2)).re| <
      (8*(162826/7623 : ℝ)+81/2)/A^2 := by
  rw [residual_sub_integerJ_eq_plain hA]
  exact plain_calibration_bound hA

theorem calibration_constant_lt :
    8*(162826/7623 : ℝ)+81/2 < 260 := by norm_num

theorem actual_calibration_260 {A : ℝ} (hA : 1 ≤ A) :
    |mertensResidual A-integerJ A-(riemannZeta (1/2)).re| ≤ 260/A^2 := by
  have hAA : 0 < A^2 := sq_pos_of_pos (by linarith : 0<A)
  exact (actual_calibration_bound hA).le.trans
    ((div_lt_div_of_pos_right calibration_constant_lt hAA).le)

theorem literal_integer_calibration {A : ℝ} (hA : 1 ≤ A) :
    |mertensResidual A -
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp (2*A)⌋₊,
        (ArithmeticFunction.vonMangoldt n-1) *
          (sourceCorrelation explicitSecondDerivative A (Real.log n)/Real.sqrt n)) -
      (riemannZeta (1/2)).re| ≤ 260/A^2 := by
  rw [← integerJ_eq_literal]
  exact actual_calibration_260 hA

theorem literal_plain_calibration {A : ℝ} (hA : 1 ≤ A) :
    |(∑ n ∈ Finset.Icc 1 ⌊Real.exp (2*A)⌋₊,
        sourceCorrelation explicitSecondDerivative A (Real.log n)/Real.sqrt n) -
      (riemannZeta (1/2)).re| ≤ 260/A^2 := by
  have hi : plainInventory A = ∑ n ∈ Finset.Icc 1 ⌊Real.exp (2*A)⌋₊,
      sourceCorrelation explicitSecondDerivative A (Real.log n)/Real.sqrt n := by
    unfold plainInventory
    rw [integer_cutoff_eq]
    apply Finset.sum_congr rfl
    intro n hn
    exact plainProfile_unit_eq (by
      exact_mod_cast (by have := (Finset.mem_Icc.mp hn).1; omega : 0<n))
  rw [← hi]
  have hAA : 0 < A^2 := sq_pos_of_pos (by linarith : 0<A)
  exact (plain_calibration_bound hA).le.trans
    ((div_lt_div_of_pos_right calibration_constant_lt hAA).le)

#print axioms unit_sampling_main
#print axioms strict_source_inventory
#print axioms plain_calibration_identity
#print axioms actual_calibration_identity
#print axioms plain_calibration_bound
#print axioms actual_calibration_bound
#print axioms calibration_constant_lt
#print axioms actual_calibration_260
#print axioms literal_integer_calibration
#print axioms literal_plain_calibration
end ContinuousResearch.ActualArithmeticCalibration
```
