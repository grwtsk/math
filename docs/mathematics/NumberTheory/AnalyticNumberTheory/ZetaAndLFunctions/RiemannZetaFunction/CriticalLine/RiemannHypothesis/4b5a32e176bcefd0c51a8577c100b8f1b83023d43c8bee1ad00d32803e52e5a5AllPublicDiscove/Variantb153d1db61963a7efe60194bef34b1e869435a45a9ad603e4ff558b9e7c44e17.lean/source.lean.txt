-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiModes.Variant4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiModes.Variant4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/4b/4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5--AllPublicDiscovery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiModes
import FormalResearch.RiemannHypothesis.ThetaPhiGaussianBound
import FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives
import FormalResearch.RiemannHypothesis.ThetaPhiLogConcavity
import FormalResearch.RiemannHypothesis.ThetaTailRatioTwo


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiModes.Variant4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5

open Lean Elab Command
run_cmd do
  let targets : Array Name := #[`FormalResearch.RiemannHypothesis.ThetaPhiModes, `FormalResearch.RiemannHypothesis.ThetaPhiGaussianBound, `FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives, `FormalResearch.RiemannHypothesis.ThetaPhiLogConcavity, `FormalResearch.RiemannHypothesis.ThetaTailRatioTwo]
  let _ ← (← getEnv).constants.foldM (init := ()) fun _ name _ => do
    let some mod ← findModuleOf? name | return ()
    if targets.contains mod && !isPrivateName name then
      logInfo m!"THETA_PUBLIC_DECL|{mod}|{name}"
    return ()
  pure ()
