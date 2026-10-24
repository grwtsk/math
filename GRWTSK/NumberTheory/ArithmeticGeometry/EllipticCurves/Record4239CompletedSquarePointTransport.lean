/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical source and attribution: grwtsk contributors.
Upstream Mathlib and Michael Stoll work retains original authorship and licences.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NativeTwoTorsion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Actual rational-point transport across the completed-square model

For ICARM record #4239 the admissible coordinate change takes the genuine
normalized elliptic curve `Y² = x³ + x²/4 - A*x + B` to the original
`y² + x*y = x³ - A*x + B` by `y = Y - x/2`.

We construct both functions between Mathlib's *actual nonsingular point
types* and prove they are inverse as sets.  We additionally establish the
literal coordinate identities that a group-law transport must respect.

The `Equiv` below is NOT an `AddEquiv`.  No claim is made that it
preserves point addition until the separate source-faithful tangent/chord
slope calculation has been formalized.  Therefore no existing Rank32
descent evidence, Stoll `μ`, or finite generation has been transported.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

/-- The two actual Mathlib equations agree under the inverse
completed-square coordinate map. -/
theorem completedSquare_to_native_equation_iff (x Y : ℚ) :
    nativeCurve.toAffine.Equation x (Y - x / 2) ↔
      nativeCompletedSquareCurve.toAffine.Equation x Y := by
  rw [nativeEquation_iff, nativeCompletedSquare_coordinate_iff]
  simp only [sub_add_cancel]

/-- The equation comparison in the original-to-normalized direction. -/
theorem native_to_completedSquare_equation_iff (x y : ℚ) :
    nativeCompletedSquareCurve.toAffine.Equation x (y + x / 2) ↔
      nativeCurve.toAffine.Equation x y :=
  ((nativeEquation_iff x y).trans
    (nativeCompletedSquare_coordinate_iff x y)).symm

/-- The actual point map from the normalized model to the original
record curve; sends infinity to infinity and (x,Y) to (x,Y-x/2). -/
noncomputable def completedSquareToNativePoint :
    nativeCompletedSquareCurve.toAffine.Point →
      nativeCurve.toAffine.Point
  | .zero => .zero
  | .some x Y h =>
      .some x (Y - x / 2)
        (WeierstrassCurve.Affine.equation_iff_nonsingular.mp
          ((completedSquare_to_native_equation_iff x Y).mpr
            (WeierstrassCurve.Affine.equation_iff_nonsingular.mpr h)))

/-- The inverse point map from the native curve to the completed-square
model, taking (x,y) to (x,y+x/2). -/
noncomputable def nativeToCompletedSquarePoint :
    nativeCurve.toAffine.Point →
      nativeCompletedSquareCurve.toAffine.Point
  | .zero => .zero
  | .some x y h =>
      .some x (y + x / 2)
        (WeierstrassCurve.Affine.equation_iff_nonsingular.mp
          ((native_to_completedSquare_equation_iff x y).mpr
            (WeierstrassCurve.Affine.equation_iff_nonsingular.mpr h)))

@[simp] theorem completedSquareToNativePoint_zero :
    completedSquareToNativePoint 0 = 0 := rfl

@[simp] theorem nativeToCompletedSquarePoint_zero :
    nativeToCompletedSquarePoint 0 = 0 := rfl

/-- A genuine bijection of the *complete rational-point carriers*, not
merely a matching of the 32 listed point coordinates.
Its group-homomorphism law is still a separate missing supplier. -/
noncomputable def completedSquarePointEquiv :
    nativeCompletedSquareCurve.toAffine.Point ≃
      nativeCurve.toAffine.Point where
  toFun := completedSquareToNativePoint
  invFun := nativeToCompletedSquarePoint
  left_inv := by
    intro P
    cases P with
    | zero => rfl
    | some x Y h =>
      change (WeierstrassCurve.Affine.Point.some x
        ((Y - x / 2) + x / 2) _) =
        WeierstrassCurve.Affine.Point.some x Y h
      simp only [sub_add_cancel]
  right_inv := by
    intro P
    cases P with
    | zero => rfl
    | some x y h =>
      change (WeierstrassCurve.Affine.Point.some x
        ((y + x / 2) - x / 2) _) =
        WeierstrassCurve.Affine.Point.some x y h
      simp only [add_sub_cancel_right]

/-- The involution on the original curve agrees with the normalized
involution under the exact inverse-square coordinate change. -/
theorem completedSquare_negY_compat (x Y : ℚ) :
    nativeCurve.toAffine.negY x (Y - x / 2) =
      nativeCompletedSquareCurve.toAffine.negY x Y - x / 2 := by
  simp [WeierstrassCurve.Affine.negY, nativeCurve,
    nativeCompletedSquareCurve_eq]
  ring

/-- At any formal line slope, the third-point x-coordinate formula is
compatible with the adjusted slope `ℓ - 1/2`.  This does not assert
the *actual* tangent/chord slopes satisfy that equality. -/
theorem completedSquare_addX_compat (x₁ x₂ ℓ : ℚ) :
    nativeCurve.toAffine.addX x₁ x₂ (ℓ - 1 / 2) =
      nativeCompletedSquareCurve.toAffine.addX x₁ x₂ ℓ := by
  simp [WeierstrassCurve.Affine.addX, nativeCurve,
    nativeCompletedSquareCurve_eq]
  ring

/-- The corresponding y-coordinate formula, conditional on using the
adjusted slope.  Actual tangent/chord slope compatibility and a proof
of additive functoriality remain the next exact obligations. -/
theorem completedSquare_addY_compat (x₁ x₂ Y₁ ℓ : ℚ) :
    nativeCurve.toAffine.addY x₁ x₂ (Y₁ - x₁ / 2) (ℓ - 1 / 2) =
      nativeCompletedSquareCurve.toAffine.addY x₁ x₂ Y₁ ℓ -
        nativeCompletedSquareCurve.toAffine.addX x₁ x₂ ℓ / 2 := by
  simp [WeierstrassCurve.Affine.addY,
    WeierstrassCurve.Affine.negAddY,
    WeierstrassCurve.Affine.negY,
    WeierstrassCurve.Affine.addX, nativeCurve,
    nativeCompletedSquareCurve_eq]
  ring

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
