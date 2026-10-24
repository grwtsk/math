/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PolynomialBumpNormalization
import GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompactProfileDerivativeEnergy
import GRWTSK.Analysis.Inequalities.PolynomialEnergyRatio

/-!
# Derivative energy of the unchanged polynomial source

The zero-extended source bump is C³, with its third derivative's exact
full-line square energy. These source-specific results transport the generic
derivative-energy formula to the actual normalized differential operator.
The finite coefficient bound is imported unchanged from the separate coefficient
calculation; no signed arithmetic or residual-tail estimate is asserted.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/

namespace GRWTSK.RiemannHypothesis.SourceDerivativeEnergy

open MeasureTheory Set
open SourcePairing GevreyPolynomial
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

noncomputable section

/-- The third derivative of the zero-extended source at a positive scale. -/
def thirdDerivative (A : ℝ) : ℝ → ℝ :=
  (Icc (-A) A).indicator (thirdInterior A)

/-- Both traces required for differentiating the second zero extension vanish. -/
theorem secondInterior_frontier {A : ℝ} (hA : 0 < A) (x : ℝ)
    (hx : x ∈ frontier (Icc (-A) A)) :
    secondInterior A x = 0 ∧ thirdInterior A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [(secondInterior_endpoints A hA.ne').1, (secondInterior_endpoints A hA.ne').2,
      (thirdInterior_endpoints A hA.ne').1, (thirdInterior_endpoints A hA.ne').2]

/-- The source's explicit second derivative also has its ordinary third derivative. -/
theorem explicitSecondDerivative_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (explicitSecondDerivative A) (thirdDerivative A x) x :=
  indicator_hasDerivAt (secondInterior_hasDerivAt A) (secondInterior_frontier hA) x

/-- The third ordinary derivative retains its explicit zero extension. -/
theorem third_scaledBump {A : ℝ} (hA : 0 < A) :
    deriv (deriv (deriv (scaledBump A))) = thirdDerivative A := by
  rw [second_scaledBump hA]
  exact funext fun x ↦ (explicitSecondDerivative_hasDerivAt hA x).deriv

/-- The third interior derivative is a continuous polynomial. -/
theorem thirdInterior_continuous (A : ℝ) : Continuous (thirdInterior A) := by
  unfold thirdInterior
  fun_prop

/-- The third zero-extension seam preserves global C³ regularity. -/
theorem scaledBump_contDiff_three {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 3 (scaledBump A) := by
  rw [show (3 : WithTop ℕ∞) = 2 + 1 from rfl, contDiff_succ_iff_deriv]
  refine ⟨fun x ↦ (scaledBump_hasDerivAt hA x).differentiableAt, by simp, ?_⟩
  rw [deriv_scaledBump hA, show (2 : WithTop ℕ∞) = 1 + 1 from rfl,
    contDiff_succ_iff_deriv]
  refine ⟨fun x ↦ (firstDerivative_hasDerivAt hA x).differentiableAt, by simp, ?_⟩
  have heq : deriv (firstDerivative A) = explicitSecondDerivative A :=
    funext fun x ↦ (firstDerivative_hasDerivAt hA x).deriv
  rw [heq, contDiff_one_iff_deriv]
  refine ⟨fun x ↦ (explicitSecondDerivative_hasDerivAt hA x).differentiableAt, ?_⟩
  have heq' : deriv (explicitSecondDerivative A) = thirdDerivative A :=
    funext fun x ↦ (explicitSecondDerivative_hasDerivAt hA x).deriv
  rw [heq']
  exact (thirdInterior_continuous A).indicator
    (fun x hx ↦ (secondInterior_frontier hA x hx).2)

/-- The unchanged unit source has ordinary C³ regularity at both support endpoints. -/
theorem sourceBump_contDiff_three : ContDiff ℝ 3 sourceBump := by
  rw [sourceBump_eq_scaled_unit]
  exact scaledBump_contDiff_three (by norm_num)

/-- The exact third derivative on the source's unit interval. -/
def unitThird (x : ℝ) : ℝ := 144 * x - 480 * x ^ 3 + 336 * x ^ 5

/-- The third derivative of the actual source is this polynomial's zero extension. -/
theorem sourceBump_third_eq_indicator :
    deriv (deriv (deriv sourceBump)) = (Icc (-1) 1).indicator unitThird := by
  rw [sourceBump_eq_scaled_unit, third_scaledBump (by norm_num)]
  funext x
  simp [thirdDerivative, thirdInterior, unitThird, indicator_apply]

/-- Direct finite polynomial integration gives the third derivative's unit energy. -/
theorem unitThird_square_integral :
    (∫ x : ℝ in (-1)..1, unitThird x ^ 2) = (65536 / 77 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitThird x ^ 2) =
      (fun x ↦ 20736 * x ^ 2 - 138240 * x ^ 4 + 327168 * x ^ 6 -
        322560 * x ^ 8 + 112896 * x ^ 10) := by
    funext x
    dsimp [unitThird]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow]
  norm_num

/-- The exact full-line third derivative energy belongs to the unchanged source. -/
theorem sourceBump_third_square_integral :
    (∫ x : ℝ, (deriv (deriv (deriv sourceBump)) x) ^ 2) = (65536 / 77 : ℝ) := by
  have heq : (fun x : ℝ ↦ (deriv (deriv (deriv sourceBump)) x) ^ 2) =
      (Icc (-1) 1).indicator (fun x ↦ unitThird x ^ 2) := by
    rw [sourceBump_third_eq_indicator]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  rw [heq, zeroExtension_integral _ (-1) 1 (by norm_num)]
  exact unitThird_square_integral

/-- The actual source derivative's square is integrable, as a conclusion of C³ regularity. -/
theorem actual_derivative_square_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x : ℝ ↦
      (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
  rw [← normalizedOperator_sourceBump_eq hA]
  exact GevreyDerivativeEnergy.normalizedOperator_deriv_square_integrable
    sourceBump_contDiff_three sourceBump_hasCompactSupport hA

/-- Analytic transport identifies the coefficient ratio with the unchanged source energy. -/
theorem actual_derivative_energy_eq {A : ℝ} (hA : 0 < A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) =
      SourceDerivativeCoefficientBound.derivativePolynomial ((A ^ 2)⁻¹) /
        SourceDerivativeCoefficientBound.normPolynomial ((A ^ 2)⁻¹) := by
  rw [← normalizedOperator_sourceBump_eq hA,
    GevreyDerivativeEnergy.normalizedOperator_deriv_square_integral
      sourceBump_contDiff_three sourceBump_hasCompactSupport sourceBump_nonzero hA,
    sourceBump_third_square_integral, sourceBump_second_square_integral,
    sourceBump_deriv_square_integral, normalization_sourceBump_eq hA]
  have hden : sourceNormalization A =
      SourceDerivativeCoefficientBound.normPolynomial ((A ^ 2)⁻¹) := by
    unfold sourceNormalization SourceDerivativeCoefficientBound.normPolynomial
    field_simp
    ring
  have hnum : A ^ 2 * ((A ^ 6)⁻¹ * (65536 / 77 : ℝ) +
      (2 * A ^ 4)⁻¹ * (196608 / 5005 : ℝ) +
      (1 / 16) * (A ^ 2)⁻¹ * (131072 / 45045 : ℝ)) =
        SourceDerivativeCoefficientBound.derivativePolynomial ((A ^ 2)⁻¹) := by
    unfold SourceDerivativeCoefficientBound.derivativePolynomial
    field_simp
    ring
  rw [← mul_div_assoc, hnum, hden]

/-- The verified finite coefficient bound now controls the actual normalized source derivative. -/
theorem actual_derivative_energy_upper {A : ℝ} (hA : 1 ≤ A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) ≤
      (162826 / 7623 : ℝ) := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [actual_derivative_energy_eq hpos]
  have hr0 : 0 ≤ (A ^ 2)⁻¹ := by positivity
  have hr1 : (A ^ 2)⁻¹ ≤ 1 := inv_le_one_of_one_le₀ (by nlinarith)
  exact SourceDerivativeCoefficientBound.exact_ratio_upper_bound _ hr0 hr1

/-- In particular the actual normalized source derivative energy has coefficient below 25. -/
theorem actual_derivative_energy_lt_twenty_five {A : ℝ} (hA : 1 ≤ A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) < 25 :=
  lt_of_le_of_lt (actual_derivative_energy_upper hA)
    SourceDerivativeCoefficientBound.squaredCoefficient_lt_twenty_five

end

end GRWTSK.RiemannHypothesis.SourceDerivativeEnergy
