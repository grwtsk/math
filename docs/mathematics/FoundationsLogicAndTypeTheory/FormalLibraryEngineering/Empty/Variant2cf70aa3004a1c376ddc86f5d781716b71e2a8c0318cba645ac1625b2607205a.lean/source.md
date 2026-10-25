# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variant2cf70aa3004a1c376ddc86f5d781716b71e2a8c0318cba645ac1625b2607205a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f75012df408a11e3008a6575200c464c8326e70` · SHA-256 `2cf70aa3004a1c376ddc86f5d781716b71e2a8c0318cba645ac1625b2607205a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Monadic.Empty

@[expose] public section

namespace Std

/--
Returns an iterator that terminates immediately.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[always_inline, inline]
def Iter.empty (β : Type w) :=
  ((IterM.empty Id β).toIter : Iter β)

end Std
```
