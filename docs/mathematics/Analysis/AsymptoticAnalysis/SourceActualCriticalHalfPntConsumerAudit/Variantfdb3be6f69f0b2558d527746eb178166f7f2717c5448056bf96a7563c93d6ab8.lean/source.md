# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SourceActualCriticalHalfPntConsumerAudit.Variantfdb3be6f69f0b2558d527746eb178166f7f2717c5448056bf96a7563c93d6ab8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6dff428e300ed47080cdcb8361bbde91741849e` · SHA-256 `fdb3be6f69f0b2558d527746eb178166f7f2717c5448056bf96a7563c93d6ab8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCriticalHalfPntConsumer
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
```
