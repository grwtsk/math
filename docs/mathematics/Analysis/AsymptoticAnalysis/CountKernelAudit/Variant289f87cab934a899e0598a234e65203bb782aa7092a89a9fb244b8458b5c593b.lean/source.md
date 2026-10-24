# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.CountKernelAudit.Variant289f87cab934a899e0598a234e65203bb782aa7092a89a9fb244b8458b5c593b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90b7bac7299b770395628a6ec4315d515025b513` · SHA-256 `289f87cab934a899e0598a234e65203bb782aa7092a89a9fb244b8458b5c593b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.CountKernel

#print CommonMeanStieltjes.PositiveOccurrence
#print CommonMeanStieltjes.positiveOrdinate
#print CommonMeanStieltjes.positiveClosedCountKernel

#check CommonMeanStieltjes.PositiveOccurrence
#print axioms CommonMeanStieltjes.PositiveOccurrence
#check CommonMeanStieltjes.positiveOrdinate
#print axioms CommonMeanStieltjes.positiveOrdinate
#check CommonMeanStieltjes.positiveClosedCountSet
#print axioms CommonMeanStieltjes.positiveClosedCountSet
#check CommonMeanStieltjes.positiveClosedCountKernel
#print axioms CommonMeanStieltjes.positiveClosedCountKernel
#check CommonMeanStieltjes.positiveClosedWindowEquiv
#print axioms CommonMeanStieltjes.positiveClosedWindowEquiv
#check CommonMeanStieltjes.positive_closed_count_set_finite
#print axioms CommonMeanStieltjes.positive_closed_count_set_finite
#check CommonMeanStieltjes.positive_closed_count_kernel_hasFiniteSupport
#print axioms CommonMeanStieltjes.positive_closed_count_kernel_hasFiniteSupport
#check CommonMeanStieltjes.positive_closed_count_kernel_summable
#print axioms CommonMeanStieltjes.positive_closed_count_kernel_summable
#check CommonMeanStieltjes.positive_closed_count_kernel_tsum
#print axioms CommonMeanStieltjes.positive_closed_count_kernel_tsum
#check CommonMeanStieltjes.positiveStrictTailEquiv
#print axioms CommonMeanStieltjes.positiveStrictTailEquiv
#check CommonMeanStieltjes.positive_strict_tail_tsum_transport
#print axioms CommonMeanStieltjes.positive_strict_tail_tsum_transport

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```
