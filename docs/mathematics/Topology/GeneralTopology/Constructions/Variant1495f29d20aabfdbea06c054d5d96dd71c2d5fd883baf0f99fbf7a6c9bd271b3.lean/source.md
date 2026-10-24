# Complete source: GRWTSK.Topology.GeneralTopology.Constructions.Variant1495f29d20aabfdbea06c054d5d96dd71c2d5fd883baf0f99fbf7a6c9bd271b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4be5ffb4a037990bd5741d9d4dc4612c49930e5b` · SHA-256 `1495f29d20aabfdbea06c054d5d96dd71c2d5fd883baf0f99fbf7a6c9bd271b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Patrick Massot
-/
import Mathlib.Topology.Maps
import Mathlib.Order.Filter.Pi

#align_import topology.constructions from "leanprover-community/mathlib"@"f7ebde7ee0d1505dfccac8644ae12371aa3c1c9f"

/-!
# Constructions of new topological spaces from old ones

This file constructs products, sums, subtypes and quotients of topological spaces
and sets up their basic theory, such as criteria for maps into or out of these
constructions to be continuous; descriptions of the open sets, neighborhood filters,
and generators of these constructions; and their behavior with respect to embeddings
and other specific classes of maps.

## Implementation note

The constructed topologies are defined using induced and coinduced topologies
along with the complete lattice structure on topologies. Their universal properties
(for example, a map `X → Y × Z` is continuous if and only if both projections
`X → Y`, `X → Z` are) follow easily using order-theoretic descriptions of
continuity. With more work we can also extract descriptions of the open sets,
neighborhood filters and so on.

## Tags

product, sum, disjoint union, subspace, quotient space

-/


noncomputable section

open Topology TopologicalSpace Set Filter Function Classical

universe u v

variable {α : Type u} {β : Type v} {γ δ ε ζ : Type*}

section Constructions

instance instTopologicalSpaceSubtype {p : α → Prop} [t : TopologicalSpace α] :
    TopologicalSpace (Subtype p) :=
  induced (↑) t

instance {r : α → α → Prop} [t : TopologicalSpace α] : TopologicalSpace (Quot r) :=
  coinduced (Quot.mk r) t

instance instTopologicalSpaceQuotient {s : Setoid α} [t : TopologicalSpace α] :
    TopologicalSpace (Quotient s) :=
  coinduced Quotient.mk' t

instance instTopologicalSpaceProd [t₁ : TopologicalSpace α] [t₂ : TopologicalSpace β] :
    TopologicalSpace (α × β) :=
  induced Prod.fst t₁ ⊓ induced Prod.snd t₂

instance instTopologicalSpaceSum [t₁ : TopologicalSpace α] [t₂ : TopologicalSpace β] :
    TopologicalSpace (α ⊕ β) :=
  coinduced Sum.inl t₁ ⊔ coinduced Sum.inr t₂

instance instTopologicalSpaceSigma {β : α → Type v} [t₂ : ∀ a, TopologicalSpace (β a)] :
    TopologicalSpace (Sigma β) :=
  ⨆ a, coinduced (Sigma.mk a) (t₂ a)

instance Pi.topologicalSpace {β : α → Type v} [t₂ : (a : α) → TopologicalSpace (β a)] :
    TopologicalSpace ((a : α) → β a) :=
  ⨅ a, induced (fun f => f a) (t₂ a)
#align Pi.topological_space Pi.topologicalSpace

instance ULift.topologicalSpace [t : TopologicalSpace α] : TopologicalSpace (ULift.{v, u} α) :=
  t.induced ULift.down
#align ulift.topological_space ULift.topologicalSpace

/-!
### `Additive`, `Multiplicative`

The topology on those type synonyms is inherited without change.
-/

section

variable [TopologicalSpace α]

open Additive Multiplicative

instance : TopologicalSpace (Additive α) := ‹TopologicalSpace α›
instance : TopologicalSpace (Multiplicative α) := ‹TopologicalSpace α›

instance [DiscreteTopology α] : DiscreteTopology (Additive α) := ‹DiscreteTopology α›
instance [DiscreteTopology α] : DiscreteTopology (Multiplicative α) := ‹DiscreteTopology α›

theorem continuous_ofMul : Continuous (ofMul : α → Additive α) := continuous_id
#align continuous_of_mul continuous_ofMul

theorem continuous_toMul : Continuous (toMul : Additive α → α) := continuous_id
#align continuous_to_mul continuous_toMul

theorem continuous_ofAdd : Continuous (ofAdd : α → Multiplicative α) := continuous_id
#align continuous_of_add continuous_ofAdd

theorem continuous_toAdd : Continuous (toAdd : Multiplicative α → α) := continuous_id
#align continuous_to_add continuous_toAdd

theorem isOpenMap_ofMul : IsOpenMap (ofMul : α → Additive α) := IsOpenMap.id
#align is_open_map_of_mul isOpenMap_ofMul

theorem isOpenMap_toMul : IsOpenMap (toMul : Additive α → α) := IsOpenMap.id
#align is_open_map_to_mul isOpenMap_toMul

theorem isOpenMap_ofAdd : IsOpenMap (ofAdd : α → Multiplicative α) := IsOpenMap.id
#align is_open_map_of_add isOpenMap_ofAdd

theorem isOpenMap_toAdd : IsOpenMap (toAdd : Multiplicative α → α) := IsOpenMap.id
#align is_open_map_to_add isOpenMap_toAdd

theorem isClosedMap_ofMul : IsClosedMap (ofMul : α → Additive α) := IsClosedMap.id
#align is_closed_map_of_mul isClosedMap_ofMul

theorem isClosedMap_toMul : IsClosedMap (toMul : Additive α → α) := IsClosedMap.id
#align is_closed_map_to_mul isClosedMap_toMul

theorem isClosedMap_ofAdd : IsClosedMap (ofAdd : α → Multiplicative α) := IsClosedMap.id
#align is_closed_map_of_add isClosedMap_ofAdd

theorem isClosedMap_toAdd : IsClosedMap (toAdd : Multiplicative α → α) := IsClosedMap.id
#align is_closed_map_to_add isClosedMap_toAdd

theorem nhds_ofMul (a : α) : 𝓝 (ofMul a) = map ofMul (𝓝 a) := rfl
#align nhds_of_mul nhds_ofMul

theorem nhds_ofAdd (a : α) : 𝓝 (ofAdd a) = map ofAdd (𝓝 a) := rfl
#align nhds_of_add nhds_ofAdd

theorem nhds_toMul (a : Additive α) : 𝓝 (toMul a) = map toMul (𝓝 a) := rfl
#align nhds_to_mul nhds_toMul

theorem nhds_toAdd (a : Multiplicative α) : 𝓝 (toAdd a) = map toAdd (𝓝 a) := rfl
#align nhds_to_add nhds_toAdd

end

/-!
### Order dual

The topology on this type synonym is inherited without change.
-/


section

variable [TopologicalSpace α]

open OrderDual

instance : TopologicalSpace αᵒᵈ := ‹TopologicalSpace α›
instance [DiscreteTopology α] : DiscreteTopology αᵒᵈ := ‹DiscreteTopology α›

theorem continuous_toDual : Continuous (toDual : α → αᵒᵈ) := continuous_id
#align continuous_to_dual continuous_toDual

theorem continuous_ofDual : Continuous (ofDual : αᵒᵈ → α) := continuous_id
#align continuous_of_dual continuous_ofDual

theorem isOpenMap_toDual : IsOpenMap (toDual : α → αᵒᵈ) := IsOpenMap.id
#align is_open_map_to_dual isOpenMap_toDual

theorem isOpenMap_ofDual : IsOpenMap (ofDual : αᵒᵈ → α) := IsOpenMap.id
#align is_open_map_of_dual isOpenMap_ofDual

theorem isClosedMap_toDual : IsClosedMap (toDual : α → αᵒᵈ) := IsClosedMap.id
#align is_closed_map_to_dual isClosedMap_toDual

theorem isClosedMap_ofDual : IsClosedMap (ofDual : αᵒᵈ → α) := IsClosedMap.id
#align is_closed_map_of_dual isClosedMap_ofDual

theorem nhds_toDual (a : α) : 𝓝 (toDual a) = map toDual (𝓝 a) := rfl
#align nhds_to_dual nhds_toDual

theorem nhds_ofDual (a : α) : 𝓝 (ofDual a) = map ofDual (𝓝 a) := rfl
#align nhds_of_dual nhds_ofDual

end

theorem Quotient.preimage_mem_nhds [TopologicalSpace α] [s : Setoid α] {V : Set <| Quotient s}
    {a : α} (hs : V ∈ 𝓝 (Quotient.mk' a)) : Quotient.mk' ⁻¹' V ∈ 𝓝 a :=
  preimage_nhds_coinduced hs
#align quotient.preimage_mem_nhds Quotient.preimage_mem_nhds

/-- The image of a dense set under `Quotient.mk'` is a dense set. -/
theorem Dense.quotient [Setoid α] [TopologicalSpace α] {s : Set α} (H : Dense s) :
    Dense (Quotient.mk' '' s) :=
  Quotient.surjective_Quotient_mk''.denseRange.dense_image continuous_coinduced_rng H
#align dense.quotient Dense.quotient

/-- The composition of `Quotient.mk'` and a function with dense range has dense range. -/
theorem DenseRange.quotient [Setoid α] [TopologicalSpace α] {f : β → α} (hf : DenseRange f) :
    DenseRange (Quotient.mk' ∘ f) :=
  Quotient.surjective_Quotient_mk''.denseRange.comp hf continuous_coinduced_rng
#align dense_range.quotient DenseRange.quotient

instance {p : α → Prop} [TopologicalSpace α] [DiscreteTopology α] : DiscreteTopology (Subtype p) :=
  ⟨bot_unique fun s _ => ⟨(↑) '' s, isOpen_discrete _, preimage_image_eq _ Subtype.val_injective⟩⟩

instance Sum.discreteTopology [TopologicalSpace α] [TopologicalSpace β] [hα : DiscreteTopology α]
    [hβ : DiscreteTopology β] : DiscreteTopology (Sum α β) :=
  ⟨sup_eq_bot_iff.2 <| by simp [hα.eq_bot, hβ.eq_bot]⟩
#align sum.discrete_topology Sum.discreteTopology

instance Sigma.discreteTopology {β : α → Type v} [∀ a, TopologicalSpace (β a)]
    [h : ∀ a, DiscreteTopology (β a)] : DiscreteTopology (Sigma β) :=
  ⟨iSup_eq_bot.2 <| fun _ => by simp only [(h _).eq_bot, coinduced_bot]⟩
#align sigma.discrete_topology Sigma.discreteTopology

section Topα

variable [TopologicalSpace α]

/-
The 𝓝 filter and the subspace topology.
-/
theorem mem_nhds_subtype (s : Set α) (a : { x // x ∈ s }) (t : Set { x // x ∈ s }) :
    t ∈ 𝓝 a ↔ ∃ u ∈ 𝓝 (a : α), Subtype.val ⁻¹' u ⊆ t :=
  mem_nhds_induced _ a t
#align mem_nhds_subtype mem_nhds_subtype

theorem nhds_subtype (s : Set α) (a : { x // x ∈ s }) : 𝓝 a = comap (↑) (𝓝 (a : α)) :=
  nhds_induced _ a
#align nhds_subtype nhds_subtype

theorem nhdsWithin_subtype_eq_bot_iff {s t : Set α} {x : s} :
    𝓝[((↑) : s → α) ⁻¹' t] x = ⊥ ↔ 𝓝[t] (x : α) ⊓ 𝓟 s = ⊥ := by
  rw [inf_principal_eq_bot_iff_comap, nhdsWithin, nhdsWithin, comap_inf, comap_principal,
    nhds_induced]
#align nhds_within_subtype_eq_bot_iff nhdsWithin_subtype_eq_bot_iff

theorem nhds_ne_subtype_eq_bot_iff {S : Set α} {x : S} :
    𝓝[≠] x = ⊥ ↔ 𝓝[≠] (x : α) ⊓ 𝓟 S = ⊥ := by
  rw [← nhdsWithin_subtype_eq_bot_iff, preimage_compl, ← image_singleton,
    Subtype.coe_injective.preimage_image]
#align nhds_ne_subtype_eq_bot_iff nhds_ne_subtype_eq_bot_iff

theorem nhds_ne_subtype_neBot_iff {S : Set α} {x : S} :
    (𝓝[≠] x).NeBot ↔ (𝓝[≠] (x : α) ⊓ 𝓟 S).NeBot := by
  rw [neBot_iff, neBot_iff, not_iff_not, nhds_ne_subtype_eq_bot_iff]
#align nhds_ne_subtype_ne_bot_iff nhds_ne_subtype_neBot_iff

theorem discreteTopology_subtype_iff {S : Set α} : DiscreteTopology S ↔ ∀ x ∈ S, 𝓝[≠] x ⊓ 𝓟 S = ⊥ :=
  by simp_rw [discreteTopology_iff_nhds_ne, SetCoe.forall', nhds_ne_subtype_eq_bot_iff]
#align discrete_topology_subtype_iff discreteTopology_subtype_iff

end Topα

/-- A type synonym equipped with the topology whose open sets are the empty set and the sets with
finite complements. -/
def CofiniteTopology (α : Type*) :=
  α
#align cofinite_topology CofiniteTopology

namespace CofiniteTopology

/-- The identity equivalence between `α` and `CofiniteTopology α`. -/
def of : α ≃ CofiniteTopology α :=
  Equiv.refl α
#align cofinite_topology.of CofiniteTopology.of

instance [Inhabited α] : Inhabited (CofiniteTopology α) where default := of default

instance : TopologicalSpace (CofiniteTopology α) where
  IsOpen s := s.Nonempty → Set.Finite sᶜ
  isOpen_univ := by simp
  isOpen_inter s t := by
    rintro hs ht ⟨x, hxs, hxt⟩
    rw [compl_inter]
    exact (hs ⟨x, hxs⟩).union (ht ⟨x, hxt⟩)
  isOpen_sUnion := by
    rintro s h ⟨x, t, hts, hzt⟩
    rw [Set.compl_sUnion]
    exact Set.Finite.sInter (mem_image_of_mem _ hts) (h t hts ⟨x, hzt⟩)

theorem isOpen_iff {s : Set (CofiniteTopology α)} : IsOpen s ↔ s.Nonempty → sᶜ.Finite :=
  Iff.rfl
#align cofinite_topology.is_open_iff CofiniteTopology.isOpen_iff

theorem isOpen_iff' {s : Set (CofiniteTopology α)} : IsOpen s ↔ s = ∅ ∨ sᶜ.Finite := by
  simp only [isOpen_iff, nonempty_iff_ne_empty, or_iff_not_imp_left]
#align cofinite_topology.is_open_iff' CofiniteTopology.isOpen_iff'

theorem isClosed_iff {s : Set (CofiniteTopology α)} : IsClosed s ↔ s = univ ∨ s.Finite := by
  simp only [← isOpen_compl_iff, isOpen_iff', compl_compl, compl_empty_iff]
#align cofinite_topology.is_closed_iff CofiniteTopology.isClosed_iff

theorem nhds_eq (a : CofiniteTopology α) : 𝓝 a = pure a ⊔ cofinite := by
  ext U
  rw [mem_nhds_iff]
  constructor
  · rintro ⟨V, hVU, V_op, haV⟩
    exact mem_sup.mpr ⟨hVU haV, mem_of_superset (V_op ⟨_, haV⟩) hVU⟩
  · rintro ⟨hU : a ∈ U, hU' : Uᶜ.Finite⟩
    exact ⟨U, Subset.rfl, fun _ => hU', hU⟩
#align cofinite_topology.nhds_eq CofiniteTopology.nhds_eq

theorem mem_nhds_iff {a : CofiniteTopology α} {s : Set (CofiniteTopology α)} :
    s ∈ 𝓝 a ↔ a ∈ s ∧ sᶜ.Finite := by simp [nhds_eq]
#align cofinite_topology.mem_nhds_iff CofiniteTopology.mem_nhds_iff

end CofiniteTopology

end Constructions

section Prod

variable [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ] [TopologicalSpace δ]
  [TopologicalSpace ε] [TopologicalSpace ζ]

-- porting note: todo: Lean 4 fails to deduce implicit args
@[simp] theorem continuous_prod_mk {f : α → β} {g : α → γ} :
    (Continuous fun x => (f x, g x)) ↔ Continuous f ∧ Continuous g :=
  (@continuous_inf_rng α (β × γ) _ _ (TopologicalSpace.induced Prod.fst _)
    (TopologicalSpace.induced Prod.snd _)).trans <|
    continuous_induced_rng.and continuous_induced_rng
#align continuous_prod_mk continuous_prod_mk

@[continuity]
theorem continuous_fst : Continuous (@Prod.fst α β) :=
  (continuous_prod_mk.1 continuous_id).1
#align continuous_fst continuous_fst

/-- Postcomposing `f` with `Prod.fst` is continuous -/
theorem Continuous.fst {f : α → β × γ} (hf : Continuous f) : Continuous fun a : α => (f a).1 :=
  continuous_fst.comp hf
#align continuous.fst Continuous.fst

/-- Precomposing `f` with `Prod.fst` is continuous -/
theorem Continuous.fst' {f : α → γ} (hf : Continuous f) : Continuous fun x : α × β => f x.fst :=
  hf.comp continuous_fst
#align continuous.fst' Continuous.fst'

theorem continuousAt_fst {p : α × β} : ContinuousAt Prod.fst p :=
  continuous_fst.continuousAt
#align continuous_at_fst continuousAt_fst

/-- Postcomposing `f` with `Prod.fst` is continuous at `x` -/
theorem ContinuousAt.fst {f : α → β × γ} {x : α} (hf : ContinuousAt f x) :
    ContinuousAt (fun a : α => (f a).1) x :=
  continuousAt_fst.comp hf
#align continuous_at.fst ContinuousAt.fst

/-- Precomposing `f` with `Prod.fst` is continuous at `(x, y)` -/
theorem ContinuousAt.fst' {f : α → γ} {x : α} {y : β} (hf : ContinuousAt f x) :
    ContinuousAt (fun x : α × β => f x.fst) (x, y) :=
  ContinuousAt.comp hf continuousAt_fst
#align continuous_at.fst' ContinuousAt.fst'

/-- Precomposing `f` with `Prod.fst` is continuous at `x : α × β` -/
theorem ContinuousAt.fst'' {f : α → γ} {x : α × β} (hf : ContinuousAt f x.fst) :
    ContinuousAt (fun x : α × β => f x.fst) x :=
  hf.comp continuousAt_fst
#align continuous_at.fst'' ContinuousAt.fst''

@[continuity]
theorem continuous_snd : Continuous (@Prod.snd α β) :=
  (continuous_prod_mk.1 continuous_id).2
#align continuous_snd continuous_snd

/-- Postcomposing `f` with `Prod.snd` is continuous -/
theorem Continuous.snd {f : α → β × γ} (hf : Continuous f) : Continuous fun a : α => (f a).2 :=
  continuous_snd.comp hf
#align continuous.snd Continuous.snd

/-- Precomposing `f` with `Prod.snd` is continuous -/
theorem Continuous.snd' {f : β → γ} (hf : Continuous f) : Continuous fun x : α × β => f x.snd :=
  hf.comp continuous_snd
#align continuous.snd' Continuous.snd'

theorem continuousAt_snd {p : α × β} : ContinuousAt Prod.snd p :=
  continuous_snd.continuousAt
#align continuous_at_snd continuousAt_snd

/-- Postcomposing `f` with `Prod.snd` is continuous at `x` -/
theorem ContinuousAt.snd {f : α → β × γ} {x : α} (hf : ContinuousAt f x) :
    ContinuousAt (fun a : α => (f a).2) x :=
  continuousAt_snd.comp hf
#align continuous_at.snd ContinuousAt.snd

/-- Precomposing `f` with `Prod.snd` is continuous at `(x, y)` -/
theorem ContinuousAt.snd' {f : β → γ} {x : α} {y : β} (hf : ContinuousAt f y) :
    ContinuousAt (fun x : α × β => f x.snd) (x, y) :=
  ContinuousAt.comp hf continuousAt_snd
#align continuous_at.snd' ContinuousAt.snd'

/-- Precomposing `f` with `Prod.snd` is continuous at `x : α × β` -/
theorem ContinuousAt.snd'' {f : β → γ} {x : α × β} (hf : ContinuousAt f x.snd) :
    ContinuousAt (fun x : α × β => f x.snd) x :=
  hf.comp continuousAt_snd
#align continuous_at.snd'' ContinuousAt.snd''

@[continuity]
theorem Continuous.prod_mk {f : γ → α} {g : γ → β} (hf : Continuous f) (hg : Continuous g) :
    Continuous fun x => (f x, g x) :=
  continuous_prod_mk.2 ⟨hf, hg⟩
#align continuous.prod_mk Continuous.prod_mk

@[continuity]
theorem Continuous.Prod.mk (a : α) : Continuous fun b : β => (a, b) :=
  continuous_const.prod_mk continuous_id
#align continuous.prod.mk Continuous.Prod.mk

@[continuity]
theorem Continuous.Prod.mk_left (b : β) : Continuous fun a : α => (a, b) :=
  continuous_id.prod_mk continuous_const
#align continuous.prod.mk_left Continuous.Prod.mk_left

theorem Continuous.comp₂ {g : α × β → γ} (hg : Continuous g) {e : δ → α} (he : Continuous e)
    {f : δ → β} (hf : Continuous f) : Continuous fun x => g (e x, f x) :=
  hg.comp <| he.prod_mk hf
#align continuous.comp₂ Continuous.comp₂

theorem Continuous.comp₃ {g : α × β × γ → ε} (hg : Continuous g) {e : δ → α} (he : Continuous e)
    {f : δ → β} (hf : Continuous f) {k : δ → γ} (hk : Continuous k) :
    Continuous fun x => g (e x, f x, k x) :=
  hg.comp₂ he <| hf.prod_mk hk
#align continuous.comp₃ Continuous.comp₃

theorem Continuous.comp₄ {g : α × β × γ × ζ → ε} (hg : Continuous g) {e : δ → α} (he : Continuous e)
    {f : δ → β} (hf : Continuous f) {k : δ → γ} (hk : Continuous k) {l : δ → ζ}
    (hl : Continuous l) : Continuous fun x => g (e x, f x, k x, l x) :=
  hg.comp₃ he hf <| hk.prod_mk hl
#align continuous.comp₄ Continuous.comp₄

@[continuity]
theorem Continuous.prod_map {f : γ → α} {g : δ → β} (hf : Continuous f) (hg : Continuous g) :
    Continuous fun x : γ × δ => (f x.1, g x.2) :=
  hf.fst'.prod_mk hg.snd'
#align continuous.prod_map Continuous.prod_map

/-- A version of `continuous_inf_dom_left` for binary functions -/
theorem continuous_inf_dom_left₂ {α β γ} {f : α → β → γ} {ta1 ta2 : TopologicalSpace α}
    {tb1 tb2 : TopologicalSpace β} {tc1 : TopologicalSpace γ}
    (h : by haveI := ta1; haveI := tb1; exact Continuous fun p : α × β => f p.1 p.2) : by
    haveI := ta1 ⊓ ta2; haveI := tb1 ⊓ tb2; exact Continuous fun p : α × β => f p.1 p.2 := by
  have ha := @continuous_inf_dom_left _ _ id ta1 ta2 ta1 (@continuous_id _ (id _))
  have hb := @continuous_inf_dom_left _ _ id tb1 tb2 tb1 (@continuous_id _ (id _))
  have h_continuous_id := @Continuous.prod_map _ _ _ _ ta1 tb1 (ta1 ⊓ ta2) (tb1 ⊓ tb2) _ _ ha hb
  exact @Continuous.comp _ _ _ (id _) (id _) _ _ _ h h_continuous_id
#align continuous_inf_dom_left₂ continuous_inf_dom_left₂

/-- A version of `continuous_inf_dom_right` for binary functions -/
theorem continuous_inf_dom_right₂ {α β γ} {f : α → β → γ} {ta1 ta2 : TopologicalSpace α}
    {tb1 tb2 : TopologicalSpace β} {tc1 : TopologicalSpace γ}
    (h : by haveI := ta2; haveI := tb2; exact Continuous fun p : α × β => f p.1 p.2) : by
    haveI := ta1 ⊓ ta2; haveI := tb1 ⊓ tb2; exact Continuous fun p : α × β => f p.1 p.2 := by
  have ha := @continuous_inf_dom_right _ _ id ta1 ta2 ta2 (@continuous_id _ (id _))
  have hb := @continuous_inf_dom_right _ _ id tb1 tb2 tb2 (@continuous_id _ (id _))
  have h_continuous_id := @Continuous.prod_map _ _ _ _ ta2 tb2 (ta1 ⊓ ta2) (tb1 ⊓ tb2) _ _ ha hb
  exact @Continuous.comp _ _ _ (id _) (id _) _ _ _ h h_continuous_id
#align continuous_inf_dom_right₂ continuous_inf_dom_right₂

/-- A version of `continuous_sInf_dom` for binary functions -/
theorem continuous_sInf_dom₂ {α β γ} {f : α → β → γ} {tas : Set (TopologicalSpace α)}
    {tbs : Set (TopologicalSpace β)} {ta : TopologicalSpace α} {tb : TopologicalSpace β}
    {tc : TopologicalSpace γ} (ha : ta ∈ tas) (hb : tb ∈ tbs)
    (hf : Continuous fun p : α × β => f p.1 p.2) : by
    haveI := sInf tas; haveI := sInf tbs;
      exact @Continuous _ _ _ tc fun p : α × β => f p.1 p.2 := by
  have ha := continuous_sInf_dom ha continuous_id
  have hb := continuous_sInf_dom hb continuous_id
  have h_continuous_id := @Continuous.prod_map _ _ _ _ ta tb (sInf tas) (sInf tbs) _ _ ha hb
  exact @Continuous.comp _ _ _ (id _) (id _) _ _ _ hf h_continuous_id
#align continuous_Inf_dom₂ continuous_sInf_dom₂

theorem Filter.Eventually.prod_inl_nhds {p : α → Prop} {a : α} (h : ∀ᶠ x in 𝓝 a, p x) (b : β) :
    ∀ᶠ x in 𝓝 (a, b), p (x : α × β).1 :=
  continuousAt_fst h
#align filter.eventually.prod_inl_nhds Filter.Eventually.prod_inl_nhds

theorem Filter.Eventually.prod_inr_nhds {p : β → Prop} {b : β} (h : ∀ᶠ x in 𝓝 b, p x) (a : α) :
    ∀ᶠ x in 𝓝 (a, b), p (x : α × β).2 :=
  continuousAt_snd h
#align filter.eventually.prod_inr_nhds Filter.Eventually.prod_inr_nhds

theorem Filter.Eventually.prod_mk_nhds {pa : α → Prop} {a} (ha : ∀ᶠ x in 𝓝 a, pa x) {pb : β → Prop}
    {b} (hb : ∀ᶠ y in 𝓝 b, pb y) : ∀ᶠ p in 𝓝 (a, b), pa (p : α × β).1 ∧ pb p.2 :=
  (ha.prod_inl_nhds b).and (hb.prod_inr_nhds a)
#align filter.eventually.prod_mk_nhds Filter.Eventually.prod_mk_nhds

theorem continuous_swap : Continuous (Prod.swap : α × β → β × α) :=
  continuous_snd.prod_mk continuous_fst
#align continuous_swap continuous_swap

theorem continuous_uncurry_left {f : α → β → γ} (a : α) (h : Continuous (uncurry f)) :
    Continuous (f a) :=
  h.comp (Continuous.Prod.mk _)
#align continuous_uncurry_left continuous_uncurry_left

theorem continuous_uncurry_right {f : α → β → γ} (b : β) (h : Continuous (uncurry f)) :
    Continuous fun a => f a b :=
  h.comp (Continuous.Prod.mk_left _)
#align continuous_uncurry_right continuous_uncurry_right

theorem continuous_curry {g : α × β → γ} (a : α) (h : Continuous g) : Continuous (curry g a) :=
  continuous_uncurry_left a h
#align continuous_curry continuous_curry

theorem IsOpen.prod {s : Set α} {t : Set β} (hs : IsOpen s) (ht : IsOpen t) : IsOpen (s ×ˢ t) :=
  (hs.preimage continuous_fst).inter (ht.preimage continuous_snd)
#align is_open.prod IsOpen.prod

-- porting note: todo: Lean fails to find `t₁` and `t₂` by unification
theorem nhds_prod_eq {a : α} {b : β} : 𝓝 (a, b) = 𝓝 a ×ˢ 𝓝 b := by
  dsimp only [SProd.sprod]
  rw [Filter.prod, instTopologicalSpaceProd, nhds_inf (t₁ := TopologicalSpace.induced Prod.fst _)
    (t₂ := TopologicalSpace.induced Prod.snd _), nhds_induced, nhds_induced]
#align nhds_prod_eq nhds_prod_eq

-- porting note: moved from `topology.continuous_on`
theorem nhdsWithin_prod_eq (a : α) (b : β) (s : Set α) (t : Set β) :
    𝓝[s ×ˢ t] (a, b) = 𝓝[s] a ×ˢ 𝓝[t] b := by
  simp only [nhdsWithin, nhds_prod_eq, ← prod_inf_prod, prod_principal_principal]
#align nhds_within_prod_eq nhdsWithin_prod_eq

/-- If a function `f x y` is such that `y ↦ f x y` is continuous for all `x`, and `x` lives in a
discrete space, then `f` is continuous. -/
theorem continuous_uncurry_of_discreteTopology [DiscreteTopology α] {f : α → β → γ}
    (hf : ∀ a, Continuous (f a)) : Continuous (uncurry f) := by
  apply continuous_iff_continuousAt.2
  rintro ⟨a, x⟩
  change map _ _ ≤ _
  rw [nhds_prod_eq, nhds_discrete, Filter.map_pure_prod]
  exact (hf a).continuousAt
#align continuous_uncurry_of_discrete_topology continuous_uncurry_of_discreteTopology

theorem mem_nhds_prod_iff {a : α} {b : β} {s : Set (α × β)} :
    s ∈ 𝓝 (a, b) ↔ ∃ u ∈ 𝓝 a, ∃ v ∈ 𝓝 b, u ×ˢ v ⊆ s := by rw [nhds_prod_eq, mem_prod_iff]
#align mem_nhds_prod_iff mem_nhds_prod_iff

-- porting note: moved up
theorem Filter.HasBasis.prod_nhds {ιa ιb : Type*} {pa : ιa → Prop} {pb : ιb → Prop}
    {sa : ιa → Set α} {sb : ιb → Set β} {a : α} {b : β} (ha : (𝓝 a).HasBasis pa sa)
    (hb : (𝓝 b).HasBasis pb sb) :
    (𝓝 (a, b)).HasBasis (fun i : ιa × ιb => pa i.1 ∧ pb i.2) fun i => sa i.1 ×ˢ sb i.2 := by
  rw [nhds_prod_eq]
  exact ha.prod hb
#align filter.has_basis.prod_nhds Filter.HasBasis.prod_nhds

-- porting note: moved up
theorem Filter.HasBasis.prod_nhds' {ιa ιb : Type*} {pa : ιa → Prop} {pb : ιb → Prop}
    {sa : ιa → Set α} {sb : ιb → Set β} {ab : α × β} (ha : (𝓝 ab.1).HasBasis pa sa)
    (hb : (𝓝 ab.2).HasBasis pb sb) :
    (𝓝 ab).HasBasis (fun i : ιa × ιb => pa i.1 ∧ pb i.2) fun i => sa i.1 ×ˢ sb i.2 :=
  ha.prod_nhds hb
#align filter.has_basis.prod_nhds' Filter.HasBasis.prod_nhds'

theorem mem_nhds_prod_iff' {a : α} {b : β} {s : Set (α × β)} :
    s ∈ 𝓝 (a, b) ↔ ∃ u v, IsOpen u ∧ a ∈ u ∧ IsOpen v ∧ b ∈ v ∧ u ×ˢ v ⊆ s :=
  ((nhds_basis_opens a).prod_nhds (nhds_basis_opens b)).mem_iff.trans <| by
    simp only [Prod.exists, and_comm, and_assoc, and_left_comm]
#align mem_nhds_prod_iff' mem_nhds_prod_iff'

theorem Prod.tendsto_iff {α} (seq : α → β × γ) {f : Filter α} (x : β × γ) :
    Tendsto seq f (𝓝 x) ↔
      Tendsto (fun n => (seq n).fst) f (𝓝 x.fst) ∧ Tendsto (fun n => (seq n).snd) f (𝓝 x.snd) := by
  rw [nhds_prod_eq, Filter.tendsto_prod_iff']
#align prod.tendsto_iff Prod.tendsto_iff

instance [DiscreteTopology α] [DiscreteTopology β] : DiscreteTopology (α × β) :=
  discreteTopology_iff_nhds.2 fun (a, b) => by
    rw [nhds_prod_eq, nhds_discrete α, nhds_discrete β, prod_pure_pure]

theorem prod_mem_nhds_iff {s : Set α} {t : Set β} {a : α} {b : β} :
    s ×ˢ t ∈ 𝓝 (a, b) ↔ s ∈ 𝓝 a ∧ t ∈ 𝓝 b := by rw [nhds_prod_eq, prod_mem_prod_iff]
#align prod_mem_nhds_iff prod_mem_nhds_iff

theorem prod_mem_nhds {s : Set α} {t : Set β} {a : α} {b : β} (ha : s ∈ 𝓝 a) (hb : t ∈ 𝓝 b) :
    s ×ˢ t ∈ 𝓝 (a, b) :=
  prod_mem_nhds_iff.2 ⟨ha, hb⟩
#align prod_mem_nhds prod_mem_nhds

theorem Filter.Eventually.prod_nhds {p : α → Prop} {q : β → Prop} {a : α} {b : β}
    (ha : ∀ᶠ x in 𝓝 a, p x) (hb : ∀ᶠ y in 𝓝 b, q y) : ∀ᶠ z : α × β in 𝓝 (a, b), p z.1 ∧ q z.2 :=
  prod_mem_nhds ha hb
#align filter.eventually.prod_nhds Filter.Eventually.prod_nhds

theorem nhds_swap (a : α) (b : β) : 𝓝 (a, b) = (𝓝 (b, a)).map Prod.swap := by
  rw [nhds_prod_eq, Filter.prod_comm, nhds_prod_eq]; rfl
#align nhds_swap nhds_swap

theorem Filter.Tendsto.prod_mk_nhds {γ} {a : α} {b : β} {f : Filter γ} {ma : γ → α} {mb : γ → β}
    (ha : Tendsto ma f (𝓝 a)) (hb : Tendsto mb f (𝓝 b)) :
    Tendsto (fun c => (ma c, mb c)) f (𝓝 (a, b)) := by
  rw [nhds_prod_eq]; exact Filter.Tendsto.prod_mk ha hb
#align filter.tendsto.prod_mk_nhds Filter.Tendsto.prod_mk_nhds

theorem Filter.Eventually.curry_nhds {p : α × β → Prop} {x : α} {y : β}
    (h : ∀ᶠ x in 𝓝 (x, y), p x) : ∀ᶠ x' in 𝓝 x, ∀ᶠ y' in 𝓝 y, p (x', y') := by
  rw [nhds_prod_eq] at h
  exact h.curry
#align filter.eventually.curry_nhds Filter.Eventually.curry_nhds

theorem ContinuousAt.prod {f : α → β} {g : α → γ} {x : α} (hf : ContinuousAt f x)
    (hg : ContinuousAt g x) : ContinuousAt (fun x => (f x, g x)) x :=
  hf.prod_mk_nhds hg
#align continuous_at.prod ContinuousAt.prod

theorem ContinuousAt.prod_map {f : α → γ} {g : β → δ} {p : α × β} (hf : ContinuousAt f p.fst)
    (hg : ContinuousAt g p.snd) : ContinuousAt (fun p : α × β => (f p.1, g p.2)) p :=
  hf.fst''.prod hg.snd''
#align continuous_at.prod_map ContinuousAt.prod_map

theorem ContinuousAt.prod_map' {f : α → γ} {g : β → δ} {x : α} {y : β} (hf : ContinuousAt f x)
    (hg : ContinuousAt g y) : ContinuousAt (fun p : α × β => (f p.1, g p.2)) (x, y) :=
  hf.fst'.prod hg.snd'
#align continuous_at.prod_map' ContinuousAt.prod_map'

-- todo: reformulate using `Set.image2`
-- todo: prove a version of `generateFrom_union` with `image2 (∩) s t` in the LHS and use it here
theorem prod_generateFrom_generateFrom_eq {α β : Type*} {s : Set (Set α)} {t : Set (Set β)}
    (hs : ⋃₀ s = univ) (ht : ⋃₀ t = univ) :
    @instTopologicalSpaceProd α β (generateFrom s) (generateFrom t) =
      generateFrom { g | ∃ u ∈ s, ∃ v ∈ t, g = u ×ˢ v } :=
  let G := generateFrom { g | ∃ u ∈ s, ∃ v ∈ t, g = u ×ˢ v }
  le_antisymm
    (le_generateFrom fun g ⟨u, hu, v, hv, g_eq⟩ =>
      g_eq.symm ▸
        @IsOpen.prod _ _ (generateFrom s) (generateFrom t) _ _ (GenerateOpen.basic _ hu)
          (GenerateOpen.basic _ hv))
    (le_inf
      (coinduced_le_iff_le_induced.mp <|
        le_generateFrom fun u hu =>
          have : ⋃ v ∈ t, u ×ˢ v = Prod.fst ⁻¹' u := by
            simp_rw [← prod_iUnion, ← sUnion_eq_biUnion, ht, prod_univ]
          show G.IsOpen (Prod.fst ⁻¹' u) by
            rw [← this]
            exact
              isOpen_iUnion fun v =>
                isOpen_iUnion fun hv => GenerateOpen.basic _ ⟨_, hu, _, hv, rfl⟩)
      (coinduced_le_iff_le_induced.mp <|
        le_generateFrom fun v hv =>
          have : ⋃ u ∈ s, u ×ˢ v = Prod.snd ⁻¹' v := by
            simp_rw [← iUnion_prod_const, ← sUnion_eq_biUnion, hs, univ_prod]
          show G.IsOpen (Prod.snd ⁻¹' v) by
            rw [← this]
            exact
              isOpen_iUnion fun u =>
                isOpen_iUnion fun hu => GenerateOpen.basic _ ⟨_, hu, _, hv, rfl⟩))
#align prod_generate_from_generate_from_eq prod_generateFrom_generateFrom_eq

-- todo: use the previous lemma?
theorem prod_eq_generateFrom :
    instTopologicalSpaceProd =
      generateFrom { g | ∃ (s : Set α) (t : Set β), IsOpen s ∧ IsOpen t ∧ g = s ×ˢ t } :=
  le_antisymm (le_generateFrom fun g ⟨s, t, hs, ht, g_eq⟩ => g_eq.symm ▸ hs.prod ht)
    (le_inf
      (ball_image_of_ball fun t ht =>
        GenerateOpen.basic _ ⟨t, univ, by simpa [Set.prod_eq] using ht⟩)
      (ball_image_of_ball fun t ht =>
        GenerateOpen.basic _ ⟨univ, t, by simpa [Set.prod_eq] using ht⟩))
#align prod_eq_generate_from prod_eq_generateFrom

-- porting note: todo: align with `mem_nhds_prod_iff'`
theorem isOpen_prod_iff {s : Set (α × β)} :
    IsOpen s ↔ ∀ a b, (a, b) ∈ s →
      ∃ u v, IsOpen u ∧ IsOpen v ∧ a ∈ u ∧ b ∈ v ∧ u ×ˢ v ⊆ s :=
  isOpen_iff_mem_nhds.trans <| by simp_rw [Prod.forall, mem_nhds_prod_iff', and_left_comm]
#align is_open_prod_iff isOpen_prod_iff

/-- A product of induced topologies is induced by the product map -/
theorem prod_induced_induced (f : α → β) (g : γ → δ) :
    @instTopologicalSpaceProd α γ (induced f ‹_›) (induced g ‹_›) =
      induced (fun p => (f p.1, g p.2)) instTopologicalSpaceProd := by
  delta instTopologicalSpaceProd
  simp_rw [induced_inf, induced_compose]
  rfl
#align prod_induced_induced prod_induced_induced

theorem continuous_uncurry_of_discreteTopology_left [DiscreteTopology α] {f : α → β → γ}
    (h : ∀ a, Continuous (f a)) : Continuous (uncurry f) :=
  continuous_iff_continuousAt.2 fun ⟨a, b⟩ => by
    simp only [ContinuousAt, nhds_prod_eq, nhds_discrete α, pure_prod, tendsto_map'_iff, (· ∘ ·),
      uncurry, (h a).tendsto]
#align continuous_uncurry_of_discrete_topology_left continuous_uncurry_of_discreteTopology_left

/-- Given a neighborhood `s` of `(x, x)`, then `(x, x)` has a square open neighborhood
  that is a subset of `s`. -/
theorem exists_nhds_square {s : Set (α × α)} {x : α} (hx : s ∈ 𝓝 (x, x)) :
    ∃ U : Set α, IsOpen U ∧ x ∈ U ∧ U ×ˢ U ⊆ s := by
  simpa [nhds_prod_eq, (nhds_basis_opens x).prod_self.mem_iff, and_assoc, and_left_comm] using hx
#align exists_nhds_square exists_nhds_square

/-- `Prod.fst` maps neighborhood of `x : α × β` within the section `Prod.snd ⁻¹' {x.2}`
to `𝓝 x.1`. -/
theorem map_fst_nhdsWithin (x : α × β) : map Prod.fst (𝓝[Prod.snd ⁻¹' {x.2}] x) = 𝓝 x.1 := by
  refine' le_antisymm (continuousAt_fst.mono_left inf_le_left) fun s hs => _
  rcases x with ⟨x, y⟩
  rw [mem_map, nhdsWithin, mem_inf_principal, mem_nhds_prod_iff] at hs
  rcases hs with ⟨u, hu, v, hv, H⟩
  simp only [prod_subset_iff, mem_singleton_iff, mem_setOf_eq, mem_preimage] at H
  exact mem_of_superset hu fun z hz => H _ hz _ (mem_of_mem_nhds hv) rfl
#align map_fst_nhds_within map_fst_nhdsWithin

@[simp]
theorem map_fst_nhds (x : α × β) : map Prod.fst (𝓝 x) = 𝓝 x.1 :=
  le_antisymm continuousAt_fst <| (map_fst_nhdsWithin x).symm.trans_le (map_mono inf_le_left)
#align map_fst_nhds map_fst_nhds

/-- The first projection in a product of topological spaces sends open sets to open sets. -/
theorem isOpenMap_fst : IsOpenMap (@Prod.fst α β) :=
  isOpenMap_iff_nhds_le.2 fun x => (map_fst_nhds x).ge
#align is_open_map_fst isOpenMap_fst

/-- `Prod.snd` maps neighborhood of `x : α × β` within the section `Prod.fst ⁻¹' {x.1}`
to `𝓝 x.2`. -/
theorem map_snd_nhdsWithin (x : α × β) : map Prod.snd (𝓝[Prod.fst ⁻¹' {x.1}] x) = 𝓝 x.2 := by
  refine' le_antisymm (continuousAt_snd.mono_left inf_le_left) fun s hs => _
  rcases x with ⟨x, y⟩
  rw [mem_map, nhdsWithin, mem_inf_principal, mem_nhds_prod_iff] at hs
  rcases hs with ⟨u, hu, v, hv, H⟩
  simp only [prod_subset_iff, mem_singleton_iff, mem_setOf_eq, mem_preimage] at H
  exact mem_of_superset hv fun z hz => H _ (mem_of_mem_nhds hu) _ hz rfl
#align map_snd_nhds_within map_snd_nhdsWithin

@[simp]
theorem map_snd_nhds (x : α × β) : map Prod.snd (𝓝 x) = 𝓝 x.2 :=
  le_antisymm continuousAt_snd <| (map_snd_nhdsWithin x).symm.trans_le (map_mono inf_le_left)
#align map_snd_nhds map_snd_nhds

/-- The second projection in a product of topological spaces sends open sets to open sets. -/
theorem isOpenMap_snd : IsOpenMap (@Prod.snd α β) :=
  isOpenMap_iff_nhds_le.2 fun x => (map_snd_nhds x).ge
#align is_open_map_snd isOpenMap_snd

/-- A product set is open in a product space if and only if each factor is open, or one of them is
empty -/
theorem isOpen_prod_iff' {s : Set α} {t : Set β} :
    IsOpen (s ×ˢ t) ↔ IsOpen s ∧ IsOpen t ∨ s = ∅ ∨ t = ∅ := by
  cases' (s ×ˢ t).eq_empty_or_nonempty with h h
  · simp [h, prod_eq_empty_iff.1 h]
  · have st : s.Nonempty ∧ t.Nonempty := prod_nonempty_iff.1 h
    constructor
    · intro (H : IsOpen (s ×ˢ t))
      refine' Or.inl ⟨_, _⟩
      show IsOpen s
      · rw [← fst_image_prod s st.2]
        exact isOpenMap_fst _ H
      show IsOpen t
      · rw [← snd_image_prod st.1 t]
        exact isOpenMap_snd _ H
    · intro H
      simp only [st.1.ne_empty, st.2.ne_empty, not_false_iff, or_false_iff] at H
      exact H.1.prod H.2
#align is_open_prod_iff' isOpen_prod_iff'

theorem closure_prod_eq {s : Set α} {t : Set β} : closure (s ×ˢ t) = closure s ×ˢ closure t :=
  Set.ext fun ⟨a, b⟩ => by
    simp_rw [mem_prod, mem_closure_iff_nhdsWithin_neBot, nhdsWithin_prod_eq, prod_neBot]
#align closure_prod_eq closure_prod_eq

theorem interior_prod_eq (s : Set α) (t : Set β) : interior (s ×ˢ t) = interior s ×ˢ interior t :=
  Set.ext fun ⟨a, b⟩ => by simp only [mem_interior_iff_mem_nhds, mem_prod, prod_mem_nhds_iff]
#align interior_prod_eq interior_prod_eq

theorem frontier_prod_eq (s : Set α) (t : Set β) :
    frontier (s ×ˢ t) = closure s ×ˢ frontier t ∪ frontier s ×ˢ closure t := by
  simp only [frontier, closure_prod_eq, interior_prod_eq, prod_diff_prod]
#align frontier_prod_eq frontier_prod_eq

@[simp]
theorem frontier_prod_univ_eq (s : Set α) : frontier (s ×ˢ (univ : Set β)) = frontier s ×ˢ univ :=
  by simp [frontier_prod_eq]
#align frontier_prod_univ_eq frontier_prod_univ_eq

@[simp]
theorem frontier_univ_prod_eq (s : Set β) : frontier ((univ : Set α) ×ˢ s) = univ ×ˢ frontier s :=
  by simp [frontier_prod_eq]
#align frontier_univ_prod_eq frontier_univ_prod_eq

theorem map_mem_closure₂ {f : α → β → γ} {a : α} {b : β} {s : Set α} {t : Set β} {u : Set γ}
    (hf : Continuous (uncurry f)) (ha : a ∈ closure s) (hb : b ∈ closure t)
    (h : ∀ a ∈ s, ∀ b ∈ t, f a b ∈ u) : f a b ∈ closure u :=
  have H₁ : (a, b) ∈ closure (s ×ˢ t) := by simpa only [closure_prod_eq] using mk_mem_prod ha hb
  have H₂ : MapsTo (uncurry f) (s ×ˢ t) u := forall_prod_set.2 h
  H₂.closure hf H₁
#align map_mem_closure₂ map_mem_closure₂

theorem IsClosed.prod {s₁ : Set α} {s₂ : Set β} (h₁ : IsClosed s₁) (h₂ : IsClosed s₂) :
    IsClosed (s₁ ×ˢ s₂) :=
  closure_eq_iff_isClosed.mp <| by simp only [h₁.closure_eq, h₂.closure_eq, closure_prod_eq]
#align is_closed.prod IsClosed.prod

/-- The product of two dense sets is a dense set. -/
theorem Dense.prod {s : Set α} {t : Set β} (hs : Dense s) (ht : Dense t) : Dense (s ×ˢ t) :=
  fun x => by
  rw [closure_prod_eq]
  exact ⟨hs x.1, ht x.2⟩
#align dense.prod Dense.prod

/-- If `f` and `g` are maps with dense range, then `Prod.map f g` has dense range. -/
theorem DenseRange.prod_map {ι : Type*} {κ : Type*} {f : ι → β} {g : κ → γ} (hf : DenseRange f)
    (hg : DenseRange g) : DenseRange (Prod.map f g) := by
  simpa only [DenseRange, prod_range_range_eq] using hf.prod hg
#align dense_range.prod_map DenseRange.prod_map

theorem Inducing.prod_map {f : α → β} {g : γ → δ} (hf : Inducing f) (hg : Inducing g) :
    Inducing (Prod.map f g) :=
  inducing_iff_nhds.2 fun (a, b) => by simp_rw [Prod.map, nhds_prod_eq, hf.nhds_eq_comap,
    hg.nhds_eq_comap, prod_comap_comap_eq]
#align inducing.prod_mk Inducing.prod_map

@[simp]
theorem inducing_const_prod {a : α} {f : β → γ} : (Inducing fun x => (a, f x)) ↔ Inducing f := by
  simp_rw [inducing_iff, instTopologicalSpaceProd, induced_inf, induced_compose, Function.comp,
    induced_const, top_inf_eq]
#align inducing_const_prod inducing_const_prod

@[simp]
theorem inducing_prod_const {b : β} {f : α → γ} : (Inducing fun x => (f x, b)) ↔ Inducing f := by
  simp_rw [inducing_iff, instTopologicalSpaceProd, induced_inf, induced_compose, Function.comp,
    induced_const, inf_top_eq]
#align inducing_prod_const inducing_prod_const

theorem Embedding.prod_map {f : α → β} {g : γ → δ} (hf : Embedding f) (hg : Embedding g) :
    Embedding (Prod.map f g) :=
  { hf.toInducing.prod_map hg.toInducing with
    inj := fun ⟨x₁, x₂⟩ ⟨y₁, y₂⟩ => by simp [hf.inj.eq_iff, hg.inj.eq_iff] }
#align embedding.prod_mk Embedding.prod_map

protected theorem IsOpenMap.prod {f : α → β} {g : γ → δ} (hf : IsOpenMap f) (hg : IsOpenMap g) :
    IsOpenMap fun p : α × γ => (f p.1, g p.2) := by
  rw [isOpenMap_iff_nhds_le]
  rintro ⟨a, b⟩
  rw [nhds_prod_eq, nhds_prod_eq, ← Filter.prod_map_map_eq]
  exact Filter.prod_mono (hf.nhds_le a) (hg.nhds_le b)
#align is_open_map.prod IsOpenMap.prod

protected theorem OpenEmbedding.prod {f : α → β} {g : γ → δ} (hf : OpenEmbedding f)
    (hg : OpenEmbedding g) : OpenEmbedding fun x : α × γ => (f x.1, g x.2) :=
  openEmbedding_of_embedding_open (hf.1.prod_map hg.1) (hf.isOpenMap.prod hg.isOpenMap)
#align open_embedding.prod OpenEmbedding.prod

theorem embedding_graph {f : α → β} (hf : Continuous f) : Embedding fun x => (x, f x) :=
  embedding_of_embedding_compose (continuous_id.prod_mk hf) continuous_fst embedding_id
#align embedding_graph embedding_graph

theorem embedding_prod_mk (x : α) : Embedding (Prod.mk x : β → α × β) :=
  embedding_of_embedding_compose (Continuous.Prod.mk x) continuous_snd embedding_id

end Prod

section Sum

open Sum

variable [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ] [TopologicalSpace δ]

theorem continuous_sum_dom {f : α ⊕ β → γ} :
    Continuous f ↔ Continuous (f ∘ Sum.inl) ∧ Continuous (f ∘ Sum.inr) :=
  (continuous_sup_dom (t₁ := TopologicalSpace.coinduced Sum.inl _)
    (t₂ := TopologicalSpace.coinduced Sum.inr _)).trans <|
    continuous_coinduced_dom.and continuous_coinduced_dom
#align continuous_sum_dom continuous_sum_dom

theorem continuous_sum_elim {f : α → γ} {g : β → γ} :
    Continuous (Sum.elim f g) ↔ Continuous f ∧ Continuous g :=
  continuous_sum_dom
#align continuous_sum_elim continuous_sum_elim

@[continuity]
theorem Continuous.sum_elim {f : α → γ} {g : β → γ} (hf : Continuous f) (hg : Continuous g) :
    Continuous (Sum.elim f g) :=
  continuous_sum_elim.2 ⟨hf, hg⟩
#align continuous.sum_elim Continuous.sum_elim

@[continuity]
theorem continuous_isLeft : Continuous (isLeft : α ⊕ β → Bool) :=
  continuous_sum_dom.2 ⟨continuous_const, continuous_const⟩

@[continuity]
theorem continuous_isRight : Continuous (isRight : α ⊕ β → Bool) :=
  continuous_sum_dom.2 ⟨continuous_const, continuous_const⟩

@[continuity]
-- porting note: the proof was `continuous_sup_rng_left continuous_coinduced_rng`
theorem continuous_inl : Continuous (@inl α β) := ⟨fun _ => And.left⟩
#align continuous_inl continuous_inl

@[continuity]
-- porting note: the proof was `continuous_sup_rng_right continuous_coinduced_rng`
theorem continuous_inr : Continuous (@inr α β) := ⟨fun _ => And.right⟩
#align continuous_inr continuous_inr

theorem isOpen_sum_iff {s : Set (Sum α β)} : IsOpen s ↔ IsOpen (inl ⁻¹' s) ∧ IsOpen (inr ⁻¹' s) :=
  Iff.rfl
#align is_open_sum_iff isOpen_sum_iff

-- porting note: new theorem
theorem isClosed_sum_iff {s : Set (α ⊕ β)} :
    IsClosed s ↔ IsClosed (inl ⁻¹' s) ∧ IsClosed (inr ⁻¹' s) := by
  simp only [← isOpen_compl_iff, isOpen_sum_iff, preimage_compl]

theorem isOpenMap_inl : IsOpenMap (@inl α β) := fun u hu => by
  simpa [isOpen_sum_iff, preimage_image_eq u Sum.inl_injective]
#align is_open_map_inl isOpenMap_inl

theorem isOpenMap_inr : IsOpenMap (@inr α β) := fun u hu => by
  simpa [isOpen_sum_iff, preimage_image_eq u Sum.inr_injective]
#align is_open_map_inr isOpenMap_inr

theorem openEmbedding_inl : OpenEmbedding (@inl α β) :=
  openEmbedding_of_continuous_injective_open continuous_inl inl_injective isOpenMap_inl
#align open_embedding_inl openEmbedding_inl

theorem openEmbedding_inr : OpenEmbedding (@inr α β) :=
  openEmbedding_of_continuous_injective_open continuous_inr inr_injective isOpenMap_inr
#align open_embedding_inr openEmbedding_inr

theorem embedding_inl : Embedding (@inl α β) :=
  openEmbedding_inl.1
#align embedding_inl embedding_inl

theorem embedding_inr : Embedding (@inr α β) :=
  openEmbedding_inr.1
#align embedding_inr embedding_inr

theorem isOpen_range_inl : IsOpen (range (inl : α → Sum α β)) :=
  openEmbedding_inl.2
#align is_open_range_inl isOpen_range_inl

theorem isOpen_range_inr : IsOpen (range (inr : β → Sum α β)) :=
  openEmbedding_inr.2
#align is_open_range_inr isOpen_range_inr

theorem isClosed_range_inl : IsClosed (range (inl : α → Sum α β)) := by
  rw [← isOpen_compl_iff, compl_range_inl]
  exact isOpen_range_inr
#align is_closed_range_inl isClosed_range_inl

theorem isClosed_range_inr : IsClosed (range (inr : β → Sum α β)) := by
  rw [← isOpen_compl_iff, compl_range_inr]
  exact isOpen_range_inl
#align is_closed_range_inr isClosed_range_inr

theorem closedEmbedding_inl : ClosedEmbedding (inl : α → Sum α β) :=
  ⟨embedding_inl, isClosed_range_inl⟩
#align closed_embedding_inl closedEmbedding_inl

theorem closedEmbedding_inr : ClosedEmbedding (inr : β → Sum α β) :=
  ⟨embedding_inr, isClosed_range_inr⟩
#align closed_embedding_inr closedEmbedding_inr

theorem nhds_inl (x : α) : 𝓝 (inl x : Sum α β) = map inl (𝓝 x) :=
  (openEmbedding_inl.map_nhds_eq _).symm
#align nhds_inl nhds_inl

theorem nhds_inr (x : β) : 𝓝 (inr x : Sum α β) = map inr (𝓝 x) :=
  (openEmbedding_inr.map_nhds_eq _).symm
#align nhds_inr nhds_inr

@[simp]
theorem continuous_sum_map {f : α → β} {g : γ → δ} :
    Continuous (Sum.map f g) ↔ Continuous f ∧ Continuous g :=
  continuous_sum_elim.trans <|
    embedding_inl.continuous_iff.symm.and embedding_inr.continuous_iff.symm
#align continuous_sum_map continuous_sum_map

@[continuity]
theorem Continuous.sum_map {f : α → β} {g : γ → δ} (hf : Continuous f) (hg : Continuous g) :
    Continuous (Sum.map f g) :=
  continuous_sum_map.2 ⟨hf, hg⟩
#align continuous.sum_map Continuous.sum_map

theorem isOpenMap_sum {f : Sum α β → γ} :
    IsOpenMap f ↔ (IsOpenMap fun a => f (inl a)) ∧ IsOpenMap fun b => f (inr b) := by
  simp only [isOpenMap_iff_nhds_le, Sum.forall, nhds_inl, nhds_inr, Filter.map_map, comp]
#align is_open_map_sum isOpenMap_sum

@[simp]
theorem isOpenMap_sum_elim {f : α → γ} {g : β → γ} :
    IsOpenMap (Sum.elim f g) ↔ IsOpenMap f ∧ IsOpenMap g := by
  simp only [isOpenMap_sum, elim_inl, elim_inr]
#align is_open_map_sum_elim isOpenMap_sum_elim

theorem IsOpenMap.sum_elim {f : α → γ} {g : β → γ} (hf : IsOpenMap f) (hg : IsOpenMap g) :
    IsOpenMap (Sum.elim f g) :=
  isOpenMap_sum_elim.2 ⟨hf, hg⟩
#align is_open_map.sum_elim IsOpenMap.sum_elim

end Sum

section Subtype

variable [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ] {p : α → Prop}

theorem inducing_subtype_val {b : Set β} : Inducing ((↑) : b → β) := ⟨rfl⟩
#align inducing_coe inducing_subtype_val

theorem Inducing.of_codRestrict {f : α → β} {b : Set β} (hb : ∀ a, f a ∈ b)
    (h : Inducing (b.codRestrict f hb)) : Inducing f :=
  inducing_subtype_val.comp h
#align inducing.of_cod_restrict Inducing.of_codRestrict

theorem embedding_subtype_val : Embedding ((↑) : Subtype p → α) :=
  ⟨inducing_subtype_val, Subtype.coe_injective⟩
#align embedding_subtype_coe embedding_subtype_val

theorem closedEmbedding_subtype_val (h : IsClosed { a | p a }) :
    ClosedEmbedding ((↑) : Subtype p → α) :=
  ⟨embedding_subtype_val, by rwa [Subtype.range_coe_subtype]⟩
#align closed_embedding_subtype_coe closedEmbedding_subtype_val

@[continuity]
theorem continuous_subtype_val : Continuous (@Subtype.val α p) :=
  continuous_induced_dom
#align continuous_subtype_val continuous_subtype_val
#align continuous_subtype_coe continuous_subtype_val

theorem Continuous.subtype_val {f : β → Subtype p} (hf : Continuous f) :
    Continuous fun x => (f x : α) :=
  continuous_subtype_val.comp hf
#align continuous.subtype_coe Continuous.subtype_val

theorem IsOpen.openEmbedding_subtype_val {s : Set α} (hs : IsOpen s) :
    OpenEmbedding ((↑) : s → α) :=
  ⟨embedding_subtype_val, (@Subtype.range_coe _ s).symm ▸ hs⟩
#align is_open.open_embedding_subtype_coe IsOpen.openEmbedding_subtype_val

theorem IsOpen.isOpenMap_subtype_val {s : Set α} (hs : IsOpen s) : IsOpenMap ((↑) : s → α) :=
  hs.openEmbedding_subtype_val.isOpenMap
#align is_open.is_open_map_subtype_coe IsOpen.isOpenMap_subtype_val

theorem IsOpenMap.restrict {f : α → β} (hf : IsOpenMap f) {s : Set α} (hs : IsOpen s) :
    IsOpenMap (s.restrict f) :=
  hf.comp hs.isOpenMap_subtype_val
#align is_open_map.restrict IsOpenMap.restrict

lemma IsClosedMap.restrictPreimage {f : α → β} (hcl : IsClosedMap f) (T : Set β) :
    IsClosedMap (T.restrictPreimage f) := by
  rw [isClosedMap_iff_clusterPt] at hcl ⊢
  intro A ⟨y, hyT⟩ hy
  rw [restrictPreimage, MapClusterPt, ← inducing_subtype_val.mapClusterPt_iff, MapClusterPt,
      map_map, MapsTo.restrict_commutes, ← map_map, ← MapClusterPt, map_principal] at hy
  rcases hcl _ y hy with ⟨x, hxy, hx⟩
  have hxT : f x ∈ T := hxy ▸ hyT
  refine ⟨⟨x, hxT⟩, Subtype.ext hxy, ?_⟩
  rwa [← inducing_subtype_val.mapClusterPt_iff, MapClusterPt, map_principal]

nonrec theorem IsClosed.closedEmbedding_subtype_val {s : Set α} (hs : IsClosed s) :
    ClosedEmbedding ((↑) : s → α) :=
  closedEmbedding_subtype_val hs
#align is_closed.closed_embedding_subtype_coe IsClosed.closedEmbedding_subtype_val

@[continuity]
theorem Continuous.subtype_mk {f : β → α} (h : Continuous f) (hp : ∀ x, p (f x)) :
    Continuous fun x => (⟨f x, hp x⟩ : Subtype p) :=
  continuous_induced_rng.2 h
#align continuous.subtype_mk Continuous.subtype_mk

theorem Continuous.subtype_map {f : α → β} (h : Continuous f) {q : β → Prop}
    (hpq : ∀ x, p x → q (f x)) : Continuous (Subtype.map f hpq) :=
  (h.comp continuous_subtype_val).subtype_mk _
#align continuous.subtype_map Continuous.subtype_map

theorem continuous_inclusion {s t : Set α} (h : s ⊆ t) : Continuous (inclusion h) :=
  continuous_id.subtype_map h
#align continuous_inclusion continuous_inclusion

theorem continuousAt_subtype_val {p : α → Prop} {a : Subtype p} :
    ContinuousAt ((↑) : Subtype p → α) a :=
  continuous_subtype_val.continuousAt
#align continuous_at_subtype_coe continuousAt_subtype_val

theorem Subtype.dense_iff {s : Set α} {t : Set s} : Dense t ↔ s ⊆ closure ((↑) '' t) := by
  rw [inducing_subtype_val.dense_iff, SetCoe.forall]
  rfl
#align subtype.dense_iff Subtype.dense_iff

-- porting note: new lemma
theorem map_nhds_subtype_val {s : Set α} (a : s) : map ((↑) : s → α) (𝓝 a) = 𝓝[s] ↑a := by
  rw [inducing_subtype_val.map_nhds_eq, Subtype.range_val]

theorem map_nhds_subtype_coe_eq_nhds {a : α} (ha : p a) (h : ∀ᶠ x in 𝓝 a, p x) :
    map ((↑) : Subtype p → α) (𝓝 ⟨a, ha⟩) = 𝓝 a :=
  map_nhds_induced_of_mem <| by rw [Subtype.range_val]; exact h
#align map_nhds_subtype_coe_eq map_nhds_subtype_coe_eq_nhds

theorem nhds_subtype_eq_comap {a : α} {h : p a} : 𝓝 (⟨a, h⟩ : Subtype p) = comap (↑) (𝓝 a) :=
  nhds_induced _ _
#align nhds_subtype_eq_comap nhds_subtype_eq_comap

theorem tendsto_subtype_rng {β : Type*} {p : α → Prop} {b : Filter β} {f : β → Subtype p} :
    ∀ {a : Subtype p}, Tendsto f b (𝓝 a) ↔ Tendsto (fun x => (f x : α)) b (𝓝 (a : α))
  | ⟨a, ha⟩ => by rw [nhds_subtype_eq_comap, tendsto_comap_iff]; rfl
#align tendsto_subtype_rng tendsto_subtype_rng

theorem closure_subtype {x : { a // p a }} {s : Set { a // p a }} :
    x ∈ closure s ↔ (x : α) ∈ closure (((↑) : _ → α) '' s) :=
  closure_induced
#align closure_subtype closure_subtype

@[simp]
theorem continuousAt_codRestrict_iff {f : α → β} {t : Set β} (h1 : ∀ x, f x ∈ t) {x : α} :
    ContinuousAt (codRestrict f t h1) x ↔ ContinuousAt f x :=
  inducing_subtype_val.continuousAt_iff
#align continuous_at_cod_restrict_iff continuousAt_codRestrict_iff

alias ⟨_, ContinuousAt.codRestrict⟩ := continuousAt_codRestrict_iff
#align continuous_at.cod_restrict ContinuousAt.codRestrict

theorem ContinuousAt.restrict {f : α → β} {s : Set α} {t : Set β} (h1 : MapsTo f s t) {x : s}
    (h2 : ContinuousAt f x) : ContinuousAt (h1.restrict f s t) x :=
  (h2.comp continuousAt_subtype_val).codRestrict _
#align continuous_at.restrict ContinuousAt.restrict

theorem ContinuousAt.restrictPreimage {f : α → β} {s : Set β} {x : f ⁻¹' s} (h : ContinuousAt f x) :
    ContinuousAt (s.restrictPreimage f) x :=
  h.restrict _
#align continuous_at.restrict_preimage ContinuousAt.restrictPreimage

@[continuity]
theorem Continuous.codRestrict {f : α → β} {s : Set β} (hf : Continuous f) (hs : ∀ a, f a ∈ s) :
    Continuous (s.codRestrict f hs) :=
  hf.subtype_mk hs
#align continuous.cod_restrict Continuous.codRestrict

@[continuity]
theorem Continuous.restrict {f : α → β} {s : Set α} {t : Set β} (h1 : MapsTo f s t)
    (h2 : Continuous f) : Continuous (h1.restrict f s t) :=
  (h2.comp continuous_subtype_val).codRestrict _

@[continuity]
theorem Continuous.restrictPreimage {f : α → β} {s : Set β} (h : Continuous f) :
    Continuous (s.restrictPreimage f) :=
  h.restrict _

theorem Inducing.codRestrict {e : α → β} (he : Inducing e) {s : Set β} (hs : ∀ x, e x ∈ s) :
    Inducing (codRestrict e s hs) :=
  inducing_of_inducing_compose (he.continuous.codRestrict hs) continuous_subtype_val he
#align inducing.cod_restrict Inducing.codRestrict

theorem Embedding.codRestrict {e : α → β} (he : Embedding e) (s : Set β) (hs : ∀ x, e x ∈ s) :
    Embedding (codRestrict e s hs) :=
  embedding_of_embedding_compose (he.continuous.codRestrict hs) continuous_subtype_val he
#align embedding.cod_restrict Embedding.codRestrict

theorem embedding_inclusion {s t : Set α} (h : s ⊆ t) : Embedding (Set.inclusion h) :=
  embedding_subtype_val.codRestrict _ _
#align embedding_inclusion embedding_inclusion

/-- Let `s, t ⊆ X` be two subsets of a topological space `X`.  If `t ⊆ s` and the topology induced
by `X`on `s` is discrete, then also the topology induces on `t` is discrete.  -/
theorem DiscreteTopology.of_subset {X : Type*} [TopologicalSpace X] {s t : Set X}
    (_ : DiscreteTopology s) (ts : t ⊆ s) : DiscreteTopology t :=
  (embedding_inclusion ts).discreteTopology
#align discrete_topology.of_subset DiscreteTopology.of_subset

end Subtype

section Quotient

variable [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ]

variable {r : α → α → Prop} {s : Setoid α}

theorem quotientMap_quot_mk : QuotientMap (@Quot.mk α r) :=
  ⟨Quot.exists_rep, rfl⟩
#align quotient_map_quot_mk quotientMap_quot_mk

@[continuity]
theorem continuous_quot_mk : Continuous (@Quot.mk α r) :=
  continuous_coinduced_rng
#align continuous_quot_mk continuous_quot_mk

@[continuity]
theorem continuous_quot_lift {f : α → β} (hr : ∀ a b, r a b → f a = f b) (h : Continuous f) :
    Continuous (Quot.lift f hr : Quot r → β) :=
  continuous_coinduced_dom.2 h
#align continuous_quot_lift continuous_quot_lift

theorem quotientMap_quotient_mk' : QuotientMap (@Quotient.mk' α s) :=
  quotientMap_quot_mk
#align quotient_map_quotient_mk quotientMap_quotient_mk'

theorem continuous_quotient_mk' : Continuous (@Quotient.mk' α s) :=
  continuous_coinduced_rng
#align continuous_quotient_mk continuous_quotient_mk'

theorem Continuous.quotient_lift {f : α → β} (h : Continuous f) (hs : ∀ a b, a ≈ b → f a = f b) :
    Continuous (Quotient.lift f hs : Quotient s → β) :=
  continuous_coinduced_dom.2 h
#align continuous.quotient_lift Continuous.quotient_lift

theorem Continuous.quotient_liftOn' {f : α → β} (h : Continuous f)
    (hs : ∀ a b, @Setoid.r _ s a b → f a = f b) :
    Continuous (fun x => Quotient.liftOn' x f hs : Quotient s → β) :=
  h.quotient_lift hs
#align continuous.quotient_lift_on' Continuous.quotient_liftOn'

@[continuity] theorem Continuous.quotient_map' {t : Setoid β} {f : α → β} (hf : Continuous f)
    (H : (s.r ⇒ t.r) f f) : Continuous (Quotient.map' f H) :=
  (continuous_quotient_mk'.comp hf).quotient_lift _
#align continuous.quotient_map' Continuous.quotient_map'

end Quotient

section Pi

variable {ι : Type*} {π : ι → Type*} {κ : Type*} [TopologicalSpace α]
  [∀ i, TopologicalSpace (π i)] {f : α → ∀ i : ι, π i}

theorem continuous_pi_iff : Continuous f ↔ ∀ i, Continuous fun a => f a i := by
  simp only [continuous_iInf_rng, continuous_induced_rng, comp]
#align continuous_pi_iff continuous_pi_iff

@[continuity]
theorem continuous_pi (h : ∀ i, Continuous fun a => f a i) : Continuous f :=
  continuous_pi_iff.2 h
#align continuous_pi continuous_pi

@[continuity]
theorem continuous_apply (i : ι) : Continuous fun p : ∀ i, π i => p i :=
  continuous_iInf_dom continuous_induced_dom
#align continuous_apply continuous_apply

@[continuity]
theorem continuous_apply_apply {ρ : κ → ι → Type*} [∀ j i, TopologicalSpace (ρ j i)] (j : κ)
    (i : ι) : Continuous fun p : ∀ j, ∀ i, ρ j i => p j i :=
  (continuous_apply i).comp (continuous_apply j)
#align continuous_apply_apply continuous_apply_apply

theorem continuousAt_apply (i : ι) (x : ∀ i, π i) : ContinuousAt (fun p : ∀ i, π i => p i) x :=
  (continuous_apply i).continuousAt
#align continuous_at_apply continuousAt_apply

theorem Filter.Tendsto.apply {l : Filter β} {f : β → ∀ i, π i} {x : ∀ i, π i}
    (h : Tendsto f l (𝓝 x)) (i : ι) : Tendsto (fun a => f a i) l (𝓝 <| x i) :=
  (continuousAt_apply i _).tendsto.comp h
#align filter.tendsto.apply Filter.Tendsto.apply

theorem nhds_pi {a : ∀ i, π i} : 𝓝 a = pi fun i => 𝓝 (a i) := by
  simp only [nhds_iInf, nhds_induced, Filter.pi]
#align nhds_pi nhds_pi

theorem tendsto_pi_nhds {f : β → ∀ i, π i} {g : ∀ i, π i} {u : Filter β} :
    Tendsto f u (𝓝 g) ↔ ∀ x, Tendsto (fun i => f i x) u (𝓝 (g x)) := by
  rw [nhds_pi, Filter.tendsto_pi]
#align tendsto_pi_nhds tendsto_pi_nhds

theorem continuousAt_pi {f : α → ∀ i, π i} {x : α} :
    ContinuousAt f x ↔ ∀ i, ContinuousAt (fun y => f y i) x :=
  tendsto_pi_nhds
#align continuous_at_pi continuousAt_pi

theorem Filter.Tendsto.update [DecidableEq ι] {l : Filter β} {f : β → ∀ i, π i} {x : ∀ i, π i}
    (hf : Tendsto f l (𝓝 x)) (i : ι) {g : β → π i} {xi : π i} (hg : Tendsto g l (𝓝 xi)) :
    Tendsto (fun a => update (f a) i (g a)) l (𝓝 <| update x i xi) :=
  tendsto_pi_nhds.2 fun j => by rcases eq_or_ne j i with (rfl | hj) <;> simp [*, hf.apply]
#align filter.tendsto.update Filter.Tendsto.update

theorem ContinuousAt.update [DecidableEq ι] {a : α} (hf : ContinuousAt f a) (i : ι) {g : α → π i}
    (hg : ContinuousAt g a) : ContinuousAt (fun a => update (f a) i (g a)) a :=
  hf.tendsto.update i hg
#align continuous_at.update ContinuousAt.update

theorem Continuous.update [DecidableEq ι] (hf : Continuous f) (i : ι) {g : α → π i}
    (hg : Continuous g) : Continuous fun a => update (f a) i (g a) :=
  continuous_iff_continuousAt.2 fun _ => hf.continuousAt.update i hg.continuousAt
#align continuous.update Continuous.update

/-- `Function.update f i x` is continuous in `(f, x)`. -/
@[continuity]
theorem continuous_update [DecidableEq ι] (i : ι) :
    Continuous fun f : (∀ j, π j) × π i => update f.1 i f.2 :=
  continuous_fst.update i continuous_snd
#align continuous_update continuous_update

/-- `Pi.mulSingle i x` is continuous in `x`. -/
-- porting note: todo: restore @[continuity]
@[to_additive "`Pi.single i x` is continuous in `x`."]
theorem continuous_mulSingle [∀ i, One (π i)] [DecidableEq ι] (i : ι) :
    Continuous fun x => (Pi.mulSingle i x : ∀ i, π i) :=
  continuous_const.update _ continuous_id
#align continuous_mul_single continuous_mulSingle
#align continuous_single continuous_single

theorem Filter.Tendsto.fin_insertNth {n} {π : Fin (n + 1) → Type*} [∀ i, TopologicalSpace (π i)]
    (i : Fin (n + 1)) {f : β → π i} {l : Filter β} {x : π i} (hf : Tendsto f l (𝓝 x))
    {g : β → ∀ j : Fin n, π (i.succAbove j)} {y : ∀ j, π (i.succAbove j)} (hg : Tendsto g l (𝓝 y)) :
    Tendsto (fun a => i.insertNth (f a) (g a)) l (𝓝 <| i.insertNth x y) :=
  tendsto_pi_nhds.2 fun j => Fin.succAboveCases i (by simpa) (by simpa using tendsto_pi_nhds.1 hg) j
#align filter.tendsto.fin_insert_nth Filter.Tendsto.fin_insertNth

theorem ContinuousAt.fin_insertNth {n} {π : Fin (n + 1) → Type*} [∀ i, TopologicalSpace (π i)]
    (i : Fin (n + 1)) {f : α → π i} {a : α} (hf : ContinuousAt f a)
    {g : α → ∀ j : Fin n, π (i.succAbove j)} (hg : ContinuousAt g a) :
    ContinuousAt (fun a => i.insertNth (f a) (g a)) a :=
  hf.tendsto.fin_insertNth i hg
#align continuous_at.fin_insert_nth ContinuousAt.fin_insertNth

theorem Continuous.fin_insertNth {n} {π : Fin (n + 1) → Type*} [∀ i, TopologicalSpace (π i)]
    (i : Fin (n + 1)) {f : α → π i} (hf : Continuous f) {g : α → ∀ j : Fin n, π (i.succAbove j)}
    (hg : Continuous g) : Continuous fun a => i.insertNth (f a) (g a) :=
  continuous_iff_continuousAt.2 fun _ => hf.continuousAt.fin_insertNth i hg.continuousAt
#align continuous.fin_insert_nth Continuous.fin_insertNth

theorem isOpen_set_pi {i : Set ι} {s : ∀ a, Set (π a)} (hi : i.Finite)
    (hs : ∀ a ∈ i, IsOpen (s a)) : IsOpen (pi i s) := by
  rw [pi_def]; exact isOpen_biInter hi fun a ha => (hs _ ha).preimage (continuous_apply _)
#align is_open_set_pi isOpen_set_pi

theorem isOpen_pi_iff {s : Set (∀ a, π a)} :
    IsOpen s ↔
      ∀ f, f ∈ s → ∃ (I : Finset ι) (u : ∀ a, Set (π a)),
        (∀ a, a ∈ I → IsOpen (u a) ∧ f a ∈ u a) ∧ (I : Set ι).pi u ⊆ s := by
  rw [isOpen_iff_nhds]
  simp_rw [le_principal_iff, nhds_pi, Filter.mem_pi', mem_nhds_iff]
  refine ball_congr fun a _ => ⟨?_, ?_⟩
  · rintro ⟨I, t, ⟨h1, h2⟩⟩
    refine ⟨I, fun a => eval a '' (I : Set ι).pi fun a => (h1 a).choose, fun i hi => ?_, ?_⟩
    · simp_rw [Set.eval_image_pi (Finset.mem_coe.mpr hi)
          (pi_nonempty_iff.mpr fun i => ⟨_, fun _ => (h1 i).choose_spec.2.2⟩)]
      exact (h1 i).choose_spec.2
    · exact Subset.trans
        (Set.pi_mono fun i hi => (Set.eval_image_pi_subset hi).trans (h1 i).choose_spec.1) h2
  · rintro ⟨I, t, ⟨h1, h2⟩⟩
    refine ⟨I, fun a => ite (a ∈ I) (t a) Set.univ, fun i => ?_, ?_⟩
    · by_cases hi : i ∈ I
      · use t i
        simp_rw [if_pos hi]
        exact ⟨Subset.rfl, (h1 i) hi⟩
      · use Set.univ
        simp_rw [if_neg hi]
        exact ⟨Subset.rfl, isOpen_univ, mem_univ _⟩
    · rw [← Set.univ_pi_ite]
      simp only [← ite_and, ← Finset.mem_coe, and_self_iff, Set.univ_pi_ite, h2]
#align is_open_pi_iff isOpen_pi_iff

theorem isOpen_pi_iff' [Finite ι] {s : Set (∀ a, π a)} :
    IsOpen s ↔
      ∀ f, f ∈ s → ∃ u : ∀ a, Set (π a), (∀ a, IsOpen (u a) ∧ f a ∈ u a) ∧ Set.univ.pi u ⊆ s := by
  cases nonempty_fintype ι
  rw [isOpen_iff_nhds]
  simp_rw [le_principal_iff, nhds_pi, Filter.mem_pi', mem_nhds_iff]
  refine ball_congr fun a _ => ⟨?_, ?_⟩
  · rintro ⟨I, t, ⟨h1, h2⟩⟩
    refine
      ⟨fun i => (h1 i).choose,
        ⟨fun i => (h1 i).choose_spec.2,
          (Set.pi_mono fun i _ => (h1 i).choose_spec.1).trans (Subset.trans ?_ h2)⟩⟩
    rw [← Set.pi_inter_compl (I : Set ι)]
    exact inter_subset_left _ _
  · exact fun ⟨u, ⟨h1, _⟩⟩ =>
      ⟨Finset.univ, u, ⟨fun i => ⟨u i, ⟨rfl.subset, h1 i⟩⟩, by rwa [Finset.coe_univ]⟩⟩
#align is_open_pi_iff' isOpen_pi_iff'

theorem isClosed_set_pi {i : Set ι} {s : ∀ a, Set (π a)} (hs : ∀ a ∈ i, IsClosed (s a)) :
    IsClosed (pi i s) := by
  rw [pi_def]; exact isClosed_biInter fun a ha => (hs _ ha).preimage (continuous_apply _)
#align is_closed_set_pi isClosed_set_pi

theorem mem_nhds_of_pi_mem_nhds {I : Set ι} {s : ∀ i, Set (π i)} (a : ∀ i, π i) (hs : I.pi s ∈ 𝓝 a)
    {i : ι} (hi : i ∈ I) : s i ∈ 𝓝 (a i) := by
  rw [nhds_pi] at hs; exact mem_of_pi_mem_pi hs hi
#align mem_nhds_of_pi_mem_nhds mem_nhds_of_pi_mem_nhds

theorem set_pi_mem_nhds {i : Set ι} {s : ∀ a, Set (π a)} {x : ∀ a, π a} (hi : i.Finite)
    (hs : ∀ a ∈ i, s a ∈ 𝓝 (x a)) : pi i s ∈ 𝓝 x := by
  rw [pi_def, biInter_mem hi]
  exact fun a ha => (continuous_apply a).continuousAt (hs a ha)
#align set_pi_mem_nhds set_pi_mem_nhds

theorem set_pi_mem_nhds_iff {I : Set ι} (hI : I.Finite) {s : ∀ i, Set (π i)} (a : ∀ i, π i) :
    I.pi s ∈ 𝓝 a ↔ ∀ i : ι, i ∈ I → s i ∈ 𝓝 (a i) := by
  rw [nhds_pi, pi_mem_pi_iff hI]
#align set_pi_mem_nhds_iff set_pi_mem_nhds_iff

theorem interior_pi_set {I : Set ι} (hI : I.Finite) {s : ∀ i, Set (π i)} :
    interior (pi I s) = I.pi fun i => interior (s i) := by
  ext a
  simp only [Set.mem_pi, mem_interior_iff_mem_nhds, set_pi_mem_nhds_iff hI]
#align interior_pi_set interior_pi_set

theorem exists_finset_piecewise_mem_of_mem_nhds [DecidableEq ι] {s : Set (∀ a, π a)} {x : ∀ a, π a}
    (hs : s ∈ 𝓝 x) (y : ∀ a, π a) : ∃ I : Finset ι, I.piecewise x y ∈ s := by
  simp only [nhds_pi, Filter.mem_pi'] at hs
  rcases hs with ⟨I, t, htx, hts⟩
  refine' ⟨I, hts fun i hi => _⟩
  simpa [Finset.mem_coe.1 hi] using mem_of_mem_nhds (htx i)
#align exists_finset_piecewise_mem_of_mem_nhds exists_finset_piecewise_mem_of_mem_nhds

theorem pi_generateFrom_eq {π : ι → Type*} {g : ∀ a, Set (Set (π a))} :
    (@Pi.topologicalSpace ι π fun a => generateFrom (g a)) =
      generateFrom
        { t | ∃ (s : ∀ a, Set (π a)) (i : Finset ι), (∀ a ∈ i, s a ∈ g a) ∧ t = pi (↑i) s } := by
  refine le_antisymm ?_ ?_
  · apply le_generateFrom
    rintro _ ⟨s, i, hi, rfl⟩
    letI := fun a => generateFrom (g a)
    exact isOpen_set_pi i.finite_toSet (fun a ha => GenerateOpen.basic _ (hi a ha))
  · refine le_iInf fun a => coinduced_le_iff_le_induced.1 <| le_generateFrom fun s hs => ?_
    refine GenerateOpen.basic _ ⟨update (fun a => univ) a s, {a}, ?_⟩
    simp [hs]
#align pi_generate_from_eq pi_generateFrom_eq

theorem pi_eq_generateFrom :
    Pi.topologicalSpace =
      generateFrom
        { g | ∃ (s : ∀ a, Set (π a)) (i : Finset ι), (∀ a ∈ i, IsOpen (s a)) ∧ g = pi (↑i) s } :=
  calc Pi.topologicalSpace
  _ = @Pi.topologicalSpace ι π fun a => generateFrom { s | IsOpen s } :=
    by simp only [generateFrom_setOf_isOpen]
  _ = _ := pi_generateFrom_eq
#align pi_eq_generate_from pi_eq_generateFrom

theorem pi_generateFrom_eq_finite {π : ι → Type*} {g : ∀ a, Set (Set (π a))} [Finite ι]
    (hg : ∀ a, ⋃₀ g a = univ) :
    (@Pi.topologicalSpace ι π fun a => generateFrom (g a)) =
      generateFrom { t | ∃ s : ∀ a, Set (π a), (∀ a, s a ∈ g a) ∧ t = pi univ s } := by
  cases nonempty_fintype ι
  rw [pi_generateFrom_eq]
  refine' le_antisymm (generateFrom_anti _) (le_generateFrom _)
  · exact fun s ⟨t, ht, Eq⟩ => ⟨t, Finset.univ, by simp [ht, Eq]⟩
  · rintro s ⟨t, i, ht, rfl⟩
    letI := generateFrom { t | ∃ s : ∀ a, Set (π a), (∀ a, s a ∈ g a) ∧ t = pi univ s }
    refine isOpen_iff_forall_mem_open.2 fun f hf => ?_
    choose c hcg hfc using fun a => sUnion_eq_univ_iff.1 (hg a) (f a)
    refine ⟨pi i t ∩ pi ((↑i)ᶜ : Set ι) c, inter_subset_left _ _, ?_, ⟨hf, fun a _ => hfc a⟩⟩
    rw [← univ_pi_piecewise]
    refine GenerateOpen.basic _ ⟨_, fun a => ?_, rfl⟩
    by_cases a ∈ i <;> simp [*]
#align pi_generate_from_eq_finite pi_generateFrom_eq_finite

-- porting note: new lemma
theorem induced_to_pi {X : Type*} (f : X → ∀ i, π i) :
    induced f Pi.topologicalSpace = ⨅ i, induced (f · i) inferInstance := by
  erw [induced_iInf]
  simp only [induced_compose]
  rfl

/-- Suppose `π i` is a family of topological spaces indexed by `i : ι`, and `X` is a type
endowed with a family of maps `f i : X → π i` for every `i : ι`, hence inducing a
map `g : X → Π i, π i`. This lemma shows that infimum of the topologies on `X` induced by
the `f i` as `i : ι` varies is simply the topology on `X` induced by `g : X → Π i, π i`
where `Π i, π i` is endowed with the usual product topology. -/
theorem inducing_iInf_to_pi {X : Type*} (f : ∀ i, X → π i) :
    @Inducing X (∀ i, π i) (⨅ i, induced (f i) inferInstance) _ fun x i => f i x :=
  letI := ⨅ i, induced (f i) inferInstance; ⟨(induced_to_pi _).symm⟩
#align inducing_infi_to_pi inducing_iInf_to_pi

variable [Finite ι] [∀ i, DiscreteTopology (π i)]

/-- A finite product of discrete spaces is discrete. -/
instance Pi.discreteTopology : DiscreteTopology (∀ i, π i) :=
  singletons_open_iff_discrete.mp fun x => by
    rw [← univ_pi_singleton]
    exact isOpen_set_pi finite_univ fun i _ => (isOpen_discrete {x i})
#align Pi.discrete_topology Pi.discreteTopology

end Pi

section Sigma

variable {ι κ : Type*} {σ : ι → Type*} {τ : κ → Type*} [∀ i, TopologicalSpace (σ i)]
  [∀ k, TopologicalSpace (τ k)] [TopologicalSpace α]

@[continuity]
theorem continuous_sigmaMk {i : ι} : Continuous (@Sigma.mk ι σ i) :=
  continuous_iSup_rng continuous_coinduced_rng
#align continuous_sigma_mk continuous_sigmaMk

-- porting note: the proof was `by simp only [isOpen_iSup_iff, isOpen_coinduced]`
theorem isOpen_sigma_iff {s : Set (Sigma σ)} : IsOpen s ↔ ∀ i, IsOpen (Sigma.mk i ⁻¹' s) := by
  delta instTopologicalSpaceSigma
  rw [isOpen_iSup_iff]
  rfl
#align is_open_sigma_iff isOpen_sigma_iff

theorem isClosed_sigma_iff {s : Set (Sigma σ)} : IsClosed s ↔ ∀ i, IsClosed (Sigma.mk i ⁻¹' s) := by
  simp only [← isOpen_compl_iff, isOpen_sigma_iff, preimage_compl]
#align is_closed_sigma_iff isClosed_sigma_iff

theorem isOpenMap_sigmaMk {i : ι} : IsOpenMap (@Sigma.mk ι σ i) := by
  intro s hs
  rw [isOpen_sigma_iff]
  intro j
  rcases eq_or_ne j i with (rfl | hne)
  · rwa [Set.preimage_image_eq _ sigma_mk_injective]
  · rw [preimage_image_sigmaMk_of_ne hne]
    exact isOpen_empty
#align is_open_map_sigma_mk isOpenMap_sigmaMk

theorem isOpen_range_sigmaMk {i : ι} : IsOpen (Set.range (@Sigma.mk ι σ i)) :=
  isOpenMap_sigmaMk.isOpen_range
#align is_open_range_sigma_mk isOpen_range_sigmaMk

theorem isClosedMap_sigmaMk {i : ι} : IsClosedMap (@Sigma.mk ι σ i) := by
  intro s hs
  rw [isClosed_sigma_iff]
  intro j
  rcases eq_or_ne j i with (rfl | hne)
  · rwa [Set.preimage_image_eq _ sigma_mk_injective]
  · rw [preimage_image_sigmaMk_of_ne hne]
    exact isClosed_empty
#align is_closed_map_sigma_mk isClosedMap_sigmaMk

theorem isClosed_range_sigmaMk {i : ι} : IsClosed (Set.range (@Sigma.mk ι σ i)) :=
  isClosedMap_sigmaMk.closed_range
#align is_closed_range_sigma_mk isClosed_range_sigmaMk

theorem openEmbedding_sigmaMk {i : ι} : OpenEmbedding (@Sigma.mk ι σ i) :=
  openEmbedding_of_continuous_injective_open continuous_sigmaMk sigma_mk_injective
    isOpenMap_sigmaMk
#align open_embedding_sigma_mk openEmbedding_sigmaMk

theorem closedEmbedding_sigmaMk {i : ι} : ClosedEmbedding (@Sigma.mk ι σ i) :=
  closedEmbedding_of_continuous_injective_closed continuous_sigmaMk sigma_mk_injective
    isClosedMap_sigmaMk
#align closed_embedding_sigma_mk closedEmbedding_sigmaMk

theorem embedding_sigmaMk {i : ι} : Embedding (@Sigma.mk ι σ i) :=
  closedEmbedding_sigmaMk.1
#align embedding_sigma_mk embedding_sigmaMk

theorem Sigma.nhds_mk (i : ι) (x : σ i) : 𝓝 (⟨i, x⟩ : Sigma σ) = Filter.map (Sigma.mk i) (𝓝 x) :=
  (openEmbedding_sigmaMk.map_nhds_eq x).symm
#align sigma.nhds_mk Sigma.nhds_mk

theorem Sigma.nhds_eq (x : Sigma σ) : 𝓝 x = Filter.map (Sigma.mk x.1) (𝓝 x.2) := by
  cases x
  apply Sigma.nhds_mk
#align sigma.nhds_eq Sigma.nhds_eq

theorem comap_sigmaMk_nhds (i : ι) (x : σ i) : comap (Sigma.mk i) (𝓝 ⟨i, x⟩) = 𝓝 x :=
  (embedding_sigmaMk.nhds_eq_comap _).symm
#align comap_sigma_mk_nhds comap_sigmaMk_nhds

theorem isOpen_sigma_fst_preimage (s : Set ι) : IsOpen (Sigma.fst ⁻¹' s : Set (Σ a, σ a)) := by
  rw [← biUnion_of_singleton s, preimage_iUnion₂]
  simp only [← range_sigmaMk]
  exact isOpen_biUnion fun _ _ => isOpen_range_sigmaMk
#align is_open_sigma_fst_preimage isOpen_sigma_fst_preimage

/-- A map out of a sum type is continuous iff its restriction to each summand is. -/
@[simp]
theorem continuous_sigma_iff {f : Sigma σ → α} :
    Continuous f ↔ ∀ i, Continuous fun a => f ⟨i, a⟩ := by
  delta instTopologicalSpaceSigma
  rw [continuous_iSup_dom]
  exact forall_congr' fun _ => continuous_coinduced_dom
#align continuous_sigma_iff continuous_sigma_iff

/-- A map out of a sum type is continuous if its restriction to each summand is. -/
@[continuity]
theorem continuous_sigma {f : Sigma σ → α} (hf : ∀ i, Continuous fun a => f ⟨i, a⟩) :
    Continuous f :=
  continuous_sigma_iff.2 hf
#align continuous_sigma continuous_sigma

/-- A map defined on a sigma type (a.k.a. the disjoint union of an indexed family of topological
spaces) is inducing iff its restriction to each component is inducing and each the image of each
component under `f` can be separated from the images of all other components by an open set. -/
theorem inducing_sigma {f : Sigma σ → α} :
    Inducing f ↔ (∀ i, Inducing (f ∘ Sigma.mk i)) ∧
      (∀ i, ∃ U, IsOpen U ∧ ∀ x, f x ∈ U ↔ x.1 = i) := by
  refine ⟨fun h ↦ ⟨fun i ↦ h.comp embedding_sigmaMk.1, fun i ↦ ?_⟩, ?_⟩
  · rcases h.isOpen_iff.1 (isOpen_range_sigmaMk (i := i)) with ⟨U, hUo, hU⟩
    refine ⟨U, hUo, ?_⟩
    simpa [Set.ext_iff] using hU
  · refine fun ⟨h₁, h₂⟩ ↦ inducing_iff_nhds.2 fun ⟨i, x⟩ ↦ ?_
    rw [Sigma.nhds_mk, (h₁ i).nhds_eq_comap, comp_apply, ← comap_comap, map_comap_of_mem]
    rcases h₂ i with ⟨U, hUo, hU⟩
    filter_upwards [preimage_mem_comap <| hUo.mem_nhds <| (hU _).2 rfl] with y hy
    simpa [hU] using hy

@[simp 1100]
theorem continuous_sigma_map {f₁ : ι → κ} {f₂ : ∀ i, σ i → τ (f₁ i)} :
    Continuous (Sigma.map f₁ f₂) ↔ ∀ i, Continuous (f₂ i) :=
  continuous_sigma_iff.trans <| by simp only [Sigma.map, embedding_sigmaMk.continuous_iff, comp]
#align continuous_sigma_map continuous_sigma_map

@[continuity]
theorem Continuous.sigma_map {f₁ : ι → κ} {f₂ : ∀ i, σ i → τ (f₁ i)} (hf : ∀ i, Continuous (f₂ i)) :
    Continuous (Sigma.map f₁ f₂) :=
  continuous_sigma_map.2 hf
#align continuous.sigma_map Continuous.sigma_map

theorem isOpenMap_sigma {f : Sigma σ → α} : IsOpenMap f ↔ ∀ i, IsOpenMap fun a => f ⟨i, a⟩ := by
  simp only [isOpenMap_iff_nhds_le, Sigma.forall, Sigma.nhds_eq, map_map, comp]
#align is_open_map_sigma isOpenMap_sigma

theorem isOpenMap_sigma_map {f₁ : ι → κ} {f₂ : ∀ i, σ i → τ (f₁ i)} :
    IsOpenMap (Sigma.map f₁ f₂) ↔ ∀ i, IsOpenMap (f₂ i) :=
  isOpenMap_sigma.trans <|
    forall_congr' fun i => (@openEmbedding_sigmaMk _ _ _ (f₁ i)).isOpenMap_iff.symm
#align is_open_map_sigma_map isOpenMap_sigma_map

theorem inducing_sigma_map {f₁ : ι → κ} {f₂ : ∀ i, σ i → τ (f₁ i)} (h₁ : Injective f₁) :
    Inducing (Sigma.map f₁ f₂) ↔ ∀ i, Inducing (f₂ i) := by
  simp only [inducing_iff_nhds, Sigma.forall, Sigma.nhds_mk, Sigma.map_mk, ← map_sigma_mk_comap h₁,
    map_inj sigma_mk_injective]
#align inducing_sigma_map inducing_sigma_map

theorem embedding_sigma_map {f₁ : ι → κ} {f₂ : ∀ i, σ i → τ (f₁ i)} (h : Injective f₁) :
    Embedding (Sigma.map f₁ f₂) ↔ ∀ i, Embedding (f₂ i) := by
  simp only [embedding_iff, Injective.sigma_map, inducing_sigma_map h, forall_and, h.sigma_map_iff]
#align embedding_sigma_map embedding_sigma_map

theorem openEmbedding_sigma_map {f₁ : ι → κ} {f₂ : ∀ i, σ i → τ (f₁ i)} (h : Injective f₁) :
    OpenEmbedding (Sigma.map f₁ f₂) ↔ ∀ i, OpenEmbedding (f₂ i) := by
  simp only [openEmbedding_iff_embedding_open, isOpenMap_sigma_map, embedding_sigma_map h,
    forall_and]
#align open_embedding_sigma_map openEmbedding_sigma_map

end Sigma

section ULift

@[continuity]
theorem continuous_uLift_down [TopologicalSpace α] : Continuous (ULift.down : ULift.{v, u} α → α) :=
  continuous_induced_dom
#align continuous_ulift_down continuous_uLift_down

@[continuity]
theorem continuous_uLift_up [TopologicalSpace α] : Continuous (ULift.up : α → ULift.{v, u} α) :=
  continuous_induced_rng.2 continuous_id
#align continuous_ulift_up continuous_uLift_up

theorem embedding_uLift_down [TopologicalSpace α] : Embedding (ULift.down : ULift.{v, u} α → α) :=
  ⟨⟨rfl⟩, ULift.down_injective⟩
#align embedding_ulift_down embedding_uLift_down

theorem ULift.closedEmbedding_down [TopologicalSpace α] :
    ClosedEmbedding (ULift.down : ULift.{v, u} α → α) :=
  ⟨embedding_uLift_down, by simp only [ULift.down_surjective.range_eq, isClosed_univ]⟩
#align ulift.closed_embedding_down ULift.closedEmbedding_down

instance [TopologicalSpace α] [DiscreteTopology α] : DiscreteTopology (ULift α) :=
  embedding_uLift_down.discreteTopology

end ULift

section Monad

variable [TopologicalSpace α] {β : Set α} {γ : Set β}

theorem IsOpen.trans (hγ : IsOpen γ) (hβ : IsOpen β) : IsOpen (γ : Set α) := by
  rcases isOpen_induced_iff.mp hγ with ⟨δ, hδ, rfl⟩
  convert IsOpen.inter hβ hδ
  ext
  exact ⟨fun h => ⟨coe_subset h, mem_of_mem_coe h⟩, fun ⟨hβ, hδ⟩ => mem_coe_of_mem hβ hδ⟩

theorem IsClosed.trans (hγ : IsClosed γ) (hβ : IsClosed β) : IsClosed (γ : Set α) := by
  rcases isClosed_induced_iff.mp hγ with ⟨δ, hδ, rfl⟩
  convert IsClosed.inter hβ hδ
  ext
  exact ⟨fun h => ⟨coe_subset h, mem_of_mem_coe h⟩, fun ⟨hβ, hδ⟩ => mem_coe_of_mem hβ hδ⟩

end Monad
```
