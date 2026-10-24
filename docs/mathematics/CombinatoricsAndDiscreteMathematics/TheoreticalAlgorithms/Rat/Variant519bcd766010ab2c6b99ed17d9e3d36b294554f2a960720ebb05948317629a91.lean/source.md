# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rat.Variant519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `446bf4a2e120af01974d493bab81c358237e2c2d` · SHA-256 `519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Batteries.Data.Float.Basic

@[expose] public section

/-! # Rational Numbers and Float -/

namespace Rat

/-- Convert this rational number to a `Float` value. -/
protected def toFloat (a : Rat) : Float := a.num.divFloat a.den

/-- Convert this floating point number to a rational value. -/
protected def _root_.Float.toRat? (a : Float) : Option Rat :=
  a.toRatParts.map fun (v, exp) =>
    mkRat (v.sign * v.natAbs <<< exp.toNat) (1 <<< (-exp).toNat)

/--
Convert this floating point number to a rational value,
mapping non-finite values (`inf`, `-inf`, `nan`) to 0.
-/
protected def _root_.Float.toRat0 (a : Float) : Rat := a.toRat?.getD 0

instance : Coe Rat Float := ⟨Rat.toFloat⟩

end Rat
```
