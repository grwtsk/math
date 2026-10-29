-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToMon.Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ToMon.Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monad/EquivMon.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.CategoryTheory.Monad.Basic
import Mathlib.CategoryTheory.Monoidal.End
import Mathlib.CategoryTheory.Monoidal.Mon_

/-!

# The equivalence between `Monad C` and `Mon_ (C ⥤ C)`.

A monad "is just" a monoid in the category of endofunctors.

# Definitions/Theorems

1. `toMon` associates a monoid object in `C ⥤ C` to any monad on `C`.
2. `monadToMon` is the functorial version of `toMon`.
3. `ofMon` associates a monad on `C` to any monoid object in `C ⥤ C`.
4. `monadMonEquiv` is the equivalence between `Monad C` and `Mon_ (C ⥤ C)`.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToMon.Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc

namespace CategoryTheory

open Category

universe v u -- morphism levels before object levels. See note [category_theory universes].

variable {C : Type u} [Category.{v} C]

namespace Monad

attribute [local instance] endofunctorMonoidalCategory

/-- To every `Monad C` we associated a monoid object in `C ⥤ C`. -/
@[simps]
def toMon (M : Monad C) : Mon_ (C ⥤ C) where
  X := (M : C ⥤ C)
  one := M.η
  mul := M.μ
  mul_assoc := by ext; simp [M.assoc]

variable (C) in
/-- Passing from `Monad C` to `Mon_ (C ⥤ C)` is functorial. -/
@[simps]
def monadToMon : Monad C ⥤ Mon_ (C ⥤ C) where
  obj := toMon
  map f := { hom := f.toNatTrans }

/-- To every monoid object in `C ⥤ C` we associate a `Monad C`. -/
@[simps η μ]
def ofMon (M : Mon_ (C ⥤ C)) : Monad C where
  toFunctor := M.X
  η := M.one
  μ := M.mul
  left_unit := fun X => by
    simpa [-Mon_.mul_one] using congrArg (fun t ↦ t.app X) M.mul_one
  right_unit := fun X => by
    simpa [-Mon_.one_mul] using congrArg (fun t ↦ t.app X) M.one_mul
  assoc := fun X => by
    simpa [-Mon_.mul_assoc] using congrArg (fun t ↦ t.app X) M.mul_assoc

-- Porting note: `@[simps]` fails to generate `ofMon_obj`:
@[simp] lemma ofMon_obj (M : Mon_ (C ⥤ C)) (X : C) : (ofMon M).obj X = M.X.obj X := rfl

variable (C)

/-- Passing from `Mon_ (C ⥤ C)` to `Monad C` is functorial. -/
@[simps]
def monToMonad : Mon_ (C ⥤ C) ⥤ Monad C where
  obj := ofMon
  map {X Y} f :=
    { f.hom with
      app_η X := by
        simpa [-Mon_.Hom.one_hom] using congrArg (fun t ↦ t.app X) f.one_hom
      app_μ Z := by
        simpa [-Mon_.Hom.mul_hom] using congrArg (fun t ↦ t.app Z) f.mul_hom }

/-- Oh, monads are just monoids in the category of endofunctors (equivalence of categories). -/
@[simps]
def monadMonEquiv : Monad C ≌ Mon_ (C ⥤ C) where
  functor := monadToMon _
  inverse := monToMonad _
  unitIso :=
  { hom := { app := fun _ => { app := fun _ => 𝟙 _ } }
    inv := { app := fun _ => { app := fun _ => 𝟙 _ } } }
  counitIso :=
  { hom := { app := fun _ => { hom := 𝟙 _ } }
    inv := { app := fun _ => { hom := 𝟙 _ } } }

-- Sanity check
example (A : Monad C) {X : C} : ((monadMonEquiv C).unitIso.app A).hom.app X = 𝟙 _ :=
  rfl

end Monad

end CategoryTheory
