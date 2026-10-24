# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianSummationNonpositiveParameter

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66f8080062e14e0590cf4eaffd5888603ab1cdb2` · SHA-256 `bf5bac0c4947c20ad51e252f7e140bb75a433e869afae017f6dafc37744e214f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentional nonpositive-parameter control. Apache-2.0. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianDyadicSummation
open GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
-- Intended rejection: the actual value-sum consumer requires a strictly positive parameter.
example : Summable (fun j : ℕ => ((2:ℝ)^j)^(1:ℝ)*‖gaussianDyadicProfile 0 j (3/4)‖) := by
  obtain ⟨C,hC,h⟩ := gaussianDyadicProfile_values_summed 1 (by norm_num)
  exact (h 0 (le_refl (0:ℝ)) (3/4)).1
```
