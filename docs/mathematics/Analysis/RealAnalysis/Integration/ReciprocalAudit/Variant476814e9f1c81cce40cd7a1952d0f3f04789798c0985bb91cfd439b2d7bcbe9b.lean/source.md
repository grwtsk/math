# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalAudit.Variant476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a295c8604ae55d442e42f1724a828ffa1fc9ae5` · SHA-256 `476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.Analysis.ReciprocalKernel
open FormalResearch.Analysis.ReciprocalKernel MeasureTheory Set
#check kernel_integrable
#check kernel_integral_quarter
#check sum_bounds
#check frequency_sum_bounds
#print axioms kernel_zero_sum
#print axioms kernel_integrable
#print axioms kernel_integral_quarter
#print axioms sum_bounds
#print axioms frequency_sum_bounds
example : (∑' n : ℕ, kernel 0 (n + 1 / 4)) = 0 := kernel_zero_sum _
example (b : ℝ) : IntegrableOn (kernel b) (Ioi (1 / 4)) :=
  kernel_integrable b (1 / 4) (by norm_num)
example : kernel 1 (1 / 4) = 64 / 17 := by norm_num [kernel]
```
