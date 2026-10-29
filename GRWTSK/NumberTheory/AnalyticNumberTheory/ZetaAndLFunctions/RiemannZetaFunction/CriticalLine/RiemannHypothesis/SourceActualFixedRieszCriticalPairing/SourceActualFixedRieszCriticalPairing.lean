import SourceActualRieszFixedCenterTransfer
import SourceCriticalRelativeCompensation

/-!
The complete fixed-center Riesz readout is the actual closed Chebyshev pairing
with its retained unit and archimedean anchor. The finite rational center payment
cancels exactly. No uniform arithmetic pairing bound is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceActualFixedRieszCriticalPairing

open MeasureTheory
open SourcePairing SourceActualRieszFixedCenterTransfer SourceActualRieszCriticalCenter
open SourceActualRieszCenteredReconstruction SourceCriticalRelativeCompensation
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- Exact cancellation preserves all real scales, arbitrary real constant, and both source seams. -/
theorem actualFixedCenteredMangoldtRiesz_eq_criticalRelativePairing {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t) =
        criticalRelativePairing A - 1 - archimedeanMultiplier 0 / 2 := by
  rw [actualFixedCenteredMangoldtRiesz_readout hA b,
    mertensResidual_eq_criticalRelative_add_baseline hA,
    actualRiesz_finite_center_payment, actualRiesz_continuousMoment_eq_neg_magnitude hA]
  ring

end FormalResearch.RiemannHypothesis.SourceActualFixedRieszCriticalPairing
