import FormalResearch.RiemannHypothesis.FullQuadraticAudit
import FormalResearch.RiemannHypothesis.PoleFrontierInvariance

/-!
# The direct full-form audit forces the existing arithmetic frontier

The Gamma contribution is bounded on both sides by the new source-only moment
estimate. Consequently the negative half of the unchanged complete quadratic
value differs from the old arithmetic discrepancy by one uniformly bounded
correction. This is a certificate, not a proof of a transformed upper bound.

The new converse from the full estimate follows only after that Gamma upper
bound has been proved. It rules out unbounded Gamma compensation on this actual
source family. Neither equivalent open proposition is inhabited here.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.FullQuadraticFrontierAudit

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.MathematicalTooling.UniformTailEquivalence
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateHigherPrimePowers PrimeSquareEstimate
open FullQuadraticAudit PoleFrontierInvariance PhaseKernelBoundary

noncomputable section

/-- A fixed bound for the correction between the full scalar and the discrepancy. -/
def fullCorrectionBound : ℝ :=
  2 + higherPowerBound + (|archimedeanMultiplier 0| + 4 + 2 * secondMomentBound) / 2

theorem full_correction_bound_nonneg : 0 ≤ fullCorrectionBound := by
  unfold fullCorrectionBound
  positivity [higherPowerBound_nonneg, second_moment_bound_nonneg]

/-- This identity retains the Gamma energy, all higher powers and the continuum correction. -/
theorem full_quadratic_discrepancy_correction (A : ℝ) :
    -sourceQuadraticValue explicitSecondDerivative A / 2 - sourceDiscrepancyValue A =
      (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) + higherPowerContribution A -
          archimedeanValue explicitSecondDerivative A / 2 := by
  unfold sourceQuadraticValue sourceDiscrepancyValue
  rw [primePowerContribution_eq_lower_add_higher A]
  ring

/-- The complete form differs by a fixed bounded correction on every real radius at least one. -/
theorem full_quadratic_discrepancy_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |-sourceQuadraticValue explicitSecondDerivative A / 2 - sourceDiscrepancyValue A| ≤
      fullCorrectionBound := by
  rw [full_quadratic_discrepancy_correction]
  let I : ℝ := ∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t
  let H : ℝ := higherPowerContribution A
  let G : ℝ := archimedeanValue explicitSecondDerivative A
  change |I + H - G / 2| ≤ fullCorrectionBound
  calc
    _ ≤ |I + H| + |G / 2| := by
      simpa only [sub_eq_add_neg, abs_neg] using abs_add_le (I + H) (-(G / 2))
    _ ≤ |I| + |H| + |G / 2| := add_le_add (abs_add_le I H) le_rfl
    _ ≤ fullCorrectionBound := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      unfold fullCorrectionBound
      exact add_le_add
        (add_le_add (source_continuum_abs_le_two A hA)
          (higherPowerContribution_abs_le_bound A hA))
        (div_le_div_of_nonneg_right (actual_archimedean_abs_le A hA) (by norm_num))

/-- Unit scaling and one fixed error certify the frontier audit of the complete scalar. -/
def fullQuadraticTailAdapter : AffineTailAdapter sourceDiscrepancyValue
    (fun A ↦ -sourceQuadraticValue explicitSecondDerivative A / 2) where
  scale := 1
  scale_pos := zero_lt_one
  error := fullCorrectionBound
  error_nonneg := full_correction_bound_nonneg
  threshold := 1
  threshold_ge_one := le_rfl
  error_bound := by
    intro A hA
    simpa only [one_mul] using full_quadratic_discrepancy_abs_le A hA

/-- The direct Gamma estimate supplies a new certificate, without proving either tail bound. -/
theorem full_quadratic_frontier_certificate :
    QuantitativeTailEquivalence sourceDiscrepancyValue
      (fun A ↦ -sourceQuadraticValue explicitSecondDerivative A / 2) :=
  ⟨fullQuadraticTailAdapter⟩

/-- The full estimate now implies prime-square compensation; the Gamma upper bound is essential. -/
theorem prime_square_compensation_of_full_estimate
    (h : CorrelationAssembly.EstimateObligation) : PrimeSquareCompensationTail := by
  obtain ⟨upper, hu⟩ := estimate_iff_full_prime_power_upper_bound.mp h
  refine ⟨max 0 (2 * (upper + higherPowerBound)), le_max_left _ _, 1, le_rfl, ?_⟩
  intro A hA
  have hp := hu A hA
  have hh := (abs_le.mp (higherPowerContribution_abs_le_bound A hA)).1
  rw [primePowerContribution_eq_lower_add_higher A,
    lowerPowerContribution_eq_weight_sub_half_phaseMass A hA] at hp
  have hc := le_max_right 0 (2 * (upper + higherPowerBound))
  linarith

/-- The unchanged full estimate and the existing sufficient arithmetic frontier are equivalent.
This theorem proves equivalence, not either open estimate. -/
theorem full_estimate_iff_prime_square_compensation :
    CorrelationAssembly.EstimateObligation ↔ PrimeSquareCompensationTail :=
  ⟨prime_square_compensation_of_full_estimate, estimate_of_prime_square_compensation⟩

end
end FormalResearch.RiemannHypothesis.FullQuadraticFrontierAudit
