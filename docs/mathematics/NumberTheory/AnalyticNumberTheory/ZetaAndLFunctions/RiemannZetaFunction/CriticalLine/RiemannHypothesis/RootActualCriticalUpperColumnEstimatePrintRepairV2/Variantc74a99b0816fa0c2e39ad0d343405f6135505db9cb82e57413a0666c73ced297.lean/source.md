# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualCriticalUpperColumnEstimatePrintRepairV2.Variantc74a99b0816fa0c2e39ad0d343405f6135505db9cb82e57413a0666c73ced297

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7197bca197cf2294122dcb1d2cbf7f348fa8bc2c` · SHA-256 `67651705b87a6c0b38241835f29c06809c44ad5d5f7c7b802652498d44483c29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.Variantbc1663d52ddcd66cbbdf4fb8cae9056717dfa8181fb9da04544889e00b005ea5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc1663d52ddcd66cbbdf4fb8cae9056717dfa8181fb9da04544889e00b005ea5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RootActualCriticalUpperColumnEstimate.Variantbc1663d52ddcd66cbbdf4fb8cae9056717dfa8181fb9da04544889e00b005ea5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bc1663d52ddcd66cbbdf4fb8cae9056717dfa8181fb9da04544889e00b005ea5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-root/RootActualCriticalUpperColumnEstimatePrintRepairV2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualCriticalUpperColumnEstimate


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.Variantbc1663d52ddcd66cbbdf4fb8cae9056717dfa8181fb9da04544889e00b005ea5

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option maxHeartbeats 10000000
set_option maxRecDepth 100000
set_option pp.maxSteps 100000000
set_option pp.rawOnError false
set_option pp.all true
set_option pp.proofs true
set_option pp.letVarTypes false
set_option pp.funBinderTypes false
set_option pp.tagAppFns false

#print FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.actualUpperColumn_time_factor_eq_support
#print axioms FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.actualUpperColumn_time_factor_eq_support
#print FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.actualUpperColumn_normalized_time_factor_abs_le
#print axioms FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.actualUpperColumn_normalized_time_factor_abs_le
#print FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.actualCriticalUpperColumnConstant
#print axioms FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.actualCriticalUpperColumnConstant
#print FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.actualCriticalUpperColumnTrace_abs_le
#print axioms FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.actualCriticalUpperColumnTrace_abs_le
```
