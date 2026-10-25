# Complete source: GRWTSK.Logic.FiniteCoverage.Checks.Negative.ReverseEndpointCounterexample

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa0e636f27067547b04f4548bb3457867fdb50af` · SHA-256 `0ce8fd175d385868a3e0cb8c2663a8d8c9be089f7450a7ee2c72546d59cc328f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example : ∃ P : ℝ → Prop, P 0 ∧ P 1 ∧ (∀ x ∈ Set.Icc (0 : ℝ) 1, P x) := endpoints_do_not_cover_interval
```
