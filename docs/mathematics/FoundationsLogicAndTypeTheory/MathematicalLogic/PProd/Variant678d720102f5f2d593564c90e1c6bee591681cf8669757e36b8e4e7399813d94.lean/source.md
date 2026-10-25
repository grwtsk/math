# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PProd.Variant678d720102f5f2d593564c90e1c6bee591681cf8669757e36b8e4e7399813d94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `125b07d2fb49d0bdfa956c224ce0bfacd5935f61` · SHA-256 `54e1676826cd37ca674bcb92045188b4b21993785c56c7ddb4c996d83d1661e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MkEta.Variantaf29d2f36e3285c5e4a35ef9895854719372b81a9e96e2b0111219f57c7f6e2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af29d2f36e3285c5e4a35ef9895854719372b81a9e96e2b0111219f57c7f6e2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MkEta.Variantaf29d2f36e3285c5e4a35ef9895854719372b81a9e96e2b0111219f57c7f6e2c","mathematical_subject":"Logic.Foundations","original_sha256":"af29d2f36e3285c5e4a35ef9895854719372b81a9e96e2b0111219f57c7f6e2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Prod/PProd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Logic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MkEta.Variantaf29d2f36e3285c5e4a35ef9895854719372b81a9e96e2b0111219f57c7f6e2c

#align_import data.prod.pprod from "leanprover-community/mathlib"@"c4658a649d216f57e99621708b09dcb3dcccbd23"

/-!
# Extra facts about `PProd`
-/


open Function

variable {α β γ δ : Sort*}

namespace PProd

@[simp]
theorem mk.eta {p : PProd α β} : PProd.mk p.1 p.2 = p :=
  PProd.casesOn p fun _ _ ↦ rfl
#align pprod.mk.eta PProd.mk.eta

@[simp]
theorem «forall» {p : PProd α β → Prop} : (∀ x, p x) ↔ ∀ a b, p ⟨a, b⟩ :=
  ⟨fun h a b ↦ h ⟨a, b⟩, fun h ⟨a, b⟩ ↦ h a b⟩
#align pprod.forall PProd.forall

@[simp]
theorem «exists» {p : PProd α β → Prop} : (∃ x, p x) ↔ ∃ a b, p ⟨a, b⟩ :=
  ⟨fun ⟨⟨a, b⟩, h⟩ ↦ ⟨a, b, h⟩, fun ⟨a, b, h⟩ ↦ ⟨⟨a, b⟩, h⟩⟩
#align pprod.exists PProd.exists

theorem forall' {p : α → β → Prop} : (∀ x : PProd α β, p x.1 x.2) ↔ ∀ a b, p a b :=
  PProd.forall
#align pprod.forall' PProd.forall'

theorem exists' {p : α → β → Prop} : (∃ x : PProd α β, p x.1 x.2) ↔ ∃ a b, p a b :=
  PProd.exists
#align pprod.exists' PProd.exists'

end PProd

theorem Function.Injective.pprod_map {f : α → β} {g : γ → δ} (hf : Injective f) (hg : Injective g) :
    Injective (fun x ↦ ⟨f x.1, g x.2⟩ : PProd α γ → PProd β δ) := fun _ _ h ↦
  have A := congr_arg PProd.fst h
  have B := congr_arg PProd.snd h
  congr_arg₂ PProd.mk (hf A) (hg B)
#align function.injective.pprod_map Function.Injective.pprod_map
```
