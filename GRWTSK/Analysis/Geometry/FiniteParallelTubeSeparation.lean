/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK declarations retain upstream author/license obligations. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

set_option autoImplicit false
noncomputable section

/-!
# Exact physical disjointness of sufficiently separated parallel tubes

For two original STRAIGHT tubes of the same unit direction, their
transverse center displacement is a genuine geometric quantity.
If its Euclidean norm is greater than the sum of the two radii,
their actual Euclidean cylindrical regions are disjoint, regardless
of axial overlap, axial half-length and ambient dimension.

This is a concrete nontrivial pair-overlap supplier. It is
NOT an angularly separated Kakeya estimate: it covers equal
directions, and its hypotheses deliberately include genuine
transverse placement. A convex/non-clustering bound for differently
directed tubes is still open.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

variable {d : ℕ}

/-- Orthogonal projection to the hyperplane perpendicular to one
actual normalized direction. This is not a projection to a curved
ray or an energetic shortest path. -/
def transversePart (ω : Direction d) (v : Space d) : Space d :=
  v - (inner ℝ v (ω : Space d)) • (ω : Space d)

/-- For a given world point, the transverse offset from a tube center
is exactly the residual occurring in the existing tube-membership
characterization. -/
def transverseOffset (ω : Direction d)
    (x center : Space d) : Space d :=
  transversePart ω (x - center)

/-- The difference of two transverse offsets at the SAME point
depends only on their actual geometric center displacement. -/
theorem transverseOffset_sub
    (ω : Direction d) (x c₁ c₂ : Space d) :
    transverseOffset ω x c₁ - transverseOffset ω x c₂ =
      transversePart ω (c₂ - c₁) := by
  unfold transverseOffset transversePart
  simp only [inner_sub_left, sub_smul]
  abel

namespace Tube

/-- A source-derived real geometric separation inequality: an actual
common point of two parallel tubes forces center separation in the
transverse plane to be at most the sum of their positive radii. -/
theorem transverse_center_bound_of_shared_point
    (T U : Tube d)
    (hdir : T.direction = U.direction)
    {x : Space d} (hxT : x ∈ T.region) (hxU : x ∈ U.region) :
    ‖transversePart T.direction (U.center - T.center)‖ ≤
      T.radius + U.radius := by
  have hT :=
    (T.mem_region_iff x).mp hxT
  have hU :=
    (U.mem_region_iff x).mp hxU
  have hnT :
      ‖transverseOffset T.direction x T.center‖ ≤ T.radius := by
    exact hT.2
  have hnU :
      ‖transverseOffset T.direction x U.center‖ ≤ U.radius := by
    simpa only [transverseOffset, transversePart, hdir] using hU.2
  calc
    ‖transversePart T.direction (U.center - T.center)‖ =
        ‖transverseOffset T.direction x T.center -
          transverseOffset T.direction x U.center‖ := by
      rw [transverseOffset_sub]
    _ ≤ ‖transverseOffset T.direction x T.center‖ +
        ‖transverseOffset T.direction x U.center‖ := norm_sub_le _ _
    _ ≤ T.radius + U.radius := add_le_add hnT hnU

/-- Under the explicit positive transverse gap, no point can lie in
both of the original straight tubes. This gives actual pairwise
Euclidean disjointness, not a numerically guessed density bound. -/
theorem disjoint_of_parallel_transverse_separation
    (T U : Tube d)
    (hdir : T.direction = U.direction)
    (hgap : T.radius + U.radius <
      ‖transversePart T.direction (U.center - T.center)‖) :
    Disjoint T.region U.region := by
  apply Set.disjoint_left.mpr
  intro x hxT hxU
  have h :=
    T.transverse_center_bound_of_shared_point U hdir hxT hxU
  exact (not_lt_of_ge h) hgap

/-- This also excludes intersection of any source-identified
shadings contained in the two actual separated tube regions. -/
theorem disjoint_shadings_of_parallel_transverse_separation
    (T U : Tube d)
    (shadeT shadeU : Set (Space d))
    (hshadeT : shadeT ⊆ T.region)
    (hshadeU : shadeU ⊆ U.region)
    (hdir : T.direction = U.direction)
    (hgap : T.radius + U.radius <
      ‖transversePart T.direction (U.center - T.center)‖) :
    Disjoint shadeT shadeU := by
  apply Set.disjoint_left.mpr
  intro x hxT hxU
  exact Set.disjoint_left.mp
    (T.disjoint_of_parallel_transverse_separation U hdir hgap)
    (hshadeT hxT) (hshadeU hxU)

end Tube

end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
