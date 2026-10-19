import FormalResearch.RiemannHypothesis.SourceCriticalOriginCurvature
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign

/-!
Private actual-source origin fixtures; prospective until native compilation.
The scale-six sign guards the threshold. Source and paired curvature remain distinct.
-/

set_option autoImplicit false
noncomputable section
namespace Cycle24OriginFixtures

open MeasureTheory
open FormalResearch.RiemannHypothesis
open SourceCriticalOriginCurvature SourcePairedTailTest SourcePairing SourceDerivativeEnergy
open SourceDerivativeCoefficientBound SourceCorrelationCurvatureSign
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem origin_energy_one :
    deriv (deriv (pairedTailTest (1 : ℝ))) 0 =
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative 1) x) ^ 2) - 1 / 4 :=
  pairedTailTest_second_deriv_at_zero_eq_energy (by norm_num)

theorem origin_one_eq :
    deriv (deriv (pairedTailTest (1 : ℝ))) 0 = 643681 / 30492 :=
  pairedTailTest_second_deriv_at_zero_one

theorem origin_one_pos : 0 < deriv (deriv (pairedTailTest (1 : ℝ))) 0 := by
  rw [origin_one_eq]
  norm_num

theorem origin_six_eq :
    deriv (deriv (pairedTailTest (6 : ℝ))) 0 = 691 / 6552 := by
  rw [pairedTailTest_second_deriv_at_zero_eq_energy (by norm_num : (1 : ℝ) ≤ 6)]
  have he := actual_derivative_energy_eq (by norm_num : (0 : ℝ) < 6)
  norm_num [normPolynomial, derivativePolynomial] at he
  linarith

theorem origin_six_pos : 0 < deriv (deriv (pairedTailTest (6 : ℝ))) 0 := by
  rw [origin_six_eq]
  norm_num

theorem all_scale_negative_false :
    ¬(∀ A : ℝ, 1 ≤ A → deriv (deriv (pairedTailTest A)) 0 < 0) := by
  intro h
  have hn := h 1 (by norm_num)
  linarith [origin_one_pos]

theorem from_six_negative_false :
    ¬(∀ A : ℝ, 6 ≤ A → deriv (deriv (pairedTailTest A)) 0 < 0) := by
  intro h
  have hn := h 6 (by norm_num)
  linarith [origin_six_pos]

theorem origin_seven_neg : deriv (deriv (pairedTailTest (7 : ℝ))) 0 < 0 :=
  pairedTailTest_second_deriv_at_zero_neg_of_seven_le (by norm_num)

theorem origin_seven_eq :
    deriv (deriv (pairedTailTest (7 : ℝ))) 0 = -153743 / 7345884 := by
  rw [pairedTailTest_second_deriv_at_zero_eq_energy (by norm_num : (1 : ℝ) ≤ 7)]
  have he := actual_derivative_energy_eq (by norm_num : (0 : ℝ) < 7)
  norm_num [normPolynomial, derivativePolynomial] at he
  linarith

theorem origin_ten_neg : deriv (deriv (pairedTailTest (10 : ℝ))) 0 < 0 :=
  pairedTailTest_second_deriv_at_zero_neg_of_seven_le (by norm_num)

theorem origin_ten_eq :
    deriv (deriv (pairedTailTest (10 : ℝ))) 0 = -21841 / 130680 := by
  rw [pairedTailTest_second_deriv_at_zero_eq_energy (by norm_num : (1 : ℝ) ≤ 10)]
  have he := actual_derivative_energy_eq (by norm_num : (0 : ℝ) < 10)
  norm_num [normPolynomial, derivativePolynomial] at he
  linarith

theorem origin_one_energy_eq :
    (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative 1) x) ^ 2) =
      162826 / 7623 := by
  have he := actual_derivative_energy_eq (by norm_num : (0 : ℝ) < 1)
  norm_num [normPolynomial, derivativePolynomial] at he
  exact he

theorem source_curvature_at_one_neg :
    deriv (deriv (sourceCorrelation explicitSecondDerivative 1)) 0 < 0 :=
  sourceCorrelation_curvature_at_zero_neg (by norm_num)

theorem paired_vs_source_curvature_one_distinct :
    deriv (deriv (pairedTailTest (1 : ℝ))) 0 ≠
      deriv (deriv (sourceCorrelation explicitSecondDerivative 1)) 0 := by
  exact ne_of_gt (source_curvature_at_one_neg.trans origin_one_pos)

end Cycle24OriginFixtures
