# Complete source: GRWTSK.Logic.FiniteCoverage.Checks.Negative.MissingTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cc222afa41a2c67745b063e8089687971ca15d5` · SHA-256 `cbe295d04188c2c8a6336d4e5fd54710d5cc2b899b8964560f147972501848f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example {α ι : Type*} (domain tail : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hcover : ∀ x ∈ domain, (∃ i ∈ indices, x ∈ cells i) ∨ x ∈ tail)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) : ∀ x ∈ domain, P x :=
  forall_on_of_finite_cover_and_tail domain tail cells indices P hcover hlocal
```
