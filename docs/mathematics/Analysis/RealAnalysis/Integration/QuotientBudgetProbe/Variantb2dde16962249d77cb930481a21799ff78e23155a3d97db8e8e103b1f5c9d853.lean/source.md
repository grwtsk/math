# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.QuotientBudgetProbe.Variantb2dde16962249d77cb930481a21799ff78e23155a3d97db8e8e103b1f5c9d853

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a00b1041e7938aa35b2a2e76961b80466f0bb77` · SHA-256 `b2dde16962249d77cb930481a21799ff78e23155a3d97db8e8e103b1f5c9d853`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
open MeasureTheory Filter Set
#check harmonic_eq_sum_Icc
#check harmonic_eq_sum_Icc
#check Real.hasDerivAt_sqrt
#check Real.sqrt_eq_exp
#check Real.rpow_neg_one_half
#check intervalIntegral.integral_eq_sub_of_hasDerivAt
#check intervalIntegral.integral_inv_sqrt
#check integral_Ioc_eq_integral_Icc
#check integral_Icc_eq_integral_Ioc
#check MeasureTheory.integral_mono_ae
#check MeasureTheory.norm_integral_le_integral_norm
#check ContinuousAt.congr_of_eventuallyEq
#check Complex.continuousAt_of_differentiableAt
#check Filter.EventuallyEq.eq_of_nhdsNE
#check ContinuousAt.eq_of_eventuallyEq
#check MeasureTheory.integrableOn_Icc_iff_integrableOn_Ioc
```
