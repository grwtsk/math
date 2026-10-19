import FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature
import FormalResearch.RiemannHypothesis.SourcePairedSquareMainTerm

/-! Actual private endpoint, mass and signed-weight guards, excluded from the ten primary roots.
AI attribution: developed with OpenAI Codex. -/
set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalDensityScopeFixtures
open MeasureTheory
open scoped Interval
open SourceCriticalDensityQuadrature SourceCriticalDecayWork SourcePairedPrimeAverages
open SourcePairedTailTest SourcePairedTailQuadrature SourcePairedSquareMainTerm
open SourceFirstPrimeAbel SourceDiagonalMainTerm WeightedPrimeAbel

/-- The actual positive-scale endpoint mass correction cannot be removed. -/
theorem boundary_mass_correction_required {A : ℝ} (hA : 0 < A) :
    criticalDensityPrefixDiscrepancy A ≠ primeLogError (2*A) := by
  rw [criticalDensityPrefixDiscrepancy_eq]
  have hh : criticalDecay (2*A) < 1 := by
    unfold criticalDecay
    rw [Real.exp_lt_one_iff]
    linarith
  linarith

/-- A literal pre-prime scale has no prime atoms and strictly positive density mass. -/
theorem actual_preprime_mass_not_balanced :
    criticalDensityPrefixDiscrepancy (Real.log 2/4) < 0 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have he := primeLogError_below_first_prime
    (show 2*(Real.log 2/4) < Real.log 2 by linarith)
  have hz : primeLogPrefix (2*(Real.log 2/4)) = 0 := by
    unfold primeLogError at he
    linarith
  unfold criticalDensityPrefixDiscrepancy
  rw [hz, zero_sub]
  exact neg_neg_of_pos (criticalDensity_integral_pos (by linarith))

/-- Actual source integrals have opposite signs despite the strictly positive decay weight. -/
theorem actual_opposite_signed_source_integrals {A : ℝ} (hA : 8000 ≤ A) :
    (0 < ∫ u in 0..2*A, pairedTailTest A u) ∧
      (1/2 : ℝ)*(∫ u in 0..2*A, criticalDecay u*pairedTailTest A u) < 0 := by
  have h1 : 1 ≤ A := by linarith
  constructor
  · rw [pairedTailTest_integral_eq h1]
    exact pairedTailTest_drift_pos h1
  · rw [criticalDensity_weighted_pairedTailTest h1]
    have hc := diagonalMainCoefficient_ge_one_div_four_thousand h1
    have hs := mul_le_mul_of_nonneg_right hc (show 0 ≤ A by linarith)
    have hb := (criticalDecayNegativeMean_mem_Icc h1).1
    linarith

/-- A density bounded above by one can increase this actual signed source integral. -/
theorem actual_bounded_density_increases_signed_integral {A : ℝ} (hA : 8000 ≤ A) :
    (∫ u in 0..2*A, pairedTailTest A u) <
      ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u := by
  have h1 : 1 ≤ A := by linarith
  rw [pairedTailTest_integral_eq h1, criticalDensity_quadrature_eq_full_drift h1]
  have hc := diagonalMainCoefficient_ge_one_div_four_thousand h1
  have hs := mul_le_mul_of_nonneg_right hc (show 0 ≤ A by linarith)
  have hb := (criticalDecayNegativeMean_mem_Icc h1).1
  linarith

/-- The nonnegative-axis range cannot be extended to all real positions. -/
theorem actual_negative_axis_density : criticalDensity (-2*Real.log 4) = -1 := by
  unfold criticalDensity criticalDecay
  rw [show -(-2*Real.log 4)/2=Real.log 4 by ring, Real.exp_log (by norm_num)]
  norm_num

end FormalResearch.RiemannHypothesis.SourceCriticalDensityScopeFixtures

open FormalResearch.RiemannHypothesis.SourceCriticalDensityScopeFixtures
#check boundary_mass_correction_required
#print axioms boundary_mass_correction_required
#check actual_preprime_mass_not_balanced
#print axioms actual_preprime_mass_not_balanced
#check actual_opposite_signed_source_integrals
#print axioms actual_opposite_signed_source_integrals
#check actual_bounded_density_increases_signed_integral
#print axioms actual_bounded_density_increases_signed_integral
#check actual_negative_axis_density
#print axioms actual_negative_axis_density
