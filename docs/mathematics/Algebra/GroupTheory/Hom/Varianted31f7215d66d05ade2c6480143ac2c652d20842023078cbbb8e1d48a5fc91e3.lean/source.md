# Complete source: GRWTSK.Algebra.GroupTheory.Hom.Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `919bf12c6f804753087a5a1eaa3d5de5d6b90e95` · SHA-256 `a5e4f1bd30b519ba959f6bf9fa0aa5d9a1aac4caba2cf66779695a314a221eb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.AddMonoidHomToMultiplicative.Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.AddMonoidHomToMultiplicative.Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de","mathematical_subject":"Algebra.Groups","original_sha256":"43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/TypeTags/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.TypeTags.Basic

/-!
# Transport algebra morphisms between additive and multiplicative types.
-/



namespace GRWTSK.Algebra.GroupTheory.AddMonoidHomToMultiplicative.Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de

universe u v

variable {α : Type u} {β : Type v}

open Additive (ofMul toMul)
open Multiplicative (ofAdd toAdd)

/-- Reinterpret `α →+ β` as `Multiplicative α →* Multiplicative β`. -/
@[simps]
def AddMonoidHom.toMultiplicative [AddZeroClass α] [AddZeroClass β] :
    (α →+ β) ≃ (Multiplicative α →* Multiplicative β) where
  toFun f := {
    toFun := fun a => ofAdd (f a.toAdd)
    map_mul' := f.map_add
    map_one' := f.map_zero
  }
  invFun f := {
    toFun := fun a => f (ofAdd a) |>.toAdd
    map_add' := f.map_mul
    map_zero' := f.map_one
  }
  left_inv _ := rfl
  right_inv _ := rfl

@[simp, norm_cast]
lemma AddMonoidHom.coe_toMultiplicative [AddZeroClass α] [AddZeroClass β] (f : α →+ β) :
    ⇑(toMultiplicative f) = ofAdd ∘ f ∘ toAdd := rfl

/-- Reinterpret `α →* β` as `Additive α →+ Additive β`. -/
@[simps]
def MonoidHom.toAdditive [MulOneClass α] [MulOneClass β] :
    (α →* β) ≃ (Additive α →+ Additive β) where
  toFun f := {
    toFun := fun a => ofMul (f a.toMul)
    map_add' := f.map_mul
    map_zero' := f.map_one
  }
  invFun f := {
    toFun := fun a => (f (ofMul a)).toMul
    map_mul' := f.map_add
    map_one' := f.map_zero
  }
  left_inv _ := rfl
  right_inv _ := rfl

@[simp, norm_cast]
lemma MonoidHom.coe_toMultiplicative [MulOneClass α] [MulOneClass β] (f : α →* β) :
    ⇑(toAdditive f) = ofMul ∘ f ∘ toMul := rfl

/-- Reinterpret `Additive α →+ β` as `α →* Multiplicative β`. -/
@[simps]
def AddMonoidHom.toMultiplicative' [MulOneClass α] [AddZeroClass β] :
    (Additive α →+ β) ≃ (α →* Multiplicative β) where
  toFun f := {
    toFun := fun a => ofAdd (f (ofMul a))
    map_mul' := f.map_add
    map_one' := f.map_zero
  }
  invFun f := {
    toFun := fun a => (f a.toMul).toAdd
    map_add' := f.map_mul
    map_zero' := f.map_one
  }
  left_inv _ := rfl
  right_inv _ := rfl

@[simp, norm_cast]
lemma AddMonoidHom.coe_toMultiplicative' [MulOneClass α] [AddZeroClass β] (f : Additive α →+ β) :
    ⇑(toMultiplicative' f) = ofAdd ∘ f ∘ ofMul := rfl

/-- Reinterpret `α →* Multiplicative β` as `Additive α →+ β`. -/
@[simps!]
def MonoidHom.toAdditive' [MulOneClass α] [AddZeroClass β] :
    (α →* Multiplicative β) ≃ (Additive α →+ β) :=
  AddMonoidHom.toMultiplicative'.symm

@[simp, norm_cast]
lemma MonoidHom.coe_toAdditive' [MulOneClass α] [AddZeroClass β] (f : α →* Multiplicative β) :
    ⇑(toAdditive' f) = toAdd ∘ f ∘ toMul := rfl

/-- Reinterpret `α →+ Additive β` as `Multiplicative α →* β`. -/
@[simps]
def AddMonoidHom.toMultiplicative'' [AddZeroClass α] [MulOneClass β] :
    (α →+ Additive β) ≃ (Multiplicative α →* β) where
  toFun f := {
    toFun := fun a => (f a.toAdd).toMul
    map_mul' := f.map_add
    map_one' := f.map_zero
  }
  invFun f := {
    toFun := fun a => ofMul (f (ofAdd a))
    map_add' := f.map_mul
    map_zero' := f.map_one
  }
  left_inv _ := rfl
  right_inv _ := rfl

@[simp, norm_cast]
lemma AddMonoidHom.coe_toMultiplicative'' [AddZeroClass α] [MulOneClass β] (f : α →+ Additive β) :
    ⇑(toMultiplicative'' f) = toMul ∘ f ∘ toAdd := rfl

/-- Reinterpret `Multiplicative α →* β` as `α →+ Additive β`. -/
@[simps!]
def MonoidHom.toAdditive'' [AddZeroClass α] [MulOneClass β] :
    (Multiplicative α →* β) ≃ (α →+ Additive β) :=
  AddMonoidHom.toMultiplicative''.symm

@[simp, norm_cast]
lemma MonoidHom.coe_toAdditive'' [AddZeroClass α] [MulOneClass β] (f : Multiplicative α →* β) :
    ⇑(toAdditive'' f) = ofMul ∘ f ∘ ofAdd := rfl
```
