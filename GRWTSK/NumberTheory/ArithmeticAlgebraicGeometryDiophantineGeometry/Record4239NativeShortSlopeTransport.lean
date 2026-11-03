/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib elliptic formulas retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239NativeShortPointEquiv

set_option autoImplicit false
noncomputable section

/-!
# Source short-model secant and coordinate formulas

For distinct native abscissae, the actual short slope is six times
the native slope plus three. Formal addition coordinates obey the
same X,Y transformation. Vertical pairs have total slopes zero on
both models; the affine slope law is not asserted on that branch.
Actual tangent compatibility and complete map_add remain pending.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem nativeShort_negY_compat (x y : ℚ) :
    108 * (2 * nativeCurve.toAffine.negY x y + x) =
      nativeShortCurve.toAffine.negY (36 * x + 3) (108 * (2 * y + x)) := by
  simp [WeierstrassCurve.Affine.negY, nativeCurve, nativeShortCurve_eq]
  ring

theorem nativeShort_secant_slope_compat (x₁ x₂ y₁ y₂ : ℚ) (hx : x₁ ≠ x₂) :
    nativeShortCurve.toAffine.slope (36 * x₁ + 3) (36 * x₂ + 3)
      (108 * (2 * y₁ + x₁)) (108 * (2 * y₂ + x₂)) =
        6 * nativeCurve.toAffine.slope x₁ x₂ y₁ y₂ + 3 := by
  have hX : 36 * x₁ + 3 ≠ 36 * x₂ + 3 := by intro h; apply hx; linarith
  rw [(nativeShortCurve.toAffine).slope_of_X_ne hX,
    (nativeCurve.toAffine).slope_of_X_ne hx]
  have hd := sub_ne_zero.mpr hx
  have hD := sub_ne_zero.mpr hX
  field_simp [hd, hD]
  ring

theorem nativeShort_addX_compat (x₁ x₂ ℓ : ℚ) :
    nativeShortCurve.toAffine.addX (36 * x₁ + 3) (36 * x₂ + 3) (6 * ℓ + 3) =
      36 * nativeCurve.toAffine.addX x₁ x₂ ℓ + 3 := by
  simp [WeierstrassCurve.Affine.addX, nativeShortCurve_eq, nativeCurve]
  ring

theorem nativeShort_addY_compat (x₁ x₂ y₁ ℓ : ℚ) :
    nativeShortCurve.toAffine.addY (36 * x₁ + 3) (36 * x₂ + 3)
      (108 * (2 * y₁ + x₁)) (6 * ℓ + 3) =
      108 * (2 * nativeCurve.toAffine.addY x₁ x₂ y₁ ℓ +
        nativeCurve.toAffine.addX x₁ x₂ ℓ) := by
  simp [WeierstrassCurve.Affine.addY, WeierstrassCurve.Affine.negAddY,
    WeierstrassCurve.Affine.negY, WeierstrassCurve.Affine.addX,
    nativeShortCurve_eq, nativeCurve]
  ring

theorem nativeShort_vertical_slopes_zero (x₁ x₂ y₁ y₂ : ℚ)
    (hx : x₁ = x₂) (hy : y₁ = nativeCurve.toAffine.negY x₂ y₂) :
    nativeCurve.toAffine.slope x₁ x₂ y₁ y₂ = 0 ∧
      nativeShortCurve.toAffine.slope (36 * x₁ + 3) (36 * x₂ + 3)
        (108 * (2 * y₁ + x₁)) (108 * (2 * y₂ + x₂)) = 0 := by
  have hY : 108 * (2 * y₁ + x₁) =
      nativeShortCurve.toAffine.negY (36 * x₂ + 3) (108 * (2 * y₂ + x₂)) := by
    rw [hx, hy, nativeShort_negY_compat]
  exact ⟨(nativeCurve.toAffine).slope_of_Y_eq hx hy,
    (nativeShortCurve.toAffine).slope_of_Y_eq (by rw [hx]) hY⟩

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
