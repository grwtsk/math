# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitblast.Variant31d06eb7b7f3a5aece455d8ada34fef0f224263696caf330db07f8cc3b53d280

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e8f705cb1a01bc52f8a35603b2c3f89b97b748d` · SHA-256 `31d06eb7b7f3a5aece455d8ada34fef0f224263696caf330db07f8cc3b53d280`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BoolExpr
public import Std.Tactic.BVDecide.Bitblast.BVExpr

@[expose] public section

/-!
This directory contains the implementation of the bitblaster itself. It is split up into two parts:
1. Bitblasting of generic boolean substructures for SMT-like problems in `BoolExpr`.
2. The specific bitblaster for `BitVec` problems with boolean substructure in `BVExpr`.
-/
```
