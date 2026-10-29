-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateBetaSourceRecombination.Variant24e57d682efc532d2ca0828e84202f01d900228a5cc9fc96a40d8ea65556a67c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24e57d682efc532d2ca0828e84202f01d900228a5cc9fc96a40d8ea65556a67c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.EstimateBetaSourceRecombination.Variant24e57d682efc532d2ca0828e84202f01d900228a5cc9fc96a40d8ea65556a67c","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"24e57d682efc532d2ca0828e84202f01d900228a5cc9fc96a40d8ea65556a67c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh16-translation-gate/tests/rh_estimate_beta_centering_recombination.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaSourceRecombination


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateBetaSourceRecombination.Variant24e57d682efc532d2ca0828e84202f01d900228a5cc9fc96a40d8ea65556a67c

set_option autoImplicit false

open ArithmeticFunction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering EstimateBetaSourceRecombination
open EstimateVaughanSource EstimateVaughanTranslationGate EstimateMertensResidual
open EstimateTypeTwoLogBlocks

example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, beta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (((H/d : ℕ) : ℝ)-((L/d : ℕ) : ℝ)) := beta_interval_eq_quotients U L H hU hUL hLH

example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, beta U n) =
      -alpha U * ((H : ℝ)-(L : ℝ)) -
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d :=
  beta_interval_eq_mean_discrepancy U L H hU hUL hLH

example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, centeredBeta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d :=
  centeredBeta_interval_eq_discrepancy U L H hU hUL hLH

example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |∑ n ∈ Finset.Ioc L H, centeredBeta U n| ≤
      ∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ)| := centeredBeta_interval_abs_le U L H hU hUL hLH

example (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = centeredTypeTwoOffDiagonal A -
      alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A :=
  typeTwoOffDiagonal_eq_centered_sub_mean A hA

example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = centeredTypeTwoOffDiagonal A + betaMainLedger A :=
  mertensResidual_eq_centered_add_betaMain A hA

example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (∑ c ∈ logCells A, centeredTypeTwoLogBlock A c) +
      betaMainLedger A := mertensResidual_eq_centered_blocks_add_betaMain A hA

example (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : p.Prime) :
    (longOffDiagonalPairs A).filter (fun q ↦ q.1*q.2 = p^2) = ∅ :=
  prime_square_offDiagonal_filter_empty A hA p hp
