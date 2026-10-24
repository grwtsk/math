# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524SamplingAlpha0No.Variant092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e93099604390055884de0de7d82dd906dfea97c4` · SHA-256 `092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

/-!
# Native zeroth sampling coefficient sign

This focused local lemma preserves the native fractional-part integral.
It supplies only the baseline sign premise, without a signed discrepancy budget.
AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

open MeasureTheory Set

/-- The native zeroth sampling coefficient is nonpositive. -/
theorem samplingAlpha0_nonpos : samplingAlpha0 ≤ 0 := by
  have hmoment : 0 ≤ signedCoefficientMoment 0 := by
    unfold signedCoefficientMoment
    apply setIntegral_nonneg measurableSet_Ioi
    intro u hu
    simp only [coefficientWeight, pow_zero, mul_one]
    exact mul_nonneg (Int.fract_nonneg u) (Real.rpow_pos_of_pos hu _).le
  unfold samplingAlpha0
  linarith

end FormalResearch.RiemannHypothesis.SourceSamplingCoefficients
```
