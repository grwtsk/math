/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib's affine elliptic-curve group law (Apache-2.0).
Formalization assistance: OpenAI.

Actual rational-point translation by the EXISTING nonzero two-torsion point
T0=(0,0). Its affine formula applies only when x is nonzero; the group map
also handles T0 and the point at infinity. This is not an origin-preserving
homomorphism, a C3 action, a scheme morphism certificate, or a metric theorem.
Source proof scripts; no elaboration or kernel acceptance is claimed.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCurveGeometry

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Total map on actual rational points, including the point at infinity. -/
def PrimitiveAdditiveTriple.freyTranslateT0 (t : PrimitiveAdditiveTriple)
    (P : t.freyCurve.toAffine.Point) : t.freyCurve.toAffine.Point := P + t.freyT0

/-- The period-two law follows from the previously constructed two-torsion point. -/
theorem PrimitiveAdditiveTriple.freyTranslateT0_involutive (t : PrimitiveAdditiveTriple) :
    Function.Involutive t.freyTranslateT0 := by
  intro P
  change (P + t.freyT0) + t.freyT0 = P
  rw [add_assoc, t.freyT0_add_self, add_zero]

/-- A permutation of points, deliberately NOT an AddEquiv. -/
def PrimitiveAdditiveTriple.freyTranslateT0Equiv (t : PrimitiveAdditiveTriple) :
    t.freyCurve.toAffine.Point ≃ t.freyCurve.toAffine.Point where
  toFun := t.freyTranslateT0
  invFun := t.freyTranslateT0
  left_inv := t.freyTranslateT0_involutive
  right_inv := t.freyTranslateT0_involutive

@[simp] theorem PrimitiveAdditiveTriple.freyTranslateT0_zero (t : PrimitiveAdditiveTriple) :
    t.freyTranslateT0 0 = t.freyT0 := by
  simp [PrimitiveAdditiveTriple.freyTranslateT0]

@[simp] theorem PrimitiveAdditiveTriple.freyTranslateT0_T0 (t : PrimitiveAdditiveTriple) :
    t.freyTranslateT0 t.freyT0 = 0 := t.freyT0_add_self

/-- No fixed rational point: translation by a nonzero point acts freely. -/
theorem PrimitiveAdditiveTriple.freyTranslateT0_no_fixed (t : PrimitiveAdditiveTriple)
    (P : t.freyCurve.toAffine.Point) : t.freyTranslateT0 P ≠ P := by
  intro h
  apply t.freyT0_ne_zero
  apply add_left_cancel (a := P)
  simpa [PrimitiveAdditiveTriple.freyTranslateT0] using h

/-- Translation does not preserve the origin, hence cannot be an additive map. -/
theorem PrimitiveAdditiveTriple.freyTranslateT0_not_additive (t : PrimitiveAdditiveTriple) :
    ¬ ∃ F : t.freyCurve.toAffine.Point →+ t.freyCurve.toAffine.Point,
      ∀ P, F P = t.freyTranslateT0 P := by
  rintro ⟨F, hF⟩
  have h := hF 0
  rw [map_zero, t.freyTranslateT0_zero] at h
  exact t.freyT0_ne_zero h.symm

/-- The displayed affine x formula has an explicit nonzero-x domain in its theorems. -/
def freyT0TranslateX (a b x : ℚ) : ℚ := -a * b / x

def freyT0TranslateY (a b x y : ℚ) : ℚ := a * b * y / x ^ 2

/-- A source-equation residual is transported by an exact rational multiplier. -/
theorem freyT0Translate_residual (a b x y : ℚ) (hx : x ≠ 0) :
    freyT0TranslateY a b x y ^ 2 -
      freyT0TranslateX a b x * (freyT0TranslateX a b x - a) *
        (freyT0TranslateX a b x + b) =
      (a * b) ^ 2 / x ^ 4 * (y ^ 2 - x * (x - a) * (x + b)) := by
  unfold freyT0TranslateX freyT0TranslateY
  field_simp [hx] <;> ring

/-- The affine formula remains on the SAME factored curve. -/
theorem freyT0Translate_equation (a b x y : ℚ) (hx : x ≠ 0)
    (he : y ^ 2 = x * (x - a) * (x + b)) :
    freyT0TranslateY a b x y ^ 2 =
      freyT0TranslateX a b x * (freyT0TranslateX a b x - a) *
        (freyT0TranslateX a b x + b) := by
  apply sub_eq_zero.mp
  rw [freyT0Translate_residual a b x y hx, he, sub_self, mul_zero]

/-- Reconcile the rational x formula with Mathlib's actual secant addition. -/
theorem PrimitiveAdditiveTriple.frey_addX_T0 (t : PrimitiveAdditiveTriple)
    (x y : ℚ) (hx : x ≠ 0) (he : y ^ 2 = x * (x - (t.a : ℚ)) * (x + (t.b : ℚ))) :
    t.freyCurve.toAffine.addX x 0 (t.freyCurve.toAffine.slope x 0 y 0) =
      freyT0TranslateX (t.a : ℚ) (t.b : ℚ) x := by
  rw [WeierstrassCurve.Affine.slope_of_X_ne hx]
  simp only [WeierstrassCurve.Affine.addX, PrimitiveAdditiveTriple.freyCurve,
    freyWeierstrass, sub_zero, zero_mul, add_zero, freyT0TranslateX]
  field_simp [hx] <;> linear_combination he

/-- The ordinate has the positive ab/x^2 multiplier for this source equation. -/
theorem PrimitiveAdditiveTriple.frey_addY_T0 (t : PrimitiveAdditiveTriple)
    (x y : ℚ) (hx : x ≠ 0) (he : y ^ 2 = x * (x - (t.a : ℚ)) * (x + (t.b : ℚ))) :
    t.freyCurve.toAffine.addY x 0 y (t.freyCurve.toAffine.slope x 0 y 0) =
      freyT0TranslateY (t.a : ℚ) (t.b : ℚ) x y := by
  unfold WeierstrassCurve.Affine.addY WeierstrassCurve.Affine.negAddY
  rw [t.frey_addX_T0 x y hx he, WeierstrassCurve.Affine.slope_of_X_ne hx]
  simp only [WeierstrassCurve.Affine.negY, PrimitiveAdditiveTriple.freyCurve,
    freyWeierstrass, zero_mul, mul_zero, sub_zero, freyT0TranslateX, freyT0TranslateY]
  field_simp [hx] <;> ring

/-- The displayed target coordinates are nonsingular on the rational Frey curve. -/
theorem PrimitiveAdditiveTriple.freyT0Translate_nonsingular (t : PrimitiveAdditiveTriple)
    (x y : ℚ) (hx : x ≠ 0) (hP : t.freyCurve.toAffine.Nonsingular x y) :
    t.freyCurve.toAffine.Nonsingular
      (freyT0TranslateX (t.a : ℚ) (t.b : ℚ) x)
      (freyT0TranslateY (t.a : ℚ) (t.b : ℚ) x y) := by
  apply WeierstrassCurve.Affine.equation_iff_nonsingular.mp
  apply (freyWeierstrass_equation_iff _ _ _ _).mpr
  exact freyT0Translate_equation _ _ _ _ hx
    ((freyWeierstrass_equation_iff _ _ _ _).mp hP.1)

/-- The affine formula is the restriction of the SAME total point translation. -/
theorem PrimitiveAdditiveTriple.freyTranslateT0_some (t : PrimitiveAdditiveTriple)
    (x y : ℚ) (hx : x ≠ 0) (hP : t.freyCurve.toAffine.Nonsingular x y) :
    t.freyTranslateT0 (.some x y hP) =
      .some (freyT0TranslateX (t.a : ℚ) (t.b : ℚ) x)
        (freyT0TranslateY (t.a : ℚ) (t.b : ℚ) x y)
        (t.freyT0Translate_nonsingular x y hx hP) := by
  unfold PrimitiveAdditiveTriple.freyTranslateT0 PrimitiveAdditiveTriple.freyT0
  rw [WeierstrassCurve.Affine.Point.add_of_X_ne hx]
  rw [WeierstrassCurve.Affine.Point.some.injEq]
  have he := (freyWeierstrass_equation_iff _ _ _ _).mp hP.1
  exact ⟨t.frey_addX_T0 x y hx he, t.frey_addY_T0 x y hx he⟩

/-- Translation by T0 actually exchanges the two other marked source points. -/
@[simp] theorem PrimitiveAdditiveTriple.freyTranslateT0_Ta (t : PrimitiveAdditiveTriple) :
    t.freyTranslateT0 t.freyTa = t.freyTb := by
  have ha : (t.a : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.a_pos
  unfold PrimitiveAdditiveTriple.freyTa
  rw [t.freyTranslateT0_some _ _ ha]
  simp only [PrimitiveAdditiveTriple.freyTb, WeierstrassCurve.Affine.Point.some.injEq,
    freyT0TranslateX, freyT0TranslateY, mul_zero, zero_div]
  constructor
  · field_simp [ha] <;> ring
  · rfl

@[simp] theorem PrimitiveAdditiveTriple.freyTranslateT0_Tb (t : PrimitiveAdditiveTriple) :
    t.freyTranslateT0 t.freyTb = t.freyTa := by
  have h := t.freyTranslateT0_involutive t.freyTa
  rw [t.freyTranslateT0_Ta] at h
  exact h

/-- The three nonzero ports alone are NOT invariant: T0 is sent to infinity. -/
theorem PrimitiveAdditiveTriple.freyTranslateT0_leaves_three_ports
    (t : PrimitiveAdditiveTriple) :
    ∀ i : Fin 3, t.freyTranslateT0 t.freyT0 ≠ t.freyTorsionPorts i := by
  intro i
  rw [t.freyTranslateT0_T0]
  fin_cases i
  · exact Ne.symm t.freyT0_ne_zero
  · exact Ne.symm t.freyTa_ne_zero
  · exact Ne.symm t.freyTb_ne_zero

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
