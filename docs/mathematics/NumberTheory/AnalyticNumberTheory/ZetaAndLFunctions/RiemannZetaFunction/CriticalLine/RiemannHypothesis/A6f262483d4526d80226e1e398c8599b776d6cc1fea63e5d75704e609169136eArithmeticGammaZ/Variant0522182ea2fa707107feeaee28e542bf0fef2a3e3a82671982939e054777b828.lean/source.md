# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136eArithmeticGammaZ.Variant0522182ea2fa707107feeaee28e542bf0fef2a3e3a82671982939e054777b828

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5578dd52816bfc22e96b3e070cf743a9c75e11e4` · SHA-256 `51bb8d5387c23be41e7d8ea04f4f478a3c0d3add8b1d95298cad1821915ce733`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FullQuadraticObstruction.Varianta6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FullQuadraticObstruction.Varianta6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/a6/a6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e--ArithmeticGammaZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import Zeta23.GammaFacts.Mu
import Mathlib.Analysis.Complex.ExponentialBounds

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FullQuadraticObstruction.Varianta6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e

open FormalResearch.RiemannHypothesis.SourcePairing
open scoped BigOperators
#check Real.exp_one_lt_three
#check Real.one_half_lt_eulerMascheroniConstant
#check Real.pi_gt_three
#check Real.lt_log_iff_exp_lt
#check Finset.sum_range_sub
#check Finset.sum_range_sub'
#check Zeta23.MuFields.re_digamma_vertical
#check Zeta23.MuFields.summable_re_terms
#check le_of_tendsto
```
