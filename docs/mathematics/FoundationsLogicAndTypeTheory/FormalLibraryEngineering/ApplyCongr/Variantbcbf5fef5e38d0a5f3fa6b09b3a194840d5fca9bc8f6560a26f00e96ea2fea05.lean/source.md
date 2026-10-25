# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCongr.Variantbcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ff64b330d83865e6033d8df5465505833928420` · SHA-256 `bcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.ApplyCongr
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset

example (f g : ℤ → ℤ) (S : Finset ℤ) (h : ∀ m ∈ S, f m = g m) :
    Finset.sum S f = Finset.sum S g := by
  conv_lhs =>
    -- If we just call `congr` here, in the second goal we're helpless,
    -- because we are only given the opportunity to rewrite `f`.
    -- However `apply_congr` uses the appropriate `@[congr]` lemma,
    -- so we get to rewrite `f x`, in the presence of the crucial `H : x ∈ S` hypothesis.
    apply_congr
    · skip
    · simp [*]
```
