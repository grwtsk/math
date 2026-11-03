/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib elliptic formulas retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239NativeShortSlopeTransport

set_option autoImplicit false
noncomputable section

/-!
# Actual nonvertical tangent and sum coordinates

The same source slope law holds for genuine nonvertical tangents.
For equal abscissae the actual curve equations identify the ordinates;
no arbitrary pair is silently treated as a tangent. Actual addition
coordinates now follow from the proven slope law. Carrier map_add and
global descent are not asserted here. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem nativeShort_tangent_slope_compat (x y : ℚ)
    (hy : y ≠ nativeCurve.toAffine.negY x y) :
    nativeShortCurve.toAffine.slope (36 * x + 3) (36 * x + 3)
      (108 * (2 * y + x)) (108 * (2 * y + x)) =
        6 * nativeCurve.toAffine.slope x x y y + 3 := by
  have hden : 2 * y + x ≠ 0 := by
    intro h
    apply hy
    simp [WeierstrassCurve.Affine.negY, nativeCurve]
    linarith
  have hshort : 108 * (2 * y + x) ≠
      nativeShortCurve.toAffine.negY (36 * x + 3) (108 * (2 * y + x)) := by
    rw [← nativeShort_negY_compat]
    intro h
    apply hy
    linarith
  rw [(nativeShortCurve.toAffine).slope_of_Y_ne rfl hshort,
    (nativeCurve.toAffine).slope_of_Y_ne rfl hy]
  have hd : y - nativeCurve.toAffine.negY x y = 2 * y + x := by
    simp [WeierstrassCurve.Affine.negY, nativeCurve]
    ring
  have hD : 108 * (2 * y + x) -
      nativeShortCurve.toAffine.negY (36 * x + 3) (108 * (2 * y + x)) =
        216 * (2 * y + x) := by
    simp [WeierstrassCurve.Affine.negY, nativeShortCurve_eq]
    ring
  rw [hd, hD]
  have hA : (shortA : ℚ) = -27 * (1 + 48 * (A : ℚ)) := by
    norm_num [shortA, A]
  simp only [nativeShortCurve_eq, nativeCurve]
  rw [hA]
  field_simp [hden]
  ring

theorem nativeShort_nonvertical_slope_compat (x₁ x₂ y₁ y₂ : ℚ)
    (h₁ : nativeCurve.toAffine.Equation x₁ y₁)
    (h₂ : nativeCurve.toAffine.Equation x₂ y₂)
    (hxy : ¬ (x₁ = x₂ ∧ y₁ = nativeCurve.toAffine.negY x₂ y₂)) :
    nativeShortCurve.toAffine.slope (36 * x₁ + 3) (36 * x₂ + 3)
      (108 * (2 * y₁ + x₁)) (108 * (2 * y₂ + x₂)) =
        6 * nativeCurve.toAffine.slope x₁ x₂ y₁ y₂ + 3 := by
  by_cases hx : x₁ = x₂
  · have hy : y₁ ≠ nativeCurve.toAffine.negY x₂ y₂ := fun h => hxy ⟨hx, h⟩
    have hsame := (nativeCurve.toAffine).Y_eq_of_Y_ne h₁ h₂ hx hy
    subst x₂
    subst y₂
    exact nativeShort_tangent_slope_compat x₁ y₁ hy
  · exact nativeShort_secant_slope_compat x₁ x₂ y₁ y₂ hx

theorem nativeShort_actual_addX_compat (x₁ x₂ y₁ y₂ : ℚ)
    (h₁ : nativeCurve.toAffine.Equation x₁ y₁)
    (h₂ : nativeCurve.toAffine.Equation x₂ y₂)
    (hxy : ¬ (x₁ = x₂ ∧ y₁ = nativeCurve.toAffine.negY x₂ y₂)) :
    nativeShortCurve.toAffine.addX (36 * x₁ + 3) (36 * x₂ + 3)
      (nativeShortCurve.toAffine.slope (36 * x₁ + 3) (36 * x₂ + 3)
        (108 * (2 * y₁ + x₁)) (108 * (2 * y₂ + x₂))) =
      36 * nativeCurve.toAffine.addX x₁ x₂ (nativeCurve.toAffine.slope x₁ x₂ y₁ y₂) + 3 := by
  rw [nativeShort_nonvertical_slope_compat x₁ x₂ y₁ y₂ h₁ h₂ hxy]
  exact nativeShort_addX_compat _ _ _

theorem nativeShort_actual_addY_compat (x₁ x₂ y₁ y₂ : ℚ)
    (h₁ : nativeCurve.toAffine.Equation x₁ y₁)
    (h₂ : nativeCurve.toAffine.Equation x₂ y₂)
    (hxy : ¬ (x₁ = x₂ ∧ y₁ = nativeCurve.toAffine.negY x₂ y₂)) :
    nativeShortCurve.toAffine.addY (36 * x₁ + 3) (36 * x₂ + 3)
      (108 * (2 * y₁ + x₁))
      (nativeShortCurve.toAffine.slope (36 * x₁ + 3) (36 * x₂ + 3)
        (108 * (2 * y₁ + x₁)) (108 * (2 * y₂ + x₂))) =
      108 * (2 * nativeCurve.toAffine.addY x₁ x₂ y₁ (nativeCurve.toAffine.slope x₁ x₂ y₁ y₂) +
        nativeCurve.toAffine.addX x₁ x₂ (nativeCurve.toAffine.slope x₁ x₂ y₁ y₂)) := by
  rw [nativeShort_nonvertical_slope_compat x₁ x₂ y₁ y₂ h₁ h₂ hxy]
  exact nativeShort_addY_compat _ _ _ _

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
