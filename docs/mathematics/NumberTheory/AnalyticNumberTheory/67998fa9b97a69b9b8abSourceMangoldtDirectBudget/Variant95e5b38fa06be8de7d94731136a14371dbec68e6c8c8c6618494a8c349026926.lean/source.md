# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.67998fa9b97a69b9b8abSourceMangoldtDirectBudget.Variant95e5b38fa06be8de7d94731136a14371dbec68e6c8c8c6618494a8c349026926

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af329ed368cb819c42318eff667edbb46bc37c6d` · SHA-256 `9764d77af6f85b179139a360be1eb8f752f2863dfee51f2d42aed5d0d02c6f0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ResidualUpperOfOriginalMangoldtWorkLower.Variant67998fa9b97a69b9b8ab8c0c4e82b12e47b1aff9a4bfdd00febd99ad8b465152","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67998fa9b97a69b9b8ab8c0c4e82b12e47b1aff9a4bfdd00febd99ad8b465152","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ResidualUpperOfOriginalMangoldtWorkLower.Variant67998fa9b97a69b9b8ab8c0c4e82b12e47b1aff9a4bfdd00febd99ad8b465152","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"67998fa9b97a69b9b8ab8c0c4e82b12e47b1aff9a4bfdd00febd99ad8b465152","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/67998fa9b97a69b9b8ab-SourceMangoldtDirectBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCriticalDirectBudget
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
The literal full-Mangoldt lower-work premise feeds the same original source
through its genuine signed source-half correction. No work witness is supplied.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ResidualUpperOfOriginalMangoldtWorkLower.Variant67998fa9b97a69b9b8ab8c0c4e82b12e47b1aff9a4bfdd00febd99ad8b465152

set_option autoImplicit false

namespace RH16ResumeBudget

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

theorem residual_upper_of_original_Mangoldt_work_lower (C R A : ℝ) (hR : 1 ≤ R)
    (hRA : R ≤ A) (hwork : -C ≤ criticalMangoldtWork A) :
    mertensResidual A ≤ C - 1 + criticalBaselineCorrection R := by
  have hA : 1 ≤ A := hR.trans hRA
  have hw := mertensResidual_eq_continuous_sub_Mangoldt_work A hA
  have hb := criticalBaselineCorrection_antitone R A (by linarith) hRA
  rw [criticalBaselineCorrection_eq_actual A hA] at hb
  linarith only [hw, hb, hwork]

theorem all_real_source_lower_of_original_Mangoldt_work_tail
    (C R : ℝ) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → -C ≤ criticalMangoldtWork A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (C - 1 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail (C - 1 + criticalBaselineCorrection R) R hR
  intro A hRA
  exact residual_upper_of_original_Mangoldt_work_lower C R A hR hRA (hwork A hRA)

end
end RH16ResumeBudget
```
