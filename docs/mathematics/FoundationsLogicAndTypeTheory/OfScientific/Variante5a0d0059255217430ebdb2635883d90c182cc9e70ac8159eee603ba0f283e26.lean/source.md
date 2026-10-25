# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.OfScientific.Variante5a0d0059255217430ebdb2635883d90c182cc9e70ac8159eee603ba0f283e26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a37d9e4cb856554f7a859bdd52651d4c4c77256` · SHA-256 `e5a0d0059255217430ebdb2635883d90c182cc9e70ac8159eee603ba0f283e26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Data.Rat.Cast.CharZero
public import Mathlib.Data.Rat.Cast.Lemmas

/-!
# Scientific notation for characteristic-zero fields

The `OfScientific` instance for any characteristic zero field
is well-behaved with respect to the field operations.

It's probably possible, by adjusting the `OfScientific` instances,
to make this more general, but it's not needed at present.
-/

public section

set_option backward.isDefEq.respectTransparency false in
open Lean.Grind in
instance {K : Type*} [_root_.Field K] [CharZero K] : LawfulOfScientific K where
  ofScientific_def {m s e} := by
    rw [← NNRat.cast_ofScientific, NNRatCast.toOfScientific_def]
    simp only [LawfulOfScientific.ofScientific_def]
    split
    · norm_cast
      simp
    · norm_cast
```
