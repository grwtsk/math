# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Macro.Variant8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2c51ee4ba6c90a495cf4e225e6cc49b30af6964` · SHA-256 `8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public meta import Init.Meta
public import Init.Notation

public section

namespace Std

syntax:max "f!" interpolatedStr(term) : term

macro_rules
  | `(f! $interpStr) => do interpStr.expandInterpolatedStr (← `(Format)) (← `(Std.format))

end Std
```
