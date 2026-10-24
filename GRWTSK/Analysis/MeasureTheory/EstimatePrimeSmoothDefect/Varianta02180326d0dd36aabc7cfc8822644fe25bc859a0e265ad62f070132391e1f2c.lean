-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ClosedPrimeMoment.Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ClosedPrimeMoment.Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimatePrimeSmoothDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

/-!
# RH estimate: prime-smooth discrepancy normal form

The remaining signed pairing is rewritten exactly by finite Stieltjes
summation/integration by parts.  The upper support endpoint vanishes, while the
prime-two endpoint remains explicit.

For the actual source correlation the signed pairing is

  endpointMoment A - primeSmoothDefect A,

where the defect is the exact closed prime-power moment minus the smooth
exponential moment.  The endpoint is uniformly bounded by sqrt 2.

Consequently the eventual one-sided lower bound for the signed pairing is
equivalent to an eventual constant upper bound for this exact prime-smooth
defect.  No absolute-value envelope or unsigned prime sum replaces the defect.
-/


namespace GRWTSK.Analysis.MeasureTheory.ClosedPrimeMoment.Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePrimeSmoothDefect

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateTailReduction
open PrimePowerDescent

noncomputable section

/-- The exact closed prime-power moment after finite Stieltjes descent. -/
def closedPrimeMoment (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n *
      exponentialTest
        (sourceCorrelation Realization.explicitSecondDerivative A)
        (Real.log n)

/-- The exact smooth moment paired with the same actual correlation. -/
def smoothMoment (A : ℝ) : ℝ :=
  ∫ t in lowerEndpoint..2 * A,
    Real.exp (t / 2) *
      sourceCorrelation Realization.explicitSecondDerivative A t

/-- The retained prime-two endpoint term. -/
def endpointMoment (A : ℝ) : ℝ :=
  Real.sqrt 2 *
    sourceCorrelation Realization.explicitSecondDerivative A lowerEndpoint

/-- The arithmetic discrepancy whose eventual upper control is exactly the
remaining estimate obstruction. -/
def primeSmoothDefect (A : ℝ) : ℝ :=
  closedPrimeMoment A - smoothMoment A

/-- The strict source prime-power sum equals the exact closed Stieltjes moment;
the possible right-endpoint atom vanishes because the actual correlation does. -/
theorem primePowerContribution_eq_closedPrimeMoment
    (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution Realization.explicitSecondDerivative A =
      closedPrimeMoment A := by
  unfold closedPrimeMoment
  exact
    source_prime_power_contribution_eq_closed
      Realization.explicitSecondDerivative A
      (CorrelationRegularity.sourceCorrelation_upper_endpoint A
        (by linarith))

/-- Exact integration-by-parts normal form for the unchanged signed pairing. -/
theorem signedPairing_eq_endpoint_sub_defect
    (A : ℝ) (hA : 1 ≤ A) :
    signedPairing Realization.explicitSecondDerivative A =
      endpointMoment A - primeSmoothDefect A := by
  obtain ⟨hC, hzero⟩ :=
    CorrelationRegularity.correlation_certificate A hA
  have hdesc :=
    source_prime_power_descent
      Realization.explicitSecondDerivative A hA hC hzero
  rw [primePowerContribution_eq_closedPrimeMoment A hA] at hdesc
  unfold endpointMoment primeSmoothDefect smoothMoment
  linarith

/-- The only endpoint left by the descent is uniformly bounded. -/
theorem endpointMoment_abs_le
    (A : ℝ) (hA : 1 ≤ A) :
    |endpointMoment A| ≤ Real.sqrt 2 := by
  have hc :=
    EstimateCorrelation.actual_correlation_abs_le_one
      A lowerEndpoint hA
  unfold endpointMoment
  rw [abs_mul, abs_of_nonneg (Real.sqrt_nonneg 2)]
  nlinarith [Real.sqrt_nonneg (2 : ℝ)]

theorem endpointMoment_lower
    (A : ℝ) (hA : 1 ≤ A) :
    -Real.sqrt 2 ≤ endpointMoment A :=
  (abs_le.mp (endpointMoment_abs_le A hA)).1

theorem endpointMoment_upper
    (A : ℝ) (hA : 1 ≤ A) :
    endpointMoment A ≤ Real.sqrt 2 :=
  (abs_le.mp (endpointMoment_abs_le A hA)).2

/-- Eventual constant upper control of the exact prime-smooth discrepancy. -/
def PrimeSmoothDefectTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧
    ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        primeSmoothDefect A ≤ D

/-- A bounded prime-smooth defect yields the remaining signed-pairing tail
lower bound with only the explicit sqrt-2 endpoint loss. -/
theorem signed_pairing_tail_of_defect_tail
    (h : PrimeSmoothDefectTailUpperBound) :
    SignedPairingTailLowerBound := by
  obtain ⟨D, hD, R, hR, hdef⟩ := h
  refine ⟨Real.sqrt 2 + D, by positivity, R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  rw [signedPairing_eq_endpoint_sub_defect A hA]
  have hend := endpointMoment_lower A hA
  have hd := hdef A hRA
  linarith

/-- Conversely, any eventual signed-pairing lower bound gives an eventual
constant upper bound for the exact prime-smooth discrepancy. -/
theorem defect_tail_of_signed_pairing_tail
    (h : SignedPairingTailLowerBound) :
    PrimeSmoothDefectTailUpperBound := by
  obtain ⟨C, hC, R, hR, hpair⟩ := h
  refine ⟨Real.sqrt 2 + C, by positivity, R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have heq := signedPairing_eq_endpoint_sub_defect A hA
  have hend := endpointMoment_upper A hA
  have hp := hpair A hRA
  linarith

/-- The signed-tail obstruction and the exact prime-smooth discrepancy bound
are equivalent. -/
theorem signed_pairing_tail_iff_prime_smooth_defect_tail :
    SignedPairingTailLowerBound ↔ PrimeSmoothDefectTailUpperBound :=
  ⟨defect_tail_of_signed_pairing_tail,
    signed_pairing_tail_of_defect_tail⟩

/-- The discrepancy formulation is sufficient for the repository's unchanged
all-scale estimate target. -/
theorem estimate_of_prime_smooth_defect_tail
    (h : PrimeSmoothDefectTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_signed_pairing_tail_lower_bound
    (signed_pairing_tail_of_defect_tail h)

/-- Current exact arithmetic frontier. -/
def PrimeSmoothDefectCheckpoint : Prop :=
  (∀ A : ℝ, 1 ≤ A →
    signedPairing Realization.explicitSecondDerivative A =
      endpointMoment A - primeSmoothDefect A) ∧
  (∀ A : ℝ, 1 ≤ A →
    |endpointMoment A| ≤ Real.sqrt 2) ∧
  (SignedPairingTailLowerBound ↔ PrimeSmoothDefectTailUpperBound) ∧
  (PrimeSmoothDefectTailUpperBound →
    CorrelationAssembly.EstimateObligation)

theorem prime_smooth_defect_checkpoint :
    PrimeSmoothDefectCheckpoint :=
  ⟨signedPairing_eq_endpoint_sub_defect,
    endpointMoment_abs_le,
    signed_pairing_tail_iff_prime_smooth_defect_tail,
    estimate_of_prime_smooth_defect_tail⟩

end
end EstimatePrimeSmoothDefect
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
