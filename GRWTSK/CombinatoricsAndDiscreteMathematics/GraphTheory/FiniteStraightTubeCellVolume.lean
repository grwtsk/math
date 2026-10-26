/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK imports retain upstream author/license obligations. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

set_option autoImplicit false
noncomputable section

/-!
# Calibrated Euclidean cell volume versus mere Kakeya cell visitation

The previous geometry-to-cell map uses actual intersections of
straight-cylinder shadings and measurable ambient cell regions. A
visited cell need not be *filled*: touching a cell does not supply
a lower Lebesgue volume bound.

Here the missing analytic/geometric premise is explicit:
- the selected cells are pairwise disjoint and measurable;
- their *entire regions* lie inside the actual shading union.

Then finite measure additivity proves an exact union-volume LOWER
bound by the sum of measured filled-cell volumes. If all selected
cells have common volume v, this is card(covered) * v.

This theorem is dimension-indexed through the underlying Euclidean
tubes, but provides neither a Kakeya convex-clustering estimate nor
a theorem turning geometric **touches** into **full-cell fills**.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u v
variable {d : ℕ} {Index : Type u} {Cell : Type v}
variable [Fintype Index] [Fintype Cell]

namespace Family

variable (S : Family d Index)

/-- Each declared calibrated cell is a real geometric subset of the
same ambient Euclidean space as the original straight tubes. -/
def filledCell (cells : Cell → Set (Space d)) (c : Cell) : Prop :=
  cells c ⊆ S.shadingUnion

/-- Exact **Lebesgue**, not counting, lower volume bound.
Pairwise disjointness, measurability, and full-cell filling are
explicit, independent geometric hypotheses. -/
theorem filled_cells_sum_volume_le_shadingUnion
    (cells : Cell → Set (Space d)) (covered : Finset Cell)
    (hdisjoint : Set.PairwiseDisjoint (↑covered : Set Cell) cells)
    (hmeas : ∀ c ∈ covered, MeasurableSet (cells c))
    (hfill : ∀ c ∈ covered, S.filledCell cells c) :
    (∑ c ∈ covered, volume (cells c)) ≤ volume S.shadingUnion := by
  have hmeasure :
      volume (⋃ c ∈ covered, cells c) =
        ∑ c ∈ covered, volume (cells c) :=
    measure_biUnion_finset hdisjoint hmeas
  have hsubset :
      (⋃ c ∈ covered, cells c) ⊆ S.shadingUnion := by
    intro x hx
    obtain ⟨c, hc⟩ := Set.mem_iUnion.mp hx
    obtain ⟨hcIn, hxc⟩ := Set.mem_iUnion.mp hc
    exact hfill c hcIn hxc
  rw [← hmeasure]
  exact measure_mono hsubset

/-- A proper finite scaling factor: the *Lebesgue volume of a cell*
is multiplied by the number of completely shaded, disjoint cells.
No assumption identifies the ambient 3D and 4D volume units. -/
theorem common_volume_filled_cells_lower
    (cells : Cell → Set (Space d)) (covered : Finset Cell)
    (v : ℝ≥0∞)
    (hdisjoint : Set.PairwiseDisjoint (↑covered : Set Cell) cells)
    (hmeas : ∀ c ∈ covered, MeasurableSet (cells c))
    (hfill : ∀ c ∈ covered, S.filledCell cells c)
    (hvolume : ∀ c ∈ covered, volume (cells c) = v) :
    (covered.card : ℝ≥0∞) * v ≤ volume S.shadingUnion := by
  calc
    (covered.card : ℝ≥0∞) * v =
        ∑ c ∈ covered, v := by
      simp [Finset.sum_const, nsmul_eq_mul]
    _ = ∑ c ∈ covered, volume (cells c) := by
      apply Finset.sum_congr rfl
      intro c hc
      exact (hvolume c hc).symm
    _ ≤ volume S.shadingUnion :=
      S.filled_cells_sum_volume_le_shadingUnion
        cells covered hdisjoint hmeas hfill

end Family

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
