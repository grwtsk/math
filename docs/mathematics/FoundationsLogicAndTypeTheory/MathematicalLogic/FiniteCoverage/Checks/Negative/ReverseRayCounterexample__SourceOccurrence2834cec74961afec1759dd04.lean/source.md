# Complete source: GRWTSK.Logic.FiniteCoverage.Checks.Negative.ReverseRayCounterexample

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `492d4c38912bd7fb3cccd2fcac649bb24408ee2b` · SHA-256 `3797836a144458a54ccf2a7d9fd16112aaa29d50041da83b8f3e7e8c4f2d4426`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example (a b : ℝ) (hab : a ≤ b) : ∃ P : ℝ → Prop, (∀ x ∈ Set.Icc a b, P x) ∧ (∀ x ∈ Set.Ici a, P x) :=
  finite_range_does_not_imply_ray a b hab
```
