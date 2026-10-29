-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCesaroPrimitiveEqLiteralXiKernel.Variant7ba8c912e4c13860afd6c8bce64817cfb5d75f06d3b183c5d19e1532587984ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ba8c912e4c13860afd6c8bce64817cfb5d75f06d3b183c5d19e1532587984ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCesaroPrimitiveEqLiteralXiKernel.Variant7ba8c912e4c13860afd6c8bce64817cfb5d75f06d3b183c5d19e1532587984ea","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7ba8c912e4c13860afd6c8bce64817cfb5d75f06d3b183c5d19e1532587984ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791324811613100000/SourceFullXiCesaroConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRawPsiPrimitiveAdapter
import SourceCesaroPrimitiveConsumer
import SourceCurvatureFollowthrough

/-!
Concrete application of the full closed-psi adapter to the independent actual
Cesaro source. The full signed Xi kernel, true gamma and complementary term are
retained. Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCesaroPrimitiveEqLiteralXiKernel.Variant7ba8c912e4c13860afd6c8bce64817cfb5d75f06d3b183c5d19e1532587984ea

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceFullXiCesaroConsumer

open MeasureTheory
open scoped Interval
open RH16CesaroPrimitive RH16ActualPsiNegativeBlock
open SourceActualPrimitiveFiniteConsumer SourceRawPsiPrimitiveAdapter
open SourceActualPsiInverseSquare SourceMangoldtAbel
open SourceFirstAtomSignedWork RH16CurvatureFollowthrough
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- The original independently defined second primitive equals the complete literal Xi kernel. -/
theorem actualCesaroPrimitive_eq_literalXiKernel (t : ℝ) (ht : Real.log 2 ≤ t) :
    actualCesaroPrimitive t = shiftedPsiFullPrimitive t := by
  exact (actual_nested_primitive_eq_finite_readout t ht).trans
    (shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t ht).symm

/-- Exact source reconstruction retains the full complementary weighted primitive. -/
theorem actualCesaroPrimitive_eq_full_signed_reconstruction (t : ℝ) (ht : Real.log 2 ≤ t) :
    actualCesaroPrimitive t =
      4 * Real.exp (t / 2) * (mangoldtLogError t + Real.eulerMascheroniConstant -
        shiftedActualChebyshev (Real.exp t) / Real.exp t) - shiftedPsiSecondPrimitive t := by
  rw [actualCesaroPrimitive_eq_literalXiKernel t ht, shiftedPsiFullPrimitive_eq t ht]

/-- Same full Xi arithmetic budget, improved curvature constant at the unchanged radius 91. -/
theorem remaining_lower_of_literal_full_Xi_kernel_budget (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |shiftedPsiFullPrimitive t| ≤ M * (t - Real.log 2)) :
    -((522 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
  apply remaining_lower_of_actual_finite_row_five M A hM hA
  intro t ht
  rw [← shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t ht]
  exact hG t ht

/-- A future complete Xi-kernel arithmetic witness instantiates the improved all-real consumer. -/
theorem estimate_of_literal_full_Xi_kernel_budget (M : ℝ) (hM : 0 ≤ M)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |shiftedPsiFullPrimitive t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_actual_finite_row_five M hM
  intro t ht
  rw [← shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t ht]
  exact hG t ht

/-- Exact full signed source pairing retains the PLUS second curvature kernel. -/
theorem signed_pairing_eq_literalXiKernel (A : ℝ) (hA : 1 ≤ A) :
    RH16CesaroSignedPairing.signedCesaroPairing A =
      ∫ t in Real.log 2..2 * A,
        shiftedPsiFullPrimitive t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t := by
  unfold RH16CesaroSignedPairing.signedCesaroPairing
  apply intervalIntegral.integral_congr
  intro t ht
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlt : Real.log 2 ≤ t := ((Set.uIcc_of_le hL) ▸ ht).1
  dsimp only
  rw [actualCesaroPrimitive_eq_literalXiKernel t hlt]

/-- The weaker signed full-kernel alternative requires no absolute primitive bound. -/
theorem estimate_of_literal_full_Xi_signed_pairing (J : ℝ)
    (hpair : ∀ A : ℝ, 91 ≤ A → -J ≤
      ∫ t in Real.log 2..2 * A,
        shiftedPsiFullPrimitive t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t) :
    CorrelationAssembly.EstimateObligation := by
  apply RH16CesaroSignedPairing.estimate_of_signed_pairing J
  intro A hA
  rw [signed_pairing_eq_literalXiKernel A (by linarith)]
  exact hpair A hA

end FormalResearch.RiemannHypothesis.SourceFullXiCesaroConsumer
