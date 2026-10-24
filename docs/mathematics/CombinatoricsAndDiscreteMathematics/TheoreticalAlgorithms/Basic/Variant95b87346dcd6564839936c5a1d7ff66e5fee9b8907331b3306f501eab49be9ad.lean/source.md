# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant95b87346dcd6564839936c5a1d7ff66e5fee9b8907331b3306f501eab49be9ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fe05f6c6adef82b406e3e025193eeb2a41a97ea` · SHA-256 `95b87346dcd6564839936c5a1d7ff66e5fee9b8907331b3306f501eab49be9ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Kim Morrison
-/
module

prelude
public import Init.Data.Range.Polymorphic.RangeIterator
import Init.Data.Range.Polymorphic.Iterators
import Init.Data.Range.Polymorphic.Nat
import Init.Omega

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Array

/--
Compares arrays lexicographically with respect to a comparison `lt` on their elements.

Specifically, `Array.lex as bs lt` is true if
* `bs` is larger than `as` and `as` is pairwise equivalent via `==` to the initial segment of `bs`,
  or
* there is an index `i` such that `lt as[i] bs[i]`, and for all `j < i`, `as[j] == bs[j]`.
-/
def lex [BEq α] (as bs : Array α) (lt : α → α → Bool := by exact (· < ·)) : Bool := Id.run do
  for h : i in 0...(min as.size bs.size) do
    -- TODO: `get_elem_tactic` should be able to find this itself.
    have : i < min as.size bs.size := Std.Rco.lt_upper_of_mem h
    if lt as[i] bs[i] then
      return true
    else if as[i] != bs[i] then
      return false
  return as.size < bs.size

end Array
```
