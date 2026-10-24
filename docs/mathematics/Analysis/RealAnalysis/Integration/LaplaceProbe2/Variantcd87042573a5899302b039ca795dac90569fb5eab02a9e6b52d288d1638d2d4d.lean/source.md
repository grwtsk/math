# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LaplaceProbe2.Variantcd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `020a872c3acf5834563e027cd6f8cefacb371803` · SHA-256 `cd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.Pow.Complex
#check Complex.ofReal_tsum
#check Complex.ofReal_log
#check Complex.ofReal_exp
#check MeasureTheory.Integrable.ofReal
#check MeasureTheory.Integrable.mul_bdd
#check MeasureTheory.Integrable.bdd_mul
#check MeasureTheory.Integrable.mul_continuousOn
#check MeasureTheory.Integrable.mono'
#check Complex.continuous_ofReal
#check Complex.ofRealCLM.integrable_comp
#check Complex.norm_real
#check Complex.summable_one_div_nat_add_one_cpow
#check Summable.ofReal
#check tsum_mul_right
```
