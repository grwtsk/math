# Complete source: GRWTSK.Topology.GeneralTopology.Basic.Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f28ef9f5e0cea5bb558ad1c7fb530bbf3d0da96` · SHA-256 `4c1dcbe61cc3af8a45fe7420a57d78cfa232340d6ab7f392f638decfc4fa88ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FiniteSUnionMemIff.Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FiniteSUnionMemIff.Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62","mathematical_subject":"Topology.GeneralTopology","original_sha256":"29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Filter/Ultrafilter/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jeremy Avigad, Yury Kudryashov
-/
import Mathlib.Order.Filter.Ultrafilter.Defs
import Mathlib.Order.Filter.Cofinite
import Mathlib.Order.ZornAtoms

/-!
# Ultrafilters

An ultrafilter is a minimal (maximal in the set order) proper filter.
In this file we define

* `hyperfilter`: the ultrafilter extending the cofinite filter.
-/


namespace GRWTSK.Topology.GeneralTopology.FiniteSUnionMemIff.Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62

universe u v

variable {α : Type u} {β : Type v}

open Set Filter

namespace Ultrafilter

variable {f : Ultrafilter α} {s : Set α}

theorem finite_sUnion_mem_iff {s : Set (Set α)} (hs : s.Finite) : ⋃₀ s ∈ f ↔ ∃ t ∈ s, t ∈ f := by
  induction s, hs using Set.Finite.induction_on with
  | empty => simp
  | insert _ _ his => simp [union_mem_iff, his, or_and_right, exists_or]

theorem finite_biUnion_mem_iff {is : Set β} {s : β → Set α} (his : is.Finite) :
    (⋃ i ∈ is, s i) ∈ f ↔ ∃ i ∈ is, s i ∈ f := by
  simp only [← sUnion_image, finite_sUnion_mem_iff (his.image s), exists_mem_image]

lemma eventually_exists_mem_iff {is : Set β} {P : β → α → Prop} (his : is.Finite) :
    (∀ᶠ i in f, ∃ a ∈ is, P a i) ↔ ∃ a ∈ is, ∀ᶠ i in f, P a i := by
  simp only [Filter.Eventually, Ultrafilter.mem_coe]
  convert f.finite_biUnion_mem_iff his (s := P) with i
  aesop

lemma eventually_exists_iff [Finite β] {P : β → α → Prop} :
    (∀ᶠ i in f, ∃ a, P a i) ↔ ∃ a, ∀ᶠ i in f, P a i := by
  simpa using eventually_exists_mem_iff (f := f) (P := P) Set.finite_univ

theorem eq_pure_of_finite_mem (h : s.Finite) (h' : s ∈ f) : ∃ x ∈ s, f = pure x := by
  rw [← biUnion_of_singleton s] at h'
  rcases (Ultrafilter.finite_biUnion_mem_iff h).mp h' with ⟨a, has, haf⟩
  exact ⟨a, has, eq_of_le (Filter.le_pure_iff.2 haf)⟩

theorem eq_pure_of_finite [Finite α] (f : Ultrafilter α) : ∃ a, f = pure a :=
  (eq_pure_of_finite_mem finite_univ univ_mem).imp fun _ ⟨_, ha⟩ => ha

theorem le_cofinite_or_eq_pure (f : Ultrafilter α) : (f : Filter α) ≤ cofinite ∨ ∃ a, f = pure a :=
  or_iff_not_imp_left.2 fun h =>
    let ⟨_, hs, hfin⟩ := Filter.disjoint_cofinite_right.1 (disjoint_iff_not_le.2 h)
    let ⟨a, _, hf⟩ := eq_pure_of_finite_mem hfin hs
    ⟨a, hf⟩

theorem exists_ultrafilter_of_finite_inter_nonempty (S : Set (Set α))
    (cond : ∀ T : Finset (Set α), (↑T : Set (Set α)) ⊆ S → (⋂₀ (↑T : Set (Set α))).Nonempty) :
    ∃ F : Ultrafilter α, S ⊆ F.sets :=
  haveI : NeBot (generate S) :=
    generate_neBot_iff.2 fun _ hts ht =>
      ht.coe_toFinset ▸ cond ht.toFinset (ht.coe_toFinset.symm ▸ hts)
  ⟨of (generate S), fun _ ht => (of_le <| generate S) <| GenerateSets.basic ht⟩

end Ultrafilter

namespace Filter

open Ultrafilter

lemma atTop_eq_pure_of_isTop [PartialOrder α] {x : α} (hx : IsTop x) :
    (atTop : Filter α) = pure x :=
  {top := x, le_top := hx : OrderTop α}.atTop_eq

lemma atBot_eq_pure_of_isBot [PartialOrder α] {x : α} (hx : IsBot x) :
    (atBot : Filter α) = pure x :=
  @atTop_eq_pure_of_isTop αᵒᵈ _ _ hx

/-- The `tendsto` relation can be checked on ultrafilters. -/
theorem tendsto_iff_ultrafilter (f : α → β) (l₁ : Filter α) (l₂ : Filter β) :
    Tendsto f l₁ l₂ ↔ ∀ g : Ultrafilter α, ↑g ≤ l₁ → Tendsto f g l₂ := by
  simpa only [tendsto_iff_comap] using le_iff_ultrafilter

section Hyperfilter

variable (α) [Infinite α]

/-- The ultrafilter extending the cofinite filter. -/
noncomputable def hyperfilter : Ultrafilter α :=
  Ultrafilter.of cofinite

variable {α}

theorem hyperfilter_le_cofinite : ↑(hyperfilter α) ≤ @cofinite α :=
  Ultrafilter.of_le cofinite

theorem _root_.GRWTSK.Topology.GeneralTopology.FiniteSUnionMemIff.Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.Nat.hyperfilter_le_atTop : (hyperfilter ℕ).toFilter ≤ atTop :=
  hyperfilter_le_cofinite.trans_eq Nat.cofinite_eq_atTop

@[simp]
theorem bot_ne_hyperfilter : (⊥ : Filter α) ≠ hyperfilter α :=
  (NeBot.ne inferInstance).symm

theorem notMem_hyperfilter_of_finite {s : Set α} (hf : s.Finite) : s ∉ hyperfilter α := fun hy =>
  compl_notMem hy <| hyperfilter_le_cofinite hf.compl_mem_cofinite

@[deprecated (since := "2025-05-24")]
alias nmem_hyperfilter_of_finite := notMem_hyperfilter_of_finite

alias _root_.Set.Finite.notMem_hyperfilter := notMem_hyperfilter_of_finite

@[deprecated (since := "2025-05-24")]
alias _root_.Set.Finite.nmem_hyperfilter := _root_.Set.Finite.notMem_hyperfilter

theorem compl_mem_hyperfilter_of_finite {s : Set α} (hf : Set.Finite s) : sᶜ ∈ hyperfilter α :=
  compl_mem_iff_notMem.2 hf.notMem_hyperfilter

alias _root_.Set.Finite.compl_mem_hyperfilter := compl_mem_hyperfilter_of_finite

theorem mem_hyperfilter_of_finite_compl {s : Set α} (hf : Set.Finite sᶜ) : s ∈ hyperfilter α :=
  compl_compl s ▸ hf.compl_mem_hyperfilter

end Hyperfilter

end Filter
```
