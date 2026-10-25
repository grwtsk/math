# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfNat.Variant11f61c2bcf2f9a9ad9631c787a1d6e9f5fa3681cd88944baae3df688b7eb65c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb3dbeebb64bd95cf8c6b3317766e84f279839f0` · SHA-256 `11f61c2bcf2f9a9ad9631c787a1d6e9f5fa3681cd88944baae3df688b7eb65c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Init

/-! # The `ofNat()` macro -/

/--
This macro is a shorthand for `OfNat.ofNat` combined with `no_index`.

When writing lemmas about `OfNat.ofNat`, the term needs to be wrapped
in `no_index` so as not to confuse `simp`, as `no_index (OfNat.ofNat n)`.

Some discussion is [on Zulip here](https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/.E2.9C.94.20Polynomial.2Ecoeff.20example/near/395438147).
-/
macro "ofNat(" n:term ")" : term => `(no_index (OfNat.ofNat $n))
```
