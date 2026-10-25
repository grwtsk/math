# Complete source: GRWTSK.Logic.FiniteCoverage.Checks.Negative.PromoteDomainToUniverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a77b8ae732a7e050c10d978a2afa6184040ffaf4` · SHA-256 `5b2fe1bf38678b86059d8508016b2e0ba1be1159981878ec78494fe0bf699c01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example {α ι : Type*} (domain : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hcover : ∀ x ∈ domain, ∃ i ∈ indices, x ∈ cells i)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) : ∀ x, P x :=
  forall_on_of_finite_cover domain cells indices P hcover hlocal
```
