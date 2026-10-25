# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Impl.Variantaea3176dfcb58c69fc585ad93ba948b0c8e8fa8a2500fdf792bc867e2e048e16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebc191fb652c2fd45abda4dbf795759353c6a78a` · SHA-256 `aea3176dfcb58c69fc585ad93ba948b0c8e8fa8a2500fdf792bc867e2e048e16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Substructure

@[expose] public section

/-!
This module contains the implementation of a bitblaster for general `BitVec` problems with boolean
substructure (`BVLogicalExpr`). It is the main entrypoint into the bitblasting framework.
-/
```
