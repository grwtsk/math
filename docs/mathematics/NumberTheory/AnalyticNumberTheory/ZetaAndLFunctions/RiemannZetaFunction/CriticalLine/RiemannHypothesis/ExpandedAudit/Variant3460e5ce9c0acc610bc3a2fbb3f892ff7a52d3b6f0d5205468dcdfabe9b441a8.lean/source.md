# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variant3460e5ce9c0acc610bc3a2fbb3f892ff7a52d3b6f0d5205468dcdfabe9b441a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cdf8350f429f494feb1d7498b490ddf03f7179e` · SHA-256 `6617f383d7d217f3aa76f863bd44d09bcd5131df5d46776fee2c87e294f598da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeSamplingConsumer.Variantda79c3eb14c7495a0a8330b82875f7d7b92682d4fa333f3833ffb37814337162","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da79c3eb14c7495a0a8330b82875f7d7b92682d4fa333f3833ffb37814337162","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceSquarefreeSamplingConsumer.Variantda79c3eb14c7495a0a8330b82875f7d7b92682d4fa333f3833ffb37814337162","mathematical_subject":"Foundations.Unclassified","original_sha256":"da79c3eb14c7495a0a8330b82875f7d7b92682d4fa333f3833ffb37814337162","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-squarefree-sampling-consumer/fresh-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeSamplingConsumer

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeSamplingConsumer.Variantda79c3eb14c7495a0a8330b82875f7d7b92682d4fa333f3833ffb37814337162

set_option linter.hashCommand false
#check RH16SquarefreeSamplingConsumer.shortLog_error_le_of_sampling_error_squarefree
#print axioms RH16SquarefreeSamplingConsumer.shortLog_error_le_of_sampling_error_squarefree
#check RH16SquarefreeSamplingConsumer.shortPlain_error_uniform_le_of_sampling_error_squarefree
#print axioms RH16SquarefreeSamplingConsumer.shortPlain_error_uniform_le_of_sampling_error_squarefree
#check RH16SquarefreeSamplingConsumer.actual_shortLog_error_tail_squarefree
#print axioms RH16SquarefreeSamplingConsumer.actual_shortLog_error_tail_squarefree
#check RH16SquarefreeSamplingConsumer.actual_shortPlain_error_tail_squarefree
#print axioms RH16SquarefreeSamplingConsumer.actual_shortPlain_error_tail_squarefree
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```
