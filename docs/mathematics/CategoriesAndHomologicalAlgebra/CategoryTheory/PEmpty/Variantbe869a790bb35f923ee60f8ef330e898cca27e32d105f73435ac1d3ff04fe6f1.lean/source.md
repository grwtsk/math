# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PEmpty.Variantbe869a790bb35f923ee60f8ef330e898cca27e32d105f73435ac1d3ff04fe6f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ed98652b588df8ec71900c15822f9be6588da3d` · SHA-256 `f52531e61faeb4c33929f36408ec02385ab9ed4ee58801221d5e1d06f91e520f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorOfIsEmpty.Variant1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorOfIsEmpty.Variant1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/PEmpty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Discrete.Basic

/-!
# The empty category

Defines a category structure on `PEmpty`, and the unique functor `PEmpty ⥤ C` for any category `C`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorOfIsEmpty.Variant1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8

universe w v v' u u'
-- morphism levels before object levels. See note [CategoryTheory universes].
namespace CategoryTheory

variable (C : Type u) [Category.{v} C] (D : Type u') [Category.{v'} D]

instance (α : Type*) [IsEmpty α] : IsEmpty (Discrete α) := Function.isEmpty Discrete.as

/-- The (unique) functor from an empty category. -/
def functorOfIsEmpty [IsEmpty C] : C ⥤ D where
  obj := isEmptyElim
  map := fun {X} ↦ isEmptyElim X
  map_id := fun {X} ↦ isEmptyElim X
  map_comp := fun {X} ↦ isEmptyElim X

variable {C D}

/-- Any two functors out of an empty category are isomorphic. -/
def Functor.isEmptyExt [IsEmpty C] (F G : C ⥤ D) : F ≅ G :=
  NatIso.ofComponents isEmptyElim (fun {X} ↦ isEmptyElim X)

variable (C D)

/-- The equivalence between two empty categories. -/
def equivalenceOfIsEmpty [IsEmpty C] [IsEmpty D] : C ≌ D where
  functor := functorOfIsEmpty C D
  inverse := functorOfIsEmpty D C
  unitIso := Functor.isEmptyExt _ _
  counitIso := Functor.isEmptyExt _ _
  functor_unitIso_comp := isEmptyElim

/-- Equivalence between two empty categories. -/
def emptyEquivalence : Discrete.{w} PEmpty ≌ Discrete.{v} PEmpty := equivalenceOfIsEmpty _ _

namespace Functor

/-- The canonical functor out of the empty category. -/
def empty : Discrete.{w} PEmpty ⥤ C :=
  Discrete.functor PEmpty.elim

variable {C}

/-- Any two functors out of the empty category are isomorphic. -/
def emptyExt (F G : Discrete.{w} PEmpty ⥤ C) : F ≅ G :=
  Discrete.natIso fun x => x.as.elim

/-- Any functor out of the empty category is isomorphic to the canonical functor from the empty
category.
-/
def uniqueFromEmpty (F : Discrete.{w} PEmpty ⥤ C) : F ≅ empty C :=
  emptyExt _ _

/-- Any two functors out of the empty category are *equal*. You probably want to use
`emptyExt` instead of this.
-/
theorem empty_ext' (F G : Discrete.{w} PEmpty ⥤ C) : F = G :=
  Functor.ext (fun x => x.as.elim) fun x _ _ => x.as.elim

end Functor

end CategoryTheory
```
