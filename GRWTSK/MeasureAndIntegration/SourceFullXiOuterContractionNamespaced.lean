-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LiteralFullXiPairingEqContracted.Variantfbcd969fcfd60fad385badabc76a199290aff71d6b52c60b088b471652741095","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbcd969fcfd60fad385badabc76a199290aff71d6b52c60b088b471652741095","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LiteralFullXiPairingEqContracted.Variantfbcd969fcfd60fad385badabc76a199290aff71d6b52c60b088b471652741095","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fbcd969fcfd60fad385badabc76a199290aff71d6b52c60b088b471652741095","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791325331929247000/SourceFullXiOuterContraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceOuterPsiFubini
import SourceFullXiCesaroConsumer

/-!
Exact finite-box contraction of the complete actual Xi source, with the original
PLUS pairing sign, prime-two anchor and closed real moving range. All arithmetic
one-sided witnesses remain explicit. Research direction: grwtsk contributors.
Owner Fubini recovery and native application: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LiteralFullXiPairingEqContracted.Variantfbcd969fcfd60fad385badabc76a199290aff71d6b52c60b088b471652741095

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceFullXiOuterContraction

open MeasureTheory
open SourceActualPsiInverseSquare SourceRawPsiPrimitiveAdapter
open SourceActualPrimitiveFiniteConsumer SourceFullXiCesaroConsumer SourceOuterPsiFubini
open SourcePositiveSampling RH16ActualPsiNegativeBlock RH16CesaroKernel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

theorem literal_full_Xi_pairing_eq_contracted (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      shiftedPsiFullPrimitive t * deriv (deriv (cesaroWeight A)) t) =
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ = ∫ t in Real.log 2..2 * A,
        actualFiniteSecondReadout t * deriv (deriv (cesaroWeight A)) t := by
      apply intervalIntegral.integral_congr
      intro t ht
      have hlt : Real.log 2 ≤ t := ((Set.uIcc_of_le hL) ▸ ht).1
      dsimp only
      rw [shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t hlt]
    _ = _ := actualFiniteSecondReadout_outer_fubini A hA

theorem actual_signed_pairing_eq_contracted (A : ℝ) (hA : 1 ≤ A) :
    RH16CesaroSignedPairing.signedCesaroPairing A =
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  rw [signed_pairing_eq_literalXiKernel A hA]
  exact literal_full_Xi_pairing_eq_contracted A hA

theorem remaining_lower_of_contracted_pairing (J A : ℝ) (hA : 91 ≤ A)
    (hpair : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    -J ≤ SourceFirstAtomSignedWork.remainingAtomWork A := by
  apply RH16CesaroSignedPairing.remainingAtomWork_lower_of_signed_pairing J A hA
  rw [actual_signed_pairing_eq_contracted A (by linarith)]
  exact hpair

theorem estimate_of_contracted_pairing (J : ℝ)
    (hpair : ∀ A : ℝ, 91 ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    CorrelationAssembly.EstimateObligation := by
  apply RH16CesaroSignedPairing.estimate_of_signed_pairing J
  intro A hA
  rw [actual_signed_pairing_eq_contracted A (by linarith)]
  exact hpair A hA

end FormalResearch.RiemannHypothesis.SourceFullXiOuterContraction
