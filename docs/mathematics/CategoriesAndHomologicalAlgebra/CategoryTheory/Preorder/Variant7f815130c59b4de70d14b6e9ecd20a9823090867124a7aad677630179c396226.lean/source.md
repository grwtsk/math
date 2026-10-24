# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preorder.Variant7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `605ebbea32e56b6ee975e6efee64e22c6d5180f8` · SHA-256 `7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Sina Hazratpour. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sina Hazratpour, Joël Riou
-/

import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts

/-!
# (Co)limits in a preorder category

We provide basic results about the nullary and binary (co)products in the associated category of
a preordered type.

-/

universe u

open CategoryTheory Limits

namespace Preorder

variable (C : Type u)

section OrderBot

variable [Preorder C] [OrderBot C]

/-- The least element in a preordered type is initial in the category
associated to this preorder. -/
def isInitialBot : IsInitial (⊥ : C) := IsInitial.ofUnique _

instance : HasInitial C := hasInitial_of_unique ⊥

end OrderBot

section OrderTop

variable [Preorder C] [OrderTop C]

/-- The greatest element of a preordered type is terminal in the category
associated to this preorder. -/
def isTerminalTop : IsTerminal (⊤ : C) := IsTerminal.ofUnique _

instance : HasTerminal C := hasTerminal_of_unique ⊤

end OrderTop

section SemilatticeInf

variable {C} [SemilatticeInf C]

/-- The infimum of two elements in a preordered type is a binary product in
the category associated to this preorder. -/
def isLimitBinaryFan (X Y : C) :
    IsLimit (BinaryFan.mk (P := X ⊓ Y) (homOfLE inf_le_left) (homOfLE inf_le_right)) :=
  BinaryFan.isLimitMk (fun s ↦ homOfLE (le_inf (leOfHom s.fst) (leOfHom s.snd)))
    (by intros; rfl) (by intros; rfl) (by intros; rfl)

end SemilatticeInf

section SemilatticeSup

variable {C} [SemilatticeSup C]

/-- The supremum of two elements in a preordered type is a binary coproduct
in the category associated to this preorder. -/
def isColimitBinaryCofan (X Y : C) :
    IsColimit (BinaryCofan.mk (P := X ⊔ Y) (homOfLE le_sup_left) (homOfLE le_sup_right)) :=
  BinaryCofan.isColimitMk (fun s ↦ homOfLE (sup_le (leOfHom s.inl) (leOfHom s.inr)))
    (by intros; rfl) (by intros; rfl) (by intros; rfl)

end SemilatticeSup

end Preorder
```
