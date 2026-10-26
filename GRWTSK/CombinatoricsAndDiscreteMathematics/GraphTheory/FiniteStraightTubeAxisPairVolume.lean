/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK work retain upstream author/license duties. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeAxisGap
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePhysicalPairBudget

set_option autoImplicit false
noncomputable section

/-!
# Physical pair-volume zero suppliers from true straight axis geometry

Any two original straight cylinders, regardless of directions, have
empty intersection when their allowed central line segments remain
farther apart than the sum of the radii. The corresponding original
indexed shadings then have exactly zero PHYSICAL Lebesgue pair
intersection volume and zero contribution to the positive weighted
second moment.

A simpler but stronger condition is total center distance larger
than both half-lengths plus radii.

This supplies genuine geometry-specific zero-pair cases to the
physical pair-budget theorem without confusing equal-direction
transverse separation, antipodal direction labels, or coarse cells.
It does not estimate the volume of intersections for angularly
separated axes that really cross.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index]

namespace Family

variable (S : Family d Index)

/-- A pair of real indexed shadings is physically disjoint whenever
the genuine underlying straight axes have a uniform radius gap. -/
theorem physical_shadings_disjoint_of_axis_gap
    (i j : Index)
    (hgap : ∀ t s : ℝ,
      |t| ≤ (S.tube i).halfLength →
      |s| ≤ (S.tube j).halfLength →
      (S.tube i).radius + (S.tube j).radius <
        ‖(S.tube i).axis t - (S.tube j).axis s‖) :
    Disjoint (S.shading i) (S.shading j) := by
  have htube :
      Disjoint (S.tube i).region (S.tube j).region :=
    (S.tube i).disjoint_of_uniform_axis_gap (S.tube j) hgap
  apply Set.disjoint_left.mpr
  intro x hi hj
  exact Set.disjoint_left.mp htube
    (S.shading_subtube i hi) (S.shading_subtube j hj)

/-- A genuine geometric no-intersection condition gives exact
zero Lebesgue pair overlap in the same ambient dimension d. -/
theorem physical_pair_volume_zero_of_axis_gap
    (i j : Index)
    (hgap : ∀ t s : ℝ,
      |t| ≤ (S.tube i).halfLength →
      |s| ≤ (S.tube j).halfLength →
      (S.tube i).radius + (S.tube j).radius <
        ‖(S.tube i).axis t - (S.tube j).axis s‖) :
    volume (S.shading i ∩ S.shading j) = 0 := by
  have hdisj := S.physical_shadings_disjoint_of_axis_gap i j hgap
  have heq : S.shading i ∩ S.shading j = ∅ :=
    Set.disjoint_iff_inter_eq_empty.mp hdisj
  rw [heq]
  exact measure_empty

/-- The same true geometric zero pair criterion from a simpler
dimension-independent center-distance bound, retaining all actual
lengths and radii. -/
theorem physical_pair_volume_zero_of_centers_far
    (i j : Index)
    (hfar :
      (S.tube i).halfLength + (S.tube j).halfLength +
          (S.tube i).radius + (S.tube j).radius <
        ‖(S.tube i).center - (S.tube j).center‖) :
    volume (S.shading i ∩ S.shading j) = 0 := by
  have htube : Disjoint (S.tube i).region (S.tube j).region :=
    (S.tube i).disjoint_of_center_distance_large (S.tube j) hfar
  have hs : Disjoint (S.shading i) (S.shading j) := by
    apply Set.disjoint_left.mpr
    intro x hi hj
    exact Set.disjoint_left.mp htube
      (S.shading_subtube i hi) (S.shading_subtube j hj)
  rw [Set.disjoint_iff_inter_eq_empty.mp hs]
  exact measure_empty

/-- A directly reusable REAL pair estimate, suitable for the
physical second-moment transfer rather than a coarse hit count. -/
theorem physical_pair_real_zero_of_centers_far
    (i j : Index)
    (hfar :
      (S.tube i).halfLength + (S.tube j).halfLength +
          (S.tube i).radius + (S.tube j).radius <
        ‖(S.tube i).center - (S.tube j).center‖) :
    (volume : Measure (Space d)).real
      (S.shading i ∩ S.shading j) = 0 := by
  rw [S.physical_pair_volume_zero_of_centers_far i j hfar]
  simp

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
