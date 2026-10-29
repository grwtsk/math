/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib and imported GRWTSK sources retain upstream attribution/licenses. -/
import GRWTSK.MeasureAndIntegration.UniformBinHilbertProjection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupBinReadout

/-!
# Actual L2 realization of the unchanged signed pickup certificate

The input is the actual wholePickup, zero-extended after T. The operator is
the constructed orthogonal bin projector. Both error bounds and the endpoint
handoff concern its actual norm-squared residual. No strict Gram positivity
is asserted, including a response born at the terminal time.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupHilbertProjection
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupBinProjection
open GRWTSK.Analysis.Integration.UniformBinHilbertProjection

def actualSource (T : ℝ) : H := sourceVector wholePickup wholePickup_continuous T

theorem actualSource_energy {T : ℝ} (hT : 0 ≤ T) :
    ‖actualSource T‖ ^ 2 = pickupEnergy T := sourceVector_norm_sq wholePickup_continuous hT

theorem actualProjection_energy {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    ‖projection T m (actualSource T)‖ ^ 2 = signedBinEnergy T m :=
  projected_source_norm_sq wholePickup_continuous hT hm

theorem actualResidual_energy {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    ‖actualSource T - projection T m (actualSource T)‖ ^ 2 = signedBinResidual T m :=
  residual_source_norm_sq wholePickup_continuous hT hm

theorem actualResidual_bounds {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    ‖actualSource T - projection T m (actualSource T)‖ ^ 2 ≤
      min (traceAllowance T m) (signedAllowance T m) := by
  rw [actualResidual_energy hT hm]
  exact signedBinResidual_le_min hT hm

theorem endpoint_upper_actualProjection {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    endpointSum T ≤ ‖projection T m (actualSource T)‖ ^ 2 - pickupDiagonal T + 1/4 +
      min (traceAllowance T m) (signedAllowance T m) := by
  rw [actualProjection_energy hT hm]
  exact endpointSum_le_bin_upper hT hm

end GRWTSK.NumberTheory.Moebius.PickupHilbertProjection
