# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Macro.Variante4b4cc4be3547c2fc27ba60e687a6b81e7ecfee6360a71ae5d6511a47109b1d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38bfdbf518dadb0b3aeb0b242ff046a39d002307` · SHA-256 `e4b4cc4be3547c2fc27ba60e687a6b81e7ecfee6360a71ae5d6511a47109b1d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

syntax:max "s!" interpolatedStr(term) : term

macro_rules
  | `(s! $interpStr) => do interpStr.expandInterpolatedStr (← `(String)) (← `(toString))
```
