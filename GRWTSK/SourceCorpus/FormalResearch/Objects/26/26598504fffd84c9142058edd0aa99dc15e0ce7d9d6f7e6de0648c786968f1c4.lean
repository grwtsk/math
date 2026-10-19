import FormalResearch.RiemannHypothesis.GevreyEnvelope
import FormalResearch.RiemannHypothesis.GevreyNormalization

open Filter MeasureTheory
open scoped Topology
open FormalResearch.RiemannHypothesis

-- Freeze the requested scalar model and explicit point without hiding them
-- behind a different envelope definition.
example (c d s : ℝ) (hs : 0 < s) :
    Tendsto (fun A : ℝ ↦
      (A - 2 * c * A / ((s / 2) * Real.log A) -
        d * Real.exp (((s / 2) * Real.log A) / s) - Real.log A) / A)
      atTop (𝓝 1) :=
  GevreyEnvelope.tendsto_diagnostic_exponent_test_point_div c d hs

example (c d : ℝ) :
    Tendsto (fun A : ℝ ↦
      GevreyEnvelope.diagnosticExponent c d (3 / 2) A
        (GevreyEnvelope.testPoint (3 / 2) A)) atTop atTop :=
  GevreyEnvelope.tendsto_diagnostic_exponent_test_point_atTop c d (by norm_num)

-- Freeze the literal corrected profile, including its zero extension.
example : ContDiff ℝ (⊤ : ℕ∞)
    (fun y : ℝ ↦ if |y| < 1 then Real.exp (-1 / (1 - y ^ 2) ^ 2) else 0) :=
  GevreyProfile.profile_contDiff

example : Function.support GevreyProfile.profile = Set.Ioo (-1) 1 :=
  GevreyProfile.profile_support

-- This is the actual differentiated dilation, rather than a polynomial
-- replacement or an assumed realization/normalization contract.
example (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ,
      (deriv (deriv (fun y ↦ GevreyProfile.profile (y / A) / Real.sqrt A)) x -
        (GevreyProfile.profile (x / A) / Real.sqrt A) / 4) ^ 2) =
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv GevreyProfile.profile) x) ^ 2) +
      (2 * A ^ 2)⁻¹ * (∫ x : ℝ, (deriv GevreyProfile.profile x) ^ 2) +
      (1 / 16) * (∫ x : ℝ, (GevreyProfile.profile x) ^ 2) :=
  GevreyNormalization.normalization_eq GevreyProfile.profile_contDiff
    GevreyProfile.profile_hasCompactSupport hA

example (A : ℝ) (hA : 0 < A) :
    Integrable (fun x ↦
      (GevreyNormalization.dilationOperator GevreyProfile.profile A x) ^ 2) :=
  GevreyNormalization.dilationOperator_square_integrable
    GevreyProfile.profile_contDiff GevreyProfile.profile_hasCompactSupport hA

example (A : ℝ) (hA : 0 < A) :
    0 < GevreyNormalization.normalization GevreyProfile.profile A :=
  GevreyNormalization.normalization_pos GevreyProfile.profile_contDiff
    GevreyProfile.profile_hasCompactSupport GevreyProfile.profile_nonzero hA

example : ∃ z : ℝ, 0 < z ∧ ∀ A : ℝ, 0 < A →
    z ≤ GevreyNormalization.normalization GevreyProfile.profile A :=
  GevreyNormalization.profile_normalization_uniform_positive_lower_bound

example (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ,
      (GevreyNormalization.normalizedOperator GevreyProfile.profile A x) ^ 2) = 1 :=
  GevreyNormalization.profile_normalizedOperator_square_integral hA

#print axioms GevreyEnvelope.diagnostic_exponent_test_point
#print axioms GevreyEnvelope.tendsto_diagnostic_exponent_test_point_div
#print axioms GevreyEnvelope.tendsto_diagnostic_exponent_test_point_atTop
#print axioms GevreyProfile.profile_contDiff
#print axioms GevreyProfile.profile_support
#print axioms GevreyProfile.profile_hasCompactSupport
#print axioms GevreyProfile.profile_nonzero
#print axioms GevreyNormalization.integral_second_mul_profile
#print axioms GevreyNormalization.dilationOperator_square_integrable
#print axioms GevreyNormalization.normalization_eq
#print axioms GevreyNormalization.normalization_uniform_lower_bound
#print axioms GevreyNormalization.normalization_pos
#print axioms GevreyNormalization.profile_normalization
#print axioms GevreyNormalization.profile_normalization_uniform_positive_lower_bound
#print axioms GevreyNormalization.profile_normalizedOperator_square_integral
