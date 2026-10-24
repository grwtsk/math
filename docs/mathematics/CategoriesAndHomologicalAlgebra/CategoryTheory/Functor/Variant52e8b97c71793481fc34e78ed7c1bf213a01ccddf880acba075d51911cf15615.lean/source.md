# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61864507fb3f78f0843a8f4fce88cb4a19d7692a` · SHA-256 `274e92e0bbb4b02759280b76af858424cb6819e4542bd4e96395e0c557921160`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MapEquiv.Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MapEquiv.Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Equiv/Functor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Simon Hudon, Kim Morrison
-/
import Mathlib.Control.Bifunctor
import Mathlib.Logic.Equiv.Defs

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



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MapEquiv.Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329

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

@[simp]
theorem mapEquiv_apply (h : α ≃ β) (x : f α) : (mapEquiv f h : f α ≃ f β) x = map h x :=
  rfl

@[simp]
theorem mapEquiv_symm_apply (h : α ≃ β) (y : f β) :
    (mapEquiv f h : f α ≃ f β).symm y = map h.symm y :=
  rfl

@[simp]
theorem mapEquiv_refl : mapEquiv f (Equiv.refl α) = Equiv.refl (f α) := by
  ext x
  simp only [mapEquiv_apply, refl_apply]
  exact LawfulFunctor.id_map x

end Functor

namespace Bifunctor

variable {α' β' : Type v} (F : Type u → Type v → Type w) [Bifunctor F] [LawfulBifunctor F]

/-- Apply a bifunctor to a pair of `Equiv`s. -/
def mapEquiv (h : α ≃ β) (h' : α' ≃ β') : F α α' ≃ F β β' where
  toFun := bimap h h'
  invFun := bimap h.symm h'.symm
  left_inv x := by simp [bimap_bimap, id_bimap]
  right_inv x := by simp [bimap_bimap, id_bimap]

@[simp]
theorem mapEquiv_apply (h : α ≃ β) (h' : α' ≃ β') (x : F α α') :
    (mapEquiv F h h' : F α α' ≃ F β β') x = bimap h h' x :=
  rfl

@[simp]
theorem mapEquiv_symm_apply (h : α ≃ β) (h' : α' ≃ β') (y : F β β') :
    (mapEquiv F h h' : F α α' ≃ F β β').symm y = bimap h.symm h'.symm y :=
  rfl

@[simp]
theorem mapEquiv_refl_refl : mapEquiv F (Equiv.refl α) (Equiv.refl α') = Equiv.refl (F α α') := by
  ext x
  simp [id_bimap]

end Bifunctor
````
