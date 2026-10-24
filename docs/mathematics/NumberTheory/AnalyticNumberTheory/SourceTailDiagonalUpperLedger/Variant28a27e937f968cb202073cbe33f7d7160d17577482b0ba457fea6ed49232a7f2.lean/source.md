# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceTailDiagonalUpperLedger.Variant28a27e937f968cb202073cbe33f7d7160d17577482b0ba457fea6ed49232a7f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16d823bb14622a51dabe63ea768c6f00ddd465aa` · SHA-256 `fce4ca71378b93125767da8518ca62e4bbb444a447a79c1b6e896ba1227e2649`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SharpPrimeCost.Variant73e96371e5b8bad180c7177a1dc4c27648f051d6ac5cceac77c6bc95c8648add","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73e96371e5b8bad180c7177a1dc4c27648f051d6ac5cceac77c6bc95c8648add","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SharpPrimeCost.Variant73e96371e5b8bad180c7177a1dc4c27648f051d6ac5cceac77c6bc95c8648add","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"73e96371e5b8bad180c7177a1dc4c27648f051d6ac5cceac77c6bc95c8648add","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/tail-diagonal-upper-ledger/author-replay/SourceTailDiagonalUpperLedger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSharpDiagonalLedgerConsumer

/-!
The actual ledger needs only an upper diagonal estimate in the readout-to-residual
direction. Favorable signed proper-power atoms can therefore remain signed.
Direction and conceptual origin: grwtsk contributors.
Source consumer construction and native formalization: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SharpPrimeCost.Variant73e96371e5b8bad180c7177a1dc4c27648f051d6ac5cceac77c6bc95c8648add

set_option autoImplicit false
noncomputable section
namespace RH16TailDiagonalUpperLedger
open RH16ExactTailEnergy RH16ExactSamplingTail RH16ExactReadoutConsumer
open RH16SharpDiagonalTail RH16ProperPowerDiagonal
open RH16ExactOverlapConsumer RH16ExactOverlapSamplingConsumer
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDiagonalMainTerm SourceSamplingLedger
open SourceShortSamplingInventory SourceSamplingCoefficients SourceDiagonalPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanTranslationGate EstimateMertensResidual
open EstimateBetaSourceRecombination
open EstimateVaughanSource EstimateTailReduction

def sharpPrimeCost (Q : ℝ) : ℝ :=
  (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) +
    16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2)

/-- Only this ledger direction consumes an upper proper-power correction. -/
theorem actual_diagonal_upper_of_proper_upper (sigma Q A : ℝ)
    (hQ : 91 ≤ Q) (hQA : Q ≤ A)
    (hproper : typeTwoDiagonal A - retainedPrimeDiagonal A ≤ sigma) :
    typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ) ≤ sigma + sharpPrimeCost Q := by
  have hp := (abs_le.mp (retainedPrimeDiagonal_tail_error_of_primeLogError
    (Real.log 4 + 4) (by positivity) actual_primeLogError_fixed hQ hQA)).2
  unfold sharpPrimeCost
  change typeTwoDiagonal A + diagonalMainCoefficient A * A -
    Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ _
  linarith

/-- The signed diagonal is paid once; only the two identified sampling errors use abs. -/
theorem actual_ledger_upper_of_diagonal_tail (C_D Q : ℝ) (hQ : 1 ≤ Q)
    (hdiag : ∀ A : ℝ, Q ≤ A →
      typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ) ≤ C_D) :
    ∀ A : ℝ, Q ≤ A → betaMainLedger A + independentMainTerm A ≤
      exactSamplingLedgerCost C_D Q := by
  intro A hQA
  have hd := hdiag A hQA
  have hlog := (abs_le.mp (actual_shortLog_error_tail hQ hQA)).2
  have hplain := (abs_le.mp (actual_shortPlain_error_tail hQ hQA)).1
  have hδ := tailEnergyCoefficient_pos Q
  have hmon : 192 * tailEnergyCoefficient Q / A ≤
      192 * tailEnergyCoefficient Q / Q :=
    div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  unfold exactSamplingLedgerCost
  linarith

theorem residual_tail_of_upper_diagonal_and_readout (D rho C_D Q : ℝ) (hQ : 91 ≤ Q)
    (hdiag : ∀ A : ℝ, Q ≤ A →
      typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ) ≤ C_D)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, Q ≤ A →
      mertensResidual A ≤ exactReadoutResidualBudget D rho Q C_D := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  intro A hQA
  have hr := hreadout A hQA
  have hl := actual_ledger_upper_of_diagonal_tail C_D Q hQ1 hdiag A hQA
  rw [actual_residual_decomposition A (hQ1.trans hQA)]
  apply le_trans ?_ (le_max_right _ _)
  linarith

/-- The explicit prime cost is retained through the terminal original-source consumer. -/
theorem estimate_of_proper_upper_and_readout (D rho sigma Q : ℝ) (hQ : 91 ≤ Q)
    (hproper : ∀ A : ℝ, Q ≤ A →
      typeTwoDiagonal A - retainedPrimeDiagonal A ≤ sigma)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    ⟨exactReadoutResidualBudget D rho Q (sigma + sharpPrimeCost Q),
      exactReadoutResidualBudget_nonneg _ _ _ _, Q, by linarith,
      residual_tail_of_upper_diagonal_and_readout D rho _ Q hQ
        (fun A hQA => actual_diagonal_upper_of_proper_upper sigma Q A hQ hQA
          (hproper A hQA)) hreadout⟩

theorem all_real_lower_of_proper_upper_and_readout (D rho sigma Q : ℝ) (hQ : 91 ≤ Q)
    (hproper : ∀ A : ℝ, Q ≤ A →
      typeTwoDiagonal A - retainedPrimeDiagonal A ≤ sigma)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 -
          2 * exactReadoutResidualBudget D rho Q (sigma + sharpPrimeCost Q)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hQA : Q ≤ A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_tail_of_upper_diagonal_and_readout D rho _ Q hQ
        (fun B hQB => actual_diagonal_upper_of_proper_upper sigma Q B hQ hQB
          (hproper B hQB)) hreadout A hQA))
  · have hprefix := prime_contribution_le_finite_budget A Q hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

end RH16TailDiagonalUpperLedger
```
