# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.F1585967f392fdee7b6dSourceRenormalizedActualSignedTail.Variant4bb0b1c897b896ba51e70df9d68499190bb9ec5f35e02f174210959aea1f6412

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81712e1f7d8ca83bcde165660210b0ee1242d4db` · SHA-256 `d284cc97de539601179f3e27a48523a5cf36e657ea1cb835c41a959a9bac2b5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RenormalizedActualSignedTail.Variantf1585967f392fdee7b6d708b7c71dd1386caee3ff798398060e3e0687cfebf92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1585967f392fdee7b6d708b7c71dd1386caee3ff798398060e3e0687cfebf92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RenormalizedActualSignedTail.Variantf1585967f392fdee7b6d708b7c71dd1386caee3ff798398060e3e0687cfebf92","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f1585967f392fdee7b6d708b7c71dd1386caee3ff798398060e3e0687cfebf92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/f1585967f392fdee7b6d-SourceRenormalizedActualSignedTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualEarlyLowerBound
import SourceSignedTailLinearConsumer
import SourceFullPositiveKappa

/-!
The complete actual signed arithmetic tail after its deterministic linear head.
Full positive-axis fractional kappa coefficients, all Moebius signs and the
actual complementary tail are independently specified. The proved two-sided
head estimate gives equivalent uniform upper budgets, with fixed constants.
No uniform arithmetic upper witness is supplied by this reparameterization.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RenormalizedActualSignedTail.Variantf1585967f392fdee7b6d708b7c71dd1386caee3ff798398060e3e0687cfebf92

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceRenormalizedActualSignedTail

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceFullPositiveKappa SourceSignedTailLinearConsumer
open SourceStrictComplementaryLocalization SourceCorrectedOmegaPeanoTaylor
open SourceCompleteCorrectedAbelPairing SourceUnconditionalCorrectedCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel EstimateMertensResidual

noncomputable section

/-- Full signed positive-fractional jets plus genuine arithmetic tail, with linear head removed. -/
def renormalizedActualSignedTail (A : ℝ) : ℝ :=
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
    ∑ j ∈ Finset.range 4, fullPositiveKappa (j + 1) / (j.factorial : ℝ) *
      iteratedDeriv j (sourceCorrelation explicitSecondDerivative A) (Real.log (d : ℝ))) +
    complementarySignedTail A - A

/-- All four positive-axis coefficients match the actual retained short jets. -/
theorem renormalized_tail_eq_signed_short_and_tail_sub_scale (A : ℝ) :
    renormalizedActualSignedTail A = signedShortAndComplementaryTail A - A := by
  unfold renormalizedActualSignedTail signedShortAndComplementaryTail
  simp_rw [correctedFourKappaJet_eq_full_positive_jet]

/-- Exact complete pairing keeps the actual head; no early term has been dropped. -/
theorem complete_pairing_eq_renormalized_tail_add_actual_head (A : ℝ) (hA : 1 ≤ A) :
    completeCorrectedAbelPairing A =
      renormalizedActualSignedTail A + (complementaryEarlyBaseline A + A) := by
  rw [← correctedCompleteOmega_eq_complete_pairing A hA,
    renormalized_tail_eq_signed_short_and_tail_sub_scale]
  unfold correctedCompleteOmega signedShortAndComplementaryTail
  have hs := literal_L_sub_plain_eq_early_add_tail A hA
  linarith

/-- The actual complete source and renormalized signed tail differ by at most seven. -/
theorem complete_pairing_sub_renormalized_tail_abs_le_seven
    (A : ℝ) (hA : 25600 ≤ A) :
    |completeCorrectedAbelPairing A - renormalizedActualSignedTail A| ≤ 7 := by
  rw [complete_pairing_eq_renormalized_tail_add_actual_head A (by linarith),
    add_sub_cancel_left]
  exact RH16IndependentChallengeNext.complementaryEarlyBaseline_add_scale_abs_le_seven hA

/-- Both sharp one-sided comparisons preserve the complete signed expression. -/
theorem renormalized_tail_complete_pairing_comparisons (A : ℝ) (hA : 25600 ≤ A) :
    completeCorrectedAbelPairing A - 7 ≤ renormalizedActualSignedTail A ∧
      renormalizedActualSignedTail A ≤ completeCorrectedAbelPairing A + 4 := by
  have hu := RH16IndependentChallengeNext.complementaryEarlyBaseline_le_neg_scale_add_seven hA
  have hl := RH16IndependentChallengeNext.complementaryEarlyBaseline_lower_neg_scale_sub_four hA
  have he := complete_pairing_eq_renormalized_tail_add_actual_head A (by linarith)
  constructor <;> linarith

/-- The original residual has a fixed unconditional calibration to the renormalized source. -/
theorem residual_sub_renormalized_tail_sub_zeta_abs_lt (A : ℝ) (hA : 25600 ≤ A) :
    |mertensResidual A - renormalizedActualSignedTail A -
      (riemannZeta (1 / 2)).re| < 353 / 50 := by
  have hc := residual_sub_complete_pairing_sub_zeta_abs_lt A (by linarith)
  have hh := complete_pairing_sub_renormalized_tail_abs_le_seven A hA
  have ht := abs_add_le
    (mertensResidual A - completeCorrectedAbelPairing A - (riemannZeta (1 / 2)).re)
    (completeCorrectedAbelPairing A - renormalizedActualSignedTail A)
  have he : mertensResidual A - renormalizedActualSignedTail A - (riemannZeta (1 / 2)).re =
      (mertensResidual A - completeCorrectedAbelPairing A - (riemannZeta (1 / 2)).re) +
        (completeCorrectedAbelPairing A - renormalizedActualSignedTail A) := by ring
  rw [← he] at ht
  linarith

/-- Same-radius uniform arithmetic budgets are equivalent up to the proved fixed head costs. -/
theorem renormalized_tail_upper_iff_complete_pairing_upper_at_radius
    (R : ℝ) (hR : 25600 ≤ R) :
    (∃ K : ℝ, ∀ A : ℝ, R ≤ A → renormalizedActualSignedTail A ≤ K) ↔
      (∃ K : ℝ, ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) := by
  constructor
  · rintro ⟨K, hK⟩
    refine ⟨K + 7, ?_⟩
    intro A hRA
    have hc := (renormalized_tail_complete_pairing_comparisons A (hR.trans hRA)).1
    have hk := hK A hRA
    linarith
  · rintro ⟨K, hK⟩
    refine ⟨K + 4, ?_⟩
    intro A hRA
    have hc := (renormalized_tail_complete_pairing_comparisons A (hR.trans hRA)).2
    have hk := hK A hRA
    linarith

/-- Only the actual uniform signed arithmetic witness remains for the original all-real target. -/
theorem estimate_of_renormalized_actual_signed_tail {K R : ℝ} (hR : 25600 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → renormalizedActualSignedTail A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_corrected_signed_tail (K := K + 7) (by linarith : 117 ≤ R)
  intro A hRA
  have hc := (renormalized_tail_complete_pairing_comparisons A (hR.trans hRA)).1
  have ht := htail A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceRenormalizedActualSignedTail
```
