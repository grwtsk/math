# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Total.Variant8d81427ae516aec6f6e0669a3f95453a8abd513cdee73fd5c506c67f1e2e091b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf43a94998a9fffad6f520ddd4ae13094d9f2c08` · SHA-256 `8d81427ae516aec6f6e0669a3f95453a8abd513cdee73fd5c506c67f1e2e091b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
A wrapper around an iterator that provides total consumers. See `IterM.ensureTermination`.
-/
structure IterM.Total {α : Type w} (m : Type w → Type w') (β : Type w) where
  /--
  The wrapped iterator, which was wrapped by `IterM.ensureTermination`.
  -/
  it : IterM (α := α) m β

/--
For an iterator {name}`it`, {lean}`it.ensureTermination` provides variants of consumers that always
terminate.
-/
@[always_inline, inline]
def IterM.ensureTermination {α : Type w} {β : Type w} {m : Type w → Type w'}
    (it : IterM (α := α) m β) :
  IterM.Total (α := α) m β :=
  ⟨it⟩

/--
A wrapper around an iterator that provides strictly terminating consumers. See
{name}`IterM.ensureTermination`.
-/
add_decl_doc IterM.Total

end Std
```
