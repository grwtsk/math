# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant0ceaa8173eb024184e2f00e10c248586ec173a09fe646a871784a768fe81c582

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fde16d8c9a10fe83cf834516d968d581f4ed1f8a` · SHA-256 `0ceaa8173eb024184e2f00e10c248586ec173a09fe646a871784a768fe81c582`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Floris van Doorn
-/

import Lean

/-!
## Definitions on Arrays

This file contains various definitions on `Array`. It does not contain
proofs about these definitions, those are contained in other files in `Mathlib.Data.Array`.
-/

set_option autoImplicit true

namespace Array

/-- Permute the array using a sequence of indices defining a cyclic permutation.
  If the list of indices `l = [i₁, i₂, ..., iₙ]` are all distinct then
  `(cyclicPermute! a l)[iₖ₊₁] = a[iₖ]` and `(cyclicPermute! a l)[i₀] = a[iₙ]` -/
def cyclicPermute! [Inhabited α] : Array α → List Nat → Array α
| a, []      => a
| a, i :: is => cyclicPermuteAux a is a[i]! i
where cyclicPermuteAux : Array α → List Nat → α → Nat → Array α
| a, [], x, i0 => a.set! i0 x
| a, i :: is, x, i0 =>
  let (y, a) := a.swapAt! i x
  cyclicPermuteAux a is y i0

/-- Permute the array using a list of cycles. -/
def permute! [Inhabited α] (a : Array α) (ls : List (List Nat)) : Array α :=
ls.foldl (init := a) (·.cyclicPermute! ·)
```
