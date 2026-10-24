# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.AdmissionProbe.Variant08063b03afe4aa6e923b7c22985ad5eb895294dce2f8cb80eaf378b2eddf410b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57943206733897d025021786cce91b1096d37506` · SHA-256 `08063b03afe4aa6e923b7c22985ad5eb895294dce2f8cb80eaf378b2eddf410b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SamplingError
import Mathlib.MeasureTheory.Integral.ExpDecay
open MeasureTheory Set Real Filter Finset
#check Finset.sum_Icc_eq_sum_range
#check Finset.sum_Ico_eq_sum_range
#check Finset.sum_Icc_succ_top
#check Finset.sum_Icc_succ_bot
#check Finset.sum_Ico_add
#check Finset.sum_Ico_eq_sum_range
#check IntegrableOn.union
#check integrableOn_union
#check integrableOn_univ
#check IntegrableOn.congr_fun
#check IntegrableOn.mono_set
#check integrableOn_const
#check integrableOn_congr_fun
#check MeasureTheory.integrableOn_Ioi_iff_integrableOn_Ici
#check Real.exp_neg_integrableOn_Ioi
#check exp_neg_integrableOn_Ioi
#check ContinuousOn.integrableOn_Icc
#check IntegrableOn.congr
#check memLp_two_iff_integrable_sq
#check MemLp
```
