# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variant3c9c58f912ea1bf3dfd2b57b70e66da7e62a5898c88bbfe20aea1a4dac40b7e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70aeffff5e8f4ea647145f1fcd92d0edb639f764` · SHA-256 `badc42b31a28488e5e06e6c442205d0e7332e02536784052221c4c625784451f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourNineSampling.Variant4a0bf26759747be2095408dc8d440d055086e20f21bbf7afc50783ebcd569da8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a0bf26759747be2095408dc8d440d055086e20f21bbf7afc50783ebcd569da8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceFourNineSampling.Variant4a0bf26759747be2095408dc8d440d055086e20f21bbf7afc50783ebcd569da8","mathematical_subject":"Foundations.Unclassified","original_sha256":"4a0bf26759747be2095408dc8d440d055086e20f21bbf7afc50783ebcd569da8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/four-nine-native/author-sampling-audit-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFourNineSampling

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourNineSampling.Variant4a0bf26759747be2095408dc8d440d055086e20f21bbf7afc50783ebcd569da8

set_option linter.hashCommand false
#check RH16FourNineSampling.shortLog_error_le_of_sampling_error_four_nine
#print axioms RH16FourNineSampling.shortLog_error_le_of_sampling_error_four_nine
#check RH16FourNineSampling.shortPlain_error_uniform_le_of_sampling_error_four_nine
#print axioms RH16FourNineSampling.shortPlain_error_uniform_le_of_sampling_error_four_nine
#check RH16FourNineSampling.actual_shortLog_error_tail_four_nine
#print axioms RH16FourNineSampling.actual_shortLog_error_tail_four_nine
#check RH16FourNineSampling.actual_shortPlain_error_tail_four_nine
#print axioms RH16FourNineSampling.actual_shortPlain_error_tail_four_nine
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```
