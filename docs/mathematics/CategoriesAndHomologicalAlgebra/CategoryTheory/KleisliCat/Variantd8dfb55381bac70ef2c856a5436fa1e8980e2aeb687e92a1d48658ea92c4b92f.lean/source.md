# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KleisliCat.Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21f09a2d4e7cd89ca76b178e1c5ac62bcebc4226` · SHA-256 `d8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/

import Mathlib.CategoryTheory.Category.Basic

#align_import category_theory.category.Kleisli from "leanprover-community/mathlib"@"70d50ecfd4900dd6d328da39ab7ebd516abe4025"

/-!
# The Kleisli construction on the Type category

Define the Kleisli category for (control) monads.
`CategoryTheory/Monad/Kleisli` defines the general version for a monad on `C`, and demonstrates
the equivalence between the two.

## TODO

Generalise this to work with CategoryTheory.Monad
-/


universe u v

namespace CategoryTheory

-- This file is about Lean 3 declaration "Kleisli".
set_option linter.uppercaseLean3 false

/-- The Kleisli category on the (type-)monad `m`. Note that the monad is not assumed to be lawful
yet. -/
@[nolint unusedArguments]
def KleisliCat (_ : Type u → Type v) :=
  Type u
#align category_theory.Kleisli CategoryTheory.KleisliCat

/-- Construct an object of the Kleisli category from a type. -/
def KleisliCat.mk (m) (α : Type u) : KleisliCat m :=
  α
#align category_theory.Kleisli.mk CategoryTheory.KleisliCat.mk

instance KleisliCat.categoryStruct {m} [Monad.{u, v} m] :
    CategoryStruct (KleisliCat m) where
  Hom α β := α → m β
  id _ x := pure x
  comp f g := f >=> g
#align category_theory.Kleisli.category_struct CategoryTheory.KleisliCat.categoryStruct

instance KleisliCat.category {m} [Monad.{u, v} m] [LawfulMonad m] : Category (KleisliCat m) := by
  -- Porting note: was
  -- refine' { id_comp' := _, comp_id' := _, assoc' := _ } <;> intros <;> ext <;> unfold_projs <;>
  --  simp only [(· >=> ·), functor_norm]
  refine' { id_comp := _, comp_id := _, assoc := _ } <;> intros <;> refine funext (fun x => ?_) <;>
  simp [CategoryStruct.id, CategoryStruct.comp, (· >=> ·)]
#align category_theory.Kleisli.category CategoryTheory.KleisliCat.category

@[simp]
theorem KleisliCat.id_def {m} [Monad m] (α : KleisliCat m) : 𝟙 α = @pure m _ α :=
  rfl
#align category_theory.Kleisli.id_def CategoryTheory.KleisliCat.id_def

theorem KleisliCat.comp_def {m} [Monad m] (α β γ : KleisliCat m) (xs : α ⟶ β) (ys : β ⟶ γ) (a : α) :
    (xs ≫ ys) a = xs a >>= ys :=
  rfl
#align category_theory.Kleisli.comp_def CategoryTheory.KleisliCat.comp_def

instance : Inhabited (KleisliCat id) :=
  ⟨PUnit⟩

instance {α : Type u} [Inhabited α] : Inhabited (KleisliCat.mk id α) :=
  ⟨show α from default⟩

end CategoryTheory
```
