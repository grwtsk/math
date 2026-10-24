# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variantcf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bb4d5d03b1c1171b9efe863bfa0b38e377f87cd` · SHA-256 `cf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.JacobianConjecture.FixedPoints

/-!
# Checked hostile cases

These refutations exercise the concrete coordinates and matrix convention.
The source-admission validator separately guards unsupported status promotions.
-/

namespace FormalResearch.JacobianConjecture

noncomputable section

/-- Changing the coefficient of `x` in the third output from `2` to `3`
breaks the displayed collision at `pPlus`. -/
theorem changed_coefficient_breaks_collision :
    (alpogeFable pPlus + ![0, 0, pPlus 0]) ≠ target := by
  rw [alpogeFable_p_plus]
  intro h
  have := congrFun h 2
  norm_num [target, pPlus, Matrix.cons_val_two] at this

theorem determinant_sign_error_rejected (x : Fin 3 → ℚ) :
    Matrix.det (alpogeFableJacobian x) ≠ 2 := by
  rw [alpogeFable_jacobian_det]
  norm_num

theorem changed_collision_coordinate_rejected :
    alpogeFable ![1, -3 / 2, 7] ≠ target := by
  intro h
  have := congrFun h 2
  norm_num [alpogeFable, alpogeFable₃, target, Matrix.cons_val_two] at this

theorem wrong_collision_target_rejected :
    alpogeFable pZero ≠ ![1 / 4, 0, 0] := by
  rw [alpogeFable_p_zero]
  intro h
  have := congrFun h 0
  norm_num [target] at this

/-- Moving only the input's third coordinate to the first position loses the collision. -/
theorem one_sided_coordinate_permutation_rejected :
    alpogeFable ![-1 / 4, 0, 0] ≠ target := by
  intro h
  have := congrFun h 2
  norm_num [alpogeFable, alpogeFable₃, target, Matrix.cons_val_two] at this

/-- Determinants alone do not distinguish a Jacobian from its transpose. -/
theorem transpose_preserves_determinant (x : Fin 3 → ℚ) :
    Matrix.det (alpogeFableJacobian x).transpose = -2 := by
  rw [Matrix.det_transpose, alpogeFable_jacobian_det]

/-- The actual entries detect a convention change that the determinant cannot. -/
theorem transposed_jacobian_convention_rejected :
    (alpogeFableJacobian pZero).transpose ≠ alpogeFableJacobian pZero := by
  rw [alpogeFable_jacobian_p_zero]
  intro h
  have := congrFun (congrFun h 0) 2
  norm_num [Matrix.transpose_apply, Matrix.cons_val_two] at this

/-- Three known points in a fiber give no upper bound of three on its size. -/
theorem three_fiber_points_do_not_exhaust_fiber :
    ∃ F : ℚ → ℚ, F 0 = 0 ∧ F 1 = 0 ∧ F 2 = 0 ∧
      ∃ x, F x = 0 ∧ x ≠ 0 ∧ x ≠ 1 ∧ x ≠ 2 := by
  refine ⟨fun _ ↦ 0, rfl, rfl, rfl, 3, rfl, ?_, ?_, ?_⟩ <;> norm_num

end

end FormalResearch.JacobianConjecture
```
