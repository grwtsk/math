# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Apis.Variantd15c5043759ae33b5789819badbe3b9edbe59d650d72aa4d8b11e13469626d4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e05d90d3901115833f2d263a68ca68a1b1a5f427` · SHA-256 `d15c5043759ae33b5789819badbe3b9edbe59d650d72aa4d8b11e13469626d4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Function.Floor
open MeasureTheory Set Real
#check integrableOn_image_iff_integrableOn_abs_deriv_smul
#check integral_image_eq_integral_abs_deriv_smul
#check Real.range_exp
#check Real.image_exp_univ
#check integral_add_compl
#check integral_Iic_add_Ioi
#check integrableOn_Iio_iff_integrableOn_Iic
#check MeasureTheory.integrableOn_Ioi_comp_mul_left_iff
#check Real.Gamma_nat_eq_factorial
#check Real.rpow_natCast
#check Real.rpow_exp
#check integral_comp_neg_Ioi
#check integral_comp_neg_Iio
#check integrableOn_comp_neg_iff
#check IntegrableOn.union
#check integral_union
```
