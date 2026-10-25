# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant43752db6673550d08a43e55223b03940d6c1a62ebe00c8d2685a453f26aa8fc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a84047765eccb3fbb9a4e9c46fe47fd037e3407e` · SHA-256 `43752db6673550d08a43e55223b03940d6c1a62ebe00c8d2685a453f26aa8fc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/

@[simp] theorem Fin.zero_eta : (⟨0, Nat.zero_lt_succ _⟩ : Fin (n + 1)) = 0 := rfl
```
