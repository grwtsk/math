# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KleisliCat.Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b36cd151cad213d7b37bf6df9240ada35bf93009` · SHA-256 `aaa6a62b75bd8fd30401eb23f3aee40d3481dd2b598474e26e522e21d323c15f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KleisliCat.Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.KleisliCat.Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Category/KleisliCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/

import Mathlib.CategoryTheory.Category.Basic

/-!
# The Kleisli construction on the Type category

Define the Kleisli category for (control) monads.
`CategoryTheory/Monad/Kleisli` defines the general version for a monad on `C`, and demonstrates
the equivalence between the two.

## TODO

Generalise this to work with CategoryTheory.Monad
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KleisliCat.Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961

universe u v

namespace CategoryTheory

-- This file is about Lean 3 declaration "Kleisli".

/-- The Kleisli category on the (type-)monad `m`. Note that the monad is not assumed to be lawful
yet. -/
@[nolint unusedArguments]
def KleisliCat (_ : Type u → Type v) :=
  Type u

/-- Construct an object of the Kleisli category from a type. -/
def KleisliCat.mk (m) (α : Type u) : KleisliCat m :=
  α

instance KleisliCat.categoryStruct {m} [Monad.{u, v} m] :
    CategoryStruct (KleisliCat m) where
  Hom α β := α → m β
  id _ x := pure x
  comp f g := f >=> g

instance KleisliCat.category {m} [Monad.{u, v} m] [LawfulMonad m] : Category (KleisliCat m) := by
  -- Porting note: was
  -- refine' { id_comp' := _, comp_id' := _, assoc' := _ } <;> intros <;> ext <;> unfold_projs <;>
  --  simp only [(· >=> ·), functor_norm]
  refine { id_comp := ?_, comp_id := ?_, assoc := ?_ } <;> intros <;>
  refine funext (fun x => ?_) <;>
  simp +unfoldPartialApp [CategoryStruct.id, CategoryStruct.comp, (· >=> ·)]

@[simp]
theorem KleisliCat.id_def {m} [Monad m] (α : KleisliCat m) : 𝟙 α = @pure m _ α :=
  rfl

theorem KleisliCat.comp_def {m} [Monad m] (α β γ : KleisliCat m) (xs : α ⟶ β) (ys : β ⟶ γ) (a : α) :
    (xs ≫ ys) a = xs a >>= ys :=
  rfl

instance : Inhabited (KleisliCat id) :=
  ⟨PUnit⟩

instance {α : Type u} [Inhabited α] : Inhabited (KleisliCat.mk id α) :=
  ⟨show α from default⟩

end CategoryTheory
```
