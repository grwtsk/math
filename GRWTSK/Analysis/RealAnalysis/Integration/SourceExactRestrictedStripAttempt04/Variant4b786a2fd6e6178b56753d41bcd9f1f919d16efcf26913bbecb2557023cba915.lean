import SourceRestrictedLowTimeWork
import SourceExactTailEnergy

/-!
Exact derivative energy applied to the actual restricted left spatial strip.
The low time window, strict cell inventory, PLUS quarter mass sector, independently
fixed main term and quotient endpoint are inherited without redefinition.
Research direction and conceptual origin: grwtsk contributors.
Proof construction and focused native verification: OpenAI Codex.
This uses the frozen qualified source40 private research ABI, not maintained adoption.
-/
set_option autoImplicit false

-- Byte-bound research aliases only: no owning source or object is modified.
open Lean Elab Command in
run_cmd do
  for (moduleName, user, localName) in [
      (`SourceActualMixedWorkFubini,
       `FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubini.deriv_source_tsupport_subset,
       `RH16ExactRestrictedStrip.deriv_source_tsupport_subset),
      (`SourceRestrictedLowTimeWork,
       `FormalResearch.RiemannHypothesis.SourceRestrictedLowTimeWork.low_sector_integrable,
       `RH16ExactRestrictedStrip.low_sector_integrable)] do
    let internal := Lean.mkPrivateNameCore moduleName user
    unless (← getEnv).contains internal do
      throwError "Missing frozen research declaration: {internal}"
    unless !(← getEnv).contains localName do
      throwError "Research alias would shadow a declaration: {localName}"
    modifyEnv (fun env => Lean.addAlias env localName internal)

noncomputable section
namespace RH16ExactRestrictedStrip
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourceRestrictedLowTimeWork SourceRestrictedMixedPairing SourceLowTimeScalarBudget
open SourceActualMixedWorkFubini SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity RH16ExactTailEnergy

/-- Every spatial restriction of derivative pairing retains the exact actual energy. -/
theorem restrictedDerivativePairing_abs_le_tail {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) (S : Set ℝ) (x y : ℝ) :
    |restrictedDerivativePairing S A x y| ≤ tailEnergyCoefficient Q / A ^ 2 := by
  have hQp : 0 < Q := by linarith
  exact (restrictedDerivativePairing_abs_le_energy (hQp.trans_le hQA) S x y).trans
    (actual_derivative_energy_le_tail hQp hQA)

/-- The actual low row keeps both logarithmic endpoints and pays exact derivative energy. -/
theorem actual_derivative_low_sector_abs_le_tail {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
      actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v| ≤
      2 * (Real.log 4 + 4 + Real.log 2) * (tailEnergyCoefficient Q / A ^ 2) := by
  have hA : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  exact restricted_actual_low_sector_abs_le _
    ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
    (deriv_source_tsupport_subset hp) S (tailEnergyCoefficient Q / A ^ 2)
    (div_nonneg (tailEnergyCoefficient_pos Q).le (sq_nonneg A))
    (fun t u => by
      simpa only [sub_eq_add_neg, restrictedDerivativePairing] using
        restrictedDerivativePairing_abs_le_tail hQ hQA S (-t) (Real.log u))

/-- The unchanged PLUS quarter source sector remains in the restricted mixed density. -/
theorem actual_low_mixed_restricted_abs_le_tail {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowMixedWorkDensity A v| ≤
      (Real.log 4 + 4 + Real.log 2) * (1 / 2 + 2 * tailEnergyCoefficient Q / A ^ 2) := by
  have hA : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have h1 : IntegrableOn (fun v =>
      actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
        actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) S :=
    (low_sector_integrable _
      ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
      (deriv_source_tsupport_subset hp)).integrableOn
  have h0 : IntegrableOn (fun v =>
      actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
        actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v) S := by
    have hsum := (actualLowMixedWorkDensity_integrable hA).integrableOn (s := S)
    have he : (fun v => actualLowMixedWorkDensity A v -
        actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
          actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) =
      (fun v => (1 / 4 : ℝ) *
        (actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
          actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)) := by
      funext v
      unfold actualLowMixedWorkDensity
      ring
    have hh := hsum.sub h1
    change IntegrableOn (fun v => actualLowMixedWorkDensity A v -
      actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
        actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) S at hh
    rw [he] at hh
    change Integrable (fun v => actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
      A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)
      (volume.restrict S)
    simpa using hh.const_mul (4 : ℝ)
  unfold actualLowMixedWorkDensity
  rw [integral_add h1 (h0.const_mul (1 / 4 : ℝ)), integral_const_mul]
  calc
    _ ≤ |∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
          actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v| +
        (1 / 4 : ℝ) * |∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
          A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v| := by
      simpa only [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 4)] using
        abs_add_le (∫ v in S, actualLowTimeProfile
          (deriv (normalizedTest explicitSecondDerivative A))
          A v * actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v)
          ((1 / 4 : ℝ) * ∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
            A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)
    _ ≤ 2 * (Real.log 4 + 4 + Real.log 2) * (tailEnergyCoefficient Q / A ^ 2) +
        (1 / 4 : ℝ) * (2 * (Real.log 4 + 4 + Real.log 2)) :=
      add_le_add (actual_derivative_low_sector_abs_le_tail hQ hQA S)
        (mul_le_mul_of_nonneg_left (actual_source_low_sector_abs_le hA S) (by norm_num))
    _ = _ := by ring

/-- The retained spatial strip is bounded by its literal independently defined low row. -/
theorem actual_retained_spatial_strip_abs_le_tail {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) :
    |∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v| ≤
      (Real.log 4 + 4 + Real.log 2) * (1 / 2 + 2 * tailEnergyCoefficient Q / A ^ 2) := by
  have hA : 1 ≤ A := by linarith
  have hm : MeasurableSet (actualWorkLeftStrip A) := measurableSet_Icc.diff measurableSet_Icc
  rw [setIntegral_congr_fun (μ := (volume : Measure ℝ)) hm
    (fun v hv => actual_density_eq_low_density_on_left_strip hA hv)]
  exact actual_low_mixed_restricted_abs_le_tail hQ hQA (actualWorkLeftStrip A)

/-- A uniform real-radius strip budget for the original source consumer. -/
theorem actual_retained_spatial_strip_abs_le_uniform {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) :
    |∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v| ≤
      (Real.log 4 + 4 + Real.log 2) * (1 / 2 + 2 * tailEnergyCoefficient Q / Q ^ 2) := by
  have hQp : 0 < Q := by linarith
  have hAp : 0 < A := hQp.trans_le hQA
  have hsq : Q ^ 2 ≤ A ^ 2 := by nlinarith
  apply (actual_retained_spatial_strip_abs_le_tail hQ hQA).trans
  apply mul_le_mul_of_nonneg_left ?_ mangoldt_error_budget_pos.le
  simpa only [add_comm] using add_le_add_left (div_le_div_of_nonneg_left
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) (tailEnergyCoefficient_pos Q).le)
    (sq_pos_of_pos hQp) hsq) (1 / 2 : ℝ)

/-- The comparison improves only the paid strip; all joint overlap counterterms survive. -/
theorem actual_surplus_le_remainingOverlap_add_exact_strip {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A ≤ remainingOverlapBalance A +
        (Real.log 4 + 4 + Real.log 2) * (1 / 2 + 2 * tailEnergyCoefficient Q / Q ^ 2) := by
  rw [actual_surplus_eq_remainingOverlap_sub_strip (by linarith : 1 ≤ A)]
  have h := actual_retained_spatial_strip_abs_le_uniform hQ hQA
  have hn := neg_le_abs (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v)
  linarith

/-- The converse comparison preserves the independently fixed main and endpoint terms. -/
theorem remainingOverlap_le_actual_surplus_add_exact_strip {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) :
    remainingOverlapBalance A ≤ VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A +
        (Real.log 4 + 4 + Real.log 2) * (1 / 2 + 2 * tailEnergyCoefficient Q / Q ^ 2) := by
  rw [actual_surplus_eq_remainingOverlap_sub_strip (by linarith : 1 ≤ A)]
  have h := actual_retained_spatial_strip_abs_le_uniform hQ hQA
  have hn := le_abs_self (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v)
  linarith
end RH16ExactRestrictedStrip
