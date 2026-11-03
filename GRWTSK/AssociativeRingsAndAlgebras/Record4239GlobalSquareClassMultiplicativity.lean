/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib elliptic point groups retain upstream authorship and licenses. -/
import GRWTSK.AssociativeRingsAndAlgebras.Record4239GlobalSquareClassTangentLaw

set_option autoImplicit false
noncomputable section

/-! Complete short-point branch assembly from the actual affine group law.
No multiplicativity or point-independence hypothesis is introduced.
Concrete cubic field and local character specialization remain separate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

lemma short_actual_tangent_relation (x y : ℚ)
    (hy : y ≠ nativeShortCurve.toAffine.negY x y) :
    2 * nativeShortCurve.toAffine.slope x x y y * y =
      3 * x ^ 2 + (shortA : ℚ) := by
  have hy0 : y ≠ 0 := by
    intro hz
    apply hy
    simp [hz, nativeShortCurve_eq, WeierstrassCurve.Affine.negY]
  have hd : y - nativeShortCurve.toAffine.negY x y = 2 * y := by
    simp [nativeShortCurve_eq, WeierstrassCurve.Affine.negY]
    ring
  rw [nativeShortCurve.toAffine.slope_of_Y_ne rfl hy, hd]
  simp only [nativeShortCurve_eq]
  field_simp [hy0]
  <;> ring

variable (K : Type*) [Field K] [Algebra ℚ K]

theorem shortSquareClassValue_add (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P Q : nativeShortCurve.toAffine.Point) :
    shortSquareClassValue K θ hroot (P + Q) =
      shortSquareClassValue K θ hroot P * shortSquareClassValue K θ hroot Q := by
  cases P with
  | zero => simp only [zero_add, shortSquareClassValue_zero, one_mul]
  | some x₁ y₁ h₁ =>
    cases Q with
    | zero => simp only [add_zero, shortSquareClassValue_zero, mul_one]
    | some x₂ y₂ h₂ =>
      by_cases hv : x₁ = x₂ ∧ y₁ = nativeShortCurve.toAffine.negY x₂ y₂
      · rw [WeierstrassCurve.Affine.Point.add_of_Y_eq hv.1 hv.2,
          shortSquareClassValue_zero]
        subst x₂
        change 1 =
          (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
            (rationalDifferenceUnit K θ hroot x₁) *
          (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
            (rationalDifferenceUnit K θ hroot x₁)
        rw [← pow_two, unitSquareClasses_sq_eq_one]
      · let m := nativeShortCurve.toAffine.slope x₁ x₂ y₁ y₂
        have hc : nativeShortCurve.toAffine.addX x₁ x₂ m = m ^ 2 - x₁ - x₂ := by
          simp [WeierstrassCurve.Affine.addX, nativeShortCurve_eq]
        have hlaw :
            (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
                (rationalDifferenceUnit K θ hroot x₁) *
              (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
                (rationalDifferenceUnit K θ hroot x₂) =
              (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
                (rationalDifferenceUnit K θ hroot (m ^ 2 - x₁ - x₂)) := by
          by_cases hx : x₁ = x₂
          · subst x₂
            have he₁ := (nativeShortEquation_iff x₁ y₁).mp h₁.1
            have he₂ := (nativeShortEquation_iff x₁ y₂).mp h₂.1
            have hp : (y₂ - y₁) * (y₂ + y₁) = 0 := by nlinarith
            have hy : y₂ = y₁ := by
              rcases mul_eq_zero.mp hp with hd | hs
              · linarith
              · exfalso
                apply hv
                refine ⟨rfl, ?_⟩
                simp only [nativeShortCurve_eq, WeierstrassCurve.toAffine,
                  WeierstrassCurve.Affine.negY]
                linarith
            subst y₂
            have hn : y₁ ≠ nativeShortCurve.toAffine.negY x₁ y₁ := by
              intro hh
              exact hv ⟨rfl, hh⟩
            have ht : 2 * m * y₁ = 3 * x₁ ^ 2 + (shortA : ℚ) :=
              short_actual_tangent_relation x₁ y₁ hn
            have hg := global_rational_tangent_squareClass_law K θ hroot
              x₁ y₁ m h₁.1 ht
            have hxexpr : m ^ 2 - 2 * x₁ = m ^ 2 - x₁ - x₁ := by ring
            simpa only [hxexpr] using hg
          · have hm : m = (y₁ - y₂) / (x₁ - x₂) :=
              nativeShortCurve.toAffine.slope_of_X_ne hx
            have hline : y₂ - y₁ = m * (x₂ - x₁) := by
              rw [hm]
              field_simp [sub_ne_zero.mpr hx]
              <;> ring
            exact global_rational_secant_squareClass_law K θ hroot
              x₁ y₁ x₂ y₂ m h₁.1 h₂.1 hline (Ne.symm hx)
        rw [WeierstrassCurve.Affine.Point.add_some hv]
        change
          (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
              (rationalDifferenceUnit K θ hroot
                (nativeShortCurve.toAffine.addX x₁ x₂ m)) = _
        rw [hc]
        exact hlaw.symm

theorem nativeSquareClassValue_add (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P Q : nativeCurve.toAffine.Point) :
    nativeSquareClassValue K θ hroot (P + Q) =
      nativeSquareClassValue K θ hroot P * nativeSquareClassValue K θ hroot Q :=
  nativeSquareClassValue_add_of_short_law K θ hroot
    (shortSquareClassValue_add K θ hroot) P Q

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
