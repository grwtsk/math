/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Geometry.Hodge.FiniteHeatRecovery

/-!
# Retained Hodge centers and exact defects under changing source spaces

Reuse the existing HodgeProjector and operatorDefect. The center is a retained
linear subspace, not a barycenter chosen from density weights. Both the center
and its complement are stored. A topology/coordinate change can move mass
between them: its exact defect occurs with opposite signs in the two channels.
The signed readout therefore survives without a contraction or positivity claim.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.Hodge.MovingCenterTransport

open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.FiniteHeatRecovery

variable {E F E₁ : Type*}
variable [AddCommGroup E] [Module ℝ E]
variable [AddCommGroup F] [Module ℝ F]
variable [AddCommGroup E₁] [Module ℝ E₁]

/-- Exact complement of an existing center operator. -/
def remainder (P : E →ₗ[ℝ] E) (x : E) : E := x - P x

theorem reconstruct (P : E →ₗ[ℝ] E) (x : E) :
    P x + remainder P x = x := by simp [remainder]

/-- The two source-specific remainders remain distinct; a center mismatch is explicit. -/
theorem two_source_difference (P : E →ₗ[ℝ] E) (x y : E) :
    x - y = (P x - P y) + (remainder P x - remainder P y) := by
  unfold remainder
  abel

/-- A genuinely common center cancels without any density-weighted midpoint. -/
theorem shared_center_difference (P : E →ₗ[ℝ] E) (x y : E) (h : P x = P y) :
    x - y = remainder P x - remainder P y := by
  rw [two_source_difference P x y, h, sub_self, zero_add]

theorem center_of_remainder (P : E →ₗ[ℝ] E) (hP : P.comp P = P) (x : E) :
    P (remainder P x) = 0 := by
  have hp := congrArg (fun L : E →ₗ[ℝ] E => L x) hP
  simp only [LinearMap.comp_apply] at hp
  simp [remainder, hp]

/-- The existing chain-level center retains the corresponding edge-channel projection. -/
theorem hodge_differential_remainder
    {A : TwoTermHodgeData ℝ E E₁} (P : HodgeProjector A) (x : E) :
    A.delta (remainder P.p0 x) = A.delta x - P.p1 (A.delta x) := by
  have hp := congrArg (fun L : E →ₗ[ℝ] E₁ => L x) P.delta_comm
  simp only [LinearMap.comp_apply] at hp
  simp only [remainder, map_sub, hp.symm]

/-- Center transport need not commute after a change of incidence/topology. -/
theorem transported_center (U : E →ₗ[ℝ] F)
    (P : E →ₗ[ℝ] E) (Q : F →ₗ[ℝ] F) (x : E) :
    U (P x) = Q (U x) + operatorDefect U P Q x := by
  simp only [operatorDefect, LinearMap.sub_apply, LinearMap.comp_apply]
  abel

/-- The same defect occurs with the opposite sign in the retained complement. -/
theorem transported_remainder (U : E →ₗ[ℝ] F)
    (P : E →ₗ[ℝ] E) (Q : F →ₗ[ℝ] F) (x : E) :
    U (remainder P x) = remainder Q (U x) - operatorDefect U P Q x := by
  simp only [remainder, map_sub, operatorDefect,
    LinearMap.sub_apply, LinearMap.comp_apply]
  abel

/-- Observe the full returned state; do not erase the changing-center defect. -/
theorem signed_readout_return (U : E →ₗ[ℝ] F)
    (P : E →ₗ[ℝ] E) (Q : F →ₗ[ℝ] F) (L : F →ₗ[ℝ] ℝ) (x : E) :
    L (U x) = L (Q (U x)) + L (U (remainder P x)) +
      L (operatorDefect U P Q x) := by
  simp only [remainder, map_sub, operatorDefect,
    LinearMap.sub_apply, LinearMap.comp_apply]
  ring

/-- All four signed interactions survive simultaneous centering of two sources. -/
theorem bilinear_readout_split (B : E →ₗ[ℝ] F →ₗ[ℝ] ℝ)
    (P : E →ₗ[ℝ] E) (Q : F →ₗ[ℝ] F) (x : E) (y : F) :
    B x y = B (P x) (Q y) + B (P x) (remainder Q y) +
      B (remainder P x) (Q y) + B (remainder P x) (remainder Q y) := by
  simp only [remainder, map_sub, LinearMap.sub_apply]
  ring

/-- Keep every zero-eigenvalue coordinate, not just one scalar average. -/
def harmonicCoordinates {ι : Type*} (eigenvalue : ι → ℝ) (signal : ι → ℝ) : ι → ℝ := by
  classical
  exact fun i => if eigenvalue i = 0 then signal i else 0

/-- Exact application to the already constructed spectral heat evolution. -/
theorem harmonicCoordinates_heat {ι : Type*} (eigenvalue : ι → ℝ)
    (t : ℝ) (signal : ι → ℝ) :
    harmonicCoordinates eigenvalue (diagonalHeat eigenvalue t signal) =
      harmonicCoordinates eigenvalue signal := by
  classical
  funext i
  by_cases hi : eigenvalue i = 0
  · simp only [harmonicCoordinates, if_pos hi]
    exact diagonalHeat_zero_mode eigenvalue t signal i hi
  · simp [harmonicCoordinates, hi]

end GRWTSK.Geometry.Hodge.MovingCenterTransport
