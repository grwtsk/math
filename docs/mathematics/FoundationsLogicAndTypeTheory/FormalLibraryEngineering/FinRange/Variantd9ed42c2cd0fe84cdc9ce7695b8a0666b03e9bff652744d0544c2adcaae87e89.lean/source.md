# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinRange.Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9a78b1a0690c487813956d4c504bf43c17371eb` · SHA-256 `d9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

prelude
public import Init.Data.Vector.Basic
import Init.Data.Fin.Lemmas
import Init.Data.Vector.Lemmas
import Init.Data.Vector.OfFn
import Init.Omega

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Vector

/-- `finRange n` is the vector of all elements of `Fin n` in order. -/
protected def finRange (n : Nat) : Vector (Fin n) n := ofFn fun i => i

@[simp, grind =] theorem getElem_finRange {i : Nat} (h : i < n) :
    (Vector.finRange n)[i] = ⟨i, h⟩ := by
  simp [Vector.finRange]

@[simp] theorem finRange_zero : Vector.finRange 0 = #v[] := by simp [Vector.finRange]

theorem finRange_succ {n} : Vector.finRange (n+1) =
    (#v[(0 : Fin (n+1))] ++ (Vector.finRange n).map Fin.succ).cast (by omega) := by
  ext i h
  · simp [getElem_append]
    split <;>
    · simp; omega

theorem finRange_succ_last {n} :
    Vector.finRange (n+1) = (Vector.finRange n).map Fin.castSucc ++ #v[Fin.last n] := by
  ext i h
  · simp [getElem_push]
    split
    · simp
    · simp_all
      omega

@[grind _=_]
theorem finRange_reverse {n} : (Vector.finRange n).reverse = (Vector.finRange n).map Fin.rev := by
  ext i h
  simp
  omega

end Vector
```
