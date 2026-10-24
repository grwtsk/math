# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralModel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83dee7c0fab72ca75b64d094a8a9df22eb0ecc01` · SHA-256 `1a4673afbcb4143664baacde6e7c96781a8e14ba899e311a73e63191529c7d51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's Weierstrass-curve base-change API (Apache-2.0).
OpenAI Codex formalization assistance.

This module constructs the displayed integral Frey Weierstrass model and proves
that its base change to `ℚ` is the rational curve used by the three-port
geometry. The displayed model is not asserted to be minimal. No reduction type,
minimal discriminant, conductor, or abc estimate is proved here. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAffineEvaluation

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- The displayed integral Weierstrass model
`y² = x(x-a)(x+b)`. -/
def freyWeierstrassInt (a b : ℤ) : WeierstrassCurve ℤ where
  a₁ := 0
  a₂ := b - a
  a₃ := 0
  a₄ := -a * b
  a₆ := 0

/-- Raw discriminant of the displayed integral model. -/
theorem freyWeierstrassInt_Δ (a b : ℤ) :
    (freyWeierstrassInt a b).Δ =
      16 * a ^ 2 * b ^ 2 * (a + b) ^ 2 := by
  simp [freyWeierstrassInt, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  ring

/-- The displayed integral model attached to a typed primitive additive triple. -/
def PrimitiveAdditiveTriple.freyIntegralModel
    (t : PrimitiveAdditiveTriple) : WeierstrassCurve ℤ :=
  freyWeierstrassInt (t.a : ℤ) (t.b : ℤ)

/-- The integral raw discriminant is exactly `16 a²b²c²`. -/
theorem PrimitiveAdditiveTriple.freyIntegralModel_Δ
    (t : PrimitiveAdditiveTriple) :
    t.freyIntegralModel.Δ =
      16 * (t.a : ℤ) ^ 2 * (t.b : ℤ) ^ 2 * (t.c : ℤ) ^ 2 := by
  have hsum : (t.a : ℤ) + (t.b : ℤ) = (t.c : ℤ) := by
    exact_mod_cast t.sum_eq
  simpa [PrimitiveAdditiveTriple.freyIntegralModel, hsum] using
    freyWeierstrassInt_Δ (t.a : ℤ) (t.b : ℤ)

/-- The raw integral discriminant is nonzero. This does not make it a unit in
`ℤ`, so no integral `IsElliptic` instance is asserted. -/
theorem PrimitiveAdditiveTriple.freyIntegralModel_Δ_ne_zero
    (t : PrimitiveAdditiveTriple) : t.freyIntegralModel.Δ ≠ 0 := by
  rw [t.freyIntegralModel_Δ]
  have ha : (0 : ℤ) < (t.a : ℤ) := by
    exact_mod_cast t.a_pos
  have hb : (0 : ℤ) < (t.b : ℤ) := by
    exact_mod_cast t.b_pos
  have hc : (0 : ℤ) < (t.c : ℤ) := by
    exact_mod_cast t.c_pos
  have hΔ :
      (0 : ℤ) < 16 * (t.a : ℤ) ^ 2 * (t.b : ℤ) ^ 2 * (t.c : ℤ) ^ 2 := by
    positivity
  exact ne_of_gt hΔ

/-- Base-changing the displayed integral model to `ℚ` gives the exact rational
Frey model already used by the marked-point and affine-evaluation layers. -/
theorem PrimitiveAdditiveTriple.freyIntegralModel_baseChange_eq
    (t : PrimitiveAdditiveTriple) :
    t.freyIntegralModel.baseChange ℚ = t.freyCurve := by
  ext <;>
    simp [PrimitiveAdditiveTriple.freyIntegralModel,
      PrimitiveAdditiveTriple.freyCurve,
      freyWeierstrassInt, freyWeierstrass]

/-- The rational raw discriminant is the image of the integral raw
discriminant under the canonical map `ℤ → ℚ`. -/
theorem PrimitiveAdditiveTriple.freyCurve_Δ_eq_intCast
    (t : PrimitiveAdditiveTriple) :
    t.freyCurve.Δ = (t.freyIntegralModel.Δ : ℚ) := by
  rw [t.freyCurve_Δ, t.freyIntegralModel_Δ]
  norm_num

/-- The integral coefficient vector of the displayed model. Keeping this data
explicit prevents later local analyses from silently changing models. -/
def PrimitiveAdditiveTriple.freyIntegralCoefficients
    (t : PrimitiveAdditiveTriple) : Fin 5 → ℤ :=
  ![0, (t.b : ℤ) - (t.a : ℤ), 0,
    -(t.a : ℤ) * (t.b : ℤ), 0]

/-- The coefficient vector is exactly the coefficient tuple of the committed
integral Weierstrass model. -/
theorem PrimitiveAdditiveTriple.freyIntegralCoefficients_eq
    (t : PrimitiveAdditiveTriple) :
    t.freyIntegralCoefficients =
      ![t.freyIntegralModel.a₁,
        t.freyIntegralModel.a₂,
        t.freyIntegralModel.a₃,
        t.freyIntegralModel.a₄,
        t.freyIntegralModel.a₆] := by
  rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
