# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dedup.Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0628e5becdc924ecd98556f046091526e3052dc` · SHA-256 `61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Data.MLList.Basic
import Std.Data.HashMap

/-!
# Lazy deduplication of lazy lists
-/

set_option autoImplicit true

open Std

namespace MLList

variable [Monad m] [BEq β] [Hashable β]

/-- Lazily deduplicate a lazy list, using a stored `HashMap`. -/
-- We choose `HashMap` here instead of `RBSet` as the initial application is `Expr`.
def dedupBy (L : MLList m α) (f : α → m β) : MLList m α :=
  ((L.liftM : MLList (StateT (HashMap β Unit) m) α) >>= fun a => do
      let b ← f a
      guard !(← get).contains b
      modify fun s => s.insert b ()
      pure a)
  |>.runState' ∅

/-- Lazily deduplicate a lazy list, using a stored `HashMap`. -/
def dedup (L : MLList m β) : MLList m β :=
  L.dedupBy (fun b => pure b)

end MLList
```
