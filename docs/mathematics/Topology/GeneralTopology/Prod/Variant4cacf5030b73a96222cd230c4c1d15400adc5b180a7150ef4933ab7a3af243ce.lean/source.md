# Complete source: GRWTSK.Topology.GeneralTopology.Prod.Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30b322c48855245e5abb8604e6a95cab9c178c9d` · SHA-256 `f03711a11781e123d6a50c02d034021935223a311f115c3746786d5a49e83358`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ProdAtTopAtTopEq.Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ProdAtTopAtTopEq.Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Filter/AtTopBot/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jeremy Avigad, Yury Kudryashov, Patrick Massot
-/
import Mathlib.Data.Finset.Prod
import Mathlib.Order.Filter.AtTopBot.Basic
import Mathlib.Order.Filter.Prod

/-!
# `Filter.atTop` and `Filter.atBot` filters on products
-/


namespace GRWTSK.Topology.GeneralTopology.ProdAtTopAtTopEq.Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef

variable {ι ι' α β γ : Type*}

open Set

namespace Filter

theorem prod_atTop_atTop_eq [Preorder α] [Preorder β] :
    (atTop : Filter α) ×ˢ (atTop : Filter β) = (atTop : Filter (α × β)) := by
  cases isEmpty_or_nonempty α
  · subsingleton
  cases isEmpty_or_nonempty β
  · subsingleton
  simpa [atTop, prod_iInf_left, prod_iInf_right, iInf_prod] using iInf_comm

lemma tendsto_finset_prod_atTop :
    Tendsto (fun (p : Finset ι × Finset ι') ↦ p.1 ×ˢ p.2) atTop atTop := by
  classical
  apply Monotone.tendsto_atTop_atTop
  · intro p q hpq
    simpa using Finset.product_subset_product hpq.1 hpq.2
  · intro b
    use (Finset.image Prod.fst b, Finset.image Prod.snd b)
    exact Finset.subset_product

theorem prod_atBot_atBot_eq [Preorder α] [Preorder β] :
    (atBot : Filter α) ×ˢ (atBot : Filter β) = (atBot : Filter (α × β)) :=
  @prod_atTop_atTop_eq αᵒᵈ βᵒᵈ _ _

theorem prod_map_atTop_eq {α₁ α₂ β₁ β₂ : Type*} [Preorder β₁] [Preorder β₂]
    (u₁ : β₁ → α₁) (u₂ : β₂ → α₂) : map u₁ atTop ×ˢ map u₂ atTop = map (Prod.map u₁ u₂) atTop := by
  rw [prod_map_map_eq, prod_atTop_atTop_eq, Prod.map_def]

theorem prod_map_atBot_eq {α₁ α₂ β₁ β₂ : Type*} [Preorder β₁] [Preorder β₂]
    (u₁ : β₁ → α₁) (u₂ : β₂ → α₂) : map u₁ atBot ×ˢ map u₂ atBot = map (Prod.map u₁ u₂) atBot :=
  @prod_map_atTop_eq _ _ β₁ᵒᵈ β₂ᵒᵈ _ _ _ _

theorem tendsto_atBot_diagonal [Preorder α] : Tendsto (fun a : α => (a, a)) atBot atBot := by
  rw [← prod_atBot_atBot_eq]
  exact tendsto_id.prodMk tendsto_id

theorem tendsto_atTop_diagonal [Preorder α] : Tendsto (fun a : α => (a, a)) atTop atTop := by
  rw [← prod_atTop_atTop_eq]
  exact tendsto_id.prodMk tendsto_id

theorem Tendsto.prod_map_prod_atBot [Preorder γ] {F : Filter α} {G : Filter β} {f : α → γ}
    {g : β → γ} (hf : Tendsto f F atBot) (hg : Tendsto g G atBot) :
    Tendsto (Prod.map f g) (F ×ˢ G) atBot := by
  rw [← prod_atBot_atBot_eq]
  exact hf.prodMap hg

theorem Tendsto.prod_map_prod_atTop [Preorder γ] {F : Filter α} {G : Filter β} {f : α → γ}
    {g : β → γ} (hf : Tendsto f F atTop) (hg : Tendsto g G atTop) :
    Tendsto (Prod.map f g) (F ×ˢ G) atTop := by
  rw [← prod_atTop_atTop_eq]
  exact hf.prodMap hg

theorem Tendsto.prod_atBot [Preorder α] [Preorder γ] {f g : α → γ}
    (hf : Tendsto f atBot atBot) (hg : Tendsto g atBot atBot) :
    Tendsto (Prod.map f g) atBot atBot := by
  rw [← prod_atBot_atBot_eq]
  exact hf.prod_map_prod_atBot hg

theorem Tendsto.prod_atTop [Preorder α] [Preorder γ] {f g : α → γ}
    (hf : Tendsto f atTop atTop) (hg : Tendsto g atTop atTop) :
    Tendsto (Prod.map f g) atTop atTop := by
  rw [← prod_atTop_atTop_eq]
  exact hf.prod_map_prod_atTop hg

theorem eventually_atBot_prod_self [Nonempty α] [Preorder α] [IsDirected α (· ≥ ·)]
    {p : α × α → Prop} : (∀ᶠ x in atBot, p x) ↔ ∃ a, ∀ k l, k ≤ a → l ≤ a → p (k, l) := by
  simp [← prod_atBot_atBot_eq, (@atBot_basis α _ _).prod_self.eventually_iff]

theorem eventually_atTop_prod_self [Nonempty α] [Preorder α] [IsDirected α (· ≤ ·)]
    {p : α × α → Prop} : (∀ᶠ x in atTop, p x) ↔ ∃ a, ∀ k l, a ≤ k → a ≤ l → p (k, l) :=
  eventually_atBot_prod_self (α := αᵒᵈ)

theorem eventually_atBot_prod_self' [Nonempty α] [Preorder α] [IsDirected α (· ≥ ·)]
    {p : α × α → Prop} : (∀ᶠ x in atBot, p x) ↔ ∃ a, ∀ k ≤ a, ∀ l ≤ a, p (k, l) := by
  simp only [eventually_atBot_prod_self, forall_cond_comm]

theorem eventually_atTop_prod_self' [Nonempty α] [Preorder α] [IsDirected α (· ≤ ·)]
    {p : α × α → Prop} : (∀ᶠ x in atTop, p x) ↔ ∃ a, ∀ k ≥ a, ∀ l ≥ a, p (k, l) := by
  simp only [eventually_atTop_prod_self, forall_cond_comm]

theorem eventually_atTop_curry [Preorder α] [Preorder β] {p : α × β → Prop}
    (hp : ∀ᶠ x : α × β in Filter.atTop, p x) : ∀ᶠ k in atTop, ∀ᶠ l in atTop, p (k, l) := by
  rw [← prod_atTop_atTop_eq] at hp
  exact hp.curry

theorem eventually_atBot_curry [Preorder α] [Preorder β] {p : α × β → Prop}
    (hp : ∀ᶠ x : α × β in Filter.atBot, p x) : ∀ᶠ k in atBot, ∀ᶠ l in atBot, p (k, l) :=
  @eventually_atTop_curry αᵒᵈ βᵒᵈ _ _ _ hp

end Filter
```
