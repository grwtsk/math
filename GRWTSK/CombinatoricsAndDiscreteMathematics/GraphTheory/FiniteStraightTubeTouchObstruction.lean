/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK source retain their upstream authorship/licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

set_option autoImplicit false
noncomputable section

/-!
# A genuine source-indexed counterexample to touch-count → volume

Take ANY actual finite straight Euclidean tube, and one labeled
source whose shading is just the tube's center. The unique cell is
the entire tube, so the genuine shading/cell intersection is marked.
But when the ambient Lebesgue measure annihilates the center singleton
(as it does in positive Euclidean dimensions), its shading union has
volume zero.

The measure-of-singleton assumption is exposed rather than silently
asserted for the pathological ambient dimension zero. This proves
that no positive shaded-volume lower bound follows merely from one
positive visited-cell count, even with a positive tube radius.

It does not contradict the separately *fully filled* disjoint-cell
measure transfer or the established Kakeya tube-volume theorem.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

variable {d : ℕ}

/-- One original geometric straight tube, one independently indexed
shading consisting of exactly its center. -/
def centerPointShading (T : Tube d) : Family d PUnit where
  tube := fun _ => T
  shading := fun _ => {T.center}
  shading_subtube := by
    intro i x hx
    have hcenter : x = T.center := Set.mem_singleton_iff.mp hx
    subst x
    exact T.center_mem_region
  weight := fun _ => 1
  weight_nonneg := fun _ => by norm_num

/-- The one selected ambient cell is the actual original tube itself. -/
def entireTubeCell (T : Tube d) : PUnit → Set (Space d) :=
  fun _ => T.region

/-- A geometric hit is obtained from an actual shading witness
at the tube center. No incidence bit was invented by assumption. -/
theorem center_point_is_geometrically_marked (T : Tube d) :
    (centerPointShading T).geometricMark
      (entireTubeCell T) PUnit.unit PUnit.unit = true := by
  exact (centerPointShading T).geometricMark_complete
    (entireTubeCell T) PUnit.unit PUnit.unit T.center
    (by simp [centerPointShading])
    T.center_mem_region

/-- The underlying shaded union remains a geometric singleton,
despite the marked cell being a full positive-radius tube. -/
theorem center_shadingUnion_eq_singleton (T : Tube d) :
    (centerPointShading T).shadingUnion = {T.center} := by
  ext x
  simp [Family.shadingUnion, centerPointShading]

/-- Conditional because in dimension zero a singleton can have
positive volume; in positive-dimensional Euclidean space it is null. -/
theorem center_shadingUnion_volume_zero
    (T : Tube d)
    (hpoint : MeasureTheory.volume ({T.center} : Set (Space d)) = 0) :
    MeasureTheory.volume (centerPointShading T).shadingUnion = 0 := by
  rw [center_shadingUnion_eq_singleton]
  exact hpoint

/-- Finite witness against inferring shading-volume positivity from
cell visitation alone. The required null singleton and nonzero tube
volume are explicit independent measure premises. -/
theorem touching_cell_not_volume_filling
    (T : Tube d)
    (hpoint : MeasureTheory.volume ({T.center} : Set (Space d)) = 0)
    (htube : 0 < T.lebesgueVolume) :
    (centerPointShading T).geometricMark
        (entireTubeCell T) PUnit.unit PUnit.unit = true ∧
      MeasureTheory.volume (centerPointShading T).shadingUnion = 0 ∧
      0 < T.lebesgueVolume := by
  exact ⟨center_point_is_geometrically_marked T,
    center_shadingUnion_volume_zero T hpoint, htube⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
