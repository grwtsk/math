# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Parity.Variant99056066b69bf59cf27e4bd6c6f0c116e053666484a8f59697977705e3c0a8c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12f1c613094722ccd044ebc13ce5b3cb817682b9` · SHA-256 `99056066b69bf59cf27e4bd6c6f0c116e053666484a8f59697977705e3c0a8c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Fintype.Card
public import Mathlib.Algebra.Group.Even
import all Init.Data.Fin.Fold -- for exposing `Fin.foldr`

/-!
# The cardinality of `Fin 2` is even.
-/

public section


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
