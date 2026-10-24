# Complete source: GRWTSK.Topology.GeneralTopology.Basic.Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35166a53e2a147909760583310fedde27addb0ae` · SHA-256 `448975a9c5fff6ad2428c1b950645b22d2cf6238a58aa61f46f4566a5e25c706`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousOrderHom.Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousOrderHom.Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/Hom/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Topology.Continuous
import Mathlib.Topology.ContinuousMap.Defs

/-!
# Continuous order homomorphisms

This file defines continuous order homomorphisms, that is maps which are both continuous and
monotone. They are also called Priestley homomorphisms because they are the morphisms of the
category of Priestley spaces.

We use the `DFunLike` design, so each type of morphisms has a companion typeclass which is meant to
be satisfied by itself and all stricter types.

## Types of morphisms

* `ContinuousOrderHom`: Continuous monotone functions, aka Priestley homomorphisms.

## Typeclasses

* `ContinuousOrderHomClass`
-/



namespace GRWTSK.Topology.GeneralTopology.ContinuousOrderHom.Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9

open Function

variable {F α β γ δ : Type*}

/-- The type of continuous monotone maps from `α` to `β`, aka Priestley homomorphisms. -/
structure ContinuousOrderHom (α β : Type*) [Preorder α] [Preorder β] [TopologicalSpace α]
  [TopologicalSpace β] extends OrderHom α β where
  continuous_toFun : Continuous toFun

@[inherit_doc] infixr:25 " →Co " => ContinuousOrderHom

section

/-- `ContinuousOrderHomClass F α β` states that `F` is a type of continuous monotone maps.

You should extend this class when you extend `ContinuousOrderHom`. -/
class ContinuousOrderHomClass (F : Type*) (α β : outParam Type*) [Preorder α] [Preorder β]
    [TopologicalSpace α] [TopologicalSpace β] [FunLike F α β] : Prop
    extends ContinuousMapClass F α β where
  map_monotone (f : F) : Monotone f

namespace ContinuousOrderHomClass

variable [Preorder α] [Preorder β] [TopologicalSpace α] [TopologicalSpace β]
  [FunLike F α β] [ContinuousOrderHomClass F α β]

-- See note [lower instance priority]
instance (priority := 100) toOrderHomClass :
    OrderHomClass F α β :=
  { ‹ContinuousOrderHomClass F α β› with
    map_rel := ContinuousOrderHomClass.map_monotone }

/-- Turn an element of a type `F` satisfying `ContinuousOrderHomClass F α β` into an actual
`ContinuousOrderHom`. This is declared as the default coercion from `F` to `α →Co β`. -/
@[coe]
def toContinuousOrderHom (f : F) : α →Co β :=
    { toFun := f
      monotone' := ContinuousOrderHomClass.map_monotone f
      continuous_toFun := map_continuous f }

instance : CoeTC F (α →Co β) :=
  ⟨toContinuousOrderHom⟩

end ContinuousOrderHomClass
/-! ### Top homomorphisms -/


namespace ContinuousOrderHom

variable [TopologicalSpace α] [Preorder α] [TopologicalSpace β]

section Preorder

variable [Preorder β] [TopologicalSpace γ] [Preorder γ] [TopologicalSpace δ] [Preorder δ]

/-- Reinterpret a `ContinuousOrderHom` as a `ContinuousMap`. -/
def toContinuousMap (f : α →Co β) : C(α, β) :=
  { f with }

instance instFunLike : FunLike (α →Co β) α β where
  coe f := f.toFun
  coe_injective' f g h := by
    obtain ⟨⟨_, _⟩, _⟩ := f
    obtain ⟨⟨_, _⟩, _⟩ := g
    congr

instance : ContinuousOrderHomClass (α →Co β) α β where
  map_monotone f := f.monotone'
  map_continuous f := f.continuous_toFun

@[simp] theorem coe_toOrderHom (f : α →Co β) : ⇑f.toOrderHom = f := rfl

theorem toFun_eq_coe {f : α →Co β} : f.toFun = (f : α → β) := rfl

@[ext]
theorem ext {f g : α →Co β} (h : ∀ a, f a = g a) : f = g :=
  DFunLike.ext f g h

/-- Copy of a `ContinuousOrderHom` with a new `ContinuousMap` equal to the old one. Useful to fix
definitional equalities. -/
protected def copy (f : α →Co β) (f' : α → β) (h : f' = f) : α →Co β :=
  ⟨f.toOrderHom.copy f' h, h.symm.subst f.continuous_toFun⟩

@[simp]
theorem coe_copy (f : α →Co β) (f' : α → β) (h : f' = f) : ⇑(f.copy f' h) = f' :=
  rfl

theorem copy_eq (f : α →Co β) (f' : α → β) (h : f' = f) : f.copy f' h = f :=
  DFunLike.ext' h

variable (α)

/-- `id` as a `ContinuousOrderHom`. -/
protected def id : α →Co α :=
  ⟨OrderHom.id, continuous_id⟩

instance : Inhabited (α →Co α) :=
  ⟨ContinuousOrderHom.id _⟩

@[simp, norm_cast]
theorem coe_id : ⇑(ContinuousOrderHom.id α) = id :=
  rfl

variable {α}

@[simp]
theorem id_apply (a : α) : ContinuousOrderHom.id α a = a :=
  rfl

/-- Composition of `ContinuousOrderHom`s as a `ContinuousOrderHom`. -/
def comp (f : β →Co γ) (g : α →Co β) : ContinuousOrderHom α γ :=
  ⟨f.toOrderHom.comp g.toOrderHom, f.continuous_toFun.comp g.continuous_toFun⟩

@[simp]
theorem coe_comp (f : β →Co γ) (g : α →Co β) : (f.comp g : α → γ) = f ∘ g :=
  rfl

@[simp]
theorem comp_apply (f : β →Co γ) (g : α →Co β) (a : α) : (f.comp g) a = f (g a) :=
  rfl

@[simp]
theorem comp_assoc (f : γ →Co δ) (g : β →Co γ) (h : α →Co β) :
    (f.comp g).comp h = f.comp (g.comp h) :=
  rfl

@[simp]
theorem comp_id (f : α →Co β) : f.comp (ContinuousOrderHom.id α) = f :=
  ext fun _ => rfl

@[simp]
theorem id_comp (f : α →Co β) : (ContinuousOrderHom.id β).comp f = f :=
  ext fun _ => rfl

@[simp]
theorem cancel_right {g₁ g₂ : β →Co γ} {f : α →Co β} (hf : Surjective f) :
    g₁.comp f = g₂.comp f ↔ g₁ = g₂ :=
  ⟨fun h => ext <| hf.forall.2 <| DFunLike.ext_iff.1 h, fun h => congr_arg₂ _ h rfl⟩

@[simp]
theorem cancel_left {g : β →Co γ} {f₁ f₂ : α →Co β} (hg : Injective g) :
    g.comp f₁ = g.comp f₂ ↔ f₁ = f₂ :=
  ⟨fun h => ext fun a => hg <| by rw [← comp_apply, h, comp_apply], congr_arg _⟩

instance : Preorder (α →Co β) :=
  Preorder.lift ((↑) : (α →Co β) → α → β)

end Preorder

instance [PartialOrder β] : PartialOrder (α →Co β) :=
  PartialOrder.lift ((↑) : (α →Co β) → α → β) DFunLike.coe_injective

end ContinuousOrderHom

end
```
