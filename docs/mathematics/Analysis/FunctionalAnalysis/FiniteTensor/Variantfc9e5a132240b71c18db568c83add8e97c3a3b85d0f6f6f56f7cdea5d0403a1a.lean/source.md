# Complete source: GRWTSK.Analysis.FunctionalAnalysis.FiniteTensor.Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89266a8aca0d5a85ea84b4e5a9072a4312ce3aff` · SHA-256 `fc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
