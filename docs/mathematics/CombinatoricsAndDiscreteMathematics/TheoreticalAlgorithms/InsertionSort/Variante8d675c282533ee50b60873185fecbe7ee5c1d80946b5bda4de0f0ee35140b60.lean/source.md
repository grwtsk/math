# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InsertionSort.Variante8d675c282533ee50b60873185fecbe7ee5c1d80946b5bda4de0f0ee35140b60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `656f223e47a0980c3c28b50683a3589cc635e04d` · SHA-256 `e8d675c282533ee50b60873185fecbe7ee5c1d80946b5bda4de0f0ee35140b60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.Array.Basic

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

/--
Sorts an array using insertion sort.

The optional parameter `lt` specifies an ordering predicate. It defaults to `LT.lt`, which must be
decidable to be used for sorting.
-/
@[inline] def Array.insertionSort (xs : Array α) (lt : α → α → Bool := by exact (· < ·)) : Array α :=
  traverse xs 0 xs.size
where
  @[specialize] traverse (xs : Array α) (i : Nat) (fuel : Nat) : Array α :=
    match fuel with
    | 0      => xs
    | fuel+1 =>
      if h : i < xs.size then
        traverse (swapLoop xs i h) (i+1) fuel
      else
        xs
  @[specialize] swapLoop (xs : Array α) (j : Nat) (h : j < xs.size) : Array α :=
    match (generalizing := false) he:j with -- using `generalizing` because we don't want to refine the type of `h`
    | 0    => xs
    | j'+1 =>
      have h' : j' < xs.size := by subst j; exact Nat.lt_trans (Nat.lt_succ_self _) h
      if lt xs[j] xs[j'] then
        swapLoop (xs.swap j j') j' (by rw [size_swap]; assumption; done)
      else
        xs
```
