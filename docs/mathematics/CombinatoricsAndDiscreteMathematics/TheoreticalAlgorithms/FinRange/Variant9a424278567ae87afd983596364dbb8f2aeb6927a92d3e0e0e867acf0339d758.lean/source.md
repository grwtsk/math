# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRange.Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1b42035f7aa8b9b1d191a52d9b0f0a895e382ef` · SHA-256 `9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

prelude
public import Init.Data.Array.Basic
import Init.Data.Array.Lemmas
import Init.Data.Array.OfFn
import Init.Data.Fin.Lemmas
import Init.Omega

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Array

/--
Returns an array of all elements of `Fin n` in order, starting at `0`.

Examples:
 * `Array.finRange 0 = (#[] : Array (Fin 0))`
 * `Array.finRange 2 = (#[0, 1] : Array (Fin 2))`
-/
@[expose, instance_reducible] protected def finRange (n : Nat) : Array (Fin n) := ofFn fun i => i

@[simp, grind =] theorem size_finRange {n} : (Array.finRange n).size = n := by
  simp [Array.finRange]

@[simp, grind =] theorem getElem_finRange {i : Nat} (h : i < (Array.finRange n).size) :
    (Array.finRange n)[i] = Fin.cast size_finRange ⟨i, h⟩ := by
  simp [Array.finRange]

@[simp] theorem finRange_zero : Array.finRange 0 = #[] := by simp [Array.finRange]

theorem finRange_succ {n} : Array.finRange (n+1) = #[0] ++ (Array.finRange n).map Fin.succ := by
  ext
  · simp [Nat.add_comm]
  · simp [getElem_append]
    split <;>
    · simp; omega

theorem finRange_succ_last {n} :
    Array.finRange (n+1) = (Array.finRange n).map Fin.castSucc ++ #[Fin.last n] := by
  ext
  · simp
  · simp [getElem_push]
    split
    · simp
    · simp_all
      omega

@[grind _=_]
theorem finRange_reverse {n} : (Array.finRange n).reverse = (Array.finRange n).map Fin.rev := by
  ext i h
  · simp
  · simp
    omega

end Array
```
