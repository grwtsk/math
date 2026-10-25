# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks.Negative.PromoteDomainToUniverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26934f8c019b703b1075004112ae5ebd5380e0bd` · SHA-256 `bdb1af2468d6954123adfc8969287aeb11b6c29fe36950d472e0133bde16dc3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example {α ι : Type*} (domain : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hcover : ∀ x ∈ domain, ∃ i ∈ indices, x ∈ cells i)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) : ∀ x, P x :=
  forall_on_of_finite_cover domain cells indices P hcover hlocal
```
