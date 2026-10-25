# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Compiler.Variant51b9c9ccad55495c526a9c733b367dbafcf49ee3746f80ddd971b56a7de45499

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `216c416291748dbb4e7b2746fa68424a2fd996c7` · SHA-256 `51b9c9ccad55495c526a9c733b367dbafcf49ee3746f80ddd971b56a7de45499`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.InlineAttrs
public import Lean.Compiler.Specialize
public import Lean.Compiler.ClosedTermCache
public import Lean.Compiler.ExternAttr
public import Lean.Compiler.ImplementedByAttr
public import Lean.Compiler.NeverExtractAttr
public import Lean.Compiler.IR
public import Lean.Compiler.CSimpAttr
public import Lean.Compiler.FFI
public import Lean.Compiler.MetaAttr
public import Lean.Compiler.NoncomputableAttr
public import Lean.Compiler.Main
public import Lean.Compiler.NameDemangling
public import Lean.Compiler.Old -- TODO: delete after we port code generator to Lean
```
