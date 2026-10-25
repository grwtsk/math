# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Total.Variantb45b89bc438e8ae412cfbda491bc2725f65e98e8049ceeffadca02b59af5ba75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3fd8e79c702b27be9d2649eeb55652cdc5b4b33` · SHA-256 `b45b89bc438e8ae412cfbda491bc2725f65e98e8049ceeffadca02b59af5ba75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic

set_option doc.verso true
set_option linter.missingDocs true

public section

namespace Std

/--
A wrapper around an iterator that provides total consumers. See `Iter.ensureTermination`.
-/
structure Iter.Total {α : Type w} (β : Type w) where
  /--
  The wrapped iterator, which was wrapped by `Iter.ensureTermination`.
  -/
  it : Iter (α := α) β

/--
For an iterator {name}`it`, {lean}`it.ensureTermination` provides variants of consumers that always
terminate.
-/
@[always_inline, inline]
def Iter.ensureTermination {α : Type w} {β : Type w}
    (it : Iter (α := α) β) :
  Iter.Total (α := α) β :=
  ⟨it⟩

/--
A wrapper around an iterator that provides strictly terminating consumers. See
{name}`Iter.ensureTermination`.
-/
add_decl_doc Iter.Total

end Std
```
