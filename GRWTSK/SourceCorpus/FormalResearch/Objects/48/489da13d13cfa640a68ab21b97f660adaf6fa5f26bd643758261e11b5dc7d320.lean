import SourceCriticalSecondAbel

set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceSecondAbelScopeFixtures

open MeasureTheory Set Function
open scoped Interval
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourcePairedPrimeWork
open FormalResearch.RiemannHypothesis.SourcePairedTailTest
open FormalResearch.RiemannHypothesis.SourceCriticalDecayWork
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-- The actual lower derivative is nonzero; second Abel cannot use its vanishing. -/
theorem actual_paired_deriv_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (pairedTailTest A) 0 = -(1 / 2 : ℝ) := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let d := deriv C 0
  have hd : HasDerivAt C d 0 :=
    ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hp)).1 0).hasDerivAt
  have hr : HasDerivAt (fun u : ℝ => C (-u)) (-d) 0 := by
    simpa only [Function.comp_def, mul_neg, mul_one] using hd.comp 0 (hasDerivAt_neg 0)
  have he : (fun u : ℝ => C (-u)) = C := funext (sourceCorrelation_even A)
  rw [he] at hr
  have hdz : d = 0 := by linarith [hd.unique hr]
  have hc : deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := hdz
  have hc0 : sourceCorrelation explicitSecondDerivative A 0 = 1 := by
    simpa only [criticalPrimeTest, zero_div, Real.exp_zero, one_mul] using
      criticalPrimeTest_at_zero A hA
  have hg : deriv (criticalPrimeTest A) 0 = (1 / 2 : ℝ) := by
    rw [criticalPrimeTest_deriv A 0 hp, hc0, hc]
    norm_num
  rw [pairedTailTest_deriv hA]
  simp only [positiveSlope, negativeSlope, hg]
  norm_num

/-- The actual bridge endpoints kill the product even with a nonzero lower derivative. -/
theorem actual_bridge_boundary_product_zero {A : ℝ} (hA : 1 ≤ A) :
    criticalDiscrepancyBridge A (2 * A) * deriv (pairedTailTest A) (2 * A) -
      criticalDiscrepancyBridge A 0 * deriv (pairedTailTest A) 0 = 0 ∧
      deriv (pairedTailTest A) 0 ≠ 0 := by
  constructor
  · rw [criticalDiscrepancyBridge_at_upper (show 0 < A by linarith),
      criticalDiscrepancyBridge_at_zero, zero_mul, zero_mul, sub_self]
  · rw [actual_paired_deriv_zero hA]
    norm_num

/-- Missing the literal +1 fails pointwise at the source-independent lower endpoint. -/
theorem omitted_one_discrepancy_wrong_at_zero :
    WeightedPrimeAbel.primeLogError 0 - criticalDecay 0 = -(1 : ℝ) ∧
      criticalCumulativeDiscrepancy 0 = 0 := by
  have h := criticalCumulativeDiscrepancy_eq (0 : ℝ)
  rw [criticalCumulativeDiscrepancy_at_zero] at h
  have he : criticalDecay 0 = 1 := by simp [criticalDecay]
  constructor
  · linarith
  · exact criticalCumulativeDiscrepancy_at_zero

/-- A scalar constant drops from the complete pairing through the two D endpoints. -/
theorem constant_complete_pairing_zero {A : ℝ} (hA : 1 ≤ A) (c : ℝ) :
    (∫ u in 0..2 * A, c * deriv (pairedTailTest A) u) = 0 := by
  have hc := (pairedTailTest_contDiff hA).continuous_deriv_one
  have hz : (∫ u in 0..2 * A, deriv (pairedTailTest A) u) = 0 := by
    have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun u _ => ((contDiff_one_iff_deriv.mp (pairedTailTest_contDiff hA)).1 u).hasDerivAt)
      (hc.intervalIntegrable (μ := volume) 0 (2 * A))
    simpa only [pairedTailTest_at_upper hA, pairedTailTest_at_zero hA, sub_self] using h
  rw [intervalIntegral.integral_const_mul, hz, mul_zero]

end FormalResearch.RiemannHypothesis.SourceSecondAbelScopeFixtures

open FormalResearch.RiemannHypothesis.SourceSecondAbelScopeFixtures

#check @actual_paired_deriv_zero
#print axioms actual_paired_deriv_zero
#check @actual_bridge_boundary_product_zero
#print axioms actual_bridge_boundary_product_zero
#check @omitted_one_discrepancy_wrong_at_zero
#print axioms omitted_one_discrepancy_wrong_at_zero
#check @constant_complete_pairing_zero
#print axioms constant_complete_pairing_zero
