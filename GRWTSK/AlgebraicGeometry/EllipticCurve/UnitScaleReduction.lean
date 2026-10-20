/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Transport actual DVR minimality and reduction along an admissible change
whose scale has valuation one. Integrality of the target is REQUIRED:
unit scale alone does not make translations or shears integral.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.C4MinimalScale

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.UnitScaleReduction

open WeierstrassCurve
open GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
open GRWTSK.AlgebraicGeometry.EllipticCurve.C4MinimalScale

variable (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
variable {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]

/-- Exact discriminant value, not just its support. -/
theorem delta_value_eq (W : WeierstrassCurve K) (C : VariableChange K)
    (hu : localVal R (C.u : K) = 1) :
    localVal R (C • W).Δ = localVal R W.Δ := by
  simp only [variableChange_Δ, map_mul, map_pow,
    Units.val_inv_eq_inv_val, map_inv₀, hu, inv_one, one_pow, one_mul]

theorem c4_value_eq (W : WeierstrassCurve K) (C : VariableChange K)
    (hu : localVal R (C.u : K) = 1) :
    localVal R (C • W).c₄ = localVal R W.c₄ := by
  simp only [variableChange_c₄, map_mul, map_pow,
    Units.val_inv_eq_inv_val, map_inv₀, hu, inv_one, one_pow, one_mul]

/-- All admissible competitors are compared by composition with C.
Neither integral output nor unit scale may be dropped. -/
theorem minimal_of_unit_scale (W : WeierstrassCurve K) [IsMinimal R W]
    (C : VariableChange K) (hC : IsIntegral R (C • W))
    (hu : localVal R (C.u : K) = 1) : IsMinimal R (C • W) := by
  letI : IsIntegral R (C • W) := hC
  apply minimal_of_dominates R (C • W)
  intro D hD
  have hDC : IsIntegral R ((D * C) • W) := by
    simpa only [mul_smul] using hD
  have h := minimal_dominates R W (D * C) hDC
  rw [delta_value_eq R W C hu]
  simpa only [mul_smul] using h

theorem good_of_unit_scale (W : WeierstrassCurve K) (C : VariableChange K)
    (hW : HasGoodReduction R W) (hC : IsIntegral R (C • W))
    (hu : localVal R (C.u : K) = 1) : HasGoodReduction R (C • W) := by
  letI : IsMinimal R W := hW.toIsMinimal
  refine ⟨minimal_of_unit_scale R W C hC hu, ?_⟩
  change localVal R (C • W).Δ = 1
  rw [delta_value_eq R W C hu]
  exact hW.goodReduction

theorem multiplicative_of_unit_scale (W : WeierstrassCurve K) (C : VariableChange K)
    (hW : HasMultiplicativeReduction R W) (hC : IsIntegral R (C • W))
    (hu : localVal R (C.u : K) = 1) : HasMultiplicativeReduction R (C • W) := by
  letI : IsMinimal R W := hW.toIsMinimal
  refine ⟨minimal_of_unit_scale R W C hC hu, ?_, ?_⟩
  · change localVal R (C • W).Δ < 1
    rw [delta_value_eq R W C hu]
    exact hW.badReduction
  · change localVal R (C • W).c₄ = 1
    rw [c4_value_eq R W C hu]
    exact hW.multiplicativeReduction

theorem additive_of_unit_scale (W : WeierstrassCurve K) (C : VariableChange K)
    (hW : HasAdditiveReduction R W) (hC : IsIntegral R (C • W))
    (hu : localVal R (C.u : K) = 1) : HasAdditiveReduction R (C • W) := by
  letI : IsMinimal R W := hW.toIsMinimal
  refine ⟨minimal_of_unit_scale R W C hC hu, ?_, ?_⟩
  · change localVal R (C • W).Δ < 1
    rw [delta_value_eq R W C hu]
    exact hW.badReduction
  · change localVal R (C • W).c₄ < 1
    rw [c4_value_eq R W C hu]
    exact hW.additiveReduction

end GRWTSK.AlgebraicGeometry.EllipticCurve.UnitScaleReduction
