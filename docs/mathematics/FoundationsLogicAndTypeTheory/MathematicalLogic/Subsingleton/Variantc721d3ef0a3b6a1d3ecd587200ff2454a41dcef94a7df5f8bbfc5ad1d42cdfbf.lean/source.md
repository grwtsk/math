# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `425378fc0f749292e81235c422fcf792f599ef7a` · SHA-256 `6af70dfff7bf046d7a887a701f1719acf56d0a718eb39d142444a5cd91c9ccf3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variantdf8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Subsingleton.Variantdf8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee","mathematical_subject":"Logic.Foundations","original_sha256":"df8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Filter/Subsingleton.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Order.Filter.Bases
import Mathlib.Order.Filter.Ultrafilter
/-!
# Subsingleton filters

We say that a filter `l` is a *subsingleton* if there exists a subsingleton set `s ∈ l`.
Equivalently, `l` is either `⊥` or `pure a` for some `a`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variantdf8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee

open Set
variable {α β : Type*} {l : Filter α}

namespace Filter

/-- We say that a filter is a *subsingleton* if there exists a subsingleton set
that belongs to the filter. -/
protected def Subsingleton (l : Filter α) : Prop := ∃ s ∈ l, Set.Subsingleton s

theorem HasBasis.subsingleton_iff {ι : Sort*} {p : ι → Prop} {s : ι → Set α} (h : l.HasBasis p s) :
    l.Subsingleton ↔ ∃ i, p i ∧ (s i).Subsingleton :=
  h.exists_iff fun _ _ hsub h ↦ h.anti hsub

theorem Subsingleton.anti {l'} (hl : l.Subsingleton) (hl' : l' ≤ l) : l'.Subsingleton :=
  let ⟨s, hsl, hs⟩ := hl; ⟨s, hl' hsl, hs⟩

@[nontriviality]
theorem Subsingleton.of_subsingleton [Subsingleton α] : l.Subsingleton :=
  ⟨univ, univ_mem, subsingleton_univ⟩

theorem Subsingleton.map (hl : l.Subsingleton) (f : α → β) : (map f l).Subsingleton :=
  let ⟨s, hsl, hs⟩ := hl; ⟨f '' s, image_mem_map hsl, hs.image f⟩

theorem Subsingleton.prod (hl : l.Subsingleton) {l' : Filter β} (hl' : l'.Subsingleton) :
    (l ×ˢ l').Subsingleton :=
  let ⟨s, hsl, hs⟩ := hl; let ⟨t, htl', ht⟩ := hl'; ⟨s ×ˢ t, prod_mem_prod hsl htl', hs.prod ht⟩

@[simp]
theorem subsingleton_pure {a : α} : Filter.Subsingleton (pure a) :=
  ⟨{a}, rfl, subsingleton_singleton⟩

@[simp]
theorem subsingleton_bot : Filter.Subsingleton (⊥ : Filter α) :=
  ⟨∅, trivial, subsingleton_empty⟩

/-- A nontrivial subsingleton filter is equal to `pure a` for some `a`. -/
theorem Subsingleton.exists_eq_pure [l.NeBot] (hl : l.Subsingleton) : ∃ a, l = pure a := by
  rcases hl with ⟨s, hsl, hs⟩
  rcases exists_eq_singleton_iff_nonempty_subsingleton.2 ⟨nonempty_of_mem hsl, hs⟩ with ⟨a, rfl⟩
  refine ⟨a, (NeBot.le_pure_iff ‹_›).1 ?_⟩
  rwa [le_pure_iff]

/-- A filter is a subsingleton iff it is equal to `⊥` or to `pure a` for some `a`. -/
theorem subsingleton_iff_bot_or_pure : l.Subsingleton ↔ l = ⊥ ∨ ∃ a, l = pure a := by
  refine ⟨fun hl ↦ ?_, ?_⟩
  · exact (eq_or_neBot l).imp_right (@Subsingleton.exists_eq_pure _ _ · hl)
  · rintro (rfl | ⟨a, rfl⟩) <;> simp

/-- In a nonempty type, a filter is a subsingleton iff
it is less than or equal to a pure filter. -/
theorem subsingleton_iff_exists_le_pure [Nonempty α] : l.Subsingleton ↔ ∃ a, l ≤ pure a := by
  rcases eq_or_neBot l with rfl | hbot
  · simp
  · simp [subsingleton_iff_bot_or_pure, ← hbot.le_pure_iff, hbot.ne]

theorem subsingleton_iff_exists_singleton_mem [Nonempty α] : l.Subsingleton ↔ ∃ a, {a} ∈ l := by
  simp only [subsingleton_iff_exists_le_pure, le_pure_iff]

/-- A subsingleton filter on a nonempty type is less than or equal to `pure a` for some `a`. -/
alias ⟨Subsingleton.exists_le_pure, _⟩ := subsingleton_iff_exists_le_pure
```
