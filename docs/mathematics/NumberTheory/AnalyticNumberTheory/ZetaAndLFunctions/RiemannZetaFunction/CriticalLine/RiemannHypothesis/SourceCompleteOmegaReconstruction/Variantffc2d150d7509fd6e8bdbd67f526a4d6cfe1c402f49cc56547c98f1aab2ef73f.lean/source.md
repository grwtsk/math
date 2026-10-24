# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompleteOmegaReconstruction.Variantffc2d150d7509fd6e8bdbd67f526a4d6cfe1c402f49cc56547c98f1aab2ef73f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7428bb82d079bba27d976348c2fcd8dfeb60ef3` · SHA-256 `ffc2d150d7509fd6e8bdbd67f526a4d6cfe1c402f49cc56547c98f1aab2ef73f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceOmegaContinuousSector
import SourceUpperCubicKappa
import SourceFullDivisorLogInventory
import ActualIntegerInventory

/-!
Complete literal compensated Omega reconstruction for the unchanged source.
I, four signed upper kappa jets, the full complementary sector and the
independent discrete baseline are defined before comparison with the residual.
The error is the actual signed short divisor row inventory. No uniform upper
witness for this complete expression is asserted.
Research direction and formula: grwtsk contributors, supplied cubic paper.
Formal source assembly: OpenAI Codex; independent review is a separate gate.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCompleteOmegaReconstruction

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourcePositiveSampling SourceCubicSignedUpperCoefficients
open SourceCubicUpperLogMoments SourceActualCubicCenteredRows SourceOmegaContinuousSector
open SourceUpperCubicKappa SourceFullDivisorLogInventory
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel
open EstimateMertensResidual

noncomputable section

/-- Literal signed four-jet P sector, with independently defined upper coefficients. -/
def literalOmegaCubicSector (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
    ∑ j ∈ Finset.range 4, upperCubicKappa (j + 1) / (j.factorial : ℝ) *
      iteratedDeriv j (sourceCorrelation explicitSecondDerivative A) (Real.log (d : ℝ))

/-- Independently specified complete I+P+L-B, with the full discrete baseline. -/
def completeOmega (A : ℝ) : ℝ :=
  literalOmegaIntegralSector A + literalOmegaCubicSector A +
    literalOmegaComplementarySector A - plainInventory A

/-- Actual signed error inventory; neither the residual nor Omega defines it. -/
def completeOmegaError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
    cubicCenteredLogErrorRow A (d : ℝ)

/-- The complete literal P sector equals the actual retained cubic model rows. -/
theorem literalOmegaCubicSector_eq_actual_main (A : ℝ) :
    literalOmegaCubicSector A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * cubicUpperMainTerm A (d : ℝ) := by
  unfold literalOmegaCubicSector
  apply Finset.sum_congr rfl
  intro d _
  rw [cubicUpperMainTerm_eq_kappa_jet]
  ring

/-- Original residual reconstruction keeps the full independent baseline and actual error. -/
theorem mertensResidual_eq_completeOmega_add_baseline_add_error
    (A : ℝ) (hA : 91 ≤ A) :
    mertensResidual A = completeOmega A + plainInventory A + completeOmegaError A := by
  have hA1 : 1 ≤ A := by linarith
  have hr := actual_mertensResidual_eq_short_add_literal_L A hA1
  rw [actual_short_divisor_upper_cubic_coefficients A hA] at hr
  have hs :
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicUpperMainTerm A (d : ℝ))) =
      literalOmegaIntegralSector A + literalOmegaCubicSector A := by
    simp only [mul_add, Finset.sum_add_distrib]
    rw [literalOmegaCubicSector_eq_actual_main]
    congr 1
    exact full_short_continuous_sector_eq_literal_I A hA1
  rw [hs] at hr
  unfold completeOmega completeOmegaError
  rw [hr]
  ring

/-- The original independently defined integer source equals complete Omega plus its actual error. -/
theorem integerJ_eq_completeOmega_add_error (A : ℝ) (hA : 91 ≤ A) :
    integerJ A = completeOmega A + completeOmegaError A := by
  have hr := mertensResidual_eq_completeOmega_add_baseline_add_error A hA
  have hb := residual_sub_integerJ_eq_plain (by linarith : 1 ≤ A)
  linarith

/-- Quantitative complete reconstruction error, without estimating its signed principal term. -/
theorem completeOmegaError_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |completeOmegaError A| ≤ 320 * 67 / A ^ 3 :=
  actual_cubic_short_divisor_sum_abs_le A hA

/-- The complete literal reconstruction, including its complementary region, has this error. -/
theorem integerJ_sub_completeOmega_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |integerJ A - completeOmega A| ≤ 320 * 67 / A ^ 3 := by
  rw [integerJ_eq_completeOmega_add_error A hA, add_sub_cancel_left]
  exact completeOmegaError_abs_le A hA

/-- The actual complete reconstruction error plus the original 260/A2 costs less than 3/50. -/
theorem completeOmega_reconstruction_plus_plain_calibration_lt (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 + |integerJ A - completeOmega A| < 3 / 50 := by
  have he := integerJ_sub_completeOmega_abs_le A hA
  have hb := RH16IndependentChallengeNext.refined_cubic_calibration_budget_lt A hA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceCompleteOmegaReconstruction
```
