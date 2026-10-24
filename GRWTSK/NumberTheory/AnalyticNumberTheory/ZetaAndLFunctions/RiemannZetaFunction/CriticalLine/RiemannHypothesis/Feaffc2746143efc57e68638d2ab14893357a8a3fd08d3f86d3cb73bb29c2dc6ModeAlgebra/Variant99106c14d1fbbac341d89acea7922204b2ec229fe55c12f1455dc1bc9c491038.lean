-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaKernel.Variantfeaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaKernel.Variantfeaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/fe/feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6--ModeAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaKernel

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaKernel.Variantfeaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6

example (y : ℝ) (h : 2*y-3≠0) :
  -15+30*y-8*y^2 = (2*y-3)*(9+12/(2*y-3)-4*y) := by
  linear_combination -12 * (mul_inv_cancel₀ h)
example (y : ℝ) (h : 2*y-3≠0) :
  -75+330*y-224*y^2+32*y^3 = (2*y-3)*((9+12/(2*y-3)-4*y)^2 +(-16*y-96*y/(2*y-3)^2)) := by
  simp only [div_eq_mul_inv, ← inv_pow]
  linear_combination (48*((2*y-3)*(2*y-3)⁻¹)+96*y-168) * (mul_inv_cancel₀ h)
