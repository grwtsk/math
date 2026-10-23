/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1010 exact head 4780f52d9b30e0d8a8d8becb2b683a92c132f999.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarConeFibers
import Mathlib.Analysis.SpecialFunctions.Complex.Arg
import Mathlib.Tactic

/-!
# Polar surjectivity: exact complex decomposition obligation

Every complex disk point z has radius ‖z‖ in [0,1]. At the origin,
any circle angle is valid. Away from zero, the missing supplier is a
phase representation z = ‖z‖ * exp (2πiθ), with θ a real angle.
The source makes that phase representation an explicit hypothesis,
rather than silently treating it as a proved Mathlib theorem.

This is a bounded conditional surjectivity result. Unconditional
surjectivity and the homeomorphism are not yet asserted.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskSurjectivity

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarUnitCircleLift

/-- Every point in the closed complex unit disk has a legitimate
radius in the genuine unit interval. -/
def diskRadius (z : ClosedComplexUnitDisk) : unitInterval :=
  ⟨‖z.val‖, by
    constructor
    · exact norm_nonneg _
    · exact z.property⟩

/-- The origin is represented by the actual cone apex. -/
theorem disk_origin_in_polar_range :
    ∃ c : StandardCircleCone,
      standardConePolarDisk c =
        (⟨0, by simp⟩ : ClosedComplexUnitDisk) :=
  ⟨standardCircleConeApex, standardConePolarDisk_apex⟩

/-- A nonzero disk point is in the polar range whenever its complex
phase is represented by an exact real angle. -/
theorem disk_nonzero_in_polar_range_of_phase
    (z : ClosedComplexUnitDisk) (hz : z.val ≠ 0)
    (hphase : ∃ θ : ℝ,
      z.val = realAnglePolar θ (‖z.val‖)) :
    ∃ c : StandardCircleCone, standardConePolarDisk c = z := by
  rcases hphase with ⟨θ, hθ⟩
  refine ⟨standardCircleConeProjection
    ((θ : UnitAddCircle), diskRadius z), ?_⟩
  apply Subtype.ext
  change realAnglePolar θ (‖z.val‖) = z.val
  exact hθ.symm

/-- A fully explicit conditional surjectivity statement, retaining
the only missing complex polar decomposition theorem as a premise. -/
theorem standardConePolarDisk_surjective_of_phase
    (hphase : ∀ z : ℂ, z ≠ 0 →
      ∃ θ : ℝ, z = realAnglePolar θ (‖z‖)) :
    Function.Surjective standardConePolarDisk := by
  intro z
  by_cases hz : z.val = 0
  · subst z
    exact disk_origin_in_polar_range
  · exact disk_nonzero_in_polar_range_of_phase z hz
      (hphase z.val hz)

/-
OPEN: supply the unconditional phase decomposition using Mathlib's
Complex.arg / exp_mul_I or circleMap range theorem, with exact 2π
normalization. Then derive unconditional surjectivity and package
the compact-to-Hausdorff homeomorphism.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskSurjectivity
