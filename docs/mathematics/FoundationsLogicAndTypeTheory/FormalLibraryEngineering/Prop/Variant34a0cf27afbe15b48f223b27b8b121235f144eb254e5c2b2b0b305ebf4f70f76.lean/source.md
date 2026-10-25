# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prop.Variant34a0cf27afbe15b48f223b27b8b121235f144eb254e5c2b2b0b305ebf4f70f76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a24e82a4c8034f5a27df5dca7b12a9a203270530` · SHA-256 `34a0cf27afbe15b48f223b27b8b121235f144eb254e5c2b2b0b305ebf4f70f76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.SimpLemmas

@[expose] public section

/-!
This module contains the `Prop` simplifying part of the `bv_normalize` simp set.
-/

namespace Std.Tactic.BVDecide
namespace Frontend.Normalize

attribute [bv_normalize] and_true
attribute [bv_normalize] true_and
attribute [bv_normalize] and_false
attribute [bv_normalize] false_and
attribute [bv_normalize] or_true
attribute [bv_normalize] true_or
attribute [bv_normalize] or_false
attribute [bv_normalize] false_or
attribute [bv_normalize] iff_true
attribute [bv_normalize] true_iff
attribute [bv_normalize] iff_false
attribute [bv_normalize] false_iff
attribute [bv_normalize] false_implies
attribute [bv_normalize] imp_false
attribute [bv_normalize] implies_true
attribute [bv_normalize] true_implies
attribute [bv_normalize] not_true
attribute [bv_normalize] not_false_iff
attribute [bv_normalize] eq_iff_iff

end Frontend.Normalize
end Std.Tactic.BVDecide
```
