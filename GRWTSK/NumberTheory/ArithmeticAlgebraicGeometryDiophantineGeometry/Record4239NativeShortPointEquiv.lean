/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib point types retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239NativeShortPointTransport

set_option autoImplicit false
noncomputable section

/-!
# Reversible native/short point carriers

The exact inverse rational coordinates give an equivalence of the complete
nonsingular point carriers, preserving infinity and the actual negation.
This is deliberately an Equiv, not an AddEquiv. Source-faithful tangent,
secant and vertical addition compatibility still require proof.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem short_to_native_equation_iff (X Y : ℚ) :
    nativeShortCurve.toAffine.Equation X Y ↔
      nativeCurve.toAffine.Equation (X / 36 - 1 / 12)
        (Y / 216 - X / 72 + 1 / 24) := by
  have h := nativeShort_coordinate_iff (X / 36 - 1 / 12)
    (Y / 216 - X / 72 + 1 / 24)
  obtain ⟨hx, hy⟩ := nativeShort_inverse_coordinate_recovery X Y
  rw [hx, hy] at h
  exact h.symm

def shortToNativePoint : nativeShortCurve.toAffine.Point → nativeCurve.toAffine.Point
  | .zero => .zero
  | .some X Y h =>
      .some (X / 36 - 1 / 12) (Y / 216 - X / 72 + 1 / 24)
        (WeierstrassCurve.Affine.equation_iff_nonsingular.mp
          ((short_to_native_equation_iff X Y).mp
            (WeierstrassCurve.Affine.equation_iff_nonsingular.mpr h)))

@[simp] theorem shortToNativePoint_zero : shortToNativePoint 0 = 0 := rfl

def nativeShortPointEquiv : nativeCurve.toAffine.Point ≃ nativeShortCurve.toAffine.Point where
  toFun := nativeToShortPoint
  invFun := shortToNativePoint
  left_inv := by
    intro P
    cases P with
    | zero => rfl
    | some x y h =>
      change (WeierstrassCurve.Affine.Point.some
        ((36 * x + 3) / 36 - 1 / 12)
        ((108 * (2 * y + x)) / 216 - (36 * x + 3) / 72 + 1 / 24) _) =
          WeierstrassCurve.Affine.Point.some x y h
      have hx : (36 * x + 3) / 36 - 1 / 12 = x := by ring
      have hy : (108 * (2 * y + x)) / 216 - (36 * x + 3) / 72 + 1 / 24 = y := by ring
      rw [hx, hy]
  right_inv := by
    intro P
    cases P with
    | zero => rfl
    | some X Y h =>
      change (WeierstrassCurve.Affine.Point.some
        (36 * (X / 36 - 1 / 12) + 3)
        (108 * (2 * (Y / 216 - X / 72 + 1 / 24) + (X / 36 - 1 / 12))) _) =
          WeierstrassCurve.Affine.Point.some X Y h
      obtain ⟨hx, hy⟩ := nativeShort_inverse_coordinate_recovery X Y
      rw [hx, hy]

theorem nativeToShortPoint_neg (P : nativeCurve.toAffine.Point) :
    nativeToShortPoint (-P) = -nativeToShortPoint P := by
  cases P with
  | zero => rfl
  | some x y h =>
    change (WeierstrassCurve.Affine.Point.some (36 * x + 3)
      (108 * (2 * nativeCurve.toAffine.negY x y + x)) _) =
        WeierstrassCurve.Affine.Point.some (36 * x + 3)
          (nativeShortCurve.toAffine.negY (36 * x + 3) (108 * (2 * y + x))) _
    have hy : 108 * (2 * nativeCurve.toAffine.negY x y + x) =
        nativeShortCurve.toAffine.negY (36 * x + 3) (108 * (2 * y + x)) := by
      simp [WeierstrassCurve.Affine.negY, nativeCurve, nativeShortCurve_eq]
      ring
    rw [hy]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
