# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487AllPublicDiscove.Variant63c0b9cace507b9abf71a0491bc642fe1647c815ecd94c317e316e8195743bc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c628421db9751a8745ad26bc2f1f442c90ab3e1` · SHA-256 `e9051f017ed051f88282d93f189c8502480a4f49d7331cadbe8e5f9fc6405373`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaIntegralTailLogSlope.Variant883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaIntegralTailLogSlope.Variant883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/88/883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487--AllPublicDiscovery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope
import FormalResearch.RiemannHypothesis.ThetaTailLogSlope
import FormalResearch.RiemannHypothesis.ThetaTailRankTwo


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaIntegralTailLogSlope.Variant883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487

open Lean Elab Command
run_cmd do
  let targets : Array Name := #[`FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope, `FormalResearch.RiemannHypothesis.ThetaTailLogSlope, `FormalResearch.RiemannHypothesis.ThetaTailRankTwo]
  let _ ← (← getEnv).constants.foldM (init := ()) fun _ name _ => do
    let some mod ← findModuleOf? name | return ()
    if targets.contains mod && !isPrivateName name then
      logInfo m!"THETA_PUBLIC_DECL|{mod}|{name}"
    return ()
  pure ()
```
