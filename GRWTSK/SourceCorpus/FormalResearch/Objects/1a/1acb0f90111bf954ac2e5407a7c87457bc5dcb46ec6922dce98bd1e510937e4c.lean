import ActualSecondEnergyCalibration

/-!
# Actual second-profile autocorrelation budget

AI attribution: OpenAI Codex. This is the actual almost-everywhere second
derivative profile of the unchanged normalized test. Product integrability is
proved from its square energy. Identification with the fourth correlation
derivative still requires its own analytic bridge and is not assumed here.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSecondProfileCorrelation

open MeasureTheory Set
open RH16IndependentChallengeNext
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

noncomputable section

theorem actualSecondProfile_measurable (A : ℝ) :
    Measurable (actualSecondProfile A) := by
  let theta := (A ^ 2)⁻¹
  have hc : Continuous (fun x : ℝ => theta * unitFourth x -
      BridgeNormalization.unitSecond x / 4) := by
    unfold unitFourth BridgeNormalization.unitSecond
    fun_prop
  have hu : Measurable (unitSecondEnergyProfile theta) :=
    hc.measurable.indicator measurableSet_Icc
  exact (measurable_const.mul (hu.comp (measurable_id.div_const A))).div_const _

theorem actualSecondProfile_square_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun x => actualSecondProfile A x ^ 2) := by
  apply (actual_second_derivative_square_integrable A hA).congr
  filter_upwards [actual_second_derivative_ae_eq_profile A hA] with x hx
  rw [hx]

theorem actualSecondProfile_square_integral_eq_actual_energy (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ, actualSecondProfile A x ^ 2) =
      ∫ x : ℝ, (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2 := by
  apply integral_congr_ae
  filter_upwards [actual_second_derivative_ae_eq_profile A hA] with x hx
  rw [hx]

private theorem real_product_abs_le_square_mean (x y : ℝ) :
    |x * y| ≤ (x ^ 2 + y ^ 2) / 2 := by
  apply abs_le.mpr
  constructor <;> nlinarith [sq_nonneg (x - y), sq_nonneg (x + y)]

/-- The actual discontinuous second profile has integrable translated products. -/
theorem actualSecondProfile_correlation_integrand_integrable
    (A t : ℝ) (hA : 0 < A) :
    Integrable (fun x => actualSecondProfile A x * actualSecondProfile A (x - t)) := by
  have hf := actualSecondProfile_square_integrable A hA
  have hg := hf.comp_sub_right t
  have hm : AEStronglyMeasurable
      (fun x => actualSecondProfile A x * actualSecondProfile A (x - t)) volume :=
    ((actualSecondProfile_measurable A).mul
      ((actualSecondProfile_measurable A).comp (measurable_id.sub_const t))).aestronglyMeasurable
  apply ((hf.add hg).div_const 2).mono' hm
  filter_upwards [] with x
  change ‖actualSecondProfile A x * actualSecondProfile A (x - t)‖ ≤
    (actualSecondProfile A x ^ 2 + actualSecondProfile A (x - t) ^ 2) / 2
  simpa only [Real.norm_eq_abs] using
    real_product_abs_le_square_mean (actualSecondProfile A x) (actualSecondProfile A (x - t))

def actualSecondProfileCorrelation (A t : ℝ) : ℝ :=
  ∫ x : ℝ, actualSecondProfile A x * actualSecondProfile A (x - t)

/-- Square-energy transport retains both actual convolution factors. -/
theorem actualSecondProfileCorrelation_abs_le_energy (A t : ℝ) (hA : 0 < A) :
    |actualSecondProfileCorrelation A t| ≤
      ∫ x : ℝ, (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2 := by
  have hf := actualSecondProfile_square_integrable A hA
  have hg := hf.comp_sub_right t
  calc
    _ ≤ ∫ x : ℝ, |actualSecondProfile A x * actualSecondProfile A (x - t)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x : ℝ, (actualSecondProfile A x ^ 2 + actualSecondProfile A (x - t) ^ 2) / 2 := by
      apply integral_mono (actualSecondProfile_correlation_integrand_integrable A t hA).abs
        ((hf.add hg).div_const 2)
      intro x
      exact real_product_abs_le_square_mean _ _
    _ = ∫ x : ℝ, actualSecondProfile A x ^ 2 := by
      have hshift : (∫ x : ℝ, actualSecondProfile A (x - t) ^ 2) =
          ∫ x : ℝ, actualSecondProfile A x ^ 2 :=
        integral_sub_right_eq_self (fun x : ℝ => actualSecondProfile A x ^ 2) t
      rw [integral_div, integral_add hf hg, hshift]
      ring
    _ = _ := actualSecondProfile_square_integral_eq_actual_energy A hA

theorem actualSecondProfileCorrelation_abs_le_sixty_seven
    (A t : ℝ) (hA : 91 ≤ A) :
    |actualSecondProfileCorrelation A t| ≤ 67 / A ^ 4 :=
  (actualSecondProfileCorrelation_abs_le_energy A t (by linarith)).trans
    (actual_second_derivative_square_integral_le_sixty_seven A hA)

end
end FormalResearch.RiemannHypothesis.SourceSecondProfileCorrelation
