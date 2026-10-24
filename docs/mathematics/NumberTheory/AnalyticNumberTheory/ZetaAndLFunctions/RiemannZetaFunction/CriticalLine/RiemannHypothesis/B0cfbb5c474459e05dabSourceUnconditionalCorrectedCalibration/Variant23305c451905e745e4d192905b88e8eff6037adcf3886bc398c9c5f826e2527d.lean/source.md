# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.B0cfbb5c474459e05dabSourceUnconditionalCorrectedCalibration.Variant23305c451905e745e4d192905b88e8eff6037adcf3886bc398c9c5f826e2527d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81a7872cfb980e06f0271a00a89897b8799369a0` · SHA-256 `23305c451905e745e4d192905b88e8eff6037adcf3886bc398c9c5f826e2527d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualStablePeanoCubic
import SourceCompleteCorrectedAbelPairing

/-!
The actual lower-side Peano theorem discharges the analytic premise of the
complete corrected source calibration. Every real scale and shift is retained.
The signed full short jets and actual cumulative complementary integral remain
one expression. Its uniform arithmetic upper bound is still an explicit,
unproved input to the unchanged original all-real estimate.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceUnconditionalCorrectedCalibration

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceCorrectedOmegaPeanoTaylor SourceCompleteCorrectedAbelPairing
open SourceCompleteOmegaReconstruction SourcePeanoSignedShortJet
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel EstimateMertensResidual

noncomputable section

/-- The independently defined root remainder is literally the proved stable-source remainder. -/
theorem actualPeanoCubicRemainder_eq_stable (A t : ℝ) :
    actualPeanoCubicRemainder A t =
      RH16IndependentChallengeNext.actualStablePeanoCubicRemainder A t := rfl

/-- The actual source analytic bound is unconditional for every real displacement. -/
theorem actualPeanoCubicRemainder_abs_le (A t : ℝ) (hA : 91 ≤ A) :
    |actualPeanoCubicRemainder A t| ≤ 320 * 67 / A ^ 4 := by
  rw [actualPeanoCubicRemainder_eq_stable]
  exact RH16IndependentChallengeNext.actualStablePeanoCubicRemainder_abs_le A t hA

/-- Every actual signed short Peano remainder row is controlled unconditionally. -/
theorem actualPeanoCubicError_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |actualPeanoCubicError A| ≤ 640 * 67 / A ^ 3 := by
  apply actualPeanoCubicError_abs_le_of_actual_row_bound A (by linarith)
  intro d _
  exact actualPeanoCubicRemainder_abs_le A (Real.log (d : ℝ)) hA

/-- Exact complete Omega differs from the full signed corrected pairing by its actual error. -/
theorem completeOmega_sub_complete_pairing_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |completeOmega A - completeCorrectedAbelPairing A| ≤ 640 * 67 / A ^ 3 := by
  rw [completeOmega_eq_complete_pairing_add_actualPeanoError A (by linarith),
    add_sub_cancel_left]
  exact actualPeanoCubicError_abs_le A hA

/-- The original integer source has this unconditional complete reconstruction cost. -/
theorem integerJ_sub_complete_pairing_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |integerJ A - completeCorrectedAbelPairing A| ≤ 960 * 67 / A ^ 3 := by
  apply integerJ_sub_complete_pairing_abs_le_of_actual_row_bound A hA
  intro d _
  exact actualPeanoCubicRemainder_abs_le A (Real.log (d : ℝ)) hA

/-- Unconditional actual-source calibration of the complete signed expression at real A>=117. -/
theorem residual_sub_complete_pairing_sub_zeta_abs_lt (A : ℝ) (hA : 117 ≤ A) :
    |mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2)).re| < 3 / 50 := by
  apply residual_sub_complete_pairing_sub_zeta_abs_lt_of_actual_row_bound A hA
  intro d _
  exact actualPeanoCubicRemainder_abs_le A (Real.log (d : ℝ)) (by linarith)

/-- Only the actual uniform signed arithmetic upper witness remains for the original target. -/
theorem estimate_of_complete_corrected_signed_tail {K R : ℝ} (hR : 117 ≤ R)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_corrected_Abel_tail_at_radius (K := K) hR
  · intro A hRA d _
    exact actualPeanoCubicRemainder_abs_le A (Real.log (d : ℝ)) (by linarith)
  · exact hpair

end
end FormalResearch.RiemannHypothesis.SourceUnconditionalCorrectedCalibration
```
