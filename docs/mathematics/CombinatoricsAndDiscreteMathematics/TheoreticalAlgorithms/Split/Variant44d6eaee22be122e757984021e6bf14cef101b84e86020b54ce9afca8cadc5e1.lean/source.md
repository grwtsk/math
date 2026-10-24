# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Split.Variant44d6eaee22be122e757984021e6bf14cef101b84e86020b54ce9afca8cadc5e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a4482a524d6971ee37a5bad38902b3f5a3083ba` · SHA-256 `44d6eaee22be122e757984021e6bf14cef101b84e86020b54ce9afca8cadc5e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Thrane Christiansen
-/

module

prelude
public import Init.Data.Array.Subarray
import all Init.Data.Array.Subarray
import Init.Omega

public section

/-
This module contains splitting operations on subarrays that crucially rely on `omega` for proof
automation. Placing them in another module breaks an import cycle, because `omega` itself uses the
array library.
-/

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Subarray

/--
Removes the first `i` elements of the subarray. If there are `i` or fewer elements, the resulting
subarray is empty.
-/
def drop (arr : Subarray α) (i : Nat) : Subarray α := ⟨{
  array := arr.array
  start := min (arr.start + i) arr.stop
  stop := arr.stop
  start_le_stop := by omega
  stop_le_array_size := arr.stop_le_array_size
}⟩

/--
Keeps only the first `i` elements of the subarray. If there are `i` or fewer elements, the resulting
subarray is empty.
-/
def take (arr : Subarray α) (i : Nat) : Subarray α := ⟨{
  array := arr.array
  start := arr.start
  stop := min (arr.start + i) arr.stop
  start_le_stop := by
    have := arr.start_le_stop
    omega
  stop_le_array_size := by
    have := arr.stop_le_array_size
    omega
}⟩

/--
Splits a subarray into two parts, the first of which contains the first `i` elements and the second
of which contains the remainder.
-/
def split (s : Subarray α) (i : Fin s.size.succ) : (Subarray α × Subarray α) :=
  (s.take i, s.drop i)
```
