/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib quadratic characters retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegralOrderReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Independent ordinary-secant quadratic cancellation

Derive the chord product square directly from two curve equations and
the secant line, without native point independence or relation compatibility.
For a finite residue field, the actual quadratic character kills that square.
The selected source root also satisfies the exact required cubic equation.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
This handles only distinct residue x-coordinates and three nonzero x-theta
factors. Native group-law transport, tangent/vertical/infinity cases,
colliding reductions, denominators, exceptional derivative representatives
and valuation normalization remain unresolved. No global native relation
compatibility or BSD theorem is inferred from this ordinary branch alone.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem ordinary_secant_root_product_square
    {K : Type*} [Field K] (A B θ x₁ y₁ x₂ y₂ m : K)
    (hθ : θ ^ 3 + A * θ + B = 0)
    (h₁ : y₁ ^ 2 = x₁ ^ 3 + A * x₁ + B)
    (h₂ : y₂ ^ 2 = x₂ ^ 3 + A * x₂ + B)
    (hline : y₂ - y₁ = m * (x₂ - x₁)) (hne : x₂ ≠ x₁) :
    (x₁ - θ) * (x₂ - θ) * (m ^ 2 - x₁ - x₂ - θ) =
      (y₁ + m * (θ - x₁)) ^ 2 := by
  have hmul : (x₂ - x₁) *
      (m * (y₁ + y₂) - (x₁ ^ 2 + x₁ * x₂ + x₂ ^ 2 + A)) = 0 := by
    linear_combination -(y₁ + y₂) * hline + h₂ - h₁
  have hsecant : m * (y₁ + y₂) = x₁ ^ 2 + x₁ * x₂ + x₂ ^ 2 + A :=
    sub_eq_zero.mp ((mul_eq_zero.mp hmul).resolve_left (sub_ne_zero.mpr hne))
  have hcoeff : 2 * m * y₁ + m ^ 2 * (x₂ - x₁) =
      x₁ ^ 2 + x₁ * x₂ + x₂ ^ 2 + A := by
    linear_combination hsecant - m * hline
  linear_combination (x₁ - θ) * hcoeff - h₁ - hθ

def ordinaryResidueBit (p : ℕ) [Fact p.Prime] (x : ZMod p) (hx : x ≠ 0) : ZMod 2 :=
  (residueUnitBitHom p (Units.mk0 x hx)).toAdd

/-- Actual finite-field quadratic cancellation in the ordinary branch. -/
theorem ordinary_secant_residue_bit_cancellation
    (p : ℕ) [Fact p.Prime] (A B θ x₁ y₁ x₂ y₂ m : ZMod p)
    (hθ : θ ^ 3 + A * θ + B = 0)
    (h₁ : y₁ ^ 2 = x₁ ^ 3 + A * x₁ + B)
    (h₂ : y₂ ^ 2 = x₂ ^ 3 + A * x₂ + B)
    (hline : y₂ - y₁ = m * (x₂ - x₁)) (hne : x₂ ≠ x₁)
    (hu₁ : x₁ - θ ≠ 0) (hu₂ : x₂ - θ ≠ 0)
    (hu₃ : m ^ 2 - x₁ - x₂ - θ ≠ 0) :
    ordinaryResidueBit p (x₁ - θ) hu₁ + ordinaryResidueBit p (x₂ - θ) hu₂ +
      ordinaryResidueBit p (m ^ 2 - x₁ - x₂ - θ) hu₃ = 0 := by
  have hprod := ordinary_secant_root_product_square A B θ x₁ y₁ x₂ y₂ m hθ h₁ h₂ hline hne
  have hln : y₁ + m * (θ - x₁) ≠ 0 := by
    intro hz
    have hpne := mul_ne_zero (mul_ne_zero hu₁ hu₂) hu₃
    exact hpne (by simpa [hz] using hprod)
  let u₁ := Units.mk0 (x₁ - θ) hu₁
  let u₂ := Units.mk0 (x₂ - θ) hu₂
  let u₃ := Units.mk0 (m ^ 2 - x₁ - x₂ - θ) hu₃
  let v := Units.mk0 (y₁ + m * (θ - x₁)) hln
  have hu : u₁ * u₂ * u₃ = v ^ 2 := by
    apply Units.ext
    exact hprod
  have hb : residueUnitBitHom p (u₁ * u₂ * u₃) = 1 := by
    rw [hu, residueUnitBitHom_square]
  have he := congrArg Multiplicative.toAdd hb
  simp only [map_mul, Multiplicative.toAdd_mul, Multiplicative.toAdd_one] at he
  exact he

/-- The source-labelled cubic root needed by the ordinary local identity. -/
theorem source_residue_root_equation (j : Fin 32) :
    (rootLabel j : ZMod (primeLabel j)) ^ 3 +
      (shortA : ZMod (primeLabel j)) * (rootLabel j : ZMod (primeLabel j)) +
      (shortB : ZMod (primeLabel j)) = 0 := by
  simpa [shortCubic] using shortCubic_eval₂_root_mod j

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
