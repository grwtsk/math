# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceFourNineLedger.Variantc980269eece2bbad2f6fd187a847ebdeac4cb2047089b2f32f4d5568fa5943bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e28f15a645b8dd34940c3b2e29a838b2d32ce7f` · SHA-256 `725bde57c52dd50d063e7b960e61e8842b391c149e56bf9c5ae096a117879369`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.FourNineLedgerCost.Variante17bd99f40a6ecfc5c77f6c530885c66fb2d8e8b74ff1c21cad1b1a4e377b3d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e17bd99f40a6ecfc5c77f6c530885c66fb2d8e8b74ff1c21cad1b1a4e377b3d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.FourNineLedgerCost.Variante17bd99f40a6ecfc5c77f6c530885c66fb2d8e8b74ff1c21cad1b1a4e377b3d1","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"e17bd99f40a6ecfc5c77f6c530885c66fb2d8e8b74ff1c21cad1b1a4e377b3d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/four-nine-native/ledger-attempt01/SourceFourNineLedger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFourNineSampling
import SourceSharpLedgerRadius
import SourceSquarefreeDirectEstimate

/-!
Apply actual four-nine support to the full original source ledger at every real
radius, and to the unchanged strict prime-power prefix and literal #16 target.
Direction: grwtsk contributors. Native composition: Codex graph-review.
Prior energy/diagonal/logarithm/quadratic results retain their proof credit.
The complete uniform signed source readout remains a supplied hypothesis.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.FourNineLedgerCost.Variante17bd99f40a6ecfc5c77f6c530885c66fb2d8e8b74ff1c21cad1b1a4e377b3d1

set_option autoImplicit false
noncomputable section
namespace RH16FourNineLedger
open RH16FourNineSampling RH16ExactTailEnergy RH16ExactSamplingTail
open RH16SharpDiagonalLedgerConsumer RH16SharpLedgerRadius RH16SharpDiagonalRadius
open RH16ExactOverlapConsumer
open FormalResearch.RiemannHypothesis
open SourceSamplingLedger SourceSamplingCoefficients SourceSamplingPointwise
open SourcePairing SourceShortSamplingInventory SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction EstimateBetaSourceRecombination
open EstimateVaughanTranslationGate EstimateVaughanSource

def fourNineLedgerCost (Q : Real) : Real :=
  sharpDiagonalCost Q + tailEnergyCoefficient Q *
    (128 / Q + 48 / Q ^ 2 + (Real.log 4 + 4) * (128 / 3 + 16 / Q))

theorem actual_ledger_error_tail_four_nine (Q : Real) (hQ : 91 <= Q) :
    forall A : Real, Q <= A -> abs (betaMainLedger A + independentMainTerm A) <=
      fourNineLedgerCost Q := by
  intro A hQA
  have hQ1 : (1 : Real) <= Q := by linarith
  have hdelta := tailEnergyCoefficient_pos Q
  have hA : 1 <= A := hQ1.trans hQA
  have hC : 0 <= Real.log 4 := Real.log_nonneg (by norm_num)
  have hd := actual_diagonal_error_tail Q A hQ hQA
  have hl := actual_shortLog_error_tail_four_nine hQ1 hQA
  have hp := actual_shortPlain_error_tail_four_nine hQ1 hQA
  have hl' : abs (shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2)) <=
      tailEnergyCoefficient Q * (128 / Q + 48 / Q ^ 2) := by
    apply hl.trans
    gcongr
  have hp' : abs (shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) <=
      (Real.log 4 + 4) * tailEnergyCoefficient Q * (128 / 3 + 16 / Q) := by
    apply hp.trans
    gcongr
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  have hd' : abs (typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : Real)) <= sharpDiagonalCost Q := hd
  unfold fourNineLedgerCost
  rw [show sharpDiagonalCost Q + tailEnergyCoefficient Q *
      (128 / Q + 48 / Q ^ 2 + (Real.log 4 + 4) * (128 / 3 + 16 / Q)) =
      sharpDiagonalCost Q + tailEnergyCoefficient Q * (128 / Q + 48 / Q ^ 2) +
      (Real.log 4 + 4) * tailEnergyCoefficient Q * (128 / 3 + 16 / Q) by ring]
  apply abs_le.mpr
  constructor <;> linarith only [(abs_le.mp hd').1, (abs_le.mp hd').2,
    (abs_le.mp hl').1, (abs_le.mp hl').2, (abs_le.mp hp').1, (abs_le.mp hp').2]

theorem fourNineLedgerCost_antitone {Q A : Real} (hQ : 91 <= Q) (hQA : Q <= A) :
    fourNineLedgerCost A <= fourNineLedgerCost Q := by
  have hQpos : 0 < Q := by linarith
  have hApos : 0 < A := by linarith
  have hC : 0 <= Real.log 4 := Real.log_nonneg (by norm_num)
  have hd := tailEnergyCoefficient_antitone hQpos hQA
  have hc := sharpDiagonalCost_antitone hQ hQA
  have hf : 128 / A + 48 / A ^ 2 + (Real.log 4 + 4) * (128 / 3 + 16 / A) <=
      128 / Q + 48 / Q ^ 2 + (Real.log 4 + 4) * (128 / 3 + 16 / Q) := by
    gcongr
  unfold fourNineLedgerCost
  apply add_le_add hc
  exact mul_le_mul hd hf (by positivity) (tailEnergyCoefficient_pos Q).le

theorem fourNineLedgerCost_ninety_one_lt_1168 : fourNineLedgerCost 91 < 1168 := by
  have hd : tailEnergyCoefficient 91 < (2449 / 500 : Real) := by
    rw [tailEnergyCoefficient_ninety_one]
    norm_num
  have hC : Real.log 4 + 4 < (6733 / 1250 : Real) := by
    have hp := Real.log_pow (2 : Real) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have hnonneg : 0 <= Real.log 4 := Real.log_nonneg (by norm_num)
  have hf : (128 : Real) / 91 + 48 / 91 ^ 2 + (Real.log 4 + 4) * (128 / 3 + 16 / 91) <=
      128 / 91 + 48 / 91 ^ 2 + (6733 / 1250) * (128 / 3 + 16 / 91) := by nlinarith
  have hm := mul_le_mul hd.le hf (by positivity)
    (by norm_num : (0 : Real) <= 2449 / 500)
  have hc := sharpDiagonalCost_ninety_one_lt_thirty
  unfold fourNineLedgerCost
  linarith

theorem fourNineLedgerCost_lt_1168 (Q : Real) (hQ : 91 <= Q) :
    fourNineLedgerCost Q < 1168 :=
  (fourNineLedgerCost_antitone (by norm_num : (91 : Real) <= 91) hQ).trans_lt
    fourNineLedgerCost_ninety_one_lt_1168

theorem actual_ledger_error_tail_lt_1168 (Q : Real) (hQ : 91 <= Q) :
    forall A : Real, Q <= A -> abs (betaMainLedger A + independentMainTerm A) < 1168 := by
  intro A hQA
  exact (actual_ledger_error_tail_four_nine Q hQ A hQA).trans_lt
    (fourNineLedgerCost_lt_1168 Q hQ)

theorem residual_tail_of_readout_four_nine (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, Q <= A -> mertensResidual A <= max 0 (D + rho + fourNineLedgerCost Q) := by
  intro A hQA
  have hA : (1 : Real) <= A := by linarith
  have hr := hreadout A hQA
  have hl := (abs_le.mp (actual_ledger_error_tail_four_nine Q hQ A hQA)).2
  rw [actual_residual_decomposition A hA]
  apply le_trans ?_ (le_max_right _ _)
  linarith

theorem all_real_lower_of_readout_four_nine (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
        (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
        (archimedeanMultiplier 0 - 2 * max 0 (D + rho + fourNineLedgerCost Q)) <=
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hQA : Q <= A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_tail_of_readout_four_nine D rho Q hQ hreadout A hQA))
  · have hprefix := prime_contribution_le_finite_budget A Q hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

theorem all_real_lower_with_fixed_four_nine_cap (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
        (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
        (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1168)) <=
          sourceQuadraticValue explicitSecondDerivative A := by
  have hc := fourNineLedgerCost_lt_1168 Q hQ
  have hb : max 0 (D + rho + fourNineLedgerCost Q) <= max 0 (D + rho + 1168) :=
    max_le_max le_rfl (by linarith)
  intro A hA
  apply le_trans ?_ (all_real_lower_of_readout_four_nine D rho Q hQ hreadout A hA)
  apply min_le_min le_rfl
  linarith

theorem estimate_of_readout_fixed_four_nine_cap (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    CorrelationAssembly.EstimateObligation := by
  refine ⟨min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
    (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
    (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1168)), ?_⟩
  exact all_real_lower_with_fixed_four_nine_cap D rho Q hQ hreadout

end RH16FourNineLedger
```
