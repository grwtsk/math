# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Variantf59eb3e5b3645125d7db91fad964003f22dfbe33c7111c5222b2556bd26a9870

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c63a9edfac5200084b2947dce401803b2694e39` · SHA-256 `f59eb3e5b3645125d7db91fad964003f22dfbe33c7111c5222b2556bd26a9870`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Set.Image

/-!
# Booleans and set operations

This file contains two trivial lemmas about `Bool`, `Set.univ`, and `Set.range`.
-/


open Set

namespace Bool

@[simp]
theorem univ_eq : (univ : Set Bool) = {false, true} :=
  (eq_univ_of_forall Bool.dichotomy).symm

@[simp]
theorem range_eq {α : Type*} (f : Bool → α) : range f = {f false, f true} := by
  rw [← image_univ, univ_eq, image_pair]

@[simp] theorem compl_singleton (b : Bool) : ({b}ᶜ : Set Bool) = {!b} :=
  Set.ext fun _ => eq_not_iff.symm

end Bool
```
