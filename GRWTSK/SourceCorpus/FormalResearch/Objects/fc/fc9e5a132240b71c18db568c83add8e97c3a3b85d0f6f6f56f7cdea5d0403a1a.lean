import DAF.Hilbert.Finite
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Exact tensor coordinates for finite Hilbert spaces
-/

noncomputable section

namespace DAF.Hilbert

universe u v

variable {Left : Type u} {Right : Type v}
variable [Fintype Left] [Fintype Right]

/-- Coordinate tensor product of two vectors in the canonical finite bases. -/
def tensorVector (left : FiniteHilbert Left) (right : FiniteHilbert Right) :
    FiniteHilbert (Left × Right) :=
  WithLp.toLp 2 fun index ↦ left index.1 * right index.2

@[simp]
theorem tensorVector_apply
    (left : FiniteHilbert Left) (right : FiniteHilbert Right)
    (index : Left × Right) :
    tensorVector left right index = left index.1 * right index.2 :=
  rfl

/-- Squared norms multiply under the finite coordinate tensor product. -/
theorem tensorVector_norm_sq
    (left : FiniteHilbert Left) (right : FiniteHilbert Right) :
    ‖tensorVector left right‖ ^ 2 = ‖left‖ ^ 2 * ‖right‖ ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq,
    EuclideanSpace.norm_sq_eq]
  simp_rw [tensorVector_apply, norm_mul, mul_pow]
  rw [Fintype.sum_prod_type]
  simp only []
  rw [← Fintype.sum_mul_sum]

/-- Tensoring unit vectors gives a unit vector. -/
theorem tensorVector_norm
    {left : FiniteHilbert Left} {right : FiniteHilbert Right}
    (left_unit : ‖left‖ = 1) (right_unit : ‖right‖ = 1) :
    ‖tensorVector left right‖ = 1 := by
  have square := tensorVector_norm_sq left right
  rw [left_unit, right_unit] at square
  norm_num only [one_pow, one_mul] at square
  nlinarith [norm_nonneg (tensorVector left right)]

end DAF.Hilbert
