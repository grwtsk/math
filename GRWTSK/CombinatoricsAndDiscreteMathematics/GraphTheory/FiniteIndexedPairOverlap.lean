/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK declarations retain their original licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

set_option autoImplicit false
noncomputable section

/-!
# Exact pairwise resolution of the finite indexed overlap moment

The earlier finite shading family stores independent nonnegative weights
and Boolean cell marks for each SOURCE INDEX, even if two source indices
describe identical physical tubes. This leaf unfolds its second overlap
moment into actual pairwise shared-cell contributions. Q is thereby an
explicit finite sum over ordered pairs of indices, not an unexplained
numeric estimate supplied to a downstream volume theorem.

The decomposition is pure counting measure. For genuine Euclidean
volume the cell calibration and analytic pairwise tube-intersection
bounds remain separate mathematical suppliers.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

universe u v
variable {Index : Type u} {Cell : Type v}
variable [Fintype Index] [Fintype Cell]

namespace Family

variable (S : Family Index Cell)

/-- An actual cell contribution of one *indexed* shading, including
its independent nonnegative weight. -/
def contribution (i : Index) (c : Cell) : ℝ :=
  if S.marked i c then S.weight i else 0

theorem contribution_nonneg (i : Index) (c : Cell) :
    0 ≤ S.contribution i c := by
  unfold contribution
  split_ifs
  · exact S.weight_nonneg i
  · exact le_refl 0

/-- Per-cell weighted multiplicity is precisely the sum of its
individual indexed terms. No indices are deduplicated. -/
theorem multiplicity_eq_contribution (c : Cell) :
    S.multiplicity c = ∑ i : Index, S.contribution i c := rfl

/-- Actual **ordered** pairwise co-occurrence contribution in the
chosen finite set of cells. Pair indices may be equal. -/
def pairCellWeight (covered : Finset Cell)
    (i j : Index) : ℝ :=
  ∑ c ∈ covered, S.contribution i c * S.contribution j c

theorem pairCellWeight_nonneg
    (covered : Finset Cell) (i j : Index) :
    0 ≤ S.pairCellWeight covered i j := by
  unfold pairCellWeight
  apply Finset.sum_nonneg
  intro c _
  exact mul_nonneg
    (S.contribution_nonneg i c)
    (S.contribution_nonneg j c)

/-- Symmetry of the ordered pair contribution: it remains ordered
in the double sum, so this is NOT a factor-of-two cancellation. -/
theorem pairCellWeight_symm
    (covered : Finset Cell) (i j : Index) :
    S.pairCellWeight covered i j =
      S.pairCellWeight covered j i := by
  unfold pairCellWeight
  apply Finset.sum_congr rfl
  intro c _
  exact mul_comm _ _

/-- Expand the actual square of the per-cell indexed multiplicity
into all independently weighted pairs, including diagonal pairs. -/
theorem multiplicity_sq_eq_pair_sum (c : Cell) :
    (S.multiplicity c) ^ 2 =
      ∑ i : Index, ∑ j : Index,
        S.contribution i c * S.contribution j c := by
  rw [S.multiplicity_eq_contribution c, pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]

/-- Exact finite Fubini decomposition of the previous unknown Q.
This is the true moment of the indexed *cell marks*, with no imported
Kakeya, convex clustering or direction-separation hypothesis. -/
theorem overlapSecondMoment_eq_pairCellWeight
    (covered : Finset Cell) :
    S.overlapSecondMoment covered =
      ∑ i : Index, ∑ j : Index, S.pairCellWeight covered i j := by
  unfold overlapSecondMoment pairCellWeight
  calc
    (∑ c ∈ covered, (S.multiplicity c) ^ 2) =
        ∑ c ∈ covered, ∑ i : Index, ∑ j : Index,
          S.contribution i c * S.contribution j c := by
      apply Finset.sum_congr rfl
      intro c _
      exact S.multiplicity_sq_eq_pair_sum c
    _ = ∑ i : Index, ∑ c ∈ covered, ∑ j : Index,
          S.contribution i c * S.contribution j c := by
      rw [Finset.sum_comm]
    _ = ∑ i : Index, ∑ j : Index, ∑ c ∈ covered,
          S.contribution i c * S.contribution j c := by
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.sum_comm]

/-- A *collection of actual pairwise overlap bounds* gives the
second-moment bound needed by the finite volume interface.
The supplier must prove a separate inequality for EVERY ordered
pair, including repeated source indices. -/
theorem overlapSecondMoment_le_pair_bounds
    (covered : Finset Cell) (bound : Index → Index → ℝ)
    (hbound : ∀ i j, S.pairCellWeight covered i j ≤ bound i j) :
    S.overlapSecondMoment covered ≤
      ∑ i : Index, ∑ j : Index, bound i j := by
  rw [S.overlapSecondMoment_eq_pairCellWeight covered]
  apply Finset.sum_le_sum
  intro i _
  apply Finset.sum_le_sum
  intro j _
  exact hbound i j

/-- A concrete weak fallback: every pair term is controlled by
the same nonnegative M, with total cardinality loss. A true
Kakeya gain requires MUCH better geometry-specific pair bounds. -/
theorem overlapSecondMoment_le_uniform_pair
    (covered : Finset Cell) (M : ℝ)
    (hbound : ∀ i j, S.pairCellWeight covered i j ≤ M) :
    S.overlapSecondMoment covered ≤
      (Fintype.card Index : ℝ) ^ 2 * M := by
  calc
    S.overlapSecondMoment covered ≤
        ∑ i : Index, ∑ j : Index, M :=
      S.overlapSecondMoment_le_pair_bounds covered
        (fun _ _ => M) hbound
    _ = (Fintype.card Index : ℝ) ^ 2 * M := by
      simp [Finset.sum_const, pow_two]
      ring

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume
