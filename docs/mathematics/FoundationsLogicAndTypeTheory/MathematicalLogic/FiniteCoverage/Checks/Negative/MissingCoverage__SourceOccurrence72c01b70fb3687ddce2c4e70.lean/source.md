# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks.Negative.MissingCoverage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf01e22d136cb5122c6b7d45c3153f9280d98167` · SHA-256 `132a316cf186af1d5ff6f1d3592f287a1ffc07a72027f29a3a3cf78665489e48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example {α ι : Type*} (domain : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) : ∀ x ∈ domain, P x :=
  forall_on_of_finite_cover domain cells indices P hlocal
```
