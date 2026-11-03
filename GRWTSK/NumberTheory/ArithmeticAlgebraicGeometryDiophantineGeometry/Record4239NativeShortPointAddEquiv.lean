/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib elliptic point groups retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239NativeShortTangentTransport

set_option autoImplicit false
noncomputable section

/-!
# Actual native-to-short rational-point group transport

The point map respects identity, vertical pairs, secants and tangents.
The resulting AddEquiv uses the literal source short model and complete
Mathlib nonsingular point groups. No global square-class character,
local valuation normalization, independence or BSD conclusion is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem nativeShort_opposite_iff (x₁ x₂ y₁ y₂ : ℚ) :
    (x₁ = x₂ ∧ y₁ = nativeCurve.toAffine.negY x₂ y₂) ↔
      (36 * x₁ + 3 = 36 * x₂ + 3 ∧
        108 * (2 * y₁ + x₁) = nativeShortCurve.toAffine.negY
          (36 * x₂ + 3) (108 * (2 * y₂ + x₂))) := by
  rw [← nativeShort_negY_compat]
  constructor
  · rintro ⟨hx, hy⟩
    exact ⟨by rw [hx], by rw [hx, hy]⟩
  · rintro ⟨hX, hY⟩
    have hx : x₁ = x₂ := by linarith
    exact ⟨hx, by rw [hx] at hY; linarith⟩

theorem nativeToShortPoint_add (P Q : nativeCurve.toAffine.Point) :
    nativeToShortPoint (P + Q) = nativeToShortPoint P + nativeToShortPoint Q := by
  cases P with
  | zero => simp only [zero_add, nativeToShortPoint_zero]
  | some x₁ y₁ h₁ =>
    cases Q with
    | zero => simp only [add_zero, nativeToShortPoint_zero]
    | some x₂ y₂ h₂ =>
      by_cases hxy : x₁ = x₂ ∧ y₁ = nativeCurve.toAffine.negY x₂ y₂
      · have hshort := (nativeShort_opposite_iff x₁ x₂ y₁ y₂).mp hxy
        change nativeToShortPoint
            (WeierstrassCurve.Affine.Point.some x₁ y₁ h₁ +
              WeierstrassCurve.Affine.Point.some x₂ y₂ h₂) =
          (WeierstrassCurve.Affine.Point.some (36 * x₁ + 3) (108 * (2 * y₁ + x₁)) _ +
            WeierstrassCurve.Affine.Point.some (36 * x₂ + 3) (108 * (2 * y₂ + x₂)) _)
        rw [WeierstrassCurve.Affine.Point.add_of_Y_eq hxy.1 hxy.2,
          WeierstrassCurve.Affine.Point.add_of_Y_eq hshort.1 hshort.2]
        rfl
      · have hshort : ¬ (36 * x₁ + 3 = 36 * x₂ + 3 ∧
            108 * (2 * y₁ + x₁) = nativeShortCurve.toAffine.negY
              (36 * x₂ + 3) (108 * (2 * y₂ + x₂))) := by
          intro h
          exact hxy ((nativeShort_opposite_iff x₁ x₂ y₁ y₂).mpr h)
        have hX := nativeShort_actual_addX_compat x₁ x₂ y₁ y₂ h₁.1 h₂.1 hxy
        have hY := nativeShort_actual_addY_compat x₁ x₂ y₁ y₂ h₁.1 h₂.1 hxy
        change nativeToShortPoint
            (WeierstrassCurve.Affine.Point.some x₁ y₁ h₁ +
              WeierstrassCurve.Affine.Point.some x₂ y₂ h₂) =
          (WeierstrassCurve.Affine.Point.some (36 * x₁ + 3) (108 * (2 * y₁ + x₁)) _ +
            WeierstrassCurve.Affine.Point.some (36 * x₂ + 3) (108 * (2 * y₂ + x₂)) _)
        rw [WeierstrassCurve.Affine.Point.add_some hxy,
          WeierstrassCurve.Affine.Point.add_some hshort]
        change
          (WeierstrassCurve.Affine.Point.some
            (36 * nativeCurve.toAffine.addX x₁ x₂ (nativeCurve.toAffine.slope x₁ x₂ y₁ y₂) + 3)
            (108 * (2 * nativeCurve.toAffine.addY x₁ x₂ y₁
              (nativeCurve.toAffine.slope x₁ x₂ y₁ y₂) +
                nativeCurve.toAffine.addX x₁ x₂ (nativeCurve.toAffine.slope x₁ x₂ y₁ y₂))) _) =
          (WeierstrassCurve.Affine.Point.some
            (nativeShortCurve.toAffine.addX (36 * x₁ + 3) (36 * x₂ + 3)
              (nativeShortCurve.toAffine.slope (36 * x₁ + 3) (36 * x₂ + 3)
                (108 * (2 * y₁ + x₁)) (108 * (2 * y₂ + x₂))))
            (nativeShortCurve.toAffine.addY (36 * x₁ + 3) (36 * x₂ + 3)
              (108 * (2 * y₁ + x₁))
              (nativeShortCurve.toAffine.slope (36 * x₁ + 3) (36 * x₂ + 3)
                (108 * (2 * y₁ + x₁)) (108 * (2 * y₂ + x₂)))) _)
        rw [hX, hY]

def nativeShortPointAddEquiv : nativeCurve.toAffine.Point ≃+ nativeShortCurve.toAffine.Point where
  toFun := nativeToShortPoint
  invFun := shortToNativePoint
  left_inv := nativeShortPointEquiv.left_inv
  right_inv := nativeShortPointEquiv.right_inv
  map_add' := nativeToShortPoint_add

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
