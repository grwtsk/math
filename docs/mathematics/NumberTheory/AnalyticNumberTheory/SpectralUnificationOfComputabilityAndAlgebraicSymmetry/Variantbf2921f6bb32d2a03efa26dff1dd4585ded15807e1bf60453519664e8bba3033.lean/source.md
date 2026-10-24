# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantbf2921f6bb32d2a03efa26dff1dd4585ded15807e1bf60453519664e8bba3033

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `919cd503bd3998ea45a0a2f4e692e1a8cb39ca7e` · SHA-256 `8bce487178ae6bc9278ed8033c0678e2596e0483490227c03956990d0bddf4ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.MertensResidualSubMovingTailAbsLeUniform.Variant0928dbb2c11ce7257cc8039bf43f15a9abf6c4a54bde9226013424288a6cdc32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0928dbb2c11ce7257cc8039bf43f15a9abf6c4a54bde9226013424288a6cdc32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.MertensResidualSubMovingTailAbsLeUniform.Variant0928dbb2c11ce7257cc8039bf43f15a9abf6c4a54bde9226013424288a6cdc32","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"0928dbb2c11ce7257cc8039bf43f15a9abf6c4a54bde9226013424288a6cdc32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/0928dbb2c11ce7257cc8039bf43f15a9abf6c4a54bde9226013424288a6cdc32.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMovingFrontBound

/-!
# Exact localization of the unchanged signed residual

The proved compensated prefix tends to zero through real source scales.
Consequently the original residual and its actual moving tail differ by a
uniformly bounded vanishing error. The final equivalence records the precise
remaining arithmetic question and does not prove either boundedness premise.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.MertensResidualSubMovingTailAbsLeUniform.Variant0928dbb2c11ce7257cc8039bf43f15a9abf6c4a54bde9226013424288a6cdc32

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateMovingFrontLocalization

open Filter
open EstimateMertensResidual EstimateMovingFrontTransport EstimateMovingFrontBound

noncomputable section

/-- The original residual differs from the actual signed moving tail by at most
`4160/3`, uniformly over every real source scale at least one. -/
theorem mertensResidual_sub_movingTail_abs_le_uniform (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - sourceMovingTail A| ≤ 4160 / 3 := by
  rw [mertensResidual_eq_prefix_add_movingTail A hA, add_sub_cancel_right]
  exact sourcePrefixPairing_moving_abs_le_uniform A hA

/-- The endpoint-compensated moving prefix is negligible through all real scales. -/
theorem mertensResidual_sub_movingTail_tendsto_zero :
    Tendsto (fun A : ℝ ↦ mertensResidual A - sourceMovingTail A) atTop (nhds 0) := by
  apply sourcePrefixPairing_moving_tendsto_zero.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [mertensResidual_eq_prefix_add_movingTail A hA]
  ring

/-- Exact localization of the existing arithmetic hypothesis. The proved
uniform prefix error is added in both directions; neither premise is asserted. -/
theorem mertens_residual_tail_iff_moving_signed_tail :
    MertensResidualTailUpperBound ↔
      ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
        ∀ A : ℝ, R ≤ A → sourceMovingTail A ≤ D := by
  constructor
  · rintro ⟨D, hD, R, hR, hres⟩
    refine ⟨D + 4160 / 3, by positivity, R, hR, ?_⟩
    intro A hRA
    have heq := mertensResidual_eq_prefix_add_movingTail A (hR.trans hRA)
    have hb := (abs_le.mp (sourcePrefixPairing_moving_abs_le_uniform A (hR.trans hRA))).1
    linarith [hres A hRA]
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D + 4160 / 3, by positivity, R, hR, ?_⟩
    intro A hRA
    have heq := mertensResidual_eq_prefix_add_movingTail A (hR.trans hRA)
    have hb := (abs_le.mp (sourcePrefixPairing_moving_abs_le_uniform A (hR.trans hRA))).2
    linarith [htail A hRA]

end
end EstimateMovingFrontLocalization
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
