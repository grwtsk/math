-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceHigherPrimePowerStorage.Variantab9602b8aad5aa32b4781ed19dabf7722d6dca971ae8d327421a09899e5ccff3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab9602b8aad5aa32b4781ed19dabf7722d6dca971ae8d327421a09899e5ccff3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceHigherPrimePowerStorage.Variantab9602b8aad5aa32b4781ed19dabf7722d6dca971ae8d327421a09899e5ccff3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ab9602b8aad5aa32b4781ed19dabf7722d6dca971ae8d327421a09899e5ccff3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle9/acceptance-regent/regent-higher-storage/HostileGuards.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage

-- The omitted-cube source fixture is below the residual consumer scope.

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceHigherPrimePowerStorage.Variantab9602b8aad5aa32b4781ed19dabf7722d6dca971ae8d327421a09899e5ccff3

example : Real.log (8 : ℝ) / 4 < 1 := by
  have h : Real.log (2 : ℝ) < 1 := by
    have hh := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
      (by norm_num : (2 : ℝ) ≠ 1)
    norm_num at hh
    exact hh
  have hlog : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    simpa using Real.log_pow (2 : ℝ) 3
  rw [hlog]
  linarith

-- Unit-source full storage cannot be replaced by the visible square sum alone.
example {A : ℝ} (hA : 0 < A) :
    FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherSourceStorage A =
      FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherVisibleStorage A +
        (FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients.higherBaseline -
          FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherVisibleBaseline A) :=
  FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherSourceStorage_padding hA
