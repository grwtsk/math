-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceUnit.Variant439074f42bb7301e52c2352970b11e9926fddd63cc9ce1a1a8df1b6ec3676d29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"439074f42bb7301e52c2352970b11e9926fddd63cc9ce1a1a8df1b6ec3676d29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceUnit.Variant439074f42bb7301e52c2352970b11e9926fddd63cc9ce1a1a8df1b6ec3676d29","mathematical_subject":"Analysis.Integration","original_sha256":"439074f42bb7301e52c2352970b11e9926fddd63cc9ce1a1a8df1b6ec3676d29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/angular-triangle-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceUnit.Variant439074f42bb7301e52c2352970b11e9926fddd63cc9ce1a1a8df1b6ec3676d29

open MeasureTheory
open AngularL2TriangleScratch

example (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) =
      Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f‖ :=
  sqrt_normalized_integral_eq_norm f hf

example (f g : ℝ → ℂ) (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t + g t‖ ^ 2) ≤
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖g t‖ ^ 2) :=
  sqrt_normalized_integral_add_le f g hf hg
