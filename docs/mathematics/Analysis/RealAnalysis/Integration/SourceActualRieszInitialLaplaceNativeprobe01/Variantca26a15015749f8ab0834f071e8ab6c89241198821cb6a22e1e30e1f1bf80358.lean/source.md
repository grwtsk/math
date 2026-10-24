# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNativeprobe01.Variantca26a15015749f8ab0834f071e8ab6c89241198821cb6a22e1e30e1f1bf80358

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `256ac0dddd7a418ab0375b374364041f5a243739` · SHA-256 `ca26a15015749f8ab0834f071e8ab6c89241198821cb6a22e1e30e1f1bf80358`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualRieszCenteredReconstruction
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

set_option linter.hashCommand false
set_option linter.style.setOption false
#check integrableOn_Ioi_deriv_of_nonneg
#check integral_Ioi_of_hasDerivAt_of_tendsto'
#check MeasureTheory.integral_Ioi_eq_integral_Ioc_add_integral_Ioi
#check intervalIntegral.integral_interval_add_Ioi
#check MeasureTheory.IntegrableOn.union
#check MeasureTheory.IntegrableOn.congr_fun
#check MeasureTheory.IntegrableOn.mono'
#check MeasureTheory.integrableOn_Ioi_iff_integrableOn_Ici
#check MeasureTheory.Integrable.mono'
#check MeasureTheory.integral_tsum_of_summable_integral_norm
#check MeasureTheory.lintegral_tsum
#check MeasureTheory.lintegral_coe_eq_integral
#check ArithmeticFunction.LSeriesSummable_vonMangoldt
#check LSeries.term_def₀
#check Complex.norm_cpow_eq_rpow_re_of_pos
#check Finset.sum_eq_tsum
#check tsum_eq_sum
#check hasSum_fintype
```
