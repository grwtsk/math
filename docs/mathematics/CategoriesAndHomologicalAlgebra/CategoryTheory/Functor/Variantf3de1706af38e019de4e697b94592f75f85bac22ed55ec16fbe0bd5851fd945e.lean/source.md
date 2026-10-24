# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1039643a45bdea98acf930c1cd87ca314c0645e4` · SHA-256 `02006dfa222ef83ce15dfb5dfc7d1f49f354d928afc3d4e8adbf4b1c944eb32f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MapEquiv.Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MapEquiv.Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Logic/Equiv/Functor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Simon Hudon, Scott Morrison
-/
import Mathlib.Control.Bifunctor
import Mathlib.Logic.Equiv.Defs


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MapEquiv.Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226

#align_import logic.equiv.functor from "leanprover-community/mathlib"@"9407b03373c8cd201df99d6bc5514fc2db44054f"

/-!
# Functor and bifunctors can be applied to `Equiv`s.

We define
```lean
def Functor.mapEquiv (f : Type u → Type v) [Functor f] [LawfulFunctor f] :
  α ≃ β → f α ≃ f β
```
and
```lean
def Bifunctor.mapEquiv (F : Type u → Type v → Type w) [Bifunctor F] [LawfulBifunctor F] :
  α ≃ β → α' ≃ β' → F α α' ≃ F β β'
```
-/


universe u v w

variable {α β : Type u}

open Equiv

namespace Functor

variable (f : Type u → Type v) [Functor f] [LawfulFunctor f]

/-- Apply a functor to an `Equiv`. -/
def mapEquiv (h : α ≃ β) : f α ≃ f β where
  toFun := map h
  invFun := map h.symm
  left_inv x := by simp [map_map]
  right_inv x := by simp [map_map]
#align functor.map_equiv Functor.mapEquiv

@[simp]
theorem mapEquiv_apply (h : α ≃ β) (x : f α) : (mapEquiv f h : f α ≃ f β) x = map h x :=
  rfl
#align functor.map_equiv_apply Functor.mapEquiv_apply

@[simp]
theorem mapEquiv_symm_apply (h : α ≃ β) (y : f β) :
    (mapEquiv f h : f α ≃ f β).symm y = map h.symm y :=
  rfl
#align functor.map_equiv_symm_apply Functor.mapEquiv_symm_apply

@[simp]
theorem mapEquiv_refl : mapEquiv f (Equiv.refl α) = Equiv.refl (f α) := by
  ext x
  simp only [mapEquiv_apply, refl_apply]
  exact LawfulFunctor.id_map x
#align functor.map_equiv_refl Functor.mapEquiv_refl

end Functor

namespace Bifunctor

variable {α' β' : Type v} (F : Type u → Type v → Type w) [Bifunctor F] [LawfulBifunctor F]

/-- Apply a bifunctor to a pair of `Equiv`s. -/
def mapEquiv (h : α ≃ β) (h' : α' ≃ β') : F α α' ≃ F β β' where
  toFun := bimap h h'
  invFun := bimap h.symm h'.symm
  left_inv x := by simp [bimap_bimap, id_bimap]
  right_inv x := by simp [bimap_bimap, id_bimap]
#align bifunctor.map_equiv Bifunctor.mapEquiv

@[simp]
theorem mapEquiv_apply (h : α ≃ β) (h' : α' ≃ β') (x : F α α') :
    (mapEquiv F h h' : F α α' ≃ F β β') x = bimap h h' x :=
  rfl
#align bifunctor.map_equiv_apply Bifunctor.mapEquiv_apply

@[simp]
theorem mapEquiv_symm_apply (h : α ≃ β) (h' : α' ≃ β') (y : F β β') :
    (mapEquiv F h h' : F α α' ≃ F β β').symm y = bimap h.symm h'.symm y :=
  rfl
#align bifunctor.map_equiv_symm_apply Bifunctor.mapEquiv_symm_apply

@[simp]
theorem mapEquiv_refl_refl : mapEquiv F (Equiv.refl α) (Equiv.refl α') = Equiv.refl (F α α') := by
  ext x
  simp [id_bimap]
#align bifunctor.map_equiv_refl_refl Bifunctor.mapEquiv_refl_refl

end Bifunctor
````
