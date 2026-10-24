# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Parity.Variant2c1761205b2a7e14332da3a84ec19a174392624b54ae4eccaed66d83e0d853b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33677801f51caccc23ffafe5ececc6e88836ea1e` · SHA-256 `2c1761205b2a7e14332da3a84ec19a174392624b54ae4eccaed66d83e0d853b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Fintype.Card
import Mathlib.Algebra.Group.Even

/-!
# The cardinality of `Fin 2` is even.
-/


variable {α : Type*}

namespace Fintype

instance IsSquare.decidablePred [Mul α] [Fintype α] [DecidableEq α] :
    DecidablePred (IsSquare : α → Prop) := fun _ => Fintype.decidableExistsFintype

/-- The cardinality of `Fin 2` is even, `Fact` version.
This `Fact` is needed as an instance by `Matrix.SpecialLinearGroup.instNeg`. -/
instance card_fin_two : Fact (Even (Fintype.card (Fin 2))) :=
  ⟨⟨1, rfl⟩⟩

end Fintype
```
