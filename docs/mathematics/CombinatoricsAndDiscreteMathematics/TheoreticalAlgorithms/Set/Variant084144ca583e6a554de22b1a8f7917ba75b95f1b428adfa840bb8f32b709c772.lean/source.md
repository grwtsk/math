# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Variant084144ca583e6a554de22b1a8f7917ba75b95f1b428adfa840bb8f32b709c772

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59b1dbf31a6eb5d334a46e6d6bc9bd94f7d69c16` · SHA-256 `084144ca583e6a554de22b1a8f7917ba75b95f1b428adfa840bb8f32b709c772`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module

prelude
public import Init.Tactics

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.


/--
Replaces the element at a given index in an array.

No bounds check is performed, but the function requires a proof that the index is in bounds. This
proof can usually be omitted, and will be synthesized automatically.

The array is modified in-place if there are no other references to it.

Examples:
* `#[0, 1, 2].set 1 5 = #[0, 5, 2]`
* `#["orange", "apple"].set 1 "grape" = #["orange", "grape"]`
-/
@[extern "lean_array_fset", expose]
def Array.set (xs : Array α) (i : @& Nat) (v : α) (h : i < xs.size := by get_elem_tactic) :
    Array α where
  toList := xs.toList.set i v

/--
Replaces the element at the provided index in an array. The array is returned unmodified if the
index is out of bounds.

The array is modified in-place if there are no other references to it.

Examples:
* `#[0, 1, 2].setIfInBounds 1 5 = #[0, 5, 2]`
* `#["orange", "apple"].setIfInBounds 1 "grape" = #["orange", "grape"]`
* `#["orange", "apple"].setIfInBounds 5 "grape" = #["orange", "apple"]`
-/
@[inline, expose] def Array.setIfInBounds (xs : Array α) (i : Nat) (v : α) : Array α :=
  dite (LT.lt i xs.size) (fun h => xs.set i v h) (fun _ => xs)

/--
Set an element in an array, or panic if the index is out of bounds.

This will perform the update destructively provided that `a` has a reference
count of 1 when called.
-/
@[extern "lean_array_set", expose]
def Array.set! (xs : Array α) (i : @& Nat) (v : α) : Array α :=
  Array.setIfInBounds xs i v
```
