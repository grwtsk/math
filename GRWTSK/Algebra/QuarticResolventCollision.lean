import GRWTSK.Algebra.PolygonalQuarticSeparable
import GRWTSK.Algebra.QuarticResolventReduction

/-!
# Exact collision obstruction for quartic matching weights

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The three pairwise differences of adjacency weights factor into products
of differences of the original four roots. Over a field the collision
of a given pair of weights is therefore equivalent to one of two
specific root collisions. This applies in characteristic two or three
and after any reduction to a residue field. No assertion about an
arbitrary nonreduced quotient preserving separability is made.
-/

namespace GRWTSK.Algebra.QuarticResolventCollision

open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.PolygonalQuarticSeparable

variable {F : Type*} [Field F]

theorem adjacencyOne_eq_adjacencyTwo_iff (a b c d : F) :
    adjacencyOne a b c d = adjacencyTwo a b c d ↔
      a = d ∨ c = b := by
  rw [← sub_eq_zero, adjacencyOne_sub_adjacencyTwo, mul_eq_zero]
  simp only [sub_eq_zero]

theorem adjacencyOne_eq_adjacencyThree_iff (a b c d : F) :
    adjacencyOne a b c d = adjacencyThree a b c d ↔
      a = c ∨ d = b := by
  rw [← sub_eq_zero, adjacencyOne_sub_adjacencyThree, mul_eq_zero]
  simp only [sub_eq_zero]

theorem adjacencyTwo_eq_adjacencyThree_iff (a b c d : F) :
    adjacencyTwo a b c d = adjacencyThree a b c d ↔
      a = b ∨ d = c := by
  rw [← sub_eq_zero, adjacencyTwo_sub_adjacencyThree, mul_eq_zero]
  simp only [sub_eq_zero]

/-- Pairwise distinct adjacency values are equivalent to all four
root coordinates being pairwise distinct. This converse is stronger
than the previously established forward implication. -/
theorem adjacency_pairwise_distinct_iff (a b c d : F) :
    (adjacencyOne a b c d ≠ adjacencyTwo a b c d ∧
     adjacencyOne a b c d ≠ adjacencyThree a b c d ∧
     adjacencyTwo a b c d ≠ adjacencyThree a b c d) ↔
    (a ≠ b ∧ a ≠ c ∧ a ≠ d ∧ b ≠ c ∧ b ≠ d ∧ c ≠ d) := by
  rw [ne_eq, ne_eq, ne_eq,
    adjacencyOne_eq_adjacencyTwo_iff,
    adjacencyOne_eq_adjacencyThree_iff,
    adjacencyTwo_eq_adjacencyThree_iff]
  push_neg
  tauto

end GRWTSK.Algebra.QuarticResolventCollision
