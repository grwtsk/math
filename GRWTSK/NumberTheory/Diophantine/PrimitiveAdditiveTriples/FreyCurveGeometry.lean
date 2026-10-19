/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's Weierstrass-curve and affine-point API (Apache-2.0).
OpenAI Codex formalization assistance.

This module constructs the rational Frey Weierstrass model attached to a typed
primitive additive triple, computes its raw discriminant, and constructs its
three visible nonzero rational two-torsion points. It does not prove a minimal
model, a conductor formula, a section-space basis theorem, Szpiro, or abc. -/
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortSaturation

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- The rational Weierstrass model
`y² = x(x-a)(x+b) = x³ + (b-a)x² - abx`. -/
def freyWeierstrass (a b : ℚ) : WeierstrassCurve ℚ where
  a₁ := 0
  a₂ := b - a
  a₃ := 0
  a₄ := -a * b
  a₆ := 0

/-- The affine equation of the Frey model in factored form. -/
theorem freyWeierstrass_equation_iff (a b x y : ℚ) :
    (freyWeierstrass a b).toAffine.Equation x y ↔
      y ^ 2 = x * (x - a) * (x + b) := by
  rw [WeierstrassCurve.Affine.equation_iff]
  change
    (y ^ 2 + 0 * x * y + 0 * y =
      x ^ 3 + (b - a) * x ^ 2 + (-a * b) * x + 0) ↔
      y ^ 2 = x * (x - a) * (x + b)
  have hfactor : x ^ 3 + (b - a) * x ^ 2 + (-a * b) * x + 0 =
      x * (x - a) * (x + b) := by ring
  rw [hfactor]
  simp only [zero_mul, add_zero]

/-- Raw discriminant of the displayed Frey model. -/
theorem freyWeierstrass_Δ (a b : ℚ) :
    (freyWeierstrass a b).Δ = 16 * a ^ 2 * b ^ 2 * (a + b) ^ 2 := by
  simp [freyWeierstrass, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  ring

/-- The Frey Weierstrass curve attached to a typed primitive additive triple. -/
def PrimitiveAdditiveTriple.freyCurve (t : PrimitiveAdditiveTriple) :
    WeierstrassCurve ℚ :=
  freyWeierstrass (t.a : ℚ) (t.b : ℚ)

/-- The raw discriminant is `16 a² b² c²`. -/
theorem PrimitiveAdditiveTriple.freyCurve_Δ
    (t : PrimitiveAdditiveTriple) :
    t.freyCurve.Δ =
      16 * (t.a : ℚ) ^ 2 * (t.b : ℚ) ^ 2 * (t.c : ℚ) ^ 2 := by
  have hsum : (t.a : ℚ) + (t.b : ℚ) = (t.c : ℚ) := by
    exact_mod_cast t.sum_eq
  simpa [PrimitiveAdditiveTriple.freyCurve, hsum] using
    freyWeierstrass_Δ (t.a : ℚ) (t.b : ℚ)

/-- Positivity of the raw discriminant over `ℚ`. -/
theorem PrimitiveAdditiveTriple.freyCurve_Δ_pos
    (t : PrimitiveAdditiveTriple) : 0 < t.freyCurve.Δ := by
  have ha : (0 : ℚ) < (t.a : ℚ) := by exact_mod_cast t.a_pos
  have hb : (0 : ℚ) < (t.b : ℚ) := by exact_mod_cast t.b_pos
  have hc : (0 : ℚ) < (t.c : ℚ) := by exact_mod_cast t.c_pos
  rw [t.freyCurve_Δ]
  positivity

/-- The raw discriminant is nonzero. -/
theorem PrimitiveAdditiveTriple.freyCurve_Δ_ne_zero
    (t : PrimitiveAdditiveTriple) : t.freyCurve.Δ ≠ 0 :=
  ne_of_gt t.freyCurve_Δ_pos

/-- Every typed primitive additive triple gives an elliptic Weierstrass curve
over `ℚ`. This is the raw rational model, not a minimal integral model. -/
instance PrimitiveAdditiveTriple.instIsEllipticFreyCurve
    (t : PrimitiveAdditiveTriple) : t.freyCurve.IsElliptic where
  isUnit := isUnit_iff_ne_zero.mpr t.freyCurve_Δ_ne_zero

/-- The point `(0,0)` satisfies the Frey equation. -/
theorem PrimitiveAdditiveTriple.freyCurve_equation_T0
    (t : PrimitiveAdditiveTriple) :
    t.freyCurve.toAffine.Equation 0 0 := by
  change
    (freyWeierstrass (t.a : ℚ) (t.b : ℚ)).toAffine.Equation 0 0
  exact (freyWeierstrass_equation_iff (t.a : ℚ) (t.b : ℚ) 0 0).mpr (by ring)

/-- The point `(a,0)` satisfies the Frey equation. -/
theorem PrimitiveAdditiveTriple.freyCurve_equation_Ta
    (t : PrimitiveAdditiveTriple) :
    t.freyCurve.toAffine.Equation (t.a : ℚ) 0 := by
  change
    (freyWeierstrass (t.a : ℚ) (t.b : ℚ)).toAffine.Equation (t.a : ℚ) 0
  exact
    (freyWeierstrass_equation_iff
      (t.a : ℚ) (t.b : ℚ) (t.a : ℚ) 0).mpr (by ring)

/-- The point `(-b,0)` satisfies the Frey equation. -/
theorem PrimitiveAdditiveTriple.freyCurve_equation_Tb
    (t : PrimitiveAdditiveTriple) :
    t.freyCurve.toAffine.Equation (-(t.b : ℚ)) 0 := by
  change
    (freyWeierstrass (t.a : ℚ) (t.b : ℚ)).toAffine.Equation (-(t.b : ℚ)) 0
  exact
    (freyWeierstrass_equation_iff
      (t.a : ℚ) (t.b : ℚ) (-(t.b : ℚ)) 0).mpr (by ring)

/-- Nonsingularity of `(0,0)` follows from ellipticity. -/
theorem PrimitiveAdditiveTriple.freyCurve_nonsingular_T0
    (t : PrimitiveAdditiveTriple) :
    t.freyCurve.toAffine.Nonsingular 0 0 :=
  WeierstrassCurve.Affine.equation_iff_nonsingular.mp t.freyCurve_equation_T0

/-- Nonsingularity of `(a,0)` follows from ellipticity. -/
theorem PrimitiveAdditiveTriple.freyCurve_nonsingular_Ta
    (t : PrimitiveAdditiveTriple) :
    t.freyCurve.toAffine.Nonsingular (t.a : ℚ) 0 :=
  WeierstrassCurve.Affine.equation_iff_nonsingular.mp t.freyCurve_equation_Ta

/-- Nonsingularity of `(-b,0)` follows from ellipticity. -/
theorem PrimitiveAdditiveTriple.freyCurve_nonsingular_Tb
    (t : PrimitiveAdditiveTriple) :
    t.freyCurve.toAffine.Nonsingular (-(t.b : ℚ)) 0 :=
  WeierstrassCurve.Affine.equation_iff_nonsingular.mp t.freyCurve_equation_Tb

/-- The rational point `(0,0)`. -/
def PrimitiveAdditiveTriple.freyT0
    (t : PrimitiveAdditiveTriple) : t.freyCurve.toAffine.Point :=
  .some 0 0 t.freyCurve_nonsingular_T0

/-- The rational point `(a,0)`. -/
def PrimitiveAdditiveTriple.freyTa
    (t : PrimitiveAdditiveTriple) : t.freyCurve.toAffine.Point :=
  .some (t.a : ℚ) 0 t.freyCurve_nonsingular_Ta

/-- The rational point `(-b,0)`. -/
def PrimitiveAdditiveTriple.freyTb
    (t : PrimitiveAdditiveTriple) : t.freyCurve.toAffine.Point :=
  .some (-(t.b : ℚ)) 0 t.freyCurve_nonsingular_Tb

/-- `(0,0)` is a nonzero point. -/
theorem PrimitiveAdditiveTriple.freyT0_ne_zero
    (t : PrimitiveAdditiveTriple) : t.freyT0 ≠ 0 := by
  unfold PrimitiveAdditiveTriple.freyT0
  exact WeierstrassCurve.Affine.Point.some_ne_zero _

/-- `(a,0)` is a nonzero point. -/
theorem PrimitiveAdditiveTriple.freyTa_ne_zero
    (t : PrimitiveAdditiveTriple) : t.freyTa ≠ 0 := by
  unfold PrimitiveAdditiveTriple.freyTa
  exact WeierstrassCurve.Affine.Point.some_ne_zero _

/-- `(-b,0)` is a nonzero point. -/
theorem PrimitiveAdditiveTriple.freyTb_ne_zero
    (t : PrimitiveAdditiveTriple) : t.freyTb ≠ 0 := by
  unfold PrimitiveAdditiveTriple.freyTb
  exact WeierstrassCurve.Affine.Point.some_ne_zero _

/-- `(0,0)` is killed by doubling. -/
theorem PrimitiveAdditiveTriple.freyT0_add_self
    (t : PrimitiveAdditiveTriple) : t.freyT0 + t.freyT0 = 0 := by
  unfold PrimitiveAdditiveTriple.freyT0
  apply WeierstrassCurve.Affine.Point.add_self_of_Y_eq
  simp [WeierstrassCurve.Affine.negY, PrimitiveAdditiveTriple.freyCurve,
    freyWeierstrass]

/-- `(a,0)` is killed by doubling. -/
theorem PrimitiveAdditiveTriple.freyTa_add_self
    (t : PrimitiveAdditiveTriple) : t.freyTa + t.freyTa = 0 := by
  unfold PrimitiveAdditiveTriple.freyTa
  apply WeierstrassCurve.Affine.Point.add_self_of_Y_eq
  simp [WeierstrassCurve.Affine.negY, PrimitiveAdditiveTriple.freyCurve,
    freyWeierstrass]

/-- `(-b,0)` is killed by doubling. -/
theorem PrimitiveAdditiveTriple.freyTb_add_self
    (t : PrimitiveAdditiveTriple) : t.freyTb + t.freyTb = 0 := by
  unfold PrimitiveAdditiveTriple.freyTb
  apply WeierstrassCurve.Affine.Point.add_self_of_Y_eq
  simp [WeierstrassCurve.Affine.negY, PrimitiveAdditiveTriple.freyCurve,
    freyWeierstrass]

/-- The points `(0,0)` and `(a,0)` are distinct. -/
theorem PrimitiveAdditiveTriple.freyT0_ne_freyTa
    (t : PrimitiveAdditiveTriple) : t.freyT0 ≠ t.freyTa := by
  intro h
  have hx : (0 : ℚ) = (t.a : ℚ) := by
    simpa [PrimitiveAdditiveTriple.freyT0, PrimitiveAdditiveTriple.freyTa] using
      congrFun
        (congrArg
          (fun P : t.freyCurve.toAffine.Point => P.xRep) h)
        (0 : Fin 2)
  have ha : (t.a : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt t.a_pos)
  exact ha hx.symm

/-- The points `(0,0)` and `(-b,0)` are distinct. -/
theorem PrimitiveAdditiveTriple.freyT0_ne_freyTb
    (t : PrimitiveAdditiveTriple) : t.freyT0 ≠ t.freyTb := by
  intro h
  have hx : (0 : ℚ) = -(t.b : ℚ) := by
    simpa [PrimitiveAdditiveTriple.freyT0, PrimitiveAdditiveTriple.freyTb] using
      congrFun
        (congrArg
          (fun P : t.freyCurve.toAffine.Point => P.xRep) h)
        (0 : Fin 2)
  have hb : (t.b : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt t.b_pos)
  exact hb (neg_eq_zero.mp hx.symm)

/-- The points `(a,0)` and `(-b,0)` are distinct. -/
theorem PrimitiveAdditiveTriple.freyTa_ne_freyTb
    (t : PrimitiveAdditiveTriple) : t.freyTa ≠ t.freyTb := by
  intro h
  have hx : (t.a : ℚ) = -(t.b : ℚ) := by
    simpa [PrimitiveAdditiveTriple.freyTa, PrimitiveAdditiveTriple.freyTb] using
      congrFun
        (congrArg
          (fun P : t.freyCurve.toAffine.Point => P.xRep) h)
        (0 : Fin 2)
  have ha : (0 : ℚ) < (t.a : ℚ) := by exact_mod_cast t.a_pos
  have hb : (0 : ℚ) < (t.b : ℚ) := by exact_mod_cast t.b_pos
  linarith

/-- The ordered source-identical three-port family on the Frey curve. -/
def PrimitiveAdditiveTriple.freyTorsionPorts
    (t : PrimitiveAdditiveTriple) : Fin 3 → t.freyCurve.toAffine.Point :=
  ![t.freyT0, t.freyTa, t.freyTb]

/-- The ordered affine `x`-coordinates of the three ports are exactly
`(0,a,-b)`, matching the finite three-port frame. -/
theorem PrimitiveAdditiveTriple.freyTorsionPorts_xRep
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    (t.freyTorsionPorts i).xRep =
      ![(![(0 : ℚ), (t.a : ℚ), -(t.b : ℚ)] i), 1] := by
  fin_cases i <;>
    rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
