/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK imports retain original authorship and licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeCertifiedPairCells
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeVolumeTransfer

set_option autoImplicit false
noncomputable section

/-!
# Ordered pairwise geometric cell bounds feed actual Lebesgue volume

The prior source-derived finite overlap Q is now the exact sum of
ordered pairwise *indexed* shading cell contributions, rather than
an arbitrary unexplained upper bound. A genuinely proved per-pair
incidence estimate B(i,j) gives Q <= Σ_i Σ_j B(i,j).

With a separately certified first-incidence mass, disjoint filled
measurable cells and their real Euclidean volume v, the previous
count-to-volume theorem yields:

  volume(union shadings) >= ofReal(I² / Σ_i Σ_j B(i,j)) * v.

This is an explicit theorem interface for future angularly separated
Kakeya pair-estimates. The source does not assume the geometric
pair bounds hold automatically, nor derive them from site cladding.
Parallel, transversely separated tubes furnish a *special* zero
pair certificate only under the genuine full-cell-occupation bridge.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume
open MeasureTheory

universe u v
variable {d : ℕ} {Index : Type u} {Cell : Type v}
variable [Fintype Index] [Fintype Cell]

namespace Family

variable (S : Family d Index)

/-- Explicit complete upper sum of all ordered **indexed** tube
co-marking pair bounds. No tube indices are deduplicated. -/
def pairBoundSum (bound : Index → Index → ℝ) : ℝ :=
  ∑ i : Index, ∑ j : Index, bound i j

/-- Actual geometric source cell incidence contributes to the same
finite Q as the new exact pair decomposition, not a fresh Q record. -/
theorem geometric_overlap_le_pairBoundSum
    (cells : Cell → Set (Space d))
    (covered : Finset Cell)
    (bound : Index → Index → ℝ)
    (hpair : ∀ i j,
      (S.asIndexedCounting cells).pairCellWeight covered i j ≤ bound i j) :
    (S.asIndexedCounting cells).overlapSecondMoment covered ≤
      S.pairBoundSum bound :=
  (S.asIndexedCounting cells).overlapSecondMoment_le_pair_bounds
    covered bound hpair

/-- The volume transfer now consumes individually justified
pairwise geometric overlap estimates rather than a completely
free scalar second-moment bound. Both the full-cell geometry and
a positive total pair budget remain genuine hypotheses. -/
theorem shading_volume_lower_of_pairBoundSum
    (cells : Cell → Set (Space d)) (covered : Finset Cell)
    (I : ℝ) (bound : Index → Index → ℝ) (v : ℝ≥0∞)
    (hI : 0 ≤ I) (hpositive : 0 < S.pairBoundSum bound)
    (hfirst : I ≤
      ∑ c ∈ covered, (S.asIndexedCounting cells).multiplicity c)
    (hpair : ∀ i j,
      (S.asIndexedCounting cells).pairCellWeight covered i j ≤ bound i j)
    (hdisjoint : Set.PairwiseDisjoint (↑covered : Set Cell) cells)
    (hmeas : ∀ c ∈ covered, MeasurableSet (cells c))
    (hfill : ∀ c ∈ covered, S.filledCell cells c)
    (hvolume : ∀ c ∈ covered, volume (cells c) = v) :
    ENNReal.ofReal (I ^ 2 / S.pairBoundSum bound) * v ≤
      volume S.shadingUnion := by
  exact S.covered_volume_lower_of_second_moment
    cells covered I (S.pairBoundSum bound) v
    hI hpositive hfirst
    (S.geometric_overlap_le_pairBoundSum cells covered bound hpair)
    hdisjoint hmeas hfill hvolume

/-- One legitimately geometric ZERO pair supplier from the
parallel-radius separation theorem. It still requires the
separately certified full-cell-occupation and nonempty cells,
rather than treating physical disjointness as a coarse-cell
overlap count by fiat. -/
theorem parallel_gap_pair_bound_zero
    (cells : Cell → Set (Space d))
    (covered : Finset Cell)
    (hfull : S.FullyOccupiedOnHits cells)
    (hnonempty : ∀ c ∈ covered, (cells c).Nonempty)
    (i j : Index)
    (hdir : (S.tube i).direction = (S.tube j).direction)
    (hgap : (S.tube i).radius + (S.tube j).radius <
      ‖transversePart (S.tube i).direction
        ((S.tube j).center - (S.tube i).center)‖) :
    (S.asIndexedCounting cells).pairCellWeight covered i j ≤ 0 := by
  rw [S.pairCellWeight_zero_of_parallel_gap
    cells covered hfull hnonempty i j hdir hgap]

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
