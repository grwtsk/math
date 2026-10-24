# Complete source: GRWTSK.Analysis.MeasureTheory.OperatorScoutProbe.Variantfc55024af3d7e934ee9e215fc4f0f2cb6dc3e5b82df2cd822426c666944b9bd3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd5ea6d01a7e2833366172000e737f68a6275f6d` · SHA-256 `fc55024af3d7e934ee9e215fc4f0f2cb6dc3e5b82df2cd822426c666944b9bd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Measure.Typeclasses.Finite
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
#check MeasureTheory.measurePreserving_sub_right
#check MeasureTheory.Lp.compMeasurePreservingₗᵢ
#check Continuous.compMeasurePreservingLp
#check ContinuousMap.continuous_of_continuous_uncurry
#check MeasureTheory.LpToLpRestrictCLM
#check MeasureTheory.memLp_indicator_iff_restrict
#check MeasureTheory.eLpNorm_indicator_eq_eLpNorm_restrict
#check MeasureTheory.Lp.memLp
#check MeasureTheory.Integrable.smul_of_top_right
#check MeasureTheory.norm_integral_le_integral_norm
#check MeasureTheory.LpToLpRestrictCLM_norm_le
```
