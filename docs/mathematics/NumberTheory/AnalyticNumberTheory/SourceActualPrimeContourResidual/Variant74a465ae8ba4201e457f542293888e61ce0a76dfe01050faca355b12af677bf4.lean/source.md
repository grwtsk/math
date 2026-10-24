# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceActualPrimeContourResidual.Variant74a465ae8ba4201e457f542293888e61ce0a76dfe01050faca355b12af677bf4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e05a876b5f865edb73113656f853562a2c206d10` · SHA-256 `03e2a058af0d543a6c8f5923ebba9f6710a9da4245f50eb7eab8f2913d9bc4cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ActualStrictPrimeEqClosedPrimeMoment.Variant69de67307cca022182ea95256b65b0d390b5502381ef464b783076dfa21b6fa2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69de67307cca022182ea95256b65b0d390b5502381ef464b783076dfa21b6fa2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ActualStrictPrimeEqClosedPrimeMoment.Variant69de67307cca022182ea95256b65b0d390b5502381ef464b783076dfa21b6fa2","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"69de67307cca022182ea95256b65b0d390b5502381ef464b783076dfa21b6fa2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/SourceActualPrimeContourResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualInitialPrimeLineL1
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
Exact source binding of the initial prime contour and its finite signed head to the original
Mertens residual. The closed cutoff atom is genuinely zero; no source normalization, prime
power or compensation is changed. No arithmetic upper witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ActualStrictPrimeEqClosedPrimeMoment.Variant69de67307cca022182ea95256b65b0d390b5502381ef464b783076dfa21b6fa2

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPrimeContourResidual
open MeasureTheory Set
open SourcePairing SourceActualInitialPrimeContour SourceActualInitialPrimeLineL1
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual EstimatePrimeSmoothDefect
open PrimePowerDescent
noncomputable section

/-- The original strict source prime inventory equals the independently defined closed moment. -/
theorem actual_strictPrime_eq_closedPrimeMoment (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A = closedPrimeMoment A := by
  classical
  unfold primePowerContribution closedPrimeMoment primePowerInventory
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  have hnpos : 0 < (n : ℝ) := by
    exact_mod_cast lt_of_lt_of_le (by norm_num : 0 < (2 : ℕ)) (Finset.mem_Icc.mp hn).1
  have hweight : exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n) =
      sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n := by
    unfold exponentialTest
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hnpos]
    ring
  rw [hweight]
  by_cases hcut : (n : ℝ) < Real.exp (2 * A)
  · simp only [hcut, if_true]
    ring
  · have hlog : 2 * A ≤ Real.log n := by
      simpa only [Real.log_exp] using
        Real.log_le_log (Real.exp_pos _) (le_of_not_gt hcut)
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n)
      (by linarith) (hlog.trans (le_abs_self _))]
    simp [hcut]

/-- The independently original arithmetic residual is exactly this full actual prime contour. -/
theorem actualInitialPrimeContour_eq_mertensResidual (A c : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, actualInitialPrimeDensity A c t) =
      (mertensResidual A : ℂ) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    ← actual_strictPrime_eq_closedPrimeMoment A hA]
  exact actualInitialPrimeContour_eq_strict A c hA hc

/-- The finite signed head retains the exact original residual, with both contour tails. -/
theorem actual_mertensResidual_eq_head_add_twoTail (A c T : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    (mertensResidual A : ℂ) =
      actualInitialPrimeHead A c T + actualInitialPrimeTwoTail A c T := by
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    ← actual_strictPrime_eq_closedPrimeMoment A hA]
  exact actualInitialPrimeContour_eq_head_add_twoTail A c T hA hc

end
end FormalResearch.RiemannHypothesis.SourceActualPrimeContourResidual
```
