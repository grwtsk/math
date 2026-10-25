# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BasicAux.Variantfd7bfa5f3247c5a6ac558e6f00f21c8cb50704ad14099f914362b7edeb02f9cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39292e9792ef6b7dccffcf247599d19590c656e1` · SHA-256 `fd7bfa5f3247c5a6ac558e6f00f21c8cb50704ad14099f914362b7edeb02f9cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Util

public section

universe u

namespace Option

/--
Extracts the value from an `Option`, panicking on `none`.
-/
@[inline, expose] def get! {α : Type u} [Inhabited α] : Option α → α
  | some x => x
  | none   => panic! "value is none"

end Option
```
