-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.XiSectionObstruction.Variantda59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.XiSectionObstruction.Variantda59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a","mathematical_subject":"Analysis.Integration","original_sha256":"da59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/da/da59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a--CheckPhase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiSectionObstruction

namespace GRWTSK.Analysis.RealAnalysis.Integration.XiSectionObstruction.Variantda59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a

open FormalResearch.RiemannHypothesis.ThetaPositiveLift MeasureTheory Set
#check integrable_finsetSum
#check Integrable.ofReal
#check Complex.integrable_ofReal
example (k : ℕ) : IntegrableOn (fun t : ℝ => (thetaPhi t : ℂ) * (2 * (t : ℂ))^(2*k)) (Ioi (0:ℝ)) := by
  have h := thetaPhiExpMomentIntegrand_integrableOn (2*k) 0
  change Integrable (fun t : ℝ => (thetaPhi t : ℂ) * (2 * (t : ℂ))^(2*k) * Complex.exp (2 * 0 * (t:ℂ))) _ at h
  simpa only [mul_zero, zero_mul, Complex.exp_zero, mul_one, IntegrableOn] using h
