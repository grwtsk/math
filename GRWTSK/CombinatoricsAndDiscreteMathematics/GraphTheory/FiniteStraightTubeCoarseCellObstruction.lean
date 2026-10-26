/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing Mathlib and GRWTSK source retain original license and attribution. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePairGeometry
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedPairOverlap

set_option autoImplicit false
noncomputable section

/-!
# Exact coarse-cell false-positive overlap between disjoint tubes

Consider two original finite straight tubes that are physically
disjoint, one independently indexed center-point shading per tube,
and a single deliberately coarse cell equal to all ambient space.
Both true shading/cell incidence bits are positive, and their
ordered pair term in the counting second moment is positive.
But their *actual shared shading point* mark is false.

This finite negative-control fixture formally prevents a common
unsound step: replacing physical tube overlap by a count of cells
each touched at possibly DIFFERENT points. A quantitative fine
grid/cell-filling or bounded-thickness premise is required.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

variable {d : ℕ}

/-- Two *independently indexed* straight tube shadings, equal to their
physical center points. The weights are both exactly one. -/
def twoCenterShadings (T U : Tube d) : Family d (Fin 2) where
  tube i := if i = 0 then T else U
  shading i := if i = 0 then {T.center} else {U.center}
  shading_subtube := by
    intro i x hx
    fin_cases i
    · have hc : x = T.center := by
        simpa using hx
      subst x
      exact T.center_mem_region
    · have hc : x = U.center := by
        simpa using hx
      subst x
      exact U.center_mem_region
  weight := fun _ => 1
  weight_nonneg := by
    intro i
    norm_num

/-- A coarse observation cell covering the entire declared Euclidean
ambient space, with no small-diameter or full-shading certificate. -/
def ambientCell : PUnit → Set (Space d) := fun _ => Set.univ

/-- Both independently sourced shadings intersect this same coarse
cell, regardless of the actual distance between their tubes. -/
theorem both_centers_mark_ambient_cell (T U : Tube d) :
    (twoCenterShadings T U).geometricMark ambientCell 0 PUnit.unit = true ∧
      (twoCenterShadings T U).geometricMark ambientCell 1 PUnit.unit = true := by
  constructor
  · exact (twoCenterShadings T U).geometricMark_complete
      ambientCell 0 PUnit.unit T.center
      (by simp [twoCenterShadings]) (Set.mem_univ _)
  · exact (twoCenterShadings T U).geometricMark_complete
      ambientCell 1 PUnit.unit U.center
      (by simp [twoCenterShadings]) (Set.mem_univ _)

/-- The co-hit gives a positive ordered cross term, irrespective
of whether the physical shading sets overlap. This is precisely the
term which must not be confused with Lebesgue intersection volume. -/
theorem pair_cell_weight_one (T U : Tube d) :
    ((twoCenterShadings T U).asIndexedCounting ambientCell).pairCellWeight
      (Finset.univ : Finset PUnit) 0 1 = 1 := by
  obtain ⟨h0, h1⟩ := both_centers_mark_ambient_cell T U
  simp [FiniteIndexedShadingVolume.Family.pairCellWeight,
    FiniteIndexedShadingVolume.Family.contribution,
    Family.asIndexedCounting, h0, h1]

/-- With the actual Euclidean parallel-gap certificate, there is
NO common physical shading point, despite the positive co-hit. -/
theorem coarse_cell_overlap_false_positive
    (T U : Tube d)
    (hdir : T.direction = U.direction)
    (hgap : T.radius + U.radius <
      ‖transversePart T.direction (U.center - T.center)‖) :
    ((twoCenterShadings T U).asIndexedCounting ambientCell).pairCellWeight
        (Finset.univ : Finset PUnit) 0 1 = 1 ∧
      (twoCenterShadings T U).sharedShadingMark
        ambientCell 0 1 PUnit.unit = false := by
  constructor
  · exact pair_cell_weight_one T U
  · apply (twoCenterShadings T U).shared_mark_false_of_disjoint_tubes
      ambientCell 0 1 PUnit.unit
    simpa [twoCenterShadings] using
      (T.disjoint_of_parallel_transverse_separation U hdir hgap)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
