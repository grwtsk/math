# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HardyRealizationProbe.Variant73c4dca9167cde1bf8065fadc0bd3dcad6ae46278276427973908406e16added

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0fec0f854714b81847bfe245af08d07c6dd7bec` · SHA-256 `73c4dca9167cde1bf8065fadc0bd3dcad6ae46278276427973908406e16added`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Zeta23.WeilEF.VerticalLine
import Mathlib.Analysis.Fourier.LpSpace
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
set_option pp.universes true
#check @Zeta23.WeilEF.vertical_line_shift
#print axioms Zeta23.WeilEF.vertical_line_shift
#check @Zeta23.WeilEF.integrable_line
#print axioms Zeta23.WeilEF.integrable_line
#check @MeasureTheory.Lp.fourierTransformₗᵢ
#check @MeasureTheory.Lp.fourierInv_toTemperedDistribution_eq
#check @ae_eq_of_integral_contDiff_smul_eq
#check @VectorFourier.integral_bilin_fourierIntegral_eq_flip
#check @FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension.restriction
#check @FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension.restriction_ae
#check @FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension.zeroExtension_ae
```
