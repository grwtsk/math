/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Bound actual minimal-model descent by the weight-four invariant. Use the
SAME normalized DVR valuation and Mathlib IsMinimal predicate as the previous
modules. Every locally integral competitor satisfies 4*v(u) <= v(c4).
A MINIMAL competitor to an integral input also satisfies v(u)>=0. Minimal
representatives have the same discriminant exponent, independently of choice.
No conductor, Tate algorithm, or finite-search minimality criterion is added.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts unelaborated.
-/
import GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.C4MinimalScale

open WeierstrassCurve WithZero Multiplicative
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality

variable (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
variable {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]

/-- Interpretation as a finite exponent requires the separate c4 nonzero guard. -/
def c4Exponent (W : WeierstrassCurve K) : ℤ := -WithZero.log (localVal R W.c₄)

/-- The scale is already a unit of the FIELD, not necessarily of the local ring. -/
def scaleExponent (C : VariableChange K) : ℤ :=
  -WithZero.log (localVal R (↑C.u : K))

theorem c4_value_eq_exp (W : WeierstrassCurve K) (h4 : W.c₄ ≠ 0) :
    localVal R W.c₄ = WithZero.exp (-c4Exponent R W) := by
  simpa only [c4Exponent, neg_neg] using
    (WithZero.exp_log ((Valuation.ne_zero_iff _).mpr h4)).symm

theorem changed_c4_ne_zero (W : WeierstrassCurve K) (h4 : W.c₄ ≠ 0)
    (C : VariableChange K) : (C • W).c₄ ≠ 0 := by
  rw [variableChange_c₄]
  exact mul_ne_zero (pow_ne_zero 4 (Units.ne_zero C.u⁻¹)) h4

theorem c4_exponent_nonneg (W : WeierstrassCurve K) [IsIntegral R W]
    (h4 : W.c₄ ≠ 0) : 0 ≤ c4Exponent R W := by
  have hv := integral_c4_le_one R W
  rw [c4_value_eq_exp R W h4, ← WithZero.exp_zero, WithZero.exp_le_exp] at hv
  omega

/-- Exact exponent balance of the actual admissible change, with unrestricted r,s,t. -/
theorem c4_scale_balance (W : WeierstrassCurve K) (h4 : W.c₄ ≠ 0)
    (C : VariableChange K) :
    c4Exponent R (C • W) + 4*scaleExponent R C = c4Exponent R W := by
  have hi : localVal R (↑C.u⁻¹ : K) ≠ 0 :=
    (Valuation.ne_zero_iff _).mpr (Units.ne_zero C.u⁻¹)
  have hv : localVal R W.c₄ ≠ 0 := (Valuation.ne_zero_iff _).mpr h4
  simp only [c4Exponent, scaleExponent, variableChange_c₄, map_mul, map_pow]
  rw [WithZero.log_mul (pow_ne_zero 4 hi) hv, WithZero.log_pow,
    Units.val_inv_eq_inv_val, map_inv₀, WithZero.log_inv]
  simp only [nsmul_eq_mul]
  ring

theorem discriminant_scale_balance (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (C : VariableChange K) :
    discriminantExponent R (C • W) + 12*scaleExponent R C =
      discriminantExponent R W := by
  rw [exponent_change R W hΔ C, scaleExponent]
  ring

/-- Applies to EVERY locally integral output, not just a chosen minimal model. -/
theorem integral_scale_bound (W : WeierstrassCurve K) (h4 : W.c₄ ≠ 0)
    (C : VariableChange K) (hC : IsIntegral R (C • W)) :
    4*scaleExponent R C ≤ c4Exponent R W := by
  letI : IsIntegral R (C • W) := hC
  have hn := c4_exponent_nonneg R (C • W) (changed_c4_ne_zero R W h4 C)
  have hb := c4_scale_balance R W h4 C
  omega

/-- Unpack maximality using the total order; do not replace IsMinimal by a test. -/
theorem minimal_dominates (W : WeierstrassCurve K) [hW : IsMinimal R W]
    (C : VariableChange K) (hC : IsIntegral R (C • W)) :
    localVal R (C • W).Δ ≤ localVal R W.Δ := by
  letI : IsIntegral R (C • W) := hC
  have hh : valuation_Δ_aux R (C • W) ≤ valuation_Δ_aux R W := by
    by_cases h : valuation_Δ_aux R (C • W) ≤ valuation_Δ_aux R W
    · exact h
    · have hi : valuation_Δ_aux R (1 • W) ≤ valuation_Δ_aux R (C • W) := by
        simpa only [one_smul] using (le_of_not_ge h)
      simpa only [one_smul] using hW.val_Δ_maximal.2 hC hi
  change (valuation_Δ_aux R (C • W)).val ≤ (valuation_Δ_aux R W).val at hh
  simpa only [valuation_Δ_aux_eq_of_isIntegral] using hh

theorem minimal_exponent_le_competitor (W : WeierstrassCurve K) [IsMinimal R W]
    (hΔ : W.Δ ≠ 0) (C : VariableChange K) (hC : IsIntegral R (C • W)) :
    discriminantExponent R W ≤ discriminantExponent R (C • W) := by
  have hv := minimal_dominates R W C hC
  rw [delta_value_eq_exp R (C • W) (changed_delta_ne_zero R W hΔ C),
    delta_value_eq_exp R W hΔ, WithZero.exp_le_exp] at hv
  omega

/-- Compare a minimal target with the integral input via the ACTUAL inverse change. -/
theorem minimal_change_exponent_le (W : WeierstrassCurve K) [hW : IsIntegral R W]
    (hΔ : W.Δ ≠ 0) (C : VariableChange K) [IsMinimal R (C • W)] :
    discriminantExponent R (C • W) ≤ discriminantExponent R W := by
  have hi : IsIntegral R (C⁻¹ • (C • W)) := by
    simpa only [inv_smul_smul] using hW
  simpa only [inv_smul_smul] using
    minimal_exponent_le_competitor R (C • W) (changed_delta_ne_zero R W hΔ C) C⁻¹ hi

theorem minimal_scale_nonneg (W : WeierstrassCurve K) [IsIntegral R W]
    (hΔ : W.Δ ≠ 0) (C : VariableChange K) [IsMinimal R (C • W)] :
    0 ≤ scaleExponent R C := by
  have he := minimal_change_exponent_le R W hΔ C
  have hb := discriminant_scale_balance R W hΔ C
  omega

/-- No dependence on which existential minimal representative is chosen. -/
theorem minimal_exponents_eq (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (C D : VariableChange K) [IsMinimal R (C • W)] [IsMinimal R (D • W)] :
    discriminantExponent R (C • W) = discriminantExponent R (D • W) := by
  have hD : IsIntegral R ((D*C⁻¹) • (C • W)) := by
    simpa only [mul_smul, inv_smul_smul] using (inferInstance : IsIntegral R (D • W))
  have hC : IsIntegral R ((C*D⁻¹) • (D • W)) := by
    simpa only [mul_smul, inv_smul_smul] using (inferInstance : IsIntegral R (C • W))
  have hCD := minimal_exponent_le_competitor R (C • W)
    (changed_delta_ne_zero R W hΔ C) (D*C⁻¹) hD
  have hDC := minimal_exponent_le_competitor R (D • W)
    (changed_delta_ne_zero R W hΔ D) (C*D⁻¹) hC
  simp only [mul_smul, inv_smul_smul] at hCD hDC
  exact le_antisymm hCD hDC

theorem minimal_scales_eq (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (C D : VariableChange K) [IsMinimal R (C • W)] [IsMinimal R (D • W)] :
    scaleExponent R C = scaleExponent R D := by
  have he := minimal_exponents_eq R W hΔ C D
  have hC := discriminant_scale_balance R W hΔ C
  have hD := discriminant_scale_balance R W hΔ D
  omega

/-- Weight-four valuation four leaves at most ONE positive scale step. -/
theorem minimal_scale_binary_of_c4_four (W : WeierstrassCurve K) [IsIntegral R W]
    (hΔ : W.Δ ≠ 0) (h4 : W.c₄ ≠ 0) (he : c4Exponent R W = 4)
    (C : VariableChange K) [IsMinimal R (C • W)] :
    scaleExponent R C = 0 ∨ scaleExponent R C = 1 := by
  have hlo := minimal_scale_nonneg R W hΔ C
  have hhi := integral_scale_bound R W h4 C inferInstance
  rw [he] at hhi
  omega

end GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.C4MinimalScale
