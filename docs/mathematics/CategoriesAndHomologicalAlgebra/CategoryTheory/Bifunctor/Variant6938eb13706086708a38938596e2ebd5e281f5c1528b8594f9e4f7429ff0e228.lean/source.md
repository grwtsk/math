# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cebab3a5a4b271b985f4d249920df7546ed5343` · SHA-256 `332fbe9ce5f89faea7ac6062b4d7384c046e1b4c12ab5875fbdde906df3f2ddc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Bifunctor.Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"df6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Control/Bifunctor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Functor
import Mathlib.Data.Sum.Basic
import Mathlib.Tactic.Common


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b

#align_import control.bifunctor from "leanprover-community/mathlib"@"dc1525fb3ef6eb4348fb1749c302d8abc303d34a"

/-!
# Functors with two arguments

This file defines bifunctors.

A bifunctor is a function `F : Type* → Type* → Type*` along with a bimap which turns `F α β`into
`F α' β'` given two functions `α → α'` and `β → β'`. It further
* respects the identity: `bimap id id = id`
* composes in the obvious way: `(bimap f' g') ∘ (bimap f g) = bimap (f' ∘ f) (g' ∘ g)`

## Main declarations

* `Bifunctor`: A typeclass for the bare bimap of a bifunctor.
* `LawfulBifunctor`: A typeclass asserting this bimap respects the bifunctor laws.
-/


universe u₀ u₁ u₂ v₀ v₁ v₂

open Function

/-- Lawless bifunctor. This typeclass only holds the data for the bimap. -/
class Bifunctor (F : Type u₀ → Type u₁ → Type u₂) where
  bimap : ∀ {α α' β β'}, (α → α') → (β → β') → F α β → F α' β'
#align bifunctor Bifunctor

export Bifunctor (bimap)

/-- Bifunctor. This typeclass asserts that a lawless `Bifunctor` is lawful. -/
class LawfulBifunctor (F : Type u₀ → Type u₁ → Type u₂) [Bifunctor F] : Prop where
  id_bimap : ∀ {α β} (x : F α β), bimap id id x = x
  bimap_bimap :
    ∀ {α₀ α₁ α₂ β₀ β₁ β₂} (f : α₀ → α₁) (f' : α₁ → α₂) (g : β₀ → β₁) (g' : β₁ → β₂) (x : F α₀ β₀),
      bimap f' g' (bimap f g x) = bimap (f' ∘ f) (g' ∘ g) x
#align is_lawful_bifunctor LawfulBifunctor

export LawfulBifunctor (id_bimap bimap_bimap)

attribute [higher_order bimap_id_id] id_bimap
#align is_lawful_bifunctor.bimap_id_id LawfulBifunctor.bimap_id_id

attribute [higher_order bimap_comp_bimap] bimap_bimap
#align is_lawful_bifunctor.bimap_comp_bimap LawfulBifunctor.bimap_comp_bimap

export LawfulBifunctor (bimap_id_id bimap_comp_bimap)

variable {F : Type u₀ → Type u₁ → Type u₂} [Bifunctor F]

namespace Bifunctor

/-- Left map of a bifunctor. -/
@[reducible]
def fst {α α' β} (f : α → α') : F α β → F α' β :=
  bimap f id
#align bifunctor.fst Bifunctor.fst

/-- Right map of a bifunctor. -/
@[reducible]
def snd {α β β'} (f : β → β') : F α β → F α β' :=
  bimap id f
#align bifunctor.snd Bifunctor.snd

variable [LawfulBifunctor F]

@[higher_order fst_id]
theorem id_fst : ∀ {α β} (x : F α β), fst id x = x :=
  @id_bimap _ _ _
#align bifunctor.id_fst Bifunctor.id_fst
#align bifunctor.fst_id Bifunctor.fst_id

@[higher_order snd_id]
theorem id_snd : ∀ {α β} (x : F α β), snd id x = x :=
  @id_bimap _ _ _
#align bifunctor.id_snd Bifunctor.id_snd
#align bifunctor.snd_id Bifunctor.snd_id

@[higher_order fst_comp_fst]
theorem comp_fst {α₀ α₁ α₂ β} (f : α₀ → α₁) (f' : α₁ → α₂) (x : F α₀ β) :
    fst f' (fst f x) = fst (f' ∘ f) x := by simp [fst, bimap_bimap]
#align bifunctor.comp_fst Bifunctor.comp_fst
#align bifunctor.fst_comp_fst Bifunctor.fst_comp_fst

@[higher_order fst_comp_snd]
theorem fst_snd {α₀ α₁ β₀ β₁} (f : α₀ → α₁) (f' : β₀ → β₁) (x : F α₀ β₀) :
    fst f (snd f' x) = bimap f f' x := by simp [fst, bimap_bimap]
#align bifunctor.fst_snd Bifunctor.fst_snd
#align bifunctor.fst_comp_snd Bifunctor.fst_comp_snd

@[higher_order snd_comp_fst]
theorem snd_fst {α₀ α₁ β₀ β₁} (f : α₀ → α₁) (f' : β₀ → β₁) (x : F α₀ β₀) :
    snd f' (fst f x) = bimap f f' x := by simp [snd, bimap_bimap]
#align bifunctor.snd_fst Bifunctor.snd_fst
#align bifunctor.snd_comp_fst Bifunctor.snd_comp_fst

@[higher_order snd_comp_snd]
theorem comp_snd {α β₀ β₁ β₂} (g : β₀ → β₁) (g' : β₁ → β₂) (x : F α β₀) :
    snd g' (snd g x) = snd (g' ∘ g) x := by simp [snd, bimap_bimap]
#align bifunctor.comp_snd Bifunctor.comp_snd
#align bifunctor.snd_comp_snd Bifunctor.snd_comp_snd

attribute [functor_norm]
  bimap_bimap comp_snd comp_fst snd_comp_snd snd_comp_fst fst_comp_snd fst_comp_fst
  bimap_comp_bimap bimap_id_id fst_id snd_id

end Bifunctor

open Functor

instance Prod.bifunctor : Bifunctor Prod where bimap := @Prod.map
#align prod.bifunctor Prod.bifunctor

instance Prod.lawfulBifunctor : LawfulBifunctor Prod := by
  refine' { .. } <;> intros <;> rfl
#align prod.is_lawful_bifunctor Prod.lawfulBifunctor

instance Bifunctor.const : Bifunctor Const where bimap f _ := f
#align bifunctor.const Bifunctor.const

instance LawfulBifunctor.const : LawfulBifunctor Const := by refine' { .. } <;> intros <;> rfl
#align is_lawful_bifunctor.const LawfulBifunctor.const

instance Bifunctor.flip : Bifunctor (flip F)
    where bimap {_α α' _β β'} f f' x := (bimap f' f x : F β' α')
#align bifunctor.flip Bifunctor.flip

instance LawfulBifunctor.flip [LawfulBifunctor F] : LawfulBifunctor (flip F) := by
  refine' { .. } <;> intros <;> simp [bimap, functor_norm]
#align is_lawful_bifunctor.flip LawfulBifunctor.flip

instance Sum.bifunctor : Bifunctor Sum where bimap := @Sum.map
#align sum.bifunctor Sum.bifunctor

instance Sum.lawfulBifunctor : LawfulBifunctor Sum := by
  refine' { .. } <;> aesop
#align sum.is_lawful_bifunctor Sum.lawfulBifunctor

open Bifunctor Functor

instance (priority := 10) Bifunctor.functor {α} : Functor (F α) where map f x := snd f x
#align bifunctor.functor Bifunctor.functor

instance (priority := 10) Bifunctor.lawfulFunctor [LawfulBifunctor F] {α} : LawfulFunctor (F α) :=
  -- Porting note: `mapConst` is required to prove new theorem
  by refine' { .. } <;> intros <;> simp [mapConst, Functor.map, functor_norm]
#align bifunctor.is_lawful_functor Bifunctor.lawfulFunctor

section Bicompl

variable (G : Type* → Type u₀) (H : Type* → Type u₁) [Functor G] [Functor H]

instance Function.bicompl.bifunctor : Bifunctor (bicompl F G H)
    where bimap {_α α' _β β'} f f' x := (bimap (map f) (map f') x : F (G α') (H β'))
#align function.bicompl.bifunctor Function.bicompl.bifunctor

instance Function.bicompl.lawfulBifunctor [LawfulFunctor G] [LawfulFunctor H] [LawfulBifunctor F] :
    LawfulBifunctor (bicompl F G H) := by
  constructor <;> intros <;> simp [bimap, map_id, map_comp_map, functor_norm]
#align function.bicompl.is_lawful_bifunctor Function.bicompl.lawfulBifunctor

end Bicompl

section Bicompr

variable (G : Type u₂ → Type*) [Functor G]

instance Function.bicompr.bifunctor : Bifunctor (bicompr G F)
    where bimap {_α α' _β β'} f f' x := (map (bimap f f') x : G (F α' β'))
#align function.bicompr.bifunctor Function.bicompr.bifunctor

instance Function.bicompr.lawfulBifunctor [LawfulFunctor G] [LawfulBifunctor F] :
    LawfulBifunctor (bicompr G F) := by
  constructor <;> intros <;> simp [bimap, functor_norm]
#align function.bicompr.is_lawful_bifunctor Function.bicompr.lawfulBifunctor

end Bicompr
```
