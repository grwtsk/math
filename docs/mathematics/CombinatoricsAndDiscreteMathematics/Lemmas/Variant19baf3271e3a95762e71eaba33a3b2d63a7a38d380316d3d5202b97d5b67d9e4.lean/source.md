# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variant19baf3271e3a95762e71eaba33a3b2d63a7a38d380316d3d5202b97d5b67d9e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec9497cea8f19a4863af1713cd0880331540ecac` · SHA-256 `a5f32ac15dcf427b8e7811f6969fac392d6a54c0efc807c37527f03a50fda491`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFinEmbedding.Variantc91596535840063fb0507849f4bdc53d44a49e389739af998cd2902c17a8d35c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c91596535840063fb0507849f4bdc53d44a49e389739af998cd2902c17a8d35c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteFinEmbedding.Variantc91596535840063fb0507849f4bdc53d44a49e389739af998cd2902c17a8d35c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c91596535840063fb0507849f4bdc53d44a49e389739af998cd2902c17a8d35c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Set/Finite/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
module

public import Mathlib.Data.Finset.Max
public import Mathlib.Data.Fintype.Powerset
public import Mathlib.Data.Set.Finite.Basic
public import Mathlib.Logic.Embedding.Set

/-!
# Lemmas on finiteness of sets

This file should contain lemmas that prove some result under the *assumption* of `Set.Finite`.
If your proof has as *result* `Set.Finite`, then it should go to a more specific file.

## Tags

finite sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFinEmbedding.Variantc91596535840063fb0507849f4bdc53d44a49e389739af998cd2902c17a8d35c

public section

assert_not_exists IsOrderedRing MonoidWithZero

open Set Function

universe u v w x

variable {α : Type u} {β : Type v}

namespace Set

/-! ### Properties -/

theorem Finite.fin_embedding {s : Set α} (h : s.Finite) :
    ∃ (n : ℕ) (f : Fin n ↪ α), range f = s :=
  ⟨_, (Fintype.equivFin (h.toFinset : Set α)).symm.asEmbedding, by
    simp only [Finset.coe_sort_coe, Equiv.asEmbedding_range, Finite.coe_toFinset, ofPred_mem_eq]⟩

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
  refine Finite.to_wellFoundedGT.induction_bot' (fun s hs hs' ↦ ?_) H0
  obtain ⟨a, ⟨ha1, ha2⟩, ha'⟩ := H1 s (ssubset_of_ne_of_subset hs s.2) hs'
  exact ⟨⟨insert a s.1, insert_subset ha1 s.2⟩, Set.ssubset_insert ha2, ha'⟩

/-- Induction up to `univ`. -/
theorem Finite.induction_to_univ [Finite α] {C : Set α → Prop} (S0 : Set α)
    (H0 : C S0) (H1 : ∀ S ≠ univ, C S → ∃ a ∉ S, C (insert a S)) : C univ :=
  finite_univ.induction_to S0 (subset_univ S0) H0 (by simpa [ssubset_univ_iff])

theorem sUnion_finite_eq_univ {X : Type*} : ⋃₀ {(s : Set X) | Set.Finite s} = Set.univ :=
  sUnion_eq_univ_iff.mpr fun x ↦ ⟨{x}, finite_singleton x, rfl⟩

/-! ### Infinite sets -/

variable {s : Set α}

/-! ### Order properties -/

@[to_dual]
theorem exists_min_image [LinearOrder β] (s : Set α) (f : α → β) (h1 : s.Finite) :
    s.Nonempty → ∃ a ∈ s, ∀ b ∈ s, f a ≤ f b
  | ⟨x, hx⟩ => by
    simpa only [exists_prop, Finite.mem_toFinset] using
      h1.toFinset.exists_min_image f ⟨x, h1.mem_toFinset.2 hx⟩

@[to_dual]
theorem exists_lower_bound_image [Nonempty α] [LinearOrder β] (s : Set α) (f : α → β)
    (h : s.Finite) : ∃ a : α, ∀ b ∈ s, f a ≤ f b := by
  rcases s.eq_empty_or_nonempty with rfl | hs
  · exact ‹Nonempty α›.elim fun a => ⟨a, fun _ => False.elim⟩
  · rcases Set.exists_min_image s f h hs with ⟨x₀, _, hx₀⟩
    exact ⟨x₀, fun x hx => hx₀ x hx⟩

end Set
```
