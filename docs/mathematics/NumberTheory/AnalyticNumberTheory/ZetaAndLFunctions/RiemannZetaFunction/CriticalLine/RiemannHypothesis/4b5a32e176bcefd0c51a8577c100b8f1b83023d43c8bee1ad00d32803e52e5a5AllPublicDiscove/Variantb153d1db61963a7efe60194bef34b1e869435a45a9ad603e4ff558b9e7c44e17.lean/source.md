# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.4b5a32e176bcefd0c51a8577c100b8f1b83023d43c8bee1ad00d32803e52e5a5AllPublicDiscove.Variantb153d1db61963a7efe60194bef34b1e869435a45a9ad603e4ff558b9e7c44e17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `217eaa44e16374b0b4933ad16369fb82d7c9140c` · SHA-256 `2e6b0fb1e06f2e3bcca7702f54f60c8fcbed56a4f593b271ab64b10355b6bd6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
