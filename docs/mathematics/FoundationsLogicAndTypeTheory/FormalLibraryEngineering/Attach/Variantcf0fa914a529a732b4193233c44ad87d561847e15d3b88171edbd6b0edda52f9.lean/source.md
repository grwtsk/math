# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attach.Variantcf0fa914a529a732b4193233c44ad87d561847e15d3b88171edbd6b0edda52f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e88677abdaaea87b9215be5c2dcee3774ab1525e` · SHA-256 `cf0fa914a529a732b4193233c44ad87d561847e15d3b88171edbd6b0edda52f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.Attach

public section

namespace Std
open Std.Iterators

@[cbv_opaque, always_inline, inline, expose, inherit_doc IterM.attachWith]
def Iter.attachWith {α β : Type w}
    [Iterator α Id β]
    (it : Iter (α := α) β) (P : β → Prop) (h : ∀ out, it.IsPlausibleIndirectOutput out → P out) :
  Iter (α := Types.Attach α Id P) { out : β // P out } :=
  (it.toIterM.attachWith P ?h).toIter
where finally
  case h =>
    simp only [← isPlausibleIndirectOutput_iff_isPlausibleIndirectOutput_toIterM]
    exact h

end Std
```
