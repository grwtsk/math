# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GevreyCheck.Variant8278c7b1c9ac890a9380aa453303c3bf38e2aa3f537bb14e08cf1c25bcf3ef0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e58903593b0518b2b94cfe74babfaa3d845895c0` · SHA-256 `8278c7b1c9ac890a9380aa453303c3bf38e2aa3f537bb14e08cf1c25bcf3ef0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic
open MeasureTheory Function
#check HasCompactSupport.pow
#check HasCompactSupport.mul_left
#check HasCompactSupport.const_mul
#check HasCompactSupport.div_const
#check Continuous.integrable_of_hasCompactSupport
#check ContDiff.differentiable
#check ContDiff.deriv'
#check HasDerivAt.div_const
#check HasDerivAt.comp
#check integral_mul_deriv_eq_deriv_mul_of_integrable
#check integral_div
#check integral_add
#check Real.sq_sqrt
#check integral_nonneg
#check Real.sqrt_pos.2
#check HasCompactSupport.comp_homeomorph
#check HasCompactSupport.sub
#check HasCompactSupport.mul_right
```
