/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK imports retain upstream license and authorship. -/
import GRWTSK.Analysis.Geometry.FiniteParallelTubeSeparation
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeAtomVolume

set_option autoImplicit false
noncomputable section

/-!
# Actual Euclidean pair-overlap volume for parallel separated tubes

A genuine parallel/transverse radius-gap certificate makes the
*physical* intersection of two Euclidean straight cylinders EMPTY,
in any declared ambient dimension. Every pair of shadings inside
those cylinders therefore has Lebesgue intersection volume zero.

This is strictly stronger geometric information than the earlier
coarse-cell marking and requires no cell filling or grid assumption.
The canonical atom decomposition agrees: the sum of volumes of
atoms containing BOTH shading indices is exactly zero.

The result covers equal directions with a proved transverse gap;
it is not an angularly separated multiscale Kakeya estimate.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family

variable (S : Family d Index)

theorem physical_shadings_disjoint_of_parallel_gap
    (i j : Index)
    (hdir : (S.tube i).direction = (S.tube j).direction)
    (hgap : (S.tube i).radius + (S.tube j).radius <
      ‖transversePart (S.tube i).direction
        ((S.tube j).center - (S.tube i).center)‖) :
    Disjoint (S.shading i) (S.shading j) := by
  exact (S.tube i).disjoint_shadings_of_parallel_transverse_separation
    (S.tube j) (S.shading i) (S.shading j)
    (S.shading_subtube i) (S.shading_subtube j) hdir hgap

/-- An actual empty Euclidean pair intersection has zero
Lebesgue measure, independently of any coarse tessellation. -/
theorem physical_pair_volume_zero_of_parallel_gap
    (i j : Index)
    (hdir : (S.tube i).direction = (S.tube j).direction)
    (hgap : (S.tube i).radius + (S.tube j).radius <
      ‖transversePart (S.tube i).direction
        ((S.tube j).center - (S.tube i).center)‖) :
    volume (S.shading i ∩ S.shading j) = 0 := by
  have hdisjoint :=
    S.physical_shadings_disjoint_of_parallel_gap i j hdir hgap
  have hempty : S.shading i ∩ S.shading j = ∅ :=
    Set.disjoint_iff_inter_eq_empty.mp hdisjoint
  rw [hempty]
  exact measure_empty

/-- The canonical exact-shading atoms cannot carry any measured
pair overlap from this physically separated pair. This equality
uses the exact Lebesgue atom identity, not a false coarse-grid
argument. -/
theorem shared_atoms_volume_zero_of_parallel_gap
    (hmeas : ∀ k, MeasurableSet (S.shading k))
    (i j : Index)
    (hdir : (S.tube i).direction = (S.tube j).direction)
    (hgap : (S.tube i).radius + (S.tube j).radius <
      ‖transversePart (S.tube i).direction
        ((S.tube j).center - (S.tube i).center)‖) :
    (∑ A ∈ S.sharedShadingAtoms i j,
        volume (S.shadingAtom A)) = 0 := by
  rw [← S.volume_shading_inter_eq_atom_sum hmeas i j]
  exact S.physical_pair_volume_zero_of_parallel_gap i j hdir hgap

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
