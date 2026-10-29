-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CubicCellSemantics.Variant063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CubicCellSemantics.Variant063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5","mathematical_subject":"Analysis.Integration","original_sha256":"063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Analysis/CubicSemantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Analysis.CubicIntegration

/-!
# Folder.Analysis.CubicSemantics

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: analysis.cubic_semantics
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.Analysis.RealAnalysis.Integration.CubicCellSemantics.Variant063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5

namespace Folder
namespace Analysis

structure CubicCellSemantics where
  cubic : Cubic
  lo : ℝ
  hi : ℝ
  value : ℝ
  value_eq_integral : value = cubic.integral lo hi

theorem CubicCellSemantics.correct
    (S : CubicCellSemantics) :
    S.value = S.cubic.integral S.lo S.hi :=
  S.value_eq_integral

end Analysis
end Folder
