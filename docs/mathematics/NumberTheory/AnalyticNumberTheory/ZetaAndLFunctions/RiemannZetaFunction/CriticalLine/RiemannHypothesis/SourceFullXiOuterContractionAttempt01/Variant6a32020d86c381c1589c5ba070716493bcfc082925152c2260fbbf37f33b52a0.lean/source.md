# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFullXiOuterContractionAttempt01.Variant6a32020d86c381c1589c5ba070716493bcfc082925152c2260fbbf37f33b52a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `955965e63b45899be14f8d9889579b17b54a8b66` · SHA-256 `a9debd0c1086afda7bfa5ef882f1a86dd06303ea194343e2117ef1e07cc5ec0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LiteralFullXiPairingEqContracted.Variant978e3877db4ff2ec3129ed20e34339953affbc3d5a19b2c631b8fdf93c7e8de4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"978e3877db4ff2ec3129ed20e34339953affbc3d5a19b2c631b8fdf93c7e8de4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LiteralFullXiPairingEqContracted.Variant978e3877db4ff2ec3129ed20e34339953affbc3d5a19b2c631b8fdf93c7e8de4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"978e3877db4ff2ec3129ed20e34339953affbc3d5a19b2c631b8fdf93c7e8de4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/followthrough2/contraction/SourceFullXiOuterContraction.attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceOuterPsiFubini
import SourceFullXiCesaroConsumer

/-!
Exact finite-box contraction of the complete actual Xi source, with the original
PLUS pairing sign, prime-two anchor and closed real moving range. All arithmetic
one-sided witnesses remain explicit. Research direction: grwtsk contributors.
Owner Fubini recovery and native application: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LiteralFullXiPairingEqContracted.Variant978e3877db4ff2ec3129ed20e34339953affbc3d5a19b2c631b8fdf93c7e8de4

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
```
