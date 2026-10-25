# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Partial.Variant9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab284a81813c0d47ec47e86c25c61e5f2aef045c` · SHA-256 `9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic

set_option linter.missingDocs true

public section

namespace Std

/--
A wrapper around an iterator that provides partial consumers. See `IterM.allowNontermination`.
-/
structure IterM.Partial {α : Type w} (m : Type w → Type w') (β : Type w) where
  /--
  The wrapped iterator, which was wrapped by `IterM.allowNontermination`.
  -/
  it : IterM (α := α) m β

/--
For an iterator `it`, `it.allowNontermination` provides potentially nonterminating variants of
consumers such as `toList`. They can be used without any proof of termination such as `Finite`
or `Productive`, but as they are implemented with the `partial` declaration modifier, they are
opaque for the kernel and it is impossible to prove anything about them.
-/
@[always_inline, inline, deprecated "The consumers on iterators do not require proofs of termination anymore. For example, use `it.toList` instead of `it.allowNontermination.toList`." (since := "2026-01-28")]
def IterM.allowNontermination {α : Type w} {m : Type w → Type w'} {β : Type w}
    (it : IterM (α := α) m β) : IterM.Partial (α := α) m β :=
  ⟨it⟩

end Std
```
