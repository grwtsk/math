# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SourceActualPntTailConvolutionAuditV3.Variant1a61c8cf52a6a1a0a7d3fb047a1a9795dde7f25b1bf40b88a1a8f9dc97655d1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8037f2745c7591105c1cd8c9975885f4940c252` · SHA-256 `ce6d57ee0571e3cb821c918b3bd62af1795927e8246656e47ca735ed1b71b28d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.SourceActualPntTailConvolution.Variant61def8c6e627d239064aa81181634ed344bb5f46375f24c8b4c987e5e0e89330","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61def8c6e627d239064aa81181634ed344bb5f46375f24c8b4c987e5e0e89330","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.SourceActualPntTailConvolution.Variant61def8c6e627d239064aa81181634ed344bb5f46375f24c8b4c987e5e0e89330","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"61def8c6e627d239064aa81181634ed344bb5f46375f24c8b4c987e5e0e89330","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/pnt-tail-convolution/SourceActualPntTailConvolutionAuditV3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPntTailConvolution

namespace GRWTSK.Analysis.AsymptoticAnalysis.SourceActualPntTailConvolution.Variant61def8c6e627d239064aa81181634ed344bb5f46375f24c8b4c987e5e0e89330

open FormalResearch.RiemannHypothesis
#check RH16ActualPntTailConvolution.actualRelativePsiTimeError_total_eq_neg_gamma_sub_one
#print axioms RH16ActualPntTailConvolution.actualRelativePsiTimeError_total_eq_neg_gamma_sub_one
#check RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_eq_neg_tail
#print axioms RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_eq_neg_tail
#check RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_abs_le
#print axioms RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_abs_le
#check RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_pnt_majorant
#print axioms RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_pnt_majorant
#check SourceActualMertensPntRate.actualCenteredMangoldtLogError_eq_delta_sub_tail
#print axioms SourceActualMertensPntRate.actualCenteredMangoldtLogError_eq_delta_sub_tail
#check SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_eq_one_convolution
#print axioms SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_eq_one_convolution
#check SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_isBigO
#print axioms SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_isBigO
#check SourceActualMertensGammaCalibration.actualPntMertensLimit_eq_neg_gamma
#print axioms SourceActualMertensGammaCalibration.actualPntMertensLimit_eq_neg_gamma
#print SourceActualXiErrorConvolution.actualCenteredMangoldtLogError
#print SourceActualXiErrorConvolution.actualMangoldtErrorConvolution
#print SourceActualPsiPntTimeDecay.actualRelativePsiTimeError
#print SourceMangoldtAbel.mangoldtLogError
#print SourceMangoldtAbel.mangoldtLogPrefix
#print WeightedPrimeMertens.weightedMangoldt
#print Chebyshev.psi
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```
