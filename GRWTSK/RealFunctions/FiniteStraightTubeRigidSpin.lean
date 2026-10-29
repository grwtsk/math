/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
External mathematical references: OAI ClassicalON.BlockOrbit and
HadwigerCounterexample.BiasedRotationBounds (read-only reference).
All Mathlib and upstream copyrights and licenses remain unchanged. -/
import GRWTSK.MeasureAndIntegration.FiniteStraightTubeFamily
import Mathlib.Analysis.InnerProductSpace.LinearMap
import Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace

set_option autoImplicit false
noncomputable section

/-!
# True rigid spinning of original straight Euclidean tubes

We transport the *entire* original straight cylinder by an actual
real linear isometric equivalence. The center and unit direction
are both transformed, the positive half-length and radius remain
unchanged, and the transformed region is EXACTLY the image of the
original region. In particular no bent surrogate path appears.

Mathlib's canonical `LinearIsometryEquiv.measurePreserving` is the
measure supplier; we do not copy GRWTSK's archived organizational
copies of Mathlib's measure-preserving library.

OpenAI's specialized Hadwiger `spinning` lemma motivates later
finite exceptional-event energy increments, but is NOT the source
of any of these geometric or Lebesgue identities. Common rigid
spinning preserves overlap: it cannot prove Kakeya by itself.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

open MeasureTheory
variable {d : ℕ}

/-- The actual linear orthogonal motion on the fixed ambient space.
No arbitrary homeomorphism can be supplied as a rigid spin. -/
abbrev RigidSpin (d : ℕ) := Space d ≃ₗᵢ[ℝ] Space d

namespace Tube

/-- Rotate the ORIGINAL straight source tube, including both its
center and its unit direction. Axial length and radius do not change. -/
def spin (Q : RigidSpin d) (T : Tube d) : Tube d where
  center := Q T.center
  direction := ⟨Q (T.direction : Space d), by
    simpa only [Metric.mem_sphere, dist_zero_right, Q.norm_map] using
      (direction_norm T.direction)⟩
  halfLength := T.halfLength
  halfLength_pos := T.halfLength_pos
  radius := T.radius
  radius_pos := T.radius_pos

/-- The true straight-line axis remains straight after a common spin.
This is equality for EVERY real t, not just finitely sampled points. -/
theorem spin_axis (Q : RigidSpin d) (T : Tube d) (t : ℝ) :
    (T.spin Q).axis t = Q (T.axis t) := by
  simp [axis, spin, map_add, map_smul]

/-- Each physical cylinder is transported as an exact Euclidean set;
orthogonality of the transverse displacement comes from the actual
linear isometry's inner-product identity. -/
theorem spin_region (Q : RigidSpin d) (T : Tube d) :
    (T.spin Q).region = Q '' T.region := by
  ext x
  constructor
  · rintro ⟨t, ht, u, hu, hr, hx⟩
    refine ⟨T.center + t • (T.direction : Space d) + Q.symm u, ?_, ?_⟩
    · refine ⟨t, ht, Q.symm u, ?_, ?_, rfl⟩
      · have hinner := Q.symm.inner_map_map u (Q (T.direction : Space d))
        simpa [spin] using (hinner.trans hu)
      · simpa only [Q.symm.norm_map] using hr
    · calc
        Q (T.center + t • (T.direction : Space d) + Q.symm u) =
          Q T.center + t • Q (T.direction : Space d) + u := by
            simp [map_add, map_smul]
        _ = x := by simpa [spin] using hx.symm
  · rintro ⟨y, ⟨t, ht, u, hu, hr, hy⟩, rfl⟩
    refine ⟨t, ht, Q u, ?_, ?_, ?_⟩
    · have hinner := Q.inner_map_map u (T.direction : Space d)
      simpa [spin] using (hinner.trans hu)
    · simpa only [Q.norm_map] using hr
    · rw [hy]
      simp [spin, map_add, map_smul]

end Tube

namespace RigidSpin

/-- Mathlib proves Euclidean volume preservation for any actual
real linear isometry. No independent measure-preservation axiom
is attached to this rigid-spin definition. -/
theorem preserves_volume_image (Q : RigidSpin d)
    (s : Set (Space d)) :
    volume (Q '' s) = volume s := by
  have hpre :
      (Q.symm : Space d → Space d) ⁻¹' s = Q '' s := by
    ext x
    constructor
    · intro hx
      exact ⟨Q.symm x, hx, Q.apply_symm_apply x⟩
    · rintro ⟨y, hy, rfl⟩
      simpa using hy
  have hm :
      volume ((Q.symm : Space d → Space d) ⁻¹' s) = volume s := by
    simpa only [LinearIsometryEquiv.coe_toMeasurableEquiv] using
      (Q.symm.measurePreserving).measure_preimage_equiv
        (f := Q.symm.toMeasurableEquiv) s
  rw [←hpre]
  exact hm

theorem preserves_real_volume_image (Q : RigidSpin d)
    (s : Set (Space d)) :
    (volume : Measure (Space d)).real (Q '' s) =
      (volume : Measure (Space d)).real s := by
  simp [Measure.real, Q.preserves_volume_image s]

end RigidSpin

/-- The resulting tube radius/axial extent and exact Euclidean volume
are invariant under a common orthogonal motion. The numerical
orientation of the direction changes but the cylinder remains straight. -/
theorem Tube.spin_volume (Q : RigidSpin d) (T : Tube d) :
    (T.spin Q).lebesgueVolume = T.lebesgueVolume := by
  rw [Tube.lebesgueVolume, Tube.lebesgueVolume, T.spin_region Q]
  exact Q.preserves_volume_image T.region

end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
