# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceSharpLedgerRadius.Variant1447c68ed435dd4567b8a4eaa6786ae13e6543a6e0e990ab1abae12131bc5f3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4bf05ef346bd8cec9d353998adb85ad0e83b728` · SHA-256 `f94ce5eb3769ec130f9f825173d3bd5714c59e25684bb6718998b692511bcf67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SharpDiagonalCostAntitone.Variant6831c4050f3c36d7ba9f8c989e16da620166bf0cb6519540a520f1d47d538c63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6831c4050f3c36d7ba9f8c989e16da620166bf0cb6519540a520f1d47d538c63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SharpDiagonalCostAntitone.Variant6831c4050f3c36d7ba9f8c989e16da620166bf0cb6519540a520f1d47d538c63","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"6831c4050f3c36d7ba9f8c989e16da620166bf0cb6519540a520f1d47d538c63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/sharp-radius-overlap-review/sharp-ledger-radius/SourceSharpLedgerRadius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSharpDiagonalRadius

/-! Real-radius propagation of the actual simultaneous source ledger budget.
Direction and conceptual origin: grwtsk contributors.
Source composition and formalization: OpenAI Codex assistance. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SharpDiagonalCostAntitone.Variant6831c4050f3c36d7ba9f8c989e16da620166bf0cb6519540a520f1d47d538c63

set_option autoImplicit false
noncomputable section
namespace RH16SharpLedgerRadius
open RH16ExactTailEnergy RH16ProperPowerCell RH16ProperPowerDiagonal
open RH16SharpDiagonalTail RH16SharpDiagonalLedgerConsumer RH16SharpDiagonalRadius
open RH16ExactOverlapSamplingConsumer RH16ExactReadoutConsumer
open FormalResearch.RiemannHypothesis SourcePairing SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction

/-- The actual diagonal cost decreases without rounding the admitted real radius. -/
theorem sharpDiagonalCost_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    sharpDiagonalCost A ≤ sharpDiagonalCost Q := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  have hA1 := hQ1.trans hQA
  have hlogA : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hd := tailEnergyCoefficient_antitone (by linarith : 0 < Q) hQA
  have hs := Real.sqrt_le_sqrt hd
  have hproper : powerTailBudget (⌊A ^ 2⌋₊ : ℝ) ≤
      powerTailBudget (⌊Q ^ 2⌋₊ : ℝ) := by
    have hQU : 1 ≤ ⌊Q ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
    have hAU : 1 ≤ ⌊A ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
    apply powerTailBudget_antitone
      (by change (1 : ℝ) ≤ ⌊Q ^ 2⌋₊; exact_mod_cast hQU)
      (by change (1 : ℝ) ≤ ⌊A ^ 2⌋₊; exact_mod_cast hAU)
    exact_mod_cast (Nat.floor_mono (by nlinarith : Q ^ 2 ≤ A ^ 2))
  have hprime : (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient A)) ≤
      (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) := by
    gcongr
  have hratio := log_cube_div_square_le hQ hQA
  have hprod := mul_le_mul hd hratio
    (by positivity : 0 ≤ Real.log A ^ 3 / A ^ 2) (tailEnergyCoefficient_pos Q).le
  have hshort : 16 * tailEnergyCoefficient A * Real.log A ^ 3 / (3 * A ^ 2) ≤
      16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
    calc
      _ = (16 / 3) * (tailEnergyCoefficient A * (Real.log A ^ 3 / A ^ 2)) := by ring
      _ ≤ (16 / 3) * (tailEnergyCoefficient Q * (Real.log Q ^ 3 / Q ^ 2)) :=
        mul_le_mul_of_nonneg_left hprod (by norm_num)
      _ = _ := by ring
  unfold sharpDiagonalCost
  linarith

/-- This is a regional maximum, rather than a sum of alternative radius costs. -/
theorem sharpSamplingLedgerCost_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    exactSamplingLedgerCost (sharpDiagonalCost A) A ≤
      exactSamplingLedgerCost (sharpDiagonalCost Q) Q := by
  have hQpos : 0 < Q := by linarith
  have hApos : 0 < A := by linarith
  have hδ := tailEnergyCoefficient_pos Q
  have hC : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  have hd := tailEnergyCoefficient_antitone (by linarith : 0 < Q) hQA
  have hc := sharpDiagonalCost_antitone hQ hQA
  have hlog : 192 * tailEnergyCoefficient A / A ≤ 192 * tailEnergyCoefficient Q / Q := by
    calc
      _ ≤ 192 * tailEnergyCoefficient Q / A := by gcongr
      _ ≤ _ := div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  have hplain : 64 * (Real.log 4 + 4) * tailEnergyCoefficient A ≤
      64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by gcongr
  unfold exactSamplingLedgerCost
  linarith

theorem sharpSamplingLedgerCost_lt_1729 (Q : ℝ) (hQ : 91 ≤ Q) :
    exactSamplingLedgerCost (sharpDiagonalCost Q) Q < 1729 :=
  (sharpSamplingLedgerCost_antitone (by norm_num : (91 : ℝ) ≤ 91) hQ).trans_lt
    exactSamplingLedgerCost_ninety_one_lt_1729

/-- A later readout radius retains its own original finite prefix. -/
theorem all_real_lower_with_fixed_ledger_cap (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1729)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  have hc := sharpSamplingLedgerCost_lt_1729 Q hQ
  have hb : exactReadoutResidualBudget D rho Q (sharpDiagonalCost Q) ≤
      max 0 (D + rho + 1729) := by
    unfold exactReadoutResidualBudget
    exact max_le_max le_rfl (by linarith)
  intro A hA
  apply le_trans ?_ (all_real_lower_of_readout D rho Q hQ hreadout A hA)
  apply min_le_min le_rfl
  linarith

end RH16SharpLedgerRadius
```
