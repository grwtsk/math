# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiFloorSharpConsumer.Variantbda900467f0ecc8fc83525f259d66d4bee8efc8000e8c7e63bb8795e8b1d48d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `564ca67ee45fd6f915ecb1d726d51a7eb2b56175` · SHA-256 `533d3f63d3c6da5f4dbadcbe4dba42a6bc5bc74bd76b5f10bf48883cf1c553ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompletePairingSubPsiFloorAbsLeTwentyNine.Variant3b90ecfc14e41bf22235b2348eb428de9fe4adefb7f4c5347faf9843968d906b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b90ecfc14e41bf22235b2348eb428de9fe4adefb7f4c5347faf9843968d906b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CompletePairingSubPsiFloorAbsLeTwentyNine.Variant3b90ecfc14e41bf22235b2348eb428de9fe4adefb7f4c5347faf9843968d906b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3b90ecfc14e41bf22235b2348eb428de9fe4adefb7f4c5347faf9843968d906b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T195259Z-1791316379453046000/SourceActualPsiFloorSharpConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiFloorConsumer
import SourceFiveFullKappaShortReduction

/-!
The actual curvature-five short error and quarter-factorial error improve the
complete real-source reconstruction cost to twenty-nine. The unchanged
original target still requires a genuine uniform signed arithmetic witness.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompletePairingSubPsiFloorAbsLeTwentyNine.Variant3b90ecfc14e41bf22235b2348eb428de9fe4adefb7f4c5347faf9843968d906b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPsiFloorSharpConsumer
open SourceActualPsiFloorConsumer SourceFiveFullKappaShortReduction
open SourceActualPoleMomentAnnihilation SourceCancelledFactorialDecay
open SourceFiveCancelledFactorialBudget SourceRenormalizedActualSignedTail
open SourceLeadingTailBudget SourceCompleteCorrectedAbelPairing
open SourceUnconditionalCorrectedCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

/-- The actual complete source retains all signed sectors with a sharper reconstruction cost. -/
theorem complete_pairing_sub_psi_floor_abs_le_twenty_nine {A : ℝ} (hA : 25600 ≤ A) :
    |completeCorrectedAbelPairing A - actualPsiFloorPairing A| ≤ 29 := by
  have he := complete_pairing_eq_psi_floor_add_actual_errors (by linarith : 91 ≤ A)
  have hs := renormalized_tail_sub_actual_leading_abs_le_fourteen hA
  have hf := (actual_cancelled_factorial_full_abs_le_five A
    (by linarith : 91 ≤ A)).trans (fiveCancelledFactorialBudget_le_fifteen hA)
  have ht := abs_add_le (actualCancelledFactorialWork A)
    (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)
  have hid : completeCorrectedAbelPairing A - actualPsiFloorPairing A =
      actualCancelledFactorialWork A +
        (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A) := by linarith
  rw [← hid] at ht
  linarith

/-- The original residual keeps its independently proved zeta calibration. -/
theorem residual_sub_psi_floor_sub_zeta_abs_lt_twenty_nine {A : ℝ} (hA : 25600 ≤ A) :
    |mertensResidual A - actualPsiFloorPairing A - (riemannZeta (1 / 2 : ℂ)).re| <
      1453 / 50 := by
  have hc := residual_sub_complete_pairing_sub_zeta_abs_lt A (by linarith : 117 ≤ A)
  have hp := complete_pairing_sub_psi_floor_abs_le_twenty_nine hA
  have ht := abs_add_le
    (mertensResidual A - completeCorrectedAbelPairing A - (riemannZeta (1 / 2 : ℂ)).re)
    (completeCorrectedAbelPairing A - actualPsiFloorPairing A)
  have he : (mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) +
        (completeCorrectedAbelPairing A - actualPsiFloorPairing A) =
      mertensResidual A - actualPsiFloorPairing A - (riemannZeta (1 / 2 : ℂ)).re := by ring
  rw [he] at ht
  linarith

/-- The same real radius preserves equivalent actual arithmetic upper witnesses. -/
theorem psi_floor_upper_iff_complete_pairing_upper_at_radius_twenty_nine
    (R : ℝ) (hR : 25600 ≤ R) :
    (∃ K : ℝ, ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) ↔
      (∃ K : ℝ, ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) := by
  constructor
  · rintro ⟨K, hK⟩
    refine ⟨K + 29, ?_⟩
    intro A hRA
    have he := abs_le.mp (complete_pairing_sub_psi_floor_abs_le_twenty_nine (hR.trans hRA))
    have hk := hK A hRA
    linarith
  · rintro ⟨K, hK⟩
    refine ⟨K + 29, ?_⟩
    intro A hRA
    have he := abs_le.mp (complete_pairing_sub_psi_floor_abs_le_twenty_nine (hR.trans hRA))
    have hk := hK A hRA
    linarith

/-- Only a genuine uniform signed psi-floor upper witness remains for the original target. -/
theorem estimate_of_actual_psi_floor_signed_tail_twenty_nine {K R : ℝ}
    (hR : 25600 ≤ R) (hpsi : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_corrected_signed_tail (K := K + 29) (by linarith : 117 ≤ R)
  intro A hRA
  have he := abs_le.mp (complete_pairing_sub_psi_floor_abs_le_twenty_nine (hR.trans hRA))
  have hk := hpsi A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualPsiFloorSharpConsumer
```
