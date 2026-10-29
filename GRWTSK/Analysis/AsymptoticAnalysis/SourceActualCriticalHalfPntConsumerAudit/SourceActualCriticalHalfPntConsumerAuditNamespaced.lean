-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.SourceActualCriticalHalfPntConsumer.Variantfdb3be6f69f0b2558d527746eb178166f7f2717c5448056bf96a7563c93d6ab8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fdb3be6f69f0b2558d527746eb178166f7f2717c5448056bf96a7563c93d6ab8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.SourceActualCriticalHalfPntConsumer.Variantfdb3be6f69f0b2558d527746eb178166f7f2717c5448056bf96a7563c93d6ab8","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"fdb3be6f69f0b2558d527746eb178166f7f2717c5448056bf96a7563c93d6ab8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/critical-half-pnt-consumer/SourceActualCriticalHalfPntConsumerAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalHalfPntConsumer

namespace GRWTSK.Analysis.AsymptoticAnalysis.SourceActualCriticalHalfPntConsumer.Variantfdb3be6f69f0b2558d527746eb178166f7f2717c5448056bf96a7563c93d6ab8

open FormalResearch.RiemannHypothesis
open RH16ActualCriticalHalfPntConsumer
#check actualDampedXiFinitePrimitive_eq_half_convolution_pnt_tail
#print axioms actualDampedXiFinitePrimitive_eq_half_convolution_pnt_tail
#check actualDampedXiFinitePrimitive_half_pnt_majorant
#print axioms actualDampedXiFinitePrimitive_half_pnt_majorant
open SourceActualXiErrorConvolution
#check actualDampedXiFinitePrimitive_eq_error_convolutions
#print axioms actualDampedXiFinitePrimitive_eq_error_convolutions
open RH16ActualPntTailConvolution
#check actualMangoldtErrorConvolution_one_eq_neg_tail
#print axioms actualMangoldtErrorConvolution_one_eq_neg_tail
#check SourceActualMertensPntRate.actualRelativePsiTimeError_tail_abs_le
#print axioms SourceActualMertensPntRate.actualRelativePsiTimeError_tail_abs_le
#check SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_isBigO
#print axioms SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_isBigO
#print actualXiErrorConvolutionSevenValue
#print actualXiErrorConvolutionHalfHead
#print actualXiErrorConvolutionOneHead
#print actualCenteredMangoldtLogError
#print actualMangoldtErrorConvolution
#print SourceActualXiDampedFiniteBound.actualDampedXiFinitePrimitive
#print SourceActualPsiPntTimeDecay.actualRelativePsiTimeError
#print SourceMangoldtAbel.mangoldtLogPrefix
#print WeightedPrimeMertens.weightedMangoldt
#print Chebyshev.psi
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
