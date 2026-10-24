# Complete source: GRWTSK.Topology.GeneralTopology.Hom.Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d56877b276e21becfaae28db72d31db56a327439` · SHA-256 `c1c9ad2c3a1d352a0f41883468281fbec532fae81c636b6cf82c01069f96c81b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.LocallyBoundedMap.Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.LocallyBoundedMap.Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Bornology/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Topology.Bornology.Basic


namespace GRWTSK.Topology.GeneralTopology.LocallyBoundedMap.Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b

#align_import topology.bornology.hom from "leanprover-community/mathlib"@"e3d9ab8faa9dea8f78155c6c27d62a621f4c152d"

/-!
# Locally bounded maps

This file defines locally bounded maps between bornologies.

We use the `FunLike` design, so each type of morphisms has a companion typeclass which is meant to
be satisfied by itself and all stricter types.

## Types of morphisms

* `LocallyBoundedMap`: Locally bounded maps. Maps which preserve boundedness.

## Typeclasses

* `LocallyBoundedMapClass`
-/


open Bornology Filter Function Set

variable {F α β γ δ : Type*}

/-- The type of bounded maps from `α` to `β`, the maps which send a bounded set to a bounded set. -/
structure LocallyBoundedMap (α β : Type*) [Bornology α] [Bornology β] where
  /-- The function underlying a locally bounded map -/
  toFun : α → β
  /-- The pullback of the `Bornology.cobounded` filter under the function is contained in the
  cobounded filter. Equivalently, the function maps bounded sets to bounded sets. -/
  comap_cobounded_le' : (cobounded β).comap toFun ≤ cobounded α
#align locally_bounded_map LocallyBoundedMap

section

/-- `LocallyBoundedMapClass F α β` states that `F` is a type of bounded maps.

You should extend this class when you extend `LocallyBoundedMap`. -/
class LocallyBoundedMapClass (F : Type*) (α β : outParam <| Type*) [Bornology α]
    [Bornology β] extends FunLike F α fun _ => β where
  /-- The pullback of the `Bornology.cobounded` filter under the function is contained in the
  cobounded filter. Equivalently, the function maps bounded sets to bounded sets. -/
  comap_cobounded_le (f : F) : (cobounded β).comap f ≤ cobounded α
#align locally_bounded_map_class LocallyBoundedMapClass

end

export LocallyBoundedMapClass (comap_cobounded_le)

theorem IsBounded.image [Bornology α] [Bornology β] [LocallyBoundedMapClass F α β] {f : F}
    {s : Set α} (hs : IsBounded s) : IsBounded (f '' s) :=
  comap_cobounded_le_iff.1 (comap_cobounded_le f) hs
#align is_bounded.image IsBounded.image

/-- Turn an element of a type `F` satisfying `LocallyBoundedMapClass F α β` into an actual
`LocallyBoundedMap`. This is declared as the default coercion from `F` to
`LocallyBoundedMap α β`. -/
@[coe]
def LocallyBoundedMapClass.toLocallyBoundedMap [Bornology α] [Bornology β]
    [LocallyBoundedMapClass F α β] (f : F) : LocallyBoundedMap α β where
  toFun := f
  comap_cobounded_le' := comap_cobounded_le f

instance [Bornology α] [Bornology β] [LocallyBoundedMapClass F α β] :
    CoeTC F (LocallyBoundedMap α β) :=
  ⟨fun f => ⟨f, comap_cobounded_le f⟩⟩

namespace LocallyBoundedMap

variable [Bornology α] [Bornology β] [Bornology γ] [Bornology δ]

instance : LocallyBoundedMapClass (LocallyBoundedMap α β) α β where
  coe f := f.toFun
  coe_injective' f g h := by
    cases f
    cases g
    congr
  comap_cobounded_le f := f.comap_cobounded_le'

/- omitting helper instance because it is not needed in Lean 4.
/-- Helper instance for when there's too many metavariables to apply the coercion via `FunLike`
directly.
instance : CoeFun (LocallyBoundedMap α β) fun _ => α → β where
  coe := LocallyBoundedMap.toFun -/ -/

-- porting note: syntactic tautology because of the way coercions work
#noalign locally_bounded_map.to_fun_eq_coe

@[ext]
theorem ext {f g : LocallyBoundedMap α β} (h : ∀ a, f a = g a) : f = g :=
  FunLike.ext f g h
#align locally_bounded_map.ext LocallyBoundedMap.ext

/-- Copy of a `LocallyBoundedMap` with a new `toFun` equal to the old one. Useful to fix
definitional equalities. -/
protected def copy (f : LocallyBoundedMap α β) (f' : α → β) (h : f' = f) : LocallyBoundedMap α β :=
  ⟨f', h.symm ▸ f.comap_cobounded_le'⟩
#align locally_bounded_map.copy LocallyBoundedMap.copy

@[simp]
theorem coe_copy (f : LocallyBoundedMap α β) (f' : α → β) (h : f' = f) : ⇑(f.copy f' h) = f' :=
  rfl
#align locally_bounded_map.coe_copy LocallyBoundedMap.coe_copy

theorem copy_eq (f : LocallyBoundedMap α β) (f' : α → β) (h : f' = f) : f.copy f' h = f :=
  FunLike.ext' h
#align locally_bounded_map.copy_eq LocallyBoundedMap.copy_eq

/-- Construct a `LocallyBoundedMap` from the fact that the function maps bounded sets to bounded
sets. -/
def ofMapBounded (f : α → β) (h : ∀ ⦃s : Set α⦄, IsBounded s → IsBounded (f '' s)) :
    LocallyBoundedMap α β :=
  ⟨f, comap_cobounded_le_iff.2 h⟩
-- porting note: I had to provide the type of `h` explicitly.
#align locally_bounded_map.of_map_bounded LocallyBoundedMap.ofMapBounded

@[simp]
theorem coe_ofMapBounded (f : α → β) {h} : ⇑(ofMapBounded f h) = f :=
  rfl
#align locally_bounded_map.coe_of_map_bounded LocallyBoundedMap.coe_ofMapBounded

@[simp]
theorem ofMapBounded_apply (f : α → β) {h} (a : α) : ofMapBounded f h a = f a :=
  rfl
#align locally_bounded_map.of_map_bounded_apply LocallyBoundedMap.ofMapBounded_apply

variable (α)

/-- `id` as a `LocallyBoundedMap`. -/
protected def id : LocallyBoundedMap α α :=
  ⟨id, comap_id.le⟩
#align locally_bounded_map.id LocallyBoundedMap.id

instance : Inhabited (LocallyBoundedMap α α) :=
  ⟨LocallyBoundedMap.id α⟩

@[simp]
theorem coe_id : ⇑(LocallyBoundedMap.id α) = id :=
  rfl
#align locally_bounded_map.coe_id LocallyBoundedMap.coe_id

variable {α}

@[simp]
theorem id_apply (a : α) : LocallyBoundedMap.id α a = a :=
  rfl
#align locally_bounded_map.id_apply LocallyBoundedMap.id_apply

/-- Composition of `LocallyBoundedMap`s as a `LocallyBoundedMap`. -/
def comp (f : LocallyBoundedMap β γ) (g : LocallyBoundedMap α β) : LocallyBoundedMap α γ
    where
  toFun := f ∘ g
  comap_cobounded_le' :=
    comap_comap.ge.trans <| (comap_mono f.comap_cobounded_le').trans g.comap_cobounded_le'
#align locally_bounded_map.comp LocallyBoundedMap.comp

@[simp]
theorem coe_comp (f : LocallyBoundedMap β γ) (g : LocallyBoundedMap α β) : ⇑(f.comp g) = f ∘ g :=
  rfl
#align locally_bounded_map.coe_comp LocallyBoundedMap.coe_comp

@[simp]
theorem comp_apply (f : LocallyBoundedMap β γ) (g : LocallyBoundedMap α β) (a : α) :
    f.comp g a = f (g a) :=
  rfl
#align locally_bounded_map.comp_apply LocallyBoundedMap.comp_apply

@[simp]
theorem comp_assoc (f : LocallyBoundedMap γ δ) (g : LocallyBoundedMap β γ)
    (h : LocallyBoundedMap α β) : (f.comp g).comp h = f.comp (g.comp h) :=
  rfl
#align locally_bounded_map.comp_assoc LocallyBoundedMap.comp_assoc

@[simp]
theorem comp_id (f : LocallyBoundedMap α β) : f.comp (LocallyBoundedMap.id α) = f :=
  ext fun _ => rfl
#align locally_bounded_map.comp_id LocallyBoundedMap.comp_id

@[simp]
theorem id_comp (f : LocallyBoundedMap α β) : (LocallyBoundedMap.id β).comp f = f :=
  ext fun _ => rfl
#align locally_bounded_map.id_comp LocallyBoundedMap.id_comp

theorem cancel_right {g₁ g₂ : LocallyBoundedMap β γ} {f : LocallyBoundedMap α β}
    (hf : Surjective f) : g₁.comp f = g₂.comp f ↔ g₁ = g₂ :=
  ⟨fun h => ext <| hf.forall.2 <| FunLike.ext_iff.1 h, congrArg (fun x => comp x f)⟩
-- porting note: unification was not strong enough to do `congrArg _`.
#align locally_bounded_map.cancel_right LocallyBoundedMap.cancel_right

theorem cancel_left {g : LocallyBoundedMap β γ} {f₁ f₂ : LocallyBoundedMap α β} (hg : Injective g) :
    g.comp f₁ = g.comp f₂ ↔ f₁ = f₂ :=
  ⟨fun h => ext fun a => hg <| by rw [← comp_apply, h, comp_apply], congr_arg _⟩
#align locally_bounded_map.cancel_left LocallyBoundedMap.cancel_left

end LocallyBoundedMap
```
