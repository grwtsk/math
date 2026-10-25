# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PProd.Variant4fd672800fe64aeba0fe0772bc9e67b32c0c1f3ba9522cfb9ff0fdafaedc6765

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `055342fc6f02787ac99b2f73e2229474d0e4e00f` · SHA-256 `78ff2c5da0dc6c7fd009dd6381a3f13fad47d35fbcf4b479a2a72bd58a924af7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MkInjArrow.Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MkInjArrow.Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53","mathematical_subject":"Logic.Foundations","original_sha256":"2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Prod/PProd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Logic.Function.Defs

/-!
# Extra facts about `PProd`
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MkInjArrow.Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53

open Function

variable {α β γ δ : Sort*}

namespace PProd

def mk.injArrow {α : Type*} {β : Type*} {x₁ : α} {y₁ : β} {x₂ : α} {y₂ : β} :
    (x₁, y₁) = (x₂, y₂) → ∀ ⦃P : Sort*⦄, (x₁ = x₂ → y₁ = y₂ → P) → P :=
  fun h₁ _ h₂ ↦ Prod.noConfusion h₁ h₂

@[simp]
theorem mk.eta {p : PProd α β} : PProd.mk p.1 p.2 = p :=
  rfl

@[simp]
theorem «forall» {p : PProd α β → Prop} : (∀ x, p x) ↔ ∀ a b, p ⟨a, b⟩ :=
  ⟨fun h a b ↦ h ⟨a, b⟩, fun h ⟨a, b⟩ ↦ h a b⟩

@[simp]
theorem «exists» {p : PProd α β → Prop} : (∃ x, p x) ↔ ∃ a b, p ⟨a, b⟩ :=
  ⟨fun ⟨⟨a, b⟩, h⟩ ↦ ⟨a, b, h⟩, fun ⟨a, b, h⟩ ↦ ⟨⟨a, b⟩, h⟩⟩

theorem forall' {p : α → β → Prop} : (∀ x : PProd α β, p x.1 x.2) ↔ ∀ a b, p a b :=
  PProd.forall

theorem exists' {p : α → β → Prop} : (∃ x : PProd α β, p x.1 x.2) ↔ ∃ a b, p a b :=
  PProd.exists

end PProd

theorem Function.Injective.pprod_map {f : α → β} {g : γ → δ} (hf : Injective f) (hg : Injective g) :
    Injective (fun x ↦ ⟨f x.1, g x.2⟩ : PProd α γ → PProd β δ) := fun _ _ h ↦
  have A := congr_arg PProd.fst h
  have B := congr_arg PProd.snd h
  congr_arg₂ PProd.mk (hf A) (hg B)
```
