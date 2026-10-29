-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SourceUnit.Variantf2dfed113d60b76bf3abc02e410b698be7b5d38e2434c2d9331d00b92ccace21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2dfed113d60b76bf3abc02e410b698be7b5d38e2434c2d9331d00b92ccace21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SourceUnit.Variantf2dfed113d60b76bf3abc02e410b698be7b5d38e2434c2d9331d00b92ccace21","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f2dfed113d60b76bf3abc02e410b698be7b5d38e2434c2d9331d00b92ccace21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/half-cutoff-tail-statement-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SourceUnit.Variantf2dfed113d60b76bf3abc02e410b698be7b5d38e2434c2d9331d00b92ccace21

namespace HalfCutoffTailStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

example (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 := by
  exact HalfCutoffTailScratch.reciprocal_half_cutoff_tail_le Y G hYG hhalf

example (h g : ℕ) :
    Real.sqrt ((h*g^2 : ℕ) : ℝ) = Real.sqrt (h : ℝ) * (g : ℝ) := by
  exact HalfCutoffTailScratch.sqrt_square_scale h g

example (A : ℝ) (h Y G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h*g^2)| ≤
      ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) := by
  exact HalfCutoffTailScratch.thetaRemainder_half_cutoff_tail_abs_le A h Y G hA hh hYG hhalf

end
end HalfCutoffTailStatementChecks
