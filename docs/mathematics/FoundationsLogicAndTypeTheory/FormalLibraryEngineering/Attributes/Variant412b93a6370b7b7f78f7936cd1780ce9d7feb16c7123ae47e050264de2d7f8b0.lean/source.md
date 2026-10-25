# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attributes.Variant412b93a6370b7b7f78f7936cd1780ce9d7feb16c7123ae47e050264de2d7f8b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `549797d21aef7093fdac20d303198c5410d5469e` · SHA-256 `412b93a6370b7b7f78f7936cd1780ce9d7feb16c7123ae47e050264de2d7f8b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.DSL.AttributesCore

open Lean

namespace Lake

public builtin_initialize
  registerBuiltinAttribute {
    ref             := by exact decl_name%
    name            := `test_runner
    descr           := testDriverAttr.attr.descr
    add             := fun decl stx attrKind => do
      logWarningAt stx "@[test_runner] has been deprecated, use @[test_driver] instead"
      testDriverAttr.attr.add decl stx attrKind
    applicationTime := testDriverAttr.attr.applicationTime
    erase           := fun decl => testDriverAttr.attr.erase decl
 }
```
