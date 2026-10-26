/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK source retain upstream author/license obligations. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeCellVolume

set_option autoImplicit false
noncomputable section

/-!
# Actual finite Kakeya-style overlap-to-Lebesgue-volume transfer

The source consists of ambient-dimension-indexed straight Euclidean
cylinders and their independently indexed shadings. A geometric cell
intersection produces each incidence bit. The finite Cauchy inequality
then converts:
  lower incidence I; upper overlap-second-moment Q > 0
into a lower bound on the number of covered cells, I²/Q.

Converting that cell count to actual Lebesgue volume requires much
stronger, independently certified conditions: the selected cells are
measurable, pairwise disjoint, completely contained in the union of
shadings, and of common Euclidean volume v. In this setting:

  volume(union shadings) ≥ ofReal(I²/Q) * v.

This is an honest conditional finite theorem. Neither convex
non-clustering nor large-volume cell filling follows from a cladding
potential, a bend-cost preference, direction separation, or the mere
fact that a tube touches a cell. No maximal Kakeya theorem is imported.
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

/-- Count of covered *geometric cells* derived from a quantified
first-incidence lower bound and a separate second-overlap estimate.
The source-index family need not have distinct geometric tubes. -/
theorem covered_cell_count_lower
    (cells : Cell → Set (Space d)) (covered : Finset Cell)
    (I Q : ℝ)
    (hI : 0 ≤ I) (hQ : 0 < Q)
    (hfirst : I ≤
      ∑ c ∈ covered, (S.asIndexedCounting cells).multiplicity c)
    (hsecond :
      (S.asIndexedCounting cells).overlapSecondMoment covered ≤ Q) :
    I ^ 2 / Q ≤ (covered.card : ℝ) := by
  have hsum_nonneg :
      0 ≤ ∑ c ∈ covered, (S.asIndexedCounting cells).multiplicity c := by
    apply Finset.sum_nonneg
    intro c _
    exact (S.asIndexedCounting cells).multiplicity_nonneg c
  have hsq :
      I ^ 2 ≤
        (∑ c ∈ covered,
          (S.asIndexedCounting cells).multiplicity c) ^ 2 := by
    nlinarith
  have hcs :=
    S.geometric_visible_count_cauchy cells covered
  have hcard : 0 ≤ (covered.card : ℝ) := Nat.cast_nonneg _
  have hQbound :
      (covered.card : ℝ) *
          (S.asIndexedCounting cells).overlapSecondMoment covered ≤
        (covered.card : ℝ) * Q :=
    mul_le_mul_of_nonneg_left hsecond hcard
  apply (div_le_iff₀ hQ).2
  exact hsq.trans (hcs.trans hQbound)

/-- This theorem closes the FINITE *measure transport* only after
the genuinely geometric full-cell filling, disjointness and common
Lebesgue cell volume have been supplied by independent arguments.
The bound is in the same ambient dimension d as every source tube. -/
theorem covered_volume_lower_of_second_moment
    (cells : Cell → Set (Space d)) (covered : Finset Cell)
    (I Q : ℝ) (v : ℝ≥0∞)
    (hI : 0 ≤ I) (hQ : 0 < Q)
    (hfirst : I ≤
      ∑ c ∈ covered, (S.asIndexedCounting cells).multiplicity c)
    (hsecond :
      (S.asIndexedCounting cells).overlapSecondMoment covered ≤ Q)
    (hdisjoint : Set.PairwiseDisjoint (↑covered : Set Cell) cells)
    (hmeas : ∀ c ∈ covered, MeasurableSet (cells c))
    (hfill : ∀ c ∈ covered, S.filledCell cells c)
    (hvolume : ∀ c ∈ covered, volume (cells c) = v) :
    ENNReal.ofReal (I ^ 2 / Q) * v ≤ volume S.shadingUnion := by
  have hcount :
      I ^ 2 / Q ≤ (covered.card : ℝ) :=
    S.covered_cell_count_lower
      cells covered I Q hI hQ hfirst hsecond
  have hENN :
      ENNReal.ofReal (I ^ 2 / Q) ≤ (covered.card : ℝ≥0∞) := by
    simpa using (ENNReal.ofReal_le_ofReal hcount)
  calc
    ENNReal.ofReal (I ^ 2 / Q) * v ≤
        (covered.card : ℝ≥0∞) * v :=
      mul_le_mul_right' hENN v
    _ ≤ volume S.shadingUnion :=
      S.common_volume_filled_cells_lower
        cells covered v hdisjoint hmeas hfill hvolume

end Family

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
