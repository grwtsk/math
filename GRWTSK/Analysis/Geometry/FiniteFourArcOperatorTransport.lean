/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK and Mathlib source retain their upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcGeometricSpectralPort
import GRWTSK.Algebra.LinearAlgebra.FramedFiberPort
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact typed geometric quarter-turn to contact Laplacian transport

The four-contact Laplacian is upgraded from the existing concrete
cochain function to its actual finite real-linear operator. The
predecessor shift is likewise constructed as a linear map. The
source-derived injective plane→contact map intertwines:

  source quarter-turn     ↔ contact predecessor shift
  source eigenvalue-two   ↔ actual four-contact Laplacian.

The contact shift commutes with the Laplacian on *all* vertex cochains,
not just the source image. These are exact finite operator identities,
not a spectrum identified by numerics, a zeta trace or a Weil form.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort

/-- The already constructed graph Laplacian as an actual real-linear
operator. Its coefficients depend on the source contact incidence
and orientation, not on a freely supplied spectral matrix. -/
def cycleLaplacianLinear : FourCochain →ₗ[ℝ] FourCochain where
  toFun := cycleLaplacian
  map_add' f g := by
    funext i
    simp [cycleLaplacian, edgeAdjoint, edgeDifference, Pi.add_apply]
    ring
  map_smul' a f := by
    funext i
    simp [cycleLaplacian, edgeAdjoint, edgeDifference,
      Pi.smul_apply, smul_eq_mul]
    ring

/-- Rotate the actual contact vertex measurements by one predecessor
index, matching the geometric quarter-turn on the source image. -/
def contactShift : FourCochain →ₗ[ℝ] FourCochain where
  toFun f i := f (prev i)
  map_add' f g := by
    funext i
    rfl
  map_smul' a f := by
    funext i
    rfl

/-- The geometric quarter-turn and the true cyclic contact shift are
related by the *same* injective vertex-source map. -/
theorem sourceToContact_quarter_intertwines :
    Intertwines sourceToContact quarterTurn contactShift := by
  unfold Intertwines
  apply LinearMap.ext
  intro p
  change sourceToContact (quarterTurn p) = contactShift (sourceToContact p)
  exact sourceToContact_quarterTurn p

/-- Under the actual source map, the positive contact Laplacian
corresponds to eigenvalue two on the geometric plane. -/
theorem sourceToContact_laplacian_intertwines :
    Intertwines sourceToContact
      (2 • (LinearMap.id : Plane →ₗ[ℝ] Plane)) cycleLaplacianLinear := by
  unfold Intertwines
  apply LinearMap.ext
  intro p
  change sourceToContact (2 • p) = cycleLaplacian (sourceToContact p)
  rw [map_smul, cycleLaplacian_sourceToContact]

/-- The cyclic contact shift commutes with the complete genuine
four-vertex graph Laplacian, including zero and alternating modes. -/
theorem contactShift_laplacian_comm :
    Intertwines contactShift cycleLaplacianLinear
      cycleLaplacianLinear := by
  unfold Intertwines
  apply LinearMap.ext
  intro f
  funext i
  fin_cases i <;>
    simp [contactShift, cycleLaplacianLinear,
      cycleLaplacian, edgeAdjoint, edgeDifference, prev, next] <;> ring

/-- Complete source-faithful transport evidence: two independent
intertwining theorems plus the actual source left-inverse. -/
theorem geometric_operator_transport_certificate :
    Intertwines sourceToContact quarterTurn contactShift ∧
      Intertwines sourceToContact
        (2 • (LinearMap.id : Plane →ₗ[ℝ] Plane))
        cycleLaplacianLinear ∧
      Intertwines contactShift cycleLaplacianLinear
        cycleLaplacianLinear ∧
      Function.Injective sourceToContact := by
  exact ⟨sourceToContact_quarter_intertwines,
    sourceToContact_laplacian_intertwines,
    contactShift_laplacian_comm,
    sourceToContact_injective⟩

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
