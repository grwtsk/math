# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Inclusion.Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a14a5f9418ae71bc71bd0ef21ca873102513131` · SHA-256 `c208a78af630ee779f9ba842b38f1652b0b2053d9cbfc550bf902781067056d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Inclusion.Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Inclusion.Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Inclusion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura
-/
import Mathlib.Data.Set.Basic

/-! # Lemmas about `inclusion`, the injection of subtypes induced by `⊆` -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Inclusion.Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c

open Function

namespace Set

variable {α : Type*} {s t u : Set α}

/-- `inclusion` is the "identity" function between two subsets `s` and `t`, where `s ⊆ t` -/
abbrev inclusion (h : s ⊆ t) : s → t := fun x : s => (⟨x, h x.2⟩ : t)

theorem inclusion_self (x : s) : inclusion Subset.rfl x = x := by
  cases x
  rfl

theorem inclusion_eq_id (h : s ⊆ s) : inclusion h = id :=
  funext inclusion_self

@[simp]
theorem inclusion_mk {h : s ⊆ t} (a : α) (ha : a ∈ s) : inclusion h ⟨a, ha⟩ = ⟨a, h ha⟩ :=
  rfl

theorem inclusion_right (h : s ⊆ t) (x : t) (m : (x : α) ∈ s) : inclusion h ⟨x, m⟩ = x := by
  cases x
  rfl

@[simp]
theorem inclusion_inclusion (hst : s ⊆ t) (htu : t ⊆ u) (x : s) :
    inclusion htu (inclusion hst x) = inclusion (hst.trans htu) x := by
  cases x
  rfl

@[simp]
theorem inclusion_comp_inclusion {α} {s t u : Set α} (hst : s ⊆ t) (htu : t ⊆ u) :
    inclusion htu ∘ inclusion hst = inclusion (hst.trans htu) :=
  funext (inclusion_inclusion hst htu)

@[simp]
theorem coe_inclusion (h : s ⊆ t) (x : s) : (inclusion h x : α) = (x : α) :=
  rfl

theorem val_comp_inclusion (h : s ⊆ t) : Subtype.val ∘ inclusion h = Subtype.val :=
  rfl

theorem inclusion_injective (h : s ⊆ t) : Injective (inclusion h)
  | ⟨_, _⟩, ⟨_, _⟩ => Subtype.ext_iff_val.2 ∘ Subtype.ext_iff_val.1

theorem inclusion_inj (h : s ⊆ t) {x y : s} : inclusion h x = inclusion h y ↔ x = y :=
  (inclusion_injective h).eq_iff

theorem eq_of_inclusion_surjective {s t : Set α} {h : s ⊆ t}
    (h_surj : Function.Surjective (inclusion h)) : s = t := by
  refine Set.Subset.antisymm h (fun x hx => ?_)
  obtain ⟨y, hy⟩ := h_surj ⟨x, hx⟩
  exact mem_of_eq_of_mem (congr_arg Subtype.val hy).symm y.prop

theorem inclusion_le_inclusion [LE α] {s t : Set α} (h : s ⊆ t) {x y : s} :
    inclusion h x ≤ inclusion h y ↔ x ≤ y := Iff.rfl

theorem inclusion_lt_inclusion [LT α] {s t : Set α} (h : s ⊆ t) {x y : s} :
    inclusion h x < inclusion h y ↔ x < y := Iff.rfl

end Set
```
