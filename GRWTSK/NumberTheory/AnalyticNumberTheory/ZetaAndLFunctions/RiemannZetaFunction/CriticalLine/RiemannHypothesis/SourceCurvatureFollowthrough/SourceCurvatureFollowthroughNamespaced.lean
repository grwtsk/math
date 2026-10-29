-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RemainingLowerOfActualFiniteRowFive.Variant55b09b9f39708b0d8e69ca1069d37f20498ed8abca816e5a8bd8f7f55cdd3f5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55b09b9f39708b0d8e69ca1069d37f20498ed8abca816e5a8bd8f7f55cdd3f5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RemainingLowerOfActualFiniteRowFive.Variant55b09b9f39708b0d8e69ca1069d37f20498ed8abca816e5a8bd8f7f55cdd3f5e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"55b09b9f39708b0d8e69ca1069d37f20498ed8abca816e5a8bd8f7f55cdd3f5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/55b09b9f39708b0d8e69-SourceCurvatureFollowthrough.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualFiniteCesaroConsumer
import SourceFiveCesaroPrimitiveConsumer
import SourceCesaroSignedPairingConsumer

/-!
Concrete source-preserving applications of the checked 522/91 curvature consumer.
The finite row and the global first primitive are actual existing declarations.
Every arithmetic budget remains an explicit antecedent; no witness is supplied.
Direction: grwtsk contributors. Lean follow-through: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RemainingLowerOfActualFiniteRowFive.Variant55b09b9f39708b0d8e69ca1069d37f20498ed8abca816e5a8bd8f7f55cdd3f5e

set_option autoImplicit false
noncomputable section
namespace RH16CurvatureFollowthrough
open MeasureTheory Set
open scoped Interval
open RH16CesaroPrimitive RH16ActualFiniteCesaro RH16FiveCesaroConsumer
open FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteConsumer
open FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Same literal all-prime-power finite row, improved analytic constant at the same radius. -/
theorem remaining_lower_of_actual_finite_row_five (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hrow : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualFiniteSecondReadout t| ≤ M * (t - Real.log 2)) :
    -((522 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
  apply remainingAtomWork_lower_of_five_cesaro M A hM hA
  intro t ht
  rw [actualCesaroPrimitive_eq_finite_readout t ht]
  exact hrow t ht

/-- The unchanged original all-real obligation consumes this same finite-row hypothesis. -/
theorem estimate_of_actual_finite_row_five (M : ℝ) (hM : 0 ≤ M)
    (hrow : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualFiniteSecondReadout t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_five_cesaro_global M hM
  intro t ht
  rw [actualCesaroPrimitive_eq_finite_readout t ht]
  exact hrow t ht

/-- Literal finite arithmetic row replaces only the exact same-source primitive inside pairing. -/
theorem signed_pairing_eq_actual_finite_row (A : ℝ) (hA : 1 ≤ A) :
    RH16CesaroSignedPairing.signedCesaroPairing A =
      ∫ t in Real.log 2..2 * A,
        actualFiniteSecondReadout t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t := by
  unfold RH16CesaroSignedPairing.signedCesaroPairing
  apply intervalIntegral.integral_congr
  intro t ht
  have hlt : Real.log 2 ≤ t := by
    have hL : Real.log (2 : ℝ) ≤ 2 * A := by
      linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
    exact ((uIcc_of_le hL) ▸ ht).1
  dsimp only
  rw [actualCesaroPrimitive_eq_finite_readout t hlt]

/-- A supplied bounded first primitive gives twice that budget for the centered second primitive. -/
theorem cesaro_growth_of_global_first_primitive (MF : ℝ) (_hMF : 0 ≤ MF)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ MF)
    (t : ℝ) (ht : Real.log 2 ≤ t) :
    |actualCesaroPrimitive t| ≤ (2 * MF) * (t - Real.log 2) := by
  have hL : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hpoint (s : ℝ) (hs : s ∈ Ι (Real.log 2) t) :
      ‖centeredCriticalPrimitive s‖ ≤ 2 * MF := by
    have hsL : Real.log 2 ≤ s := ((uIoc_of_le ht) ▸ hs).1.le
    rw [Real.norm_eq_abs, centeredCriticalPrimitive]
    have h1 := abs_le.mp (hF s (hL.trans hsL))
    have h2 := abs_le.mp (hF (Real.log 2) hL)
    apply abs_le.mpr
    constructor
    · linarith [h1.1, h2.2]
    · linarith [h1.2, h2.1]
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const hpoint
  simpa only [actualCesaroPrimitive, Real.norm_eq_abs,
    abs_of_nonneg (sub_nonneg.mpr ht)] using hb

/-- Concrete global first-primitive application with explicit 1044/91 loss and radius 91. -/
theorem remaining_lower_of_global_first_primitive_five (MF A : ℝ) (hMF : 0 ≤ MF)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ MF) (hA : 91 ≤ A) :
    -((1044 / 91 : ℝ) * MF) ≤ remainingAtomWork A := by
  have h := remainingAtomWork_lower_of_five_cesaro (2 * MF) A (by positivity) hA
    (cesaro_growth_of_global_first_primitive MF hMF hF)
  convert h using 1
  ring

/-- Original all-real estimate; the unproved first-primitive witness remains explicit. -/
theorem estimate_of_global_first_primitive_five (MF : ℝ) (hMF : 0 ≤ MF)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ MF) :
    CorrelationAssembly.EstimateObligation := by
  exact estimate_of_five_cesaro_global (2 * MF) (by positivity)
    (cesaro_growth_of_global_first_primitive MF hMF hF)

/-- Weaker signed finite pairing alternative imposes no absolute M or MF hypothesis. -/
theorem estimate_of_actual_finite_signed_pairing (J : ℝ)
    (hpair : ∀ A : ℝ, 91 ≤ A → -J ≤
      ∫ t in Real.log 2..2 * A,
        actualFiniteSecondReadout t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t) :
    CorrelationAssembly.EstimateObligation := by
  apply RH16CesaroSignedPairing.estimate_of_signed_pairing J
  intro A hA
  rw [signed_pairing_eq_actual_finite_row A (by linarith)]
  exact hpair A hA
end RH16CurvatureFollowthrough
