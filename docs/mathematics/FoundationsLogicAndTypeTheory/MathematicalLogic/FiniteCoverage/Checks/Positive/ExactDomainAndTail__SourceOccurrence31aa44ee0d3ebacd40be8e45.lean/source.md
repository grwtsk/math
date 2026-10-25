# Complete source: GRWTSK.Logic.FiniteCoverage.Checks.Positive.ExactDomainAndTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a5e031076180d2bd54f1dbd5fe529fb0d2da3ca` · SHA-256 `ca887f60818df881452b175ca95addab318a60b3e7c05ebc4ee546c1e9ec388c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example {α ι : Type*} (domain : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hcover : ∀ x ∈ domain, ∃ i ∈ indices, x ∈ cells i)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) : ∀ x ∈ domain, P x :=
  forall_on_of_finite_cover domain cells indices P hcover hlocal
example {α ι : Type*} (domain tail : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hcover : ∀ x ∈ domain, (∃ i ∈ indices, x ∈ cells i) ∨ x ∈ tail)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) (htail : ∀ x ∈ tail, P x) : ∀ x ∈ domain, P x :=
  forall_on_of_finite_cover_and_tail domain tail cells indices P hcover hlocal htail
example (a b : ℝ) (hab : a ≤ b) : ∃ P : ℝ → Prop, (∀ x ∈ Set.Icc a b, P x) ∧ ¬ (∀ x ∈ Set.Ici a, P x) :=
  finite_range_does_not_imply_ray a b hab
example : ∃ P : ℝ → Prop, P 0 ∧ P 1 ∧ ¬ (∀ x ∈ Set.Icc (0 : ℝ) 1, P x) := endpoints_do_not_cover_interval
```
