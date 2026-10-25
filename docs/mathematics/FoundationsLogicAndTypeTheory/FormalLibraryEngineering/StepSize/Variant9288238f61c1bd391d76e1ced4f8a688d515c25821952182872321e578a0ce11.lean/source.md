# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StepSize.Variant9288238f61c1bd391d76e1ced4f8a688d515c25821952182872321e578a0ce11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61fe8330c763e86bf43e94495c709cf6e1e36cf8` · SHA-256 `9288238f61c1bd391d76e1ced4f8a688d515c25821952182872321e578a0ce11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.StepSize

@[expose] public section

/-!
This module provides a combinator that only yields every `n`-th element of another iterator.
-/

namespace Std
open Std.Iterators

@[always_inline, inline, inherit_doc IterM.stepSize]
def Iter.stepSize [Iterator α Id β] [IteratorAccess α Id]
    (it : Iter (α := α) β) (n : Nat) :
    Iter (α := Types.StepSizeIterator α Id β) β :=
  (it.toIterM.stepSize n).toIter

end Std
```
