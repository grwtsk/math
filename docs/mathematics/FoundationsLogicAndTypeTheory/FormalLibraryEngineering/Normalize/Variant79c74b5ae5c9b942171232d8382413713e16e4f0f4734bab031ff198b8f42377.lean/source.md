# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalize.Variant79c74b5ae5c9b942171232d8382413713e16e4f0f4734bab031ff198b8f42377

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `117826d107b195d687277ee3265a6b5983c93b12` · SHA-256 `79c74b5ae5c9b942171232d8382413713e16e4f0f4734bab031ff198b8f42377`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Normalize.BitVec
public import Std.Tactic.BVDecide.Normalize.Bool
public import Std.Tactic.BVDecide.Normalize.Canonicalize
public import Std.Tactic.BVDecide.Normalize.Equal
public import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

/-!
This directory contains the lemmas used for the normalizing simp set of `bv_decide`.
They are a combination of:
- rules that turn hypotheses involving `BitVec` and `Bool` into something of the form `x = true`
  where `x` only consists of `BitVec` and `Bool` terms, notably no `Prop`. This makes it easy to
  reflect the terms.
- rewrite rules used by Bitwuzla.
-/
```
