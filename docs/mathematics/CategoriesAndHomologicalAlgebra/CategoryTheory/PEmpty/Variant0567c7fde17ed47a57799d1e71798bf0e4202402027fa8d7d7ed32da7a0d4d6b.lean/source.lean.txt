-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EmptyEquivalence.Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EmptyEquivalence.Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/PEmpty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Bhavik Mehta
-/
import Mathlib.CategoryTheory.DiscreteCategory


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EmptyEquivalence.Variant7c4aaa79d12721a37cd48a80e7bd19731ef147cbb49cdc61649d43ebe593f1f5

#align_import category_theory.pempty from "leanprover-community/mathlib"@"2738d2ca56cbc63be80c3bd48e9ed90ad94e947d"

/-!
# The empty category

Defines a category structure on `PEmpty`, and the unique functor `PEmpty ⥤ C` for any category `C`.
-/

universe w v u
-- morphism levels before object levels. See note [CategoryTheory universes].
namespace CategoryTheory

namespace Functor

variable (C : Type u) [Category.{v} C]

/-- Equivalence between two empty categories. -/
def emptyEquivalence : Discrete.{w} PEmpty ≌ Discrete.{v} PEmpty where
  functor :=
    { obj := PEmpty.elim ∘ Discrete.as
      map := fun {X} _ _ => X.as.elim }
  inverse :=
    { obj := PEmpty.elim ∘ Discrete.as
      map := fun {X} _ _ => X.as.elim }
  unitIso :=
    { hom := { app := fun X => X.as.elim }
      inv := { app := fun X => X.as.elim } }
  counitIso :=
    { hom := { app := fun X => X.as.elim }
      inv := { app := fun X => X.as.elim } }
#align category_theory.functor.empty_equivalence CategoryTheory.Functor.emptyEquivalence

/-- The canonical functor out of the empty category. -/
def empty : Discrete.{w} PEmpty ⥤ C :=
  Discrete.functor PEmpty.elim
#align category_theory.functor.empty CategoryTheory.Functor.empty

variable {C}

/-- Any two functors out of the empty category are isomorphic. -/
def emptyExt (F G : Discrete.{w} PEmpty ⥤ C) : F ≅ G :=
  Discrete.natIso fun x => x.as.elim
#align category_theory.functor.empty_ext CategoryTheory.Functor.emptyExt

/-- Any functor out of the empty category is isomorphic to the canonical functor from the empty
category.
-/
def uniqueFromEmpty (F : Discrete.{w} PEmpty ⥤ C) : F ≅ empty C :=
  emptyExt _ _
#align category_theory.functor.unique_from_empty CategoryTheory.Functor.uniqueFromEmpty

/-- Any two functors out of the empty category are *equal*. You probably want to use
`emptyExt` instead of this.
-/
theorem empty_ext' (F G : Discrete.{w} PEmpty ⥤ C) : F = G :=
  Functor.ext (fun x => x.as.elim) fun x _ _ => x.as.elim
#align category_theory.functor.empty_ext' CategoryTheory.Functor.empty_ext'

end Functor

end CategoryTheory
