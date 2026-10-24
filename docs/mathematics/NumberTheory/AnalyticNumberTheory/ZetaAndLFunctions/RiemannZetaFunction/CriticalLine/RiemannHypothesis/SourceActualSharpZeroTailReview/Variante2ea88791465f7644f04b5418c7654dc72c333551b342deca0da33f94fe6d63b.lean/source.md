# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualSharpZeroTailReview.Variante2ea88791465f7644f04b5418c7654dc72c333551b342deca0da33f94fe6d63b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b120b3fb86f363341dde6670916c250c8150bba` · SHA-256 `171d5aba3892312ade332e068f4888f19fa42e0ead37472b810ab6f767920bd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualSharpZeroTail.Variantad3d4b5ee8485af917efe2ab5d37b1053fa1ce776d89ad5f9fa136137381f5cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad3d4b5ee8485af917efe2ab5d37b1053fa1ce776d89ad5f9fa136137381f5cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualSharpZeroTail.Variantad3d4b5ee8485af917efe2ab5d37b1053fa1ce776d89ad5f9fa136137381f5cf","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ad3d4b5ee8485af917efe2ab5d37b1053fa1ce776d89ad5f9fa136137381f5cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-sharp-actual-zero-tail/native/SourceActualSharpZeroTailReview.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualSharpZeroTail

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualSharpZeroTail.Variantad3d4b5ee8485af917efe2ab5d37b1053fa1ce776d89ad5f9fa136137381f5cf

#check RH16ActualSharpZeroTail.pole_norm_joint_strip_le
#print axioms RH16ActualSharpZeroTail.pole_norm_joint_strip_le
#check RH16ActualSharpZeroTail.actual_bump_complete_endpoint_norm_le
#print axioms RH16ActualSharpZeroTail.actual_bump_complete_endpoint_norm_le
#check RH16ActualSharpZeroTail.endpointScale
#print axioms RH16ActualSharpZeroTail.endpointScale
#check RH16ActualSharpZeroTail.endpointScale_pos
#print axioms RH16ActualSharpZeroTail.endpointScale_pos
#check RH16ActualSharpZeroTail.endpointScale_antitone
#print axioms RH16ActualSharpZeroTail.endpointScale_antitone
#check RH16ActualSharpZeroTail.actual_bump_endpoint_scale_norm_le
#print axioms RH16ActualSharpZeroTail.actual_bump_endpoint_scale_norm_le
#check RH16ActualSharpZeroTail.exp_pair_le_of_abs_le
#print axioms RH16ActualSharpZeroTail.exp_pair_le_of_abs_le
#check RH16ActualSharpZeroTail.endpointScale_three_sixty_four_lt
#print axioms RH16ActualSharpZeroTail.endpointScale_three_sixty_four_lt
#check RH16ActualSharpZeroTail.actual_bump_strip_high_norm_le
#print axioms RH16ActualSharpZeroTail.actual_bump_strip_high_norm_le
#check RH16ActualSharpZeroTail.exp_neg_large_le
#print axioms RH16ActualSharpZeroTail.exp_neg_large_le
#check RH16ActualSharpZeroTail.actualInitialPrimeMellin_sharp_strip_norm_le
#print axioms RH16ActualSharpZeroTail.actualInitialPrimeMellin_sharp_strip_norm_le
#check RH16ActualSharpZeroTail.actualZeroHeightTail_sharp_norm_bound
#print axioms RH16ActualSharpZeroTail.actualZeroHeightTail_sharp_norm_bound
open FormalResearch.RiemannHypothesis
open SourceActualPrimeBumpDictionary SourceActualZeroTailCount
open SourceActualZeroTailBudget SourceActualInitialPrimeContour
open SourceActualBumpMellinLineBudget
#check actualInitialPrimeMellin_eq_bumpMellinWeight
#print axioms actualInitialPrimeMellin_eq_bumpMellinWeight
#check actualZeroSixTail_count_bound
#print axioms actualZeroSixTail_count_bound
#print actualZeroHeightTail
#print actualZeroSixTail
#print actualInitialPrimeMellin
#print bumpMellinWeight
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```
