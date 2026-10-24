# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetLike.Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12f3d17a16b4f3059ca50b18a271b7d489eff4a2` · SHA-256 `f5c44a4de57bf1d8ad396e6b1fb6f50d425ea58373b42b9db7f9dc684b741674`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MemSubtype.Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MemSubtype.Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211","mathematical_subject":"Algebra.OrderTheory","original_sha256":"0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/CompleteLattice/SetLike.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Sven Manthe. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sven Manthe
-/
import Mathlib.Order.CompleteSublattice

/-!
# `SetLike` instance for elements of `CompleteSublattice (Set X)`

This file provides lemmas for the `SetLike` instance for elements of `CompleteSublattice (Set X)`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MemSubtype.Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211

attribute [local instance] SetLike.instSubtypeSet

namespace Sublattice

variable {X : Type*} {L : Sublattice (Set X)}

variable {S T : L} {x : X}

@[ext] lemma ext_mem (h : ∀ x, x ∈ S ↔ x ∈ T) : S = T := SetLike.ext h

lemma mem_subtype : x ∈ L.subtype T ↔ x ∈ T := Iff.rfl

@[simp] lemma setLike_mem_inf : x ∈ S ⊓ T ↔ x ∈ S ∧ x ∈ T := by simp [← mem_subtype]
@[simp] lemma setLike_mem_sup : x ∈ S ⊔ T ↔ x ∈ S ∨ x ∈ T := by simp [← mem_subtype]

@[simp] lemma setLike_mem_coe : x ∈ T.val ↔ x ∈ T := Iff.rfl

@[deprecated SetLike.mem_mk_set (since := "2025-01-29")]
lemma setLike_mem_mk (U : Set X) (h : U ∈ L) : x ∈ (⟨U, h⟩ : L) ↔ x ∈ U := by simp

end Sublattice

namespace CompleteSublattice

variable {X : Type*} {L : CompleteSublattice (Set X)}

variable {S T : L} {𝒮 : Set L} {I : Sort*} {f : I → L} {x : X}

@[ext] lemma ext (h : ∀ x, x ∈ S ↔ x ∈ T) : S = T := SetLike.ext h

lemma mem_subtype : x ∈ L.subtype T ↔ x ∈ T := Iff.rfl

@[simp] lemma mem_inf : x ∈ S ⊓ T ↔ x ∈ S ∧ x ∈ T := by simp [← mem_subtype]
@[simp] lemma mem_sInf : x ∈ sInf 𝒮 ↔ ∀ T ∈ 𝒮, x ∈ T := by simp [← mem_subtype]
@[simp] lemma mem_iInf : x ∈ ⨅ i : I, f i ↔ ∀ i : I, x ∈ f i := by simp [← mem_subtype]
@[simp] lemma mem_top : x ∈ (⊤ : L) := by simp [← mem_subtype]

@[simp] lemma mem_sup : x ∈ S ⊔ T ↔ x ∈ S ∨ x ∈ T := by simp [← mem_subtype]
@[simp] lemma mem_sSup : x ∈ sSup 𝒮 ↔ ∃ T ∈ 𝒮, x ∈ T := by simp [← mem_subtype]
@[simp] lemma mem_iSup : x ∈ ⨆ i : I, f i ↔ ∃ i : I, x ∈ f i := by simp [← mem_subtype]
@[simp] lemma notMem_bot : x ∉ (⊥ : L) := by simp [← mem_subtype]

@[deprecated (since := "2025-05-23")] alias not_mem_bot := notMem_bot

@[deprecated SetLike.mem_mk_set (since := "2025-01-29")]
lemma mem_mk (U : Set X) (h : U ∈ L) : x ∈ (⟨U, h⟩ : L) ↔ x ∈ U := by simp

end CompleteSublattice
```
