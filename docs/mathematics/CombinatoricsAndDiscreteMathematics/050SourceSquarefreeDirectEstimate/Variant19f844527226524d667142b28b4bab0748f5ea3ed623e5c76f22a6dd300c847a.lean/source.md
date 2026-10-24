# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.050SourceSquarefreeDirectEstimate.Variant19f844527226524d667142b28b4bab0748f5ea3ed623e5c76f22a6dd300c847a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98f85e1574947295e552540ca28ffce2cfb0a59e` · SHA-256 `ce32253451ebe84a7a6b3cb04aaffc8d6631dcfd4d9cf0a541ca6905ef847382`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AllRealLowerOfReadoutSquarefree.Variant352db66b66680d6798dd81c8491c37f0694441faa590f467254657f4082aa3ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"352db66b66680d6798dd81c8491c37f0694441faa590f467254657f4082aa3ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AllRealLowerOfReadoutSquarefree.Variant352db66b66680d6798dd81c8491c37f0694441faa590f467254657f4082aa3ae","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"352db66b66680d6798dd81c8491c37f0694441faa590f467254657f4082aa3ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-full-zero-log-affine/source-copies/050-SourceSquarefreeDirectEstimate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeLedger

/-!
Apply the new actual source ledger through the original direct quadratic
consumer and original finite prefix at the same radius. This removes the
inherited smooth-defect transition cost from the exported conditional cap.
Direction: grwtsk contributors. Native source composition: Codex root.
All underlying source, finite-prefix and exact quadratic proofs are reused.
The uniform full signed readout is still a supplied mathematical hypothesis.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AllRealLowerOfReadoutSquarefree.Variant352db66b66680d6798dd81c8491c37f0694441faa590f467254657f4082aa3ae

set_option autoImplicit false
noncomputable section
namespace RH16SquarefreeDirectEstimate
open RH16SquarefreeLedger RH16ExactOverlapConsumer
open FormalResearch.RiemannHypothesis
open SourcePairing SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction

/-- Exact original all-real lower constant with the unchanged strict prefix. -/
theorem all_real_lower_of_readout_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
        (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
        (archimedeanMultiplier 0 - 2 * squarefreeResidualBudget D rho Q) <=
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hQA : Q <= A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_tail_of_readout_squarefree D rho Q hQ hreadout A hQA))
  · have hprefix := prime_contribution_le_finite_budget A Q hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

/-- One fixed negative-defect cap on the SAME actual source family. -/
theorem actual_negative_defect_cap_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      max 0 (-sourceQuadraticValue explicitSecondDerivative A) <=
        max 0 (-min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
          (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
          (archimedeanMultiplier 0 - 2 * squarefreeResidualBudget D rho Q)) := by
  intro A hA
  exact max_le_max le_rfl (neg_le_neg
    (all_real_lower_of_readout_squarefree D rho Q hQ hreadout A hA))

/-- Literal #16 estimate through direct recovery, with no intermediate cost. -/
theorem estimate_of_readout_squarefree_direct (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    CorrelationAssembly.EstimateObligation := by
  refine ⟨min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
    (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
    (archimedeanMultiplier 0 - 2 * squarefreeResidualBudget D rho Q), ?_⟩
  exact all_real_lower_of_readout_squarefree D rho Q hQ hreadout

end RH16SquarefreeDirectEstimate
```
