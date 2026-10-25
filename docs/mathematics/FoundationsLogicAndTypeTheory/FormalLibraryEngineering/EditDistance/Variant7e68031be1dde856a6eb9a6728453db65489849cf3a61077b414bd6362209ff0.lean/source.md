# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EditDistance.Variant7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6905dc5d3dfba9e4adc6d8d1d49cf149af9067b1` · SHA-256 `7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024-2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Thrane Christiansen
-/
module

prelude
public import Init.Data.String.Basic
import Init.Data.Vector.Basic
import Init.Data.Nat.Order
import Init.Data.Order.Lemmas
import Init.Data.Range
import Init.While
import Init.Data.String.Length

set_option linter.missingDocs true

namespace Lean.EditDistance

/--
Computes the Levenshtein distance between two strings, up to some cutoff.

If the return value is `none`, then the distance is certainly greater than the cutoff value, but a
returned `some` does not necessarily indicate that the edit distance is less than or equal to the
cutoff.
-/
public def levenshtein (str1 str2 : String) (cutoff : Nat) : Option Nat := Id.run do
  let len1 := str1.length
  let len2 := str2.length

  -- The lower bound on the Levenshtein distance is the difference in lengths
  if max len1 len2 - min len1 len2 > cutoff then return none

  let mut v0 := Vector.replicate (len2 + 1) 0
  let mut v1 := v0

  for h : i in [0:v0.size] do
    v0 := v0.set i i
  let mut iter1 := str1.startPos
  let mut i := 0
  while h1 : ¬iter1.IsAtEnd do
    v1 := v1.set 0 (i+1)
    let mut iter2 := str2.startPos
    let mut j : Fin (len2 + 1) := 0
    while h2 : ¬iter2.IsAtEnd do
      let j' : Fin (len2 + 1) := j + 1
      let deletionCost := v0[j'] + 1
      let insertionCost := v1[j] + 1
      let substCost :=
        if iter1.get h1 == iter2.get h2 then v0[j]
        else v0[j] + 1
      let cost := min (min deletionCost insertionCost) substCost
      v1 := v1.set j' cost
      iter2 := iter2.next h2
      j := j + 1
    iter1 := iter1.next h1
    i := i + 1
    -- Terminate early if it's impossible that the result is below the cutoff
    if v1.all (· > cutoff) then return none
    v0 := v1
  some v0[len2]
```
