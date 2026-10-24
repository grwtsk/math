# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc060d9b00f2031dbd22cc7a69738f94cb14bb68` · SHA-256 `299eebcb9c70e5cbadaf62e645b8ce290fc369435b9713df6ffda5331e794cdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFinEmbedding.Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteFinEmbedding.Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Finite/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
import Mathlib.Data.Finset.Max
import Mathlib.Data.Set.Finite.Basic
import Mathlib.Data.Set.Lattice
import Mathlib.Data.Fintype.Powerset
import Mathlib.Logic.Embedding.Set

/-!
# Lemmas on finiteness of sets

This file should contain lemmas that prove some result under the *assumption* of `Set.Finite`.
If your proof has as *result* `Set.Finite`, then it should go to a more specific file.

## Tags

finite sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFinEmbedding.Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5

assert_not_exists OrderedRing MonoidWithZero

open Set Function

universe u v w x

variable {α : Type u} {β : Type v} {ι : Sort w} {γ : Type x}

namespace Set

/-! ### Properties -/

theorem Finite.fin_embedding {s : Set α} (h : s.Finite) :
    ∃ (n : ℕ) (f : Fin n ↪ α), range f = s :=
  ⟨_, (Fintype.equivFin (h.toFinset : Set α)).symm.asEmbedding, by
    simp only [Finset.coe_sort_coe, Equiv.asEmbedding_range, Finite.coe_toFinset, setOf_mem_eq]⟩

theorem Finite.fin_param {s : Set α} (h : s.Finite) :
    ∃ (n : ℕ) (f : Fin n → α), Injective f ∧ range f = s :=
  let ⟨n, f, hf⟩ := h.fin_embedding
  ⟨n, f, f.injective, hf⟩

/-- Induction up to a finite set `S`. -/
theorem Finite.induction_to {C : Set α → Prop} {S : Set α} (h : S.Finite)
    (S0 : Set α) (hS0 : S0 ⊆ S) (H0 : C S0) (H1 : ∀ s ⊂ S, C s → ∃ a ∈ S \ s, C (insert a s)) :
    C S := by
  have : Finite S := Finite.to_subtype h
  have : Finite {T : Set α // T ⊆ S} := Finite.of_equiv (Set S) (Equiv.Set.powerset S).symm
  rw [← Subtype.coe_mk (p := (· ⊆ S)) _ le_rfl]
  rw [← Subtype.coe_mk (p := (· ⊆ S)) _ hS0] at H0
  refine Finite.to_wellFoundedGT.wf.induction_bot' (fun s hs hs' ↦ ?_) H0
  obtain ⟨a, ⟨ha1, ha2⟩, ha'⟩ := H1 s (ssubset_of_ne_of_subset hs s.2) hs'
  exact ⟨⟨insert a s.1, insert_subset ha1 s.2⟩, Set.ssubset_insert ha2, ha'⟩

/-- Induction up to `univ`. -/
theorem Finite.induction_to_univ [Finite α] {C : Set α → Prop} (S0 : Set α)
    (H0 : C S0) (H1 : ∀ S ≠ univ, C S → ∃ a ∉ S, C (insert a S)) : C univ :=
  finite_univ.induction_to S0 (subset_univ S0) H0 (by simpa [ssubset_univ_iff])

/-! ### Infinite sets -/

variable {s t : Set α}

/-! ### Order properties -/

theorem exists_min_image [LinearOrder β] (s : Set α) (f : α → β) (h1 : s.Finite) :
    s.Nonempty → ∃ a ∈ s, ∀ b ∈ s, f a ≤ f b
  | ⟨x, hx⟩ => by
    simpa only [exists_prop, Finite.mem_toFinset] using
      h1.toFinset.exists_min_image f ⟨x, h1.mem_toFinset.2 hx⟩

theorem exists_max_image [LinearOrder β] (s : Set α) (f : α → β) (h1 : s.Finite) :
    s.Nonempty → ∃ a ∈ s, ∀ b ∈ s, f b ≤ f a
  | ⟨x, hx⟩ => by
    simpa only [exists_prop, Finite.mem_toFinset] using
      h1.toFinset.exists_max_image f ⟨x, h1.mem_toFinset.2 hx⟩

theorem exists_lower_bound_image [Nonempty α] [LinearOrder β] (s : Set α) (f : α → β)
    (h : s.Finite) : ∃ a : α, ∀ b ∈ s, f a ≤ f b := by
  rcases s.eq_empty_or_nonempty with rfl | hs
  · exact ‹Nonempty α›.elim fun a => ⟨a, fun _ => False.elim⟩
  · rcases Set.exists_min_image s f h hs with ⟨x₀, _, hx₀⟩
    exact ⟨x₀, fun x hx => hx₀ x hx⟩

theorem exists_upper_bound_image [Nonempty α] [LinearOrder β] (s : Set α) (f : α → β)
    (h : s.Finite) : ∃ a : α, ∀ b ∈ s, f b ≤ f a :=
  exists_lower_bound_image (β := βᵒᵈ) s f h

end Set
```
