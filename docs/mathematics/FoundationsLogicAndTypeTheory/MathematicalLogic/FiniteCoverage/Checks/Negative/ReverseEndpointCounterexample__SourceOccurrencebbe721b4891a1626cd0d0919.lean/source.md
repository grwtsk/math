# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks.Negative.ReverseEndpointCounterexample

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ef6727dda890b1b79144219831650abd345f42a` · SHA-256 `4166fb786c87fb6c6eba3e028c75dbbbeba0c78737888a012f43af63f7ef3a60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example : ∃ P : ℝ → Prop, P 0 ∧ P 1 ∧ (∀ x ∈ Set.Icc (0 : ℝ) 1, P x) := endpoints_do_not_cover_interval
```
