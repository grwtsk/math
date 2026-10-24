# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Part.Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2be6df87250c0f76a64b15fa4b9c076153e3c1e5` · SHA-256 `b777b9c22647e83b3ccd5657f2a1b6e27469bf810f9be4943e0851f4c47c3a17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonotonePartBind.Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MonotonePartBind.Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f","mathematical_subject":"Algebra.OrderTheory","original_sha256":"fd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Part.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Part
import Mathlib.Order.Hom.Basic
import Mathlib.Tactic.Common

/-!
# Monotonicity of monadic operations on `Part`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonotonePartBind.Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f

open Part

variable {α β γ : Type*} [Preorder α]

section bind
variable {f : α → Part β} {g : α → β → Part γ}

lemma Monotone.partBind (hf : Monotone f) (hg : Monotone g) :
    Monotone fun x ↦ (f x).bind (g x) := by
  rintro x y h a
  simp only [and_imp, exists_prop, Part.bind_eq_bind, Part.mem_bind_iff, exists_imp]
  exact fun b hb ha ↦ ⟨b, hf h _ hb, hg h _ _ ha⟩

lemma Antitone.partBind (hf : Antitone f) (hg : Antitone g) :
    Antitone fun x ↦ (f x).bind (g x) := by
  rintro x y h a
  simp only [and_imp, exists_prop, Part.bind_eq_bind, Part.mem_bind_iff, exists_imp]
  exact fun b hb ha ↦ ⟨b, hf h _ hb, hg h _ _ ha⟩

end bind

section map
variable {f : β → γ} {g : α → Part β}

lemma Monotone.partMap (hg : Monotone g) : Monotone fun x ↦ (g x).map f := by
  simpa only [← bind_some_eq_map] using hg.partBind monotone_const

lemma Antitone.partMap (hg : Antitone g) : Antitone fun x ↦ (g x).map f := by
  simpa only [← bind_some_eq_map] using hg.partBind antitone_const

end map

section seq
variable {β γ : Type _} {f : α → Part (β → γ)} {g : α → Part β}

lemma Monotone.partSeq (hf : Monotone f) (hg : Monotone g) : Monotone fun x ↦ f x <*> g x := by
  simpa only [seq_eq_bind_map] using hf.partBind <| Monotone.of_apply₂ fun _ ↦ hg.partMap

lemma Antitone.partSeq (hf : Antitone f) (hg : Antitone g) : Antitone fun x ↦ f x <*> g x := by
  simpa only [seq_eq_bind_map] using hf.partBind <| Antitone.of_apply₂ fun _ ↦ hg.partMap

end seq

namespace OrderHom

/-- `Part.bind` as a monotone function -/
@[simps]
def partBind (f : α →o Part β) (g : α →o β → Part γ) : α →o Part γ where
  toFun x := (f x).bind (g x)
  monotone' := f.2.partBind g.2

end OrderHom
```
