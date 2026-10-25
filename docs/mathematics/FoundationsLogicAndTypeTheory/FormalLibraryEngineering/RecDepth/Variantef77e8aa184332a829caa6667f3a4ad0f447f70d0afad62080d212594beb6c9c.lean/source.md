# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecDepth.Variantef77e8aa184332a829caa6667f3a4ad0f447f70d0afad62080d212594beb6c9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `514645bcdf284c4ed2f9d6716ca6d6f89a570cf2` · SHA-256 `ef77e8aa184332a829caa6667f3a4ad0f447f70d0afad62080d212594beb6c9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Data.Options

public section

namespace Lean

register_builtin_option maxRecDepth : Nat := {
  defValue := defaultMaxRecDepth
  descr    := "maximum recursion depth for many Lean procedures, 0 means no limit"
}

end Lean
```
