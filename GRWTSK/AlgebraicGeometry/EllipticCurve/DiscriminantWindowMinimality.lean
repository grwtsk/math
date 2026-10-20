/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

A strict discriminant window for Mathlib's actual DVR minimality predicate.
Use the SAME normalized multiplicative valuation as UnitInvariantMinimality;
its negative integer logarithm is an additive exponent ONLY for nonzero data.
Every integral admissible competitor changes that exponent by twelve times an
integer. Exponent below twelve therefore forces minimality, without a search.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
import Mathlib.Tactic.Ring
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality

open WeierstrassCurve WithZero Multiplicative
open GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality

variable (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
variable {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]

/-- A total expression. Its interpretation as a finite exponent requires Delta nonzero. -/
def discriminantExponent (W : WeierstrassCurve K) : ℤ :=
  -WithZero.log (localVal R W.Δ)

theorem delta_value_ne_zero (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0) :
    localVal R W.Δ ≠ 0 := (Valuation.ne_zero_iff _).mpr hΔ

/-- No junk value at a singular model is used in this reconstruction. -/
theorem delta_value_eq_exp (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0) :
    localVal R W.Δ = WithZero.exp (-discriminantExponent R W) := by
  simpa only [discriminantExponent, neg_neg] using
    (WithZero.exp_log (delta_value_ne_zero R W hΔ)).symm

theorem exponent_nonneg (W : WeierstrassCurve K) [IsIntegral R W]
    (hΔ : W.Δ ≠ 0) : 0 ≤ discriminantExponent R W := by
  have hv := integral_delta_le_one R W
  rw [delta_value_eq_exp R W hΔ, ← WithZero.exp_zero, WithZero.exp_le_exp] at hv
  omega

theorem changed_delta_ne_zero (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (C : VariableChange K) : (C • W).Δ ≠ 0 := by
  rw [variableChange_Δ]
  exact mul_ne_zero (pow_ne_zero 12 (Units.ne_zero C.u⁻¹)) hΔ

/-- The sign is intentional: log(nu(u)) is the NEGATIVE additive valuation of u. -/
theorem exponent_change (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (C : VariableChange K) :
    discriminantExponent R (C • W) = discriminantExponent R W +
      12 * WithZero.log (localVal R (↑C.u : K)) := by
  have hu : localVal R (↑C.u : K) ≠ 0 :=
    (Valuation.ne_zero_iff _).mpr C.u.ne_zero
  have hi : localVal R (↑C.u⁻¹ : K) ≠ 0 :=
    (Valuation.ne_zero_iff _).mpr (Units.ne_zero C.u⁻¹)
  simp only [discriminantExponent, variableChange_Δ, map_mul, map_pow]
  rw [WithZero.log_mul (pow_ne_zero 12 hi) (delta_value_ne_zero R W hΔ),
    WithZero.log_pow, Units.val_inv_eq_inv_val, map_inv₀, WithZero.log_inv]
  simp only [nsmul_eq_mul]
  ring

/-- Integral competitors preserve discriminant exponent modulo twelve. -/
theorem exponent_difference_multiple (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (C : VariableChange K) :
    (12 : ℤ) ∣ discriminantExponent R (C • W) - discriminantExponent R W := by
  rw [exponent_change R W hΔ C]
  exact ⟨WithZero.log (localVal R (↑C.u : K)), by ring⟩

/-- An integral competitor cannot have positive additive scale valuation in this window. -/
theorem scale_log_nonneg_of_window (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (hsmall : discriminantExponent R W < 12) (C : VariableChange K)
    (hC : IsIntegral R (C • W)) :
    0 ≤ WithZero.log (localVal R (↑C.u : K)) := by
  letI : IsIntegral R (C • W) := hC
  have hn := exponent_nonneg R (C • W) (changed_delta_ne_zero R W hΔ C)
  rw [exponent_change R W hΔ C] at hn
  omega

/-- All five transformed coefficients must be integral; r,s,t are otherwise unrestricted. -/
theorem delta_value_le_of_window (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (hsmall : discriminantExponent R W < 12) (C : VariableChange K)
    (hC : IsIntegral R (C • W)) :
    localVal R (C • W).Δ ≤ localVal R W.Δ := by
  have hs := scale_log_nonneg_of_window R W hΔ hsmall C hC
  have he := exponent_change R W hΔ C
  rw [delta_value_eq_exp R (C • W) (changed_delta_ne_zero R W hΔ C),
    delta_value_eq_exp R W hΔ, WithZero.exp_le_exp]
  omega

/-- Strictly BELOW twelve. Nothing is asserted for exponent twelve or above. -/
theorem minimal_of_exponent_lt_twelve (W : WeierstrassCurve K) [IsIntegral R W]
    (hΔ : W.Δ ≠ 0) (hsmall : discriminantExponent R W < 12) : IsMinimal R W :=
  minimal_of_dominates R W (delta_value_le_of_window R W hΔ hsmall)

end GRWTSK.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality
