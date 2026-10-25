# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ULift.Variant50756bb014a75a286025932023d8a424b344de1f7d2378a3733aab8cce3a23bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f7bd00f671d371e9ba434e813713223ae66cb20` · SHA-256 `50756bb014a75a286025932023d8a424b344de1f7d2378a3733aab8cce3a23bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Core

public section

deriving instance DecidableEq for ULift

instance [Subsingleton α] : Subsingleton (ULift α) where
  allEq := fun ⟨a⟩ ⟨b⟩ => congrArg ULift.up (Subsingleton.elim a b)
```
