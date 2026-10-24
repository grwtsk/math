# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variant5d92d72d75beea3fde52c0f2c02c85313955bec325800f3021334d2f7ce82255

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2684ed95167d6467a8f6a41f0f2fd06635608ca2` · SHA-256 `0543439965a5fe6dcc8feb8d2c4f659dc8c6c0cb96e874dfe3e06dc9e54bbca4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourNineSupport.Variantcb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceFourNineSupport.Variantcb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8","mathematical_subject":"Foundations.Unclassified","original_sha256":"cb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/four-nine-native/author-support-audit-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFourNineSupport

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourNineSupport.Variantcb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8

set_option linter.hashCommand false
#check RH16FourNineSupport.mobius_nine_mul_zero
#print axioms RH16FourNineSupport.mobius_nine_mul_zero
#check RH16FourNineSupport.squarefreeWeightSum_subtract_four_nine
#print axioms RH16FourNineSupport.squarefreeWeightSum_subtract_four_nine
#check RH16FourNineSupport.squarefreeWeightSum_four_thirds
#print axioms RH16FourNineSupport.squarefreeWeightSum_four_thirds
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```
