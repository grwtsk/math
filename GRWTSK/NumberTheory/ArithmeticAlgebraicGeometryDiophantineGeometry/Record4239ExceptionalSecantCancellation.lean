/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib quadratic characters retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239OrdinarySecantCancellation

set_option autoImplicit false
noncomputable section

/-!
# Secants through the selected cubic root

For the point (theta,0), replace its zero ordinary factor by the cubic
derivative. The other two factors multiply to that derivative, so the
corrected triple product is a square. This is an independent field
identity and finite residue cancellation, not a native descent map.
Native group-law transport, valuation normalization and remaining
exceptional branches remain unsupplied. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem root_secant_other_factor_product {K : Type*} [Field K]
    (A B θ x y m : K) (hθ : θ ^ 3 + A * θ + B = 0)
    (hcurve : y ^ 2 = x ^ 3 + A * x + B)
    (hline : y = m * (x - θ)) (hne : x ≠ θ) :
    (x - θ) * (m ^ 2 - x - 2 * θ) = 3 * θ ^ 2 + A := by
  have hm : (x - θ) *
      (m ^ 2 * (x - θ) - (x ^ 2 + θ * x + θ ^ 2 + A)) = 0 := by
    linear_combination -(y + m * (x - θ)) * hline + hcurve + hθ
  have hc : m ^ 2 * (x - θ) = x ^ 2 + θ * x + θ ^ 2 + A :=
    sub_eq_zero.mp ((mul_eq_zero.mp hm).resolve_left (sub_ne_zero.mpr hne))
  linear_combination hc

theorem exceptional_secant_product_square {K : Type*} [Field K]
    (A B θ x y m : K) (hθ : θ ^ 3 + A * θ + B = 0)
    (hcurve : y ^ 2 = x ^ 3 + A * x + B)
    (hline : y = m * (x - θ)) (hne : x ≠ θ) :
    (3 * θ ^ 2 + A) * (x - θ) * (m ^ 2 - x - 2 * θ) =
      (3 * θ ^ 2 + A) ^ 2 := by
  rw [mul_assoc, root_secant_other_factor_product A B θ x y m hθ hcurve hline hne]
  ring

theorem exceptional_secant_residue_bit_cancellation
    (p : ℕ) [Fact p.Prime] (A B θ x y m : ZMod p)
    (hθ : θ ^ 3 + A * θ + B = 0)
    (hcurve : y ^ 2 = x ^ 3 + A * x + B)
    (hline : y = m * (x - θ)) (hne : x ≠ θ)
    (hd : 3 * θ ^ 2 + A ≠ 0) (hv : m ^ 2 - x - 2 * θ ≠ 0) :
    ordinaryResidueBit p (3 * θ ^ 2 + A) hd +
      ordinaryResidueBit p (x - θ) (sub_ne_zero.mpr hne) +
      ordinaryResidueBit p (m ^ 2 - x - 2 * θ) hv = 0 := by
  let d := Units.mk0 (3 * θ ^ 2 + A) hd
  let u := Units.mk0 (x - θ) (sub_ne_zero.mpr hne)
  let v := Units.mk0 (m ^ 2 - x - 2 * θ) hv
  have hu : d * u * v = d ^ 2 := by
    apply Units.ext
    exact exceptional_secant_product_square A B θ x y m hθ hcurve hline hne
  have hb : residueUnitBitHom p (d * u * v) = 1 := by
    rw [hu, residueUnitBitHom_square]
  have he := congrArg Multiplicative.toAdd hb
  simp only [map_mul, Multiplicative.toAdd_mul, Multiplicative.toAdd_one] at he
  exact he

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
