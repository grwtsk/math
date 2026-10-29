import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Dynamics.FixedPoints.Defs
import Mathlib.Data.Rat.Cast.Order

/-!
# Fixed points as fibers

The transformation `x ↦ x - A (F x - y)` has exactly the fiber of `F` over `y`
as its fixed points when `A` is injective. This project-local algebraic fact
does not assume that `F` is linear, polynomial, continuous, or differentiable.
-/

namespace FormalResearch.JacobianConjecture

section Module

variable {R V : Type*} [Semiring R] [AddCommGroup V] [Module R V]

/-- The correction transformation whose fixed points detect a fiber of `F`. -/
def fixedPointTransform (A : V →ₗ[R] V) (F : V → V) (y x : V) : V :=
  x - A (F x - y)

/-- Injectivity of the correction operator is the precise sufficient hypothesis
that recovers a fiber equation from a fixed-point equation. -/
theorem fixed_point_transform_fixed_iff (A : V →ₗ[R] V) (F : V → V) (y x : V)
    (hA : Function.Injective A) :
    Function.IsFixedPt (fixedPointTransform A F y) x ↔ F x = y := by
  change x - A (F x - y) = x ↔ F x = y
  rw [sub_eq_self]
  constructor
  · intro h
    exact sub_eq_zero.mp (hA (by simpa using h))
  · intro h
    simp [h]

/-- The fixed-point set equals the complete fiber; this asserts no cardinality
or dynamical behavior of that set. -/
theorem fixed_point_transform_fixed_points (A : V →ₗ[R] V) (F : V → V) (y : V)
    (hA : Function.Injective A) :
    Function.fixedPoints (fixedPointTransform A F y) = F ⁻¹' {y} := by
  ext x
  exact fixed_point_transform_fixed_iff A F y x hA

/-- Choosing the identity operator needs no invertibility assumptions on `F`. -/
theorem fixed_point_transform_id_fixed_iff (F : V → V) (y x : V) :
    Function.IsFixedPt (fixedPointTransform (LinearMap.id : V →ₗ[R] V) F y) x ↔
      F x = y :=
  fixed_point_transform_fixed_iff LinearMap.id F y x Function.injective_id

/-- With identity correction, fixed points are exactly the fiber over `y`. -/
theorem fixed_point_transform_id_fixed_points (F : V → V) (y : V) :
    Function.fixedPoints (fixedPointTransform (LinearMap.id : V →ₗ[R] V) F y) =
      F ⁻¹' {y} :=
  fixed_point_transform_fixed_points LinearMap.id F y Function.injective_id

/-- The zero correction fixes every input, demonstrating why injectivity matters. -/
theorem fixed_point_transform_zero (F : V → V) (y x : V) :
    Function.IsFixedPt (fixedPointTransform (0 : V →ₗ[R] V) F y) x := by
  simp [Function.IsFixedPt, fixedPointTransform]

end Module

/-- A checked counterexample to dropping injectivity: zero correction fixes `0`,
although the constant map with value `1` does not send `0` to the target `0`. -/
theorem noninjective_correction_fixed_outside_fiber :
    ¬ Function.Injective (0 : ℚ →ₗ[ℚ] ℚ) ∧
      Function.IsFixedPt
        (fixedPointTransform (0 : ℚ →ₗ[ℚ] ℚ) (fun _ ↦ 1) 0) 0 ∧
      (fun _ : ℚ ↦ 1) 0 ≠ 0 := by
  refine ⟨?_, fixed_point_transform_zero _ _ _, one_ne_zero⟩
  intro h
  exact zero_ne_one (h (show (0 : ℚ →ₗ[ℚ] ℚ) 0 = (0 : ℚ →ₗ[ℚ] ℚ) 1 from rfl))

end FormalResearch.JacobianConjecture
