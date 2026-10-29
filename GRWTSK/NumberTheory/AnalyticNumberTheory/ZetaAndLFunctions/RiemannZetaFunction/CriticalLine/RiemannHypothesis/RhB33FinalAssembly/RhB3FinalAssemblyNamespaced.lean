-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Assembly.Variantca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Assembly.Variantca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/tests/rh_b3_3_final_assembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Assembly


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Assembly.Variantca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34

#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.positive_candidate_eq
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_meromorphic
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_analytic_positive_real
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.meromorphic_laplace_pole

example :
    MeromorphicOn
      FormalResearch.RiemannHypothesis.Laplace.Continuation.continuedTransform
      {s : ℂ | 0 < s.re} :=
  FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_meromorphic

example :
    FormalResearch.RiemannHypothesis.Laplace.Assembly.MeromorphicLaplacePoleObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Assembly.meromorphic_laplace_pole
