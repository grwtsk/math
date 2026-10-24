# Complete source: GRWTSK.Analysis.MeasureTheory.Apis2.Variant6bcc2e9a6df44b537efaee3cd49a9a8dbfd945dadc49df64dc88b35f8f7e12a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5c8ea5e066cafcad4c94725e4875dfd0a6485c5` · SHA-256 `6bcc2e9a6df44b537efaee3cd49a9a8dbfd945dadc49df64dc88b35f8f7e12a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.MeasureTheory.Function.Floor
open MeasureTheory Set
#check integral_neg_eq_self
#check MeasureTheory.Integrable.comp_neg
#check integrable_comp_neg_iff
#check measurePreserving_neg
#check MeasureTheory.MeasurePreserving.integrable_comp
#check MeasureTheory.IntegrableOn.integrable_indicator
#check integrable_indicator_iff
#check Real.measurable_log
#check measurable_log
#check measurable_pow
#check Real.measurable_rpow_const
#check Measurable.pow_const
#check Measurable.rpow_const
#check IntegrableOn.mono'
#check IntegrableOn.congr_fun
#check setIntegral_mono_on
#check Real.hasDerivAt_exp
#check Real.exp_injective
#check Real.exp_nonneg
#check ae_neq
#check ae_ne
#check Real.integrableOn_rpow_mul_exp_neg_mul_rpow
#check Real.integral_rpow_mul_exp_neg_mul_Ioi
```
