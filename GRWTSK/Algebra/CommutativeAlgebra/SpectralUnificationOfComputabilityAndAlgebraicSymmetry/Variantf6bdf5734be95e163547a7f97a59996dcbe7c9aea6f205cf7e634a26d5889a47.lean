-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.PolynomialResidualTailUpperBound.Variantc37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.PolynomialResidualTailUpperBound.Variantc37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987","mathematical_subject":"Algebra.Polynomials","original_sha256":"c37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/c37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMovingFrontLocalization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction

/-!
# Polynomial upper bounds for the unchanged signed residual

A single fixed natural degree is allowed in the new arithmetic hypothesis.
The vanishing compensated prefix transports this hypothesis to and from the
actual moving tail. The finite source inventory and the existing archimedean
lower bound then give a global polynomial correction of the actual quadratic
value, with no continuity premise and no change to either original target.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.PolynomialResidualTailUpperBound.Variantc37009955f827078fa491032d20701ff0f6ad275a2d9aac2d3f85c12dc0ac987

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePolynomialResidual

open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateMertensResidual EstimateMovingFrontTransport EstimateMovingFrontBound
open EstimatePrimeSmoothDefect EstimateTailReduction

noncomputable section

/-- One fixed finite polynomial bounds the complete signed residual eventually,
uniformly over every real source scale. This is a new arithmetic hypothesis. -/
def PolynomialResidualTailUpperBound : Prop :=
  ∃ m : ℕ, ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → mertensResidual A ≤ D * A ^ m

/-- The matching polynomial hypothesis on the unchanged endpoint-preserving
moving signed tail. -/
def PolynomialMovingTailUpperBound : Prop :=
  ∃ m : ℕ, ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → sourceMovingTail A ≤ D * A ^ m

/-- The proved real-scale prefix limit supplies a unit error after one fixed radius. -/
theorem moving_prefix_eventually_abs_le_one :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      |sourcePrefixPairing A (2 * Real.log A)| ≤ 1 := by
  obtain ⟨R, hR⟩ := (Metric.tendsto_atTop.mp sourcePrefixPairing_moving_tendsto_zero)
    1 (by norm_num)
  refine ⟨max 1 R, le_max_left _ _, ?_⟩
  intro A hA
  have h := hR A ((le_max_right _ _).trans hA)
  simpa only [Real.dist_eq, sub_zero] using h.le

/-- The original constant residual hypothesis is a special case of degree zero. -/
theorem polynomial_residual_of_constant (h : MertensResidualTailUpperBound) :
    PolynomialResidualTailUpperBound := by
  obtain ⟨D, hD, R, hR, hb⟩ := h
  refine ⟨0, D, hD, R, hR, ?_⟩
  intro A hA
  simpa using hb A hA

/-- A polynomial bound for the full signed moving tail gives the residual bound
with the same degree and coefficient enlarged by one. -/
theorem polynomial_residual_of_moving_tail (h : PolynomialMovingTailUpperBound) :
    PolynomialResidualTailUpperBound := by
  obtain ⟨m, D, hD, R, hR, hb⟩ := h
  obtain ⟨S, _hS, hp⟩ := moving_prefix_eventually_abs_le_one
  refine ⟨m, D + 1, by positivity, max R S, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA := (le_max_left R S).trans hA
  have hSA := (le_max_right R S).trans hA
  have hA1 : 1 ≤ A := hR.trans hRA
  have hpow : 1 ≤ A ^ m := one_le_pow₀ hA1
  have hprefix := (abs_le.mp (hp A hSA)).2
  rw [mertensResidual_eq_prefix_add_movingTail A hA1]
  nlinarith [hb A hRA]

/-- Conversely, the same vanishing prefix transports a polynomial residual
bound to the complete signed moving tail without an assumption on `H`. -/
theorem polynomial_moving_tail_of_residual (h : PolynomialResidualTailUpperBound) :
    PolynomialMovingTailUpperBound := by
  obtain ⟨m, D, hD, R, hR, hb⟩ := h
  obtain ⟨S, _hS, hp⟩ := moving_prefix_eventually_abs_le_one
  refine ⟨m, D + 1, by positivity, max R S, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA := (le_max_left R S).trans hA
  have hSA := (le_max_right R S).trans hA
  have hA1 : 1 ≤ A := hR.trans hRA
  have hpow : 1 ≤ A ^ m := one_le_pow₀ hA1
  have hprefix := (abs_le.mp (hp A hSA)).1
  have hres := hb A hRA
  rw [mertensResidual_eq_prefix_add_movingTail A hA1] at hres
  nlinarith

/-- Exact equivalence of the two polynomial hypotheses; neither is asserted. -/
theorem polynomial_residual_tail_iff_moving_tail :
    PolynomialResidualTailUpperBound ↔ PolynomialMovingTailUpperBound :=
  ⟨polynomial_moving_tail_of_residual, polynomial_residual_of_moving_tail⟩

/-- The unchanged quadratic value has exactly twice the original signed residual
as its arithmetic subtraction, including the vanished upper prime atom. -/
theorem sourceQuadraticValue_eq_archimedean_sub_residual (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A - 2 * mertensResidual A := by
  rw [sourceQuadraticValue, primePowerContribution_eq_closedPrimeMoment A hA,
    ← mertensResidual_eq_closedPrimeMoment A hA]

/-- An eventual polynomial residual estimate produces a global polynomial
correction of the actual quadratic value. The bounded prefix is controlled by
its finite prime inventory, without a continuity hypothesis. -/
theorem polynomial_quadratic_lower_of_residual_tail
    (h : PolynomialResidualTailUpperBound) :
    ∃ m : ℕ, ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A + C * A ^ m := by
  obtain ⟨m, D, hD, R, hR, hb⟩ := h
  obtain ⟨lower, hlower⟩ := bounded_radius_lower R
  let K : ℝ := max 0 (-archimedeanMultiplier 0)
  let B : ℝ := max 0 (-lower)
  let C : ℝ := 2 * D + K + B
  have hK : 0 ≤ K := le_max_left _ _
  have hKarch : -archimedeanMultiplier 0 ≤ K := le_max_right _ _
  have hB : 0 ≤ B := le_max_left _ _
  have hBlower : -lower ≤ B := le_max_right _ _
  have hC : 0 ≤ C := by dsimp [C]; positivity
  refine ⟨m, C, hC, ?_⟩
  intro A hA
  have hpow : 1 ≤ A ^ m := one_le_pow₀ hA
  have hpow0 : 0 ≤ A ^ m := zero_le_one.trans hpow
  by_cases hRA : R ≤ A
  · have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hres := hb A hRA
    have hKpow : K ≤ K * A ^ m := le_mul_of_one_le_right hK hpow
    have hBpow : 0 ≤ B * A ^ m := mul_nonneg hB hpow0
    rw [sourceQuadraticValue_eq_archimedean_sub_residual A hA]
    dsimp [C]
    nlinarith
  · have hprefix := hlower A hA (le_of_lt (lt_of_not_ge hRA))
    have hCpow : C ≤ C * A ^ m := le_mul_of_one_le_right hC hpow
    have hCB : B ≤ C := by dsimp [C]; nlinarith
    linarith

end
end EstimatePolynomialResidual
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
