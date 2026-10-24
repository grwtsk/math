-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SquarefreeLedgerCostAntitone.Variant4a0984079fce6c822cb834491629d8be1a7c73091270d5b4445646320040843e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a0984079fce6c822cb834491629d8be1a7c73091270d5b4445646320040843e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SquarefreeLedgerCostAntitone.Variant4a0984079fce6c822cb834491629d8be1a7c73091270d5b4445646320040843e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4a0984079fce6c822cb834491629d8be1a7c73091270d5b4445646320040843e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/squarefree-ledger-radius-native/attempt01/SourceSquarefreeLedgerRadius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeDirectEstimate
import SourceSharpLedgerRadius

/-!
Propagate the actual squarefree sampling ledger cost over the admitted real
radius, then apply one fixed 1305 cap to the original source and strict prefix.
Direction and conceptual origin: grwtsk contributors.
Source construction and formalization: Codex graph-review.
Prior exact energy, diagonal monotonicity, logarithm and source consumers reused.
The uniform full signed readout remains a supplied hypothesis.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SquarefreeLedgerCostAntitone.Variant4a0984079fce6c822cb834491629d8be1a7c73091270d5b4445646320040843e

set_option autoImplicit false
noncomputable section
namespace RH16SquarefreeLedgerRadius
open RH16SquarefreeLedger RH16SquarefreeDirectEstimate RH16SharpLedgerRadius
open RH16SharpDiagonalRadius RH16SharpDiagonalLedgerConsumer RH16ExactTailEnergy
open FormalResearch.RiemannHypothesis SourcePairing SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction

/-- The actual simultaneous ledger cost decreases over admitted real radii. -/
theorem squarefreeLedgerCost_antitone {Q A : Real} (hQ : 91 <= Q) (hQA : Q <= A) :
    squarefreeLedgerCost A <= squarefreeLedgerCost Q := by
  have hQpos : 0 < Q := by linarith
  have hApos : 0 < A := by linarith
  have hC : 0 <= Real.log 4 := Real.log_nonneg (by norm_num)
  have hdelta := tailEnergyCoefficient_pos Q
  have hd := tailEnergyCoefficient_antitone hQpos hQA
  have hc := sharpDiagonalCost_antitone hQ hQA
  have hl : 144 * tailEnergyCoefficient A / A <=
      144 * tailEnergyCoefficient Q / Q := by
    calc
      _ <= 144 * tailEnergyCoefficient Q / A := by gcongr
      _ <= _ := div_le_div_of_nonneg_left (by positivity) hQpos hQA
  have hp : 48 * (Real.log 4 + 4) * tailEnergyCoefficient A <=
      48 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by gcongr
  unfold squarefreeLedgerCost
  calc
    _ = sharpDiagonalCost A + 144 * tailEnergyCoefficient A / A +
      48 * (Real.log 4 + 4) * tailEnergyCoefficient A := by ring
    _ <= sharpDiagonalCost Q + 144 * tailEnergyCoefficient Q / Q +
      48 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by linarith
    _ = _ := by ring

/-- Exact source specialization; elementary logarithm and energy facts reused. -/
theorem squarefreeLedgerCost_ninety_one_lt_1305 : squarefreeLedgerCost 91 < 1305 := by
  have hd : tailEnergyCoefficient 91 < (2449 / 500 : Real) := by
    rw [tailEnergyCoefficient_ninety_one]
    norm_num
  have hC : Real.log 4 + 4 < (6733 / 1250 : Real) := by
    have hp := Real.log_pow (2 : Real) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have hp : 48 * (Real.log 4 + 4) * tailEnergyCoefficient 91 <=
      (48 : Real) * (6733 / 1250) * (2449 / 500) := by
    have hm := mul_le_mul hC.le hd.le (tailEnergyCoefficient_pos 91).le
      (by norm_num : (0 : Real) <= 6733 / 1250)
    nlinarith
  have hl : 144 * tailEnergyCoefficient 91 / 91 <=
      (144 : Real) * (2449 / 500) / 91 := by nlinarith
  have hc := sharpDiagonalCost_ninety_one_lt_thirty
  unfold squarefreeLedgerCost
  rw [show sharpDiagonalCost 91 + tailEnergyCoefficient 91 *
    (144 / 91 + 48 * (Real.log 4 + 4)) =
      sharpDiagonalCost 91 + 144 * tailEnergyCoefficient 91 / 91 +
        48 * (Real.log 4 + 4) * tailEnergyCoefficient 91 by ring]
  linarith

/-- No rounding of a later supplied readout radius is needed. -/
theorem squarefreeLedgerCost_lt_1305 (Q : Real) (hQ : 91 <= Q) :
    squarefreeLedgerCost Q < 1305 :=
  (squarefreeLedgerCost_antitone (by norm_num : (91 : Real) <= 91) hQ).trans_lt
    squarefreeLedgerCost_ninety_one_lt_1305

/-- The fixed numerical cost applies to the original complete ledger. -/
theorem actual_ledger_error_tail_lt_1305 (Q : Real) (hQ : 91 <= Q) :
    forall A : Real, Q <= A -> abs (betaMainLedger A + independentMainTerm A) < 1305 := by
  intro A hQA
  exact (actual_ledger_error_tail_squarefree Q hQ A hQA).trans_lt
    (squarefreeLedgerCost_lt_1305 Q hQ)

/-- The original strict finite prefix stays at the supplied real radius Q. -/
theorem all_real_lower_with_fixed_squarefree_cap (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
        (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
        (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1305)) <=
          sourceQuadraticValue explicitSecondDerivative A := by
  have hc := squarefreeLedgerCost_lt_1305 Q hQ
  have hb : squarefreeResidualBudget D rho Q <= max 0 (D + rho + 1305) := by
    unfold squarefreeResidualBudget
    exact max_le_max le_rfl (by linarith)
  intro A hA
  apply le_trans ?_ (all_real_lower_of_readout_squarefree D rho Q hQ hreadout A hA)
  apply min_le_min le_rfl
  linarith

/-- One fixed cap on the negative defect of the original source family. -/
theorem actual_negative_defect_cap_fixed_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      max 0 (-sourceQuadraticValue explicitSecondDerivative A) <=
        max 0 (-min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
          (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
          (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1305))) := by
  intro A hA
  exact max_le_max le_rfl (neg_le_neg
    (all_real_lower_with_fixed_squarefree_cap D rho Q hQ hreadout A hA))

/-- Literal #16 with the fixed ledger cap, using direct source recovery. -/
theorem estimate_of_readout_fixed_squarefree_cap (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    CorrelationAssembly.EstimateObligation := by
  refine ⟨min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
    (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
    (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1305)), ?_⟩
  exact all_real_lower_with_fixed_squarefree_cap D rho Q hQ hreadout

end RH16SquarefreeLedgerRadius
