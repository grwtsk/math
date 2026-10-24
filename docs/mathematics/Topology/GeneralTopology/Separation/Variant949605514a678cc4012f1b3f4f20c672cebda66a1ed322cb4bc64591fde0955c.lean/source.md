# Complete source: GRWTSK.Topology.GeneralTopology.Separation.Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48e4761a1d4f1e3a46cd7c2bd83b5a0a7b227c9f` · SHA-256 `a8921fc4c305dc658ff8b803b0517e52c51f8f8b61b460c2b886de3f4561a0c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.T0Space.Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.T0Space.Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Separation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Topology.SubsetProperties
import Mathlib.Topology.Connected
import Mathlib.Topology.NhdsSet
import Mathlib.Topology.Inseparable


namespace GRWTSK.Topology.GeneralTopology.T0Space.Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c

#align_import topology.separation from "leanprover-community/mathlib"@"d91e7f7a7f1c7e9f0e18fdb6bde4f652004c735d"

/-!
# Separation properties of topological spaces.

This file defines the predicate `SeparatedNhds`, and common separation axioms
(under the Kolmogorov classification).

## Main definitions

* `SeparatedNhds`: Two `Set`s are separated by neighbourhoods if they are contained in disjoint
  open sets.
* `T0Space`: A T₀/Kolmogorov space is a space where, for every two points `x ≠ y`,
  there is an open set that contains one, but not the other.
* `T1Space`: A T₁/Fréchet space is a space where every singleton set is closed.
  This is equivalent to, for every pair `x ≠ y`, there existing an open set containing `x`
  but not `y` (`t1Space_iff_exists_open` shows that these conditions are equivalent.)
* `T2Space`: A T₂/Hausdorff space is a space where, for every two points `x ≠ y`,
  there is two disjoint open sets, one containing `x`, and the other `y`.
* `T25Space`: A T₂.₅/Urysohn space is a space where, for every two points `x ≠ y`,
  there is two open sets, one containing `x`, and the other `y`, whose closures are disjoint.
* `T3Space`: A T₃ space, is one where given any closed `C` and `x ∉ C`,
  there is disjoint open sets containing `x` and `C` respectively. In `mathlib`, T₃ implies T₂.₅.
* `NormalSpace`: A T₄ space (sometimes referred to as normal, but authors vary on
  whether this includes T₂; `mathlib` does), is one where given two disjoint closed sets,
  we can find two open sets that separate them. In `mathlib`, T₄ implies T₃.
* `T5Space`: A T₅ space, also known as a *completely normal Hausdorff space*

## Main results

### T₀ spaces

* `IsClosed.exists_closed_singleton` Given a closed set `S` in a compact T₀ space,
  there is some `x ∈ S` such that `{x}` is closed.
* `exists_open_singleton_of_open_finset` Given an open `Finset` `S` in a T₀ space,
  there is some `x ∈ S` such that `{x}` is open.

### T₁ spaces

* `isClosedMap_const`: The constant map is a closed map.
* `discrete_of_t1_of_finite`: A finite T₁ space must have the discrete topology.

### T₂ spaces

* `t2_iff_nhds`: A space is T₂ iff the neighbourhoods of distinct points generate the bottom filter.
* `t2_iff_isClosed_diagonal`: A space is T₂ iff the `diagonal` of `α` (that is, the set of all
  points of the form `(a, a) : α × α`) is closed under the product topology.
* `finset_disjoint_finset_opens_of_t2`: Any two disjoint finsets are `SeparatedNhds`.
* Most topological constructions preserve Hausdorffness;
  these results are part of the typeclass inference system (e.g. `Embedding.t2Space`)
* `Set.EqOn.closure`: If two functions are equal on some set `s`, they are equal on its closure.
* `IsCompact.isClosed`: All compact sets are closed.
* `locally_compact_of_compact_nhds`: If every point has a compact neighbourhood,
  then the space is locally compact.
* `totallySeparatedSpace_of_t1_of_basis_clopen`: If `α` has a clopen basis, then
  it is a `TotallySeparatedSpace`.
* `loc_compact_t2_tot_disc_iff_tot_sep`: A locally compact T₂ space is totally disconnected iff
  it is totally separated.

If the space is also compact:

* `normalOfCompactT2`: A compact T₂ space is a `NormalSpace`.
* `connected_components_eq_Inter_clopen`: The connected component of a point
  is the intersection of all its clopen neighbourhoods.
* `compact_t2_tot_disc_iff_tot_sep`: Being a `TotallyDisconnectedSpace`
  is equivalent to being a `TotallySeparatedSpace`.
* `ConnectedComponents.t2`: `ConnectedComponents α` is T₂ for `α` T₂ and compact.

### T₃ spaces

* `disjoint_nested_nhds`: Given two points `x ≠ y`, we can find neighbourhoods `x ∈ V₁ ⊆ U₁` and
  `y ∈ V₂ ⊆ U₂`, with the `Vₖ` closed and the `Uₖ` open, such that the `Uₖ` are disjoint.

## References

https://en.wikipedia.org/wiki/Separation_axiom
-/


open Function Set Filter Topology TopologicalSpace
open scoped Classical

universe u v

variable {α : Type u} {β : Type v} [TopologicalSpace α]

section Separation

/--
`SeparatedNhds` is a predicate on pairs of sub`Set`s of a topological space.  It holds if the two
sub`Set`s are contained in disjoint open sets.
-/
def SeparatedNhds : Set α → Set α → Prop := fun s t : Set α =>
  ∃ U V : Set α, IsOpen U ∧ IsOpen V ∧ s ⊆ U ∧ t ⊆ V ∧ Disjoint U V
#align separated_nhds SeparatedNhds

theorem separatedNhds_iff_disjoint {s t : Set α} : SeparatedNhds s t ↔ Disjoint (𝓝ˢ s) (𝓝ˢ t) := by
  simp only [(hasBasis_nhdsSet s).disjoint_iff (hasBasis_nhdsSet t), SeparatedNhds, exists_prop, ←
    exists_and_left, and_assoc, and_comm, and_left_comm]
#align separated_nhds_iff_disjoint separatedNhds_iff_disjoint

alias ⟨SeparatedNhds.disjoint_nhdsSet, _⟩ := separatedNhds_iff_disjoint

namespace SeparatedNhds

variable {s s₁ s₂ t t₁ t₂ u : Set α}

@[symm]
theorem symm : SeparatedNhds s t → SeparatedNhds t s := fun ⟨U, V, oU, oV, aU, bV, UV⟩ =>
  ⟨V, U, oV, oU, bV, aU, Disjoint.symm UV⟩
#align separated_nhds.symm SeparatedNhds.symm

theorem comm (s t : Set α) : SeparatedNhds s t ↔ SeparatedNhds t s :=
  ⟨symm, symm⟩
#align separated_nhds.comm SeparatedNhds.comm

theorem preimage [TopologicalSpace β] {f : α → β} {s t : Set β} (h : SeparatedNhds s t)
    (hf : Continuous f) : SeparatedNhds (f ⁻¹' s) (f ⁻¹' t) :=
  let ⟨U, V, oU, oV, sU, tV, UV⟩ := h
  ⟨f ⁻¹' U, f ⁻¹' V, oU.preimage hf, oV.preimage hf, preimage_mono sU, preimage_mono tV,
    UV.preimage f⟩
#align separated_nhds.preimage SeparatedNhds.preimage

protected theorem disjoint (h : SeparatedNhds s t) : Disjoint s t :=
  let ⟨_, _, _, _, hsU, htV, hd⟩ := h; hd.mono hsU htV
#align separated_nhds.disjoint SeparatedNhds.disjoint

theorem disjoint_closure_left (h : SeparatedNhds s t) : Disjoint (closure s) t :=
  let ⟨_U, _V, _, hV, hsU, htV, hd⟩ := h
  (hd.closure_left hV).mono (closure_mono hsU) htV
#align separated_nhds.disjoint_closure_left SeparatedNhds.disjoint_closure_left

theorem disjoint_closure_right (h : SeparatedNhds s t) : Disjoint s (closure t) :=
  h.symm.disjoint_closure_left.symm
#align separated_nhds.disjoint_closure_right SeparatedNhds.disjoint_closure_right

theorem empty_right (s : Set α) : SeparatedNhds s ∅ :=
  ⟨_, _, isOpen_univ, isOpen_empty, fun a _ => mem_univ a, Subset.rfl, disjoint_empty _⟩
#align separated_nhds.empty_right SeparatedNhds.empty_right

theorem empty_left (s : Set α) : SeparatedNhds ∅ s :=
  (empty_right _).symm
#align separated_nhds.empty_left SeparatedNhds.empty_left

theorem mono (h : SeparatedNhds s₂ t₂) (hs : s₁ ⊆ s₂) (ht : t₁ ⊆ t₂) : SeparatedNhds s₁ t₁ :=
  let ⟨U, V, hU, hV, hsU, htV, hd⟩ := h
  ⟨U, V, hU, hV, hs.trans hsU, ht.trans htV, hd⟩
#align separated_nhds.mono SeparatedNhds.mono

theorem union_left : SeparatedNhds s u → SeparatedNhds t u → SeparatedNhds (s ∪ t) u := by
  simpa only [separatedNhds_iff_disjoint, nhdsSet_union, disjoint_sup_left] using And.intro
#align separated_nhds.union_left SeparatedNhds.union_left

theorem union_right (ht : SeparatedNhds s t) (hu : SeparatedNhds s u) : SeparatedNhds s (t ∪ u) :=
  (ht.symm.union_left hu.symm).symm
#align separated_nhds.union_right SeparatedNhds.union_right

end SeparatedNhds

/-- A T₀ space, also known as a Kolmogorov space, is a topological space such that for every pair
`x ≠ y`, there is an open set containing one but not the other. We formulate the definition in terms
of the `Inseparable` relation.  -/
class T0Space (α : Type u) [TopologicalSpace α] : Prop where
  /-- Two inseparable points in a T₀ space are equal. -/
  t0 : ∀ ⦃x y : α⦄, Inseparable x y → x = y
#align t0_space T0Space

theorem t0Space_iff_inseparable (α : Type u) [TopologicalSpace α] :
    T0Space α ↔ ∀ x y : α, Inseparable x y → x = y :=
  ⟨fun ⟨h⟩ => h, fun h => ⟨h⟩⟩
#align t0_space_iff_inseparable t0Space_iff_inseparable

theorem t0Space_iff_not_inseparable (α : Type u) [TopologicalSpace α] :
    T0Space α ↔ ∀ x y : α, x ≠ y → ¬Inseparable x y := by
  simp only [t0Space_iff_inseparable, Ne.def, not_imp_not]
#align t0_space_iff_not_inseparable t0Space_iff_not_inseparable

theorem Inseparable.eq [T0Space α] {x y : α} (h : Inseparable x y) : x = y :=
  T0Space.t0 h
#align inseparable.eq Inseparable.eq

/-- A topology `Inducing` map from a T₀ space is injective. -/
protected theorem Inducing.injective [TopologicalSpace β] [T0Space α] {f : α → β}
    (hf : Inducing f) : Injective f := fun _ _ h =>
  (hf.inseparable_iff.1 <| .of_eq h).eq
#align inducing.injective Inducing.injective

/-- A topology `Inducing` map from a T₀ space is a topological embedding. -/
protected theorem Inducing.embedding [TopologicalSpace β] [T0Space α] {f : α → β}
    (hf : Inducing f) : Embedding f :=
  ⟨hf, hf.injective⟩
#align inducing.embedding Inducing.embedding

lemma embedding_iff_inducing [TopologicalSpace β] [T0Space α] {f : α → β} :
    Embedding f ↔ Inducing f :=
  ⟨Embedding.toInducing, Inducing.embedding⟩
#align embedding_iff_inducing embedding_iff_inducing

theorem t0Space_iff_nhds_injective (α : Type u) [TopologicalSpace α] :
    T0Space α ↔ Injective (𝓝 : α → Filter α) :=
  t0Space_iff_inseparable α
#align t0_space_iff_nhds_injective t0Space_iff_nhds_injective

theorem nhds_injective [T0Space α] : Injective (𝓝 : α → Filter α) :=
  (t0Space_iff_nhds_injective α).1 ‹_›
#align nhds_injective nhds_injective

theorem inseparable_iff_eq [T0Space α] {x y : α} : Inseparable x y ↔ x = y :=
  nhds_injective.eq_iff
#align inseparable_iff_eq inseparable_iff_eq

@[simp]
theorem nhds_eq_nhds_iff [T0Space α] {a b : α} : 𝓝 a = 𝓝 b ↔ a = b :=
  nhds_injective.eq_iff
#align nhds_eq_nhds_iff nhds_eq_nhds_iff

@[simp]
theorem inseparable_eq_eq [T0Space α] : Inseparable = @Eq α :=
  funext₂ fun _ _ => propext inseparable_iff_eq
#align inseparable_eq_eq inseparable_eq_eq

theorem TopologicalSpace.IsTopologicalBasis.inseparable_iff {b : Set (Set α)}
    (hb : IsTopologicalBasis b) {x y : α} : Inseparable x y ↔ ∀ s ∈ b, (x ∈ s ↔ y ∈ s) :=
  ⟨fun h s hs ↦ inseparable_iff_forall_open.1 h _ (hb.isOpen hs),
    fun h ↦ hb.nhds_hasBasis.eq_of_same_basis $ by
      convert hb.nhds_hasBasis using 2
      exact and_congr_right (h _)⟩

theorem TopologicalSpace.IsTopologicalBasis.eq_iff [T0Space α] {b : Set (Set α)}
    (hb : IsTopologicalBasis b) {x y : α} : x = y ↔ ∀ s ∈ b, (x ∈ s ↔ y ∈ s) :=
  inseparable_iff_eq.symm.trans hb.inseparable_iff

theorem t0Space_iff_exists_isOpen_xor'_mem (α : Type u) [TopologicalSpace α] :
    T0Space α ↔ ∀ x y, x ≠ y → ∃ U : Set α, IsOpen U ∧ Xor' (x ∈ U) (y ∈ U) := by
  simp only [t0Space_iff_not_inseparable, xor_iff_not_iff, not_forall, exists_prop,
    inseparable_iff_forall_open]
#align t0_space_iff_exists_is_open_xor_mem t0Space_iff_exists_isOpen_xor'_mem

theorem exists_isOpen_xor'_mem [T0Space α] {x y : α} (h : x ≠ y) :
    ∃ U : Set α, IsOpen U ∧ Xor' (x ∈ U) (y ∈ U) :=
  (t0Space_iff_exists_isOpen_xor'_mem α).1 ‹_› x y h
#align exists_is_open_xor_mem exists_isOpen_xor'_mem

/-- Specialization forms a partial order on a t0 topological space. -/
def specializationOrder (α : Type*) [TopologicalSpace α] [T0Space α] : PartialOrder α :=
  { specializationPreorder α, PartialOrder.lift (OrderDual.toDual ∘ 𝓝) nhds_injective with }
#align specialization_order specializationOrder

instance : T0Space (SeparationQuotient α) :=
  ⟨fun x y => Quotient.inductionOn₂' x y fun _ _ h =>
    SeparationQuotient.mk_eq_mk.2 <| SeparationQuotient.inducing_mk.inseparable_iff.1 h⟩

theorem minimal_nonempty_closed_subsingleton [T0Space α] {s : Set α} (hs : IsClosed s)
    (hmin : ∀ t, t ⊆ s → t.Nonempty → IsClosed t → t = s) : s.Subsingleton := by
  clear β -- Porting note: added
  refine' fun x hx y hy => of_not_not fun hxy => _
  rcases exists_isOpen_xor'_mem hxy with ⟨U, hUo, hU⟩
  wlog h : x ∈ U ∧ y ∉ U
  · refine this hs hmin y hy x hx (Ne.symm hxy) U hUo hU.symm (hU.resolve_left h)
  cases' h with hxU hyU
  have : s \ U = s := hmin (s \ U) (diff_subset _ _) ⟨y, hy, hyU⟩ (hs.sdiff hUo)
  exact (this.symm.subset hx).2 hxU
#align minimal_nonempty_closed_subsingleton minimal_nonempty_closed_subsingleton

theorem minimal_nonempty_closed_eq_singleton [T0Space α] {s : Set α} (hs : IsClosed s)
    (hne : s.Nonempty) (hmin : ∀ t, t ⊆ s → t.Nonempty → IsClosed t → t = s) : ∃ x, s = {x} :=
  exists_eq_singleton_iff_nonempty_subsingleton.2
    ⟨hne, minimal_nonempty_closed_subsingleton hs hmin⟩
#align minimal_nonempty_closed_eq_singleton minimal_nonempty_closed_eq_singleton

/-- Given a closed set `S` in a compact T₀ space, there is some `x ∈ S` such that `{x}` is
closed. -/
theorem IsClosed.exists_closed_singleton {α : Type*} [TopologicalSpace α] [T0Space α]
    [CompactSpace α] {S : Set α} (hS : IsClosed S) (hne : S.Nonempty) :
    ∃ x : α, x ∈ S ∧ IsClosed ({x} : Set α) := by
  obtain ⟨V, Vsub, Vne, Vcls, hV⟩ := hS.exists_minimal_nonempty_closed_subset hne
  rcases minimal_nonempty_closed_eq_singleton Vcls Vne hV with ⟨x, rfl⟩
  exact ⟨x, Vsub (mem_singleton x), Vcls⟩
#align is_closed.exists_closed_singleton IsClosed.exists_closed_singleton

theorem minimal_nonempty_open_subsingleton [T0Space α] {s : Set α} (hs : IsOpen s)
    (hmin : ∀ t, t ⊆ s → t.Nonempty → IsOpen t → t = s) : s.Subsingleton := by
  clear β -- Porting note: added
  refine' fun x hx y hy => of_not_not fun hxy => _
  rcases exists_isOpen_xor'_mem hxy with ⟨U, hUo, hU⟩
  wlog h : x ∈ U ∧ y ∉ U
  · exact this hs hmin y hy x hx (Ne.symm hxy) U hUo hU.symm (hU.resolve_left h)
  cases' h with hxU hyU
  have : s ∩ U = s := hmin (s ∩ U) (inter_subset_left _ _) ⟨x, hx, hxU⟩ (hs.inter hUo)
  exact hyU (this.symm.subset hy).2
#align minimal_nonempty_open_subsingleton minimal_nonempty_open_subsingleton

theorem minimal_nonempty_open_eq_singleton [T0Space α] {s : Set α} (hs : IsOpen s)
    (hne : s.Nonempty) (hmin : ∀ t, t ⊆ s → t.Nonempty → IsOpen t → t = s) : ∃ x, s = {x} :=
  exists_eq_singleton_iff_nonempty_subsingleton.2 ⟨hne, minimal_nonempty_open_subsingleton hs hmin⟩
#align minimal_nonempty_open_eq_singleton minimal_nonempty_open_eq_singleton

/-- Given an open finite set `S` in a T₀ space, there is some `x ∈ S` such that `{x}` is open. -/
theorem exists_open_singleton_of_open_finite [T0Space α] {s : Set α} (hfin : s.Finite)
    (hne : s.Nonempty) (ho : IsOpen s) : ∃ x ∈ s, IsOpen ({x} : Set α) := by
  lift s to Finset α using hfin
  induction' s using Finset.strongInductionOn with s ihs
  rcases em (∃ t, t ⊂ s ∧ t.Nonempty ∧ IsOpen (t : Set α)) with (⟨t, hts, htne, hto⟩ | ht)
  · rcases ihs t hts htne hto with ⟨x, hxt, hxo⟩
    exact ⟨x, hts.1 hxt, hxo⟩
  · -- Porting note: was `rcases minimal_nonempty_open_eq_singleton ho hne _ with ⟨x, hx⟩`
    --               https://github.com/leanprover/std4/issues/116
    rsuffices ⟨x, hx⟩ : ∃ x, s.toSet = {x}
    · exact ⟨x, hx.symm ▸ rfl, hx ▸ ho⟩
    refine minimal_nonempty_open_eq_singleton ho hne ?_
    refine' fun t hts htne hto => of_not_not fun hts' => ht _
    lift t to Finset α using s.finite_toSet.subset hts
    exact ⟨t, ssubset_iff_subset_ne.2 ⟨hts, mt Finset.coe_inj.2 hts'⟩, htne, hto⟩
#align exists_open_singleton_of_open_finite exists_open_singleton_of_open_finite

theorem exists_open_singleton_of_finite [T0Space α] [Finite α] [Nonempty α] :
    ∃ x : α, IsOpen ({x} : Set α) :=
  let ⟨x, _, h⟩ := exists_open_singleton_of_open_finite (Set.toFinite _) univ_nonempty isOpen_univ
  ⟨x, h⟩
#align exists_open_singleton_of_fintype exists_open_singleton_of_finite

theorem t0Space_of_injective_of_continuous [TopologicalSpace β] {f : α → β}
    (hf : Function.Injective f) (hf' : Continuous f) [T0Space β] : T0Space α :=
  ⟨fun _ _ h => hf <| (h.map hf').eq⟩
#align t0_space_of_injective_of_continuous t0Space_of_injective_of_continuous

protected theorem Embedding.t0Space [TopologicalSpace β] [T0Space β] {f : α → β}
    (hf : Embedding f) : T0Space α :=
  t0Space_of_injective_of_continuous hf.inj hf.continuous
#align embedding.t0_space Embedding.t0Space

instance Subtype.t0Space [T0Space α] {p : α → Prop} : T0Space (Subtype p) :=
  embedding_subtype_val.t0Space
#align subtype.t0_space Subtype.t0Space

theorem t0Space_iff_or_not_mem_closure (α : Type u) [TopologicalSpace α] :
    T0Space α ↔ ∀ a b : α, a ≠ b → a ∉ closure ({b} : Set α) ∨ b ∉ closure ({a} : Set α) := by
  simp only [t0Space_iff_not_inseparable, inseparable_iff_mem_closure, not_and_or]
#align t0_space_iff_or_not_mem_closure t0Space_iff_or_not_mem_closure

instance [TopologicalSpace β] [T0Space α] [T0Space β] : T0Space (α × β) :=
  ⟨fun _ _ h => Prod.ext (h.map continuous_fst).eq (h.map continuous_snd).eq⟩

instance Pi.instT0Space {ι : Type*} {π : ι → Type*} [∀ i, TopologicalSpace (π i)]
    [∀ i, T0Space (π i)] :
    T0Space (∀ i, π i) :=
  ⟨fun _ _ h => funext fun i => (h.map (continuous_apply i)).eq⟩
#align pi.t0_space Pi.instT0Space

theorem T0Space.of_cover (h : ∀ x y, Inseparable x y → ∃ s : Set α, x ∈ s ∧ y ∈ s ∧ T0Space s) :
    T0Space α := by
  refine' ⟨fun x y hxy => _⟩
  rcases h x y hxy with ⟨s, hxs, hys, hs⟩
  lift x to s using hxs; lift y to s using hys
  rw [← subtype_inseparable_iff] at hxy
  exact congr_arg Subtype.val hxy.eq
#align t0_space.of_cover T0Space.of_cover

theorem T0Space.of_open_cover (h : ∀ x, ∃ s : Set α, x ∈ s ∧ IsOpen s ∧ T0Space s) : T0Space α :=
  T0Space.of_cover fun x _ hxy =>
    let ⟨s, hxs, hso, hs⟩ := h x
    ⟨s, hxs, (hxy.mem_open_iff hso).1 hxs, hs⟩
#align t0_space.of_open_cover T0Space.of_open_cover

/-- A T₁ space, also known as a Fréchet space, is a topological space
  where every singleton set is closed. Equivalently, for every pair
  `x ≠ y`, there is an open set containing `x` and not `y`. -/
class T1Space (α : Type u) [TopologicalSpace α] : Prop where
  /-- A singleton in a T₁ space is a closed set. -/
  t1 : ∀ x, IsClosed ({x} : Set α)
#align t1_space T1Space

theorem isClosed_singleton [T1Space α] {x : α} : IsClosed ({x} : Set α) :=
  T1Space.t1 x
#align is_closed_singleton isClosed_singleton

theorem isOpen_compl_singleton [T1Space α] {x : α} : IsOpen ({x}ᶜ : Set α) :=
  isClosed_singleton.isOpen_compl
#align is_open_compl_singleton isOpen_compl_singleton

theorem isOpen_ne [T1Space α] {x : α} : IsOpen { y | y ≠ x } :=
  isOpen_compl_singleton
#align is_open_ne isOpen_ne

@[to_additive]
theorem Continuous.isOpen_mulSupport [T1Space α] [One α] [TopologicalSpace β] {f : β → α}
    (hf : Continuous f) : IsOpen (mulSupport f) :=
  isOpen_ne.preimage hf
#align continuous.is_open_mul_support Continuous.isOpen_mulSupport
#align continuous.is_open_support Continuous.isOpen_support

theorem Ne.nhdsWithin_compl_singleton [T1Space α] {x y : α} (h : x ≠ y) : 𝓝[{y}ᶜ] x = 𝓝 x :=
  isOpen_ne.nhdsWithin_eq h
#align ne.nhds_within_compl_singleton Ne.nhdsWithin_compl_singleton

theorem Ne.nhdsWithin_diff_singleton [T1Space α] {x y : α} (h : x ≠ y) (s : Set α) :
    𝓝[s \ {y}] x = 𝓝[s] x := by
  rw [diff_eq, inter_comm, nhdsWithin_inter_of_mem]
  exact mem_nhdsWithin_of_mem_nhds (isOpen_ne.mem_nhds h)
#align ne.nhds_within_diff_singleton Ne.nhdsWithin_diff_singleton

theorem isOpen_setOf_eventually_nhdsWithin [T1Space α] {p : α → Prop} :
    IsOpen { x | ∀ᶠ y in 𝓝[≠] x, p y } := by
  refine' isOpen_iff_mem_nhds.mpr fun a ha => _
  filter_upwards [eventually_nhds_nhdsWithin.mpr ha] with b hb
  rcases eq_or_ne a b with rfl | h
  · exact hb
  · rw [h.symm.nhdsWithin_compl_singleton] at hb
    exact hb.filter_mono nhdsWithin_le_nhds
#align is_open_set_of_eventually_nhds_within isOpen_setOf_eventually_nhdsWithin

protected theorem Set.Finite.isClosed [T1Space α] {s : Set α} (hs : Set.Finite s) : IsClosed s := by
  rw [← biUnion_of_singleton s]
  exact isClosed_biUnion hs fun i _ => isClosed_singleton
#align set.finite.is_closed Set.Finite.isClosed

theorem TopologicalSpace.IsTopologicalBasis.exists_mem_of_ne [T1Space α] {b : Set (Set α)}
    (hb : IsTopologicalBasis b) {x y : α} (h : x ≠ y) : ∃ a ∈ b, x ∈ a ∧ y ∉ a := by
  rcases hb.isOpen_iff.1 isOpen_ne x h with ⟨a, ab, xa, ha⟩
  exact ⟨a, ab, xa, fun h => ha h rfl⟩
#align topological_space.is_topological_basis.exists_mem_of_ne TopologicalSpace.IsTopologicalBasis.exists_mem_of_ne

theorem Filter.coclosedCompact_le_cofinite [T1Space α] :
    Filter.coclosedCompact α ≤ Filter.cofinite := fun s hs =>
  compl_compl s ▸ hs.isCompact.compl_mem_coclosedCompact_of_isClosed hs.isClosed
#align filter.coclosed_compact_le_cofinite Filter.coclosedCompact_le_cofinite

variable (α)

/-- In a `T1Space`, relatively compact sets form a bornology. Its cobounded filter is
`Filter.coclosedCompact`. See also `Bornology.inCompact` the bornology of sets contained
in a compact set. -/
def Bornology.relativelyCompact [T1Space α] : Bornology α where
  cobounded' := Filter.coclosedCompact α
  le_cofinite' := Filter.coclosedCompact_le_cofinite
#align bornology.relatively_compact Bornology.relativelyCompact

variable {α}

theorem Bornology.relativelyCompact.isBounded_iff [T1Space α] {s : Set α} :
    @Bornology.IsBounded _ (Bornology.relativelyCompact α) s ↔ IsCompact (closure s) := by
  change sᶜ ∈ Filter.coclosedCompact α ↔ _
  rw [Filter.mem_coclosedCompact]
  constructor
  · rintro ⟨t, ht₁, ht₂, hst⟩
    rw [compl_subset_compl] at hst
    exact isCompact_of_isClosed_subset ht₂ isClosed_closure (closure_minimal hst ht₁)
  · intro h
    exact ⟨closure s, isClosed_closure, h, compl_subset_compl.mpr subset_closure⟩
#align bornology.relatively_compact.is_bounded_iff Bornology.relativelyCompact.isBounded_iff

protected theorem Finset.isClosed [T1Space α] (s : Finset α) : IsClosed (s : Set α) :=
  s.finite_toSet.isClosed
#align finset.is_closed Finset.isClosed

theorem t1Space_TFAE (α : Type u) [ TopologicalSpace α ] :
    List.TFAE [T1Space α,
      ∀ x, IsClosed ({ x } : Set α),
      ∀ x, IsOpen ({ x }ᶜ : Set α),
      Continuous (@CofiniteTopology.of α),
      ∀ ⦃x y : α⦄, x ≠ y → {y}ᶜ ∈ 𝓝 x,
      ∀ ⦃x y : α⦄, x ≠ y → ∃ s ∈ 𝓝 x, y ∉ s,
      ∀ ⦃x y : α⦄, x ≠ y → ∃ U : Set α, IsOpen U ∧ x ∈ U ∧ y ∉ U,
      ∀ ⦃x y : α⦄, x ≠ y → Disjoint (𝓝 x) (pure y),
      ∀ ⦃x y : α⦄, x ≠ y → Disjoint (pure x) (𝓝 y),
      ∀ ⦃x y : α⦄, x ⤳ y → x = y] := by
  tfae_have 1 ↔ 2
  · exact ⟨fun h => h.1, fun h => ⟨h⟩⟩
  tfae_have 2 ↔ 3
  · simp only [isOpen_compl_iff]
  tfae_have 5 ↔ 3
  · refine' forall_swap.trans _
    simp only [isOpen_iff_mem_nhds, mem_compl_iff, mem_singleton_iff]
  tfae_have 5 ↔ 6
  · simp only [← subset_compl_singleton_iff, exists_mem_subset_iff]
  tfae_have 5 ↔ 7
  · simp only [(nhds_basis_opens _).mem_iff, subset_compl_singleton_iff, exists_prop, and_assoc,
      and_left_comm]
  tfae_have 5 ↔ 8
  · simp only [← principal_singleton, disjoint_principal_right]
  tfae_have 8 ↔ 9
  · exact forall_swap.trans (by simp only [disjoint_comm, ne_comm])
  tfae_have 1 → 4
  · simp only [continuous_def, CofiniteTopology.isOpen_iff']
    rintro H s (rfl | hs)
    exacts [isOpen_empty, compl_compl s ▸ (@Set.Finite.isClosed _ _ H _ hs).isOpen_compl]
  tfae_have 4 → 2
  · exact fun h x => (CofiniteTopology.isClosed_iff.2 <| Or.inr (finite_singleton _)).preimage h
  tfae_have 2 ↔ 10
  · simp only [← closure_subset_iff_isClosed, specializes_iff_mem_closure, subset_def,
      mem_singleton_iff, eq_comm]
  tfae_finish
#align t1_space_tfae t1Space_TFAE

theorem t1Space_iff_continuous_cofinite_of {α : Type*} [TopologicalSpace α] :
    T1Space α ↔ Continuous (@CofiniteTopology.of α) :=
  (t1Space_TFAE α).out 0 3
#align t1_space_iff_continuous_cofinite_of t1Space_iff_continuous_cofinite_of

theorem CofiniteTopology.continuous_of [T1Space α] : Continuous (@CofiniteTopology.of α) :=
  t1Space_iff_continuous_cofinite_of.mp ‹_›
#align cofinite_topology.continuous_of CofiniteTopology.continuous_of

theorem t1Space_iff_exists_open :
    T1Space α ↔ ∀ x y, x ≠ y → ∃ U : Set α, IsOpen U ∧ x ∈ U ∧ y ∉ U :=
  (t1Space_TFAE α).out 0 6
#align t1_space_iff_exists_open t1Space_iff_exists_open

theorem t1Space_iff_disjoint_pure_nhds : T1Space α ↔ ∀ ⦃x y : α⦄, x ≠ y → Disjoint (pure x) (𝓝 y) :=
  (t1Space_TFAE α).out 0 8
#align t1_space_iff_disjoint_pure_nhds t1Space_iff_disjoint_pure_nhds

theorem t1Space_iff_disjoint_nhds_pure : T1Space α ↔ ∀ ⦃x y : α⦄, x ≠ y → Disjoint (𝓝 x) (pure y) :=
  (t1Space_TFAE α).out 0 7
#align t1_space_iff_disjoint_nhds_pure t1Space_iff_disjoint_nhds_pure

theorem t1Space_iff_specializes_imp_eq : T1Space α ↔ ∀ ⦃x y : α⦄, x ⤳ y → x = y :=
  (t1Space_TFAE α).out 0 9
#align t1_space_iff_specializes_imp_eq t1Space_iff_specializes_imp_eq

theorem disjoint_pure_nhds [T1Space α] {x y : α} (h : x ≠ y) : Disjoint (pure x) (𝓝 y) :=
  t1Space_iff_disjoint_pure_nhds.mp ‹_› h
#align disjoint_pure_nhds disjoint_pure_nhds

theorem disjoint_nhds_pure [T1Space α] {x y : α} (h : x ≠ y) : Disjoint (𝓝 x) (pure y) :=
  t1Space_iff_disjoint_nhds_pure.mp ‹_› h
#align disjoint_nhds_pure disjoint_nhds_pure

theorem Specializes.eq [T1Space α] {x y : α} (h : x ⤳ y) : x = y :=
  t1Space_iff_specializes_imp_eq.1 ‹_› h
#align specializes.eq Specializes.eq

theorem specializes_iff_eq [T1Space α] {x y : α} : x ⤳ y ↔ x = y :=
  ⟨Specializes.eq, fun h => h ▸ specializes_rfl⟩
#align specializes_iff_eq specializes_iff_eq

@[simp] theorem specializes_eq_eq [T1Space α] : (· ⤳ ·) = @Eq α :=
  funext₂ fun _ _ => propext specializes_iff_eq
#align specializes_eq_eq specializes_eq_eq

@[simp]
theorem pure_le_nhds_iff [T1Space α] {a b : α} : pure a ≤ 𝓝 b ↔ a = b :=
  specializes_iff_pure.symm.trans specializes_iff_eq
#align pure_le_nhds_iff pure_le_nhds_iff

@[simp]
theorem nhds_le_nhds_iff [T1Space α] {a b : α} : 𝓝 a ≤ 𝓝 b ↔ a = b :=
  specializes_iff_eq
#align nhds_le_nhds_iff nhds_le_nhds_iff

instance {α : Type*} : T1Space (CofiniteTopology α) :=
  t1Space_iff_continuous_cofinite_of.mpr continuous_id

theorem t1Space_antitone {α : Type*} : Antitone (@T1Space α) := fun a _ h _ =>
  @T1Space.mk _ a fun x => (T1Space.t1 x).mono h
#align t1_space_antitone t1Space_antitone

theorem continuousWithinAt_update_of_ne [T1Space α] [DecidableEq α] [TopologicalSpace β] {f : α → β}
    {s : Set α} {x y : α} {z : β} (hne : y ≠ x) :
    ContinuousWithinAt (Function.update f x z) s y ↔ ContinuousWithinAt f s y :=
  EventuallyEq.congr_continuousWithinAt
    (mem_nhdsWithin_of_mem_nhds <| mem_of_superset (isOpen_ne.mem_nhds hne) fun _y' hy' =>
      Function.update_noteq hy' _ _)
    (Function.update_noteq hne _ _)
#align continuous_within_at_update_of_ne continuousWithinAt_update_of_ne

theorem continuousAt_update_of_ne [T1Space α] [DecidableEq α] [TopologicalSpace β] {f : α → β}
    {x y : α} {z : β} (hne : y ≠ x) : ContinuousAt (Function.update f x z) y ↔ ContinuousAt f y :=
  by simp only [← continuousWithinAt_univ, continuousWithinAt_update_of_ne hne]
#align continuous_at_update_of_ne continuousAt_update_of_ne

theorem continuousOn_update_iff [T1Space α] [DecidableEq α] [TopologicalSpace β] {f : α → β}
    {s : Set α} {x : α} {y : β} :
    ContinuousOn (Function.update f x y) s ↔
      ContinuousOn f (s \ {x}) ∧ (x ∈ s → Tendsto f (𝓝[s \ {x}] x) (𝓝 y)) := by
  rw [ContinuousOn, ← and_forall_ne x, and_comm]
  refine' and_congr ⟨fun H z hz => _, fun H z hzx hzs => _⟩ (forall_congr' fun _ => _)
  · specialize H z hz.2 hz.1
    rw [continuousWithinAt_update_of_ne hz.2] at H
    exact H.mono (diff_subset _ _)
  · rw [continuousWithinAt_update_of_ne hzx]
    refine' (H z ⟨hzs, hzx⟩).mono_of_mem (inter_mem_nhdsWithin _ _)
    exact isOpen_ne.mem_nhds hzx
  · exact continuousWithinAt_update_same
#align continuous_on_update_iff continuousOn_update_iff

theorem t1Space_of_injective_of_continuous [TopologicalSpace β] {f : α → β}
    (hf : Function.Injective f) (hf' : Continuous f) [T1Space β] : T1Space α :=
  t1Space_iff_specializes_imp_eq.2 fun _ _ h => hf (h.map hf').eq
#align t1_space_of_injective_of_continuous t1Space_of_injective_of_continuous

protected theorem Embedding.t1Space [TopologicalSpace β] [T1Space β] {f : α → β}
    (hf : Embedding f) : T1Space α :=
  t1Space_of_injective_of_continuous hf.inj hf.continuous
#align embedding.t1_space Embedding.t1Space

instance Subtype.t1Space {α : Type u} [TopologicalSpace α] [T1Space α] {p : α → Prop} :
    T1Space (Subtype p) :=
  embedding_subtype_val.t1Space
#align subtype.t1_space Subtype.t1Space

instance [TopologicalSpace β] [T1Space α] [T1Space β] : T1Space (α × β) :=
  ⟨fun ⟨a, b⟩ => @singleton_prod_singleton _ _ a b ▸ isClosed_singleton.prod isClosed_singleton⟩

instance {ι : Type*} {π : ι → Type*} [∀ i, TopologicalSpace (π i)] [∀ i, T1Space (π i)] :
    T1Space (∀ i, π i) :=
  ⟨fun f => univ_pi_singleton f ▸ isClosed_set_pi fun _ _ => isClosed_singleton⟩

-- see Note [lower instance priority]
instance (priority := 100) T1Space.t0Space [T1Space α] : T0Space α :=
  ⟨fun _ _ h => h.specializes.eq⟩
#align t1_space.t0_space T1Space.t0Space

@[simp]
theorem compl_singleton_mem_nhds_iff [T1Space α] {x y : α} : {x}ᶜ ∈ 𝓝 y ↔ y ≠ x :=
  isOpen_compl_singleton.mem_nhds_iff
#align compl_singleton_mem_nhds_iff compl_singleton_mem_nhds_iff

theorem compl_singleton_mem_nhds [T1Space α] {x y : α} (h : y ≠ x) : {x}ᶜ ∈ 𝓝 y :=
  compl_singleton_mem_nhds_iff.mpr h
#align compl_singleton_mem_nhds compl_singleton_mem_nhds

@[simp]
theorem closure_singleton [T1Space α] {a : α} : closure ({a} : Set α) = {a} :=
  isClosed_singleton.closure_eq
#align closure_singleton closure_singleton

-- porting note: todo: the proof was `hs.induction_on (by simp) fun x => by simp`
theorem Set.Subsingleton.closure [T1Space α] {s : Set α} (hs : s.Subsingleton) :
    (closure s).Subsingleton := by
  rcases hs.eq_empty_or_singleton with (rfl | ⟨x, rfl⟩) <;> simp
#align set.subsingleton.closure Set.Subsingleton.closure

@[simp]
theorem subsingleton_closure [T1Space α] {s : Set α} : (closure s).Subsingleton ↔ s.Subsingleton :=
  ⟨fun h => h.anti subset_closure, fun h => h.closure⟩
#align subsingleton_closure subsingleton_closure

theorem isClosedMap_const {α β} [TopologicalSpace α] [TopologicalSpace β] [T1Space β] {y : β} :
    IsClosedMap (Function.const α y) :=
  IsClosedMap.of_nonempty fun s _ h2s => by simp_rw [const, h2s.image_const, isClosed_singleton]
#align is_closed_map_const isClosedMap_const

theorem nhdsWithin_insert_of_ne [T1Space α] {x y : α} {s : Set α} (hxy : x ≠ y) :
    𝓝[insert y s] x = 𝓝[s] x := by
  refine' le_antisymm (Filter.le_def.2 fun t ht => _) (nhdsWithin_mono x <| subset_insert y s)
  obtain ⟨o, ho, hxo, host⟩ := mem_nhdsWithin.mp ht
  refine' mem_nhdsWithin.mpr ⟨o \ {y}, ho.sdiff isClosed_singleton, ⟨hxo, hxy⟩, _⟩
  rw [inter_insert_of_not_mem <| not_mem_diff_of_mem (mem_singleton y)]
  exact (inter_subset_inter (diff_subset _ _) Subset.rfl).trans host
#align nhds_within_insert_of_ne nhdsWithin_insert_of_ne

/-- If `t` is a subset of `s`, except for one point,
then `insert x s` is a neighborhood of `x` within `t`. -/
theorem insert_mem_nhdsWithin_of_subset_insert [T1Space α] {x y : α} {s t : Set α}
    (hu : t ⊆ insert y s) : insert x s ∈ 𝓝[t] x := by
  rcases eq_or_ne x y with (rfl | h)
  · exact mem_of_superset self_mem_nhdsWithin hu
  refine' nhdsWithin_mono x hu _
  rw [nhdsWithin_insert_of_ne h]
  exact mem_of_superset self_mem_nhdsWithin (subset_insert x s)
#align insert_mem_nhds_within_of_subset_insert insert_mem_nhdsWithin_of_subset_insert

@[simp]
theorem sInter_sets_nhds [T1Space α] (x : α) : ⋂₀ (𝓝 x).sets = {x} := by
  simp [sInter_nhds_sets_eq_specializes]

theorem biInter_basis_nhds [T1Space α] {ι : Sort*} {p : ι → Prop} {s : ι → Set α} {x : α}
    (h : (𝓝 x).HasBasis p s) : ⋂ (i) (_ : p i), s i = {x} := by
  rw [← h.sInter_sets, sInter_sets_nhds]
#align bInter_basis_nhds biInter_basis_nhds

@[simp]
theorem compl_singleton_mem_nhdsSet_iff [T1Space α] {x : α} {s : Set α} : {x}ᶜ ∈ 𝓝ˢ s ↔ x ∉ s := by
  rw [isOpen_compl_singleton.mem_nhdsSet, subset_compl_singleton_iff]
#align compl_singleton_mem_nhds_set_iff compl_singleton_mem_nhdsSet_iff

@[simp]
theorem nhdsSet_le_iff [T1Space α] {s t : Set α} : 𝓝ˢ s ≤ 𝓝ˢ t ↔ s ⊆ t := by
  refine' ⟨_, fun h => monotone_nhdsSet h⟩
  simp_rw [Filter.le_def]; intro h x hx
  specialize h {x}ᶜ
  simp_rw [compl_singleton_mem_nhdsSet_iff] at h
  by_contra hxt
  exact h hxt hx
#align nhds_set_le_iff nhdsSet_le_iff

@[simp]
theorem nhdsSet_inj_iff [T1Space α] {s t : Set α} : 𝓝ˢ s = 𝓝ˢ t ↔ s = t := by
  simp_rw [le_antisymm_iff]
  exact and_congr nhdsSet_le_iff nhdsSet_le_iff
#align nhds_set_inj_iff nhdsSet_inj_iff

theorem injective_nhdsSet [T1Space α] : Function.Injective (𝓝ˢ : Set α → Filter α) := fun _ _ hst =>
  nhdsSet_inj_iff.mp hst
#align injective_nhds_set injective_nhdsSet

theorem strictMono_nhdsSet [T1Space α] : StrictMono (𝓝ˢ : Set α → Filter α) :=
  monotone_nhdsSet.strictMono_of_injective injective_nhdsSet
#align strict_mono_nhds_set strictMono_nhdsSet

@[simp]
theorem nhds_le_nhdsSet_iff [T1Space α] {s : Set α} {x : α} : 𝓝 x ≤ 𝓝ˢ s ↔ x ∈ s := by
  rw [← nhdsSet_singleton, nhdsSet_le_iff, singleton_subset_iff]
#align nhds_le_nhds_set_iff nhds_le_nhdsSet_iff

/-- Removing a non-isolated point from a dense set, one still obtains a dense set. -/
theorem Dense.diff_singleton [T1Space α] {s : Set α} (hs : Dense s) (x : α) [NeBot (𝓝[≠] x)] :
    Dense (s \ {x}) :=
  hs.inter_of_open_right (dense_compl_singleton x) isOpen_compl_singleton
#align dense.diff_singleton Dense.diff_singleton

/-- Removing a finset from a dense set in a space without isolated points, one still
obtains a dense set. -/
theorem Dense.diff_finset [T1Space α] [∀ x : α, NeBot (𝓝[≠] x)] {s : Set α} (hs : Dense s)
    (t : Finset α) : Dense (s \ t) := by
  induction t using Finset.induction_on with
  | empty => simpa using hs
  | insert _ ih =>
    rw [Finset.coe_insert, ← union_singleton, ← diff_diff]
    exact ih.diff_singleton _
#align dense.diff_finset Dense.diff_finset

/-- Removing a finite set from a dense set in a space without isolated points, one still
obtains a dense set. -/
theorem Dense.diff_finite [T1Space α] [∀ x : α, NeBot (𝓝[≠] x)] {s : Set α} (hs : Dense s)
    {t : Set α} (ht : t.Finite) : Dense (s \ t) := by
  convert hs.diff_finset ht.toFinset
  exact (Finite.coe_toFinset _).symm
#align dense.diff_finite Dense.diff_finite

/-- If a function to a `T1Space` tends to some limit `b` at some point `a`, then necessarily
`b = f a`. -/
theorem eq_of_tendsto_nhds [TopologicalSpace β] [T1Space β] {f : α → β} {a : α} {b : β}
    (h : Tendsto f (𝓝 a) (𝓝 b)) : f a = b :=
  by_contra fun hfa : f a ≠ b =>
    have fact₁ : {f a}ᶜ ∈ 𝓝 b := compl_singleton_mem_nhds hfa.symm
    have fact₂ : Tendsto f (pure a) (𝓝 b) := h.comp (tendsto_id'.2 <| pure_le_nhds a)
    fact₂ fact₁ (Eq.refl <| f a)
#align eq_of_tendsto_nhds eq_of_tendsto_nhds

theorem Filter.Tendsto.eventually_ne [TopologicalSpace β] [T1Space β] {α : Type*} {g : α → β}
    {l : Filter α} {b₁ b₂ : β} (hg : Tendsto g l (𝓝 b₁)) (hb : b₁ ≠ b₂) : ∀ᶠ z in l, g z ≠ b₂ :=
  hg.eventually (isOpen_compl_singleton.eventually_mem hb)
#align filter.tendsto.eventually_ne Filter.Tendsto.eventually_ne

theorem ContinuousAt.eventually_ne [TopologicalSpace β] [T1Space β] {g : α → β} {a : α} {b : β}
    (hg1 : ContinuousAt g a) (hg2 : g a ≠ b) : ∀ᶠ z in 𝓝 a, g z ≠ b :=
  hg1.tendsto.eventually_ne hg2
#align continuous_at.eventually_ne ContinuousAt.eventually_ne

theorem eventually_ne_nhds [T1Space α] {a b : α} (h : a ≠ b) : ∀ᶠ x in 𝓝 a, x ≠ b :=
  IsOpen.eventually_mem isOpen_ne h

theorem eventually_ne_nhdsWithin [T1Space α] {a b : α} {s : Set α} (h : a ≠ b) :
    ∀ᶠ x in 𝓝[s] a, x ≠ b :=
  Filter.Eventually.filter_mono nhdsWithin_le_nhds <| eventually_ne_nhds h

/-- To prove a function to a `T1Space` is continuous at some point `a`, it suffices to prove that
`f` admits *some* limit at `a`. -/
theorem continuousAt_of_tendsto_nhds [TopologicalSpace β] [T1Space β] {f : α → β} {a : α} {b : β}
    (h : Tendsto f (𝓝 a) (𝓝 b)) : ContinuousAt f a := by
  rwa [ContinuousAt, eq_of_tendsto_nhds h]
#align continuous_at_of_tendsto_nhds continuousAt_of_tendsto_nhds

@[simp]
theorem tendsto_const_nhds_iff [T1Space α] {l : Filter β} [NeBot l] {c d : α} :
    Tendsto (fun _ => c) l (𝓝 d) ↔ c = d := by simp_rw [Tendsto, Filter.map_const, pure_le_nhds_iff]
#align tendsto_const_nhds_iff tendsto_const_nhds_iff

/-- A point with a finite neighborhood has to be isolated. -/
theorem isOpen_singleton_of_finite_mem_nhds {α : Type*} [TopologicalSpace α] [T1Space α] (x : α)
    {s : Set α} (hs : s ∈ 𝓝 x) (hsf : s.Finite) : IsOpen ({x} : Set α) := by
  have A : {x} ⊆ s := by simp only [singleton_subset_iff, mem_of_mem_nhds hs]
  have B : IsClosed (s \ {x}) := (hsf.subset (diff_subset _ _)).isClosed
  have C : (s \ {x})ᶜ ∈ 𝓝 x := B.isOpen_compl.mem_nhds fun h => h.2 rfl
  have D : {x} ∈ 𝓝 x := by simpa only [← diff_eq, diff_diff_cancel_left A] using inter_mem hs C
  rwa [← mem_interior_iff_mem_nhds, ← singleton_subset_iff, subset_interior_iff_isOpen] at D
#align is_open_singleton_of_finite_mem_nhds isOpen_singleton_of_finite_mem_nhds

/-- If the punctured neighborhoods of a point form a nontrivial filter, then any neighborhood is
infinite. -/
theorem infinite_of_mem_nhds {α} [TopologicalSpace α] [T1Space α] (x : α) [hx : NeBot (𝓝[≠] x)]
    {s : Set α} (hs : s ∈ 𝓝 x) : Set.Infinite s := by
  refine' fun hsf => hx.1 _
  rw [← isOpen_singleton_iff_punctured_nhds]
  exact isOpen_singleton_of_finite_mem_nhds x hs hsf
#align infinite_of_mem_nhds infinite_of_mem_nhds

theorem discrete_of_t1_of_finite {X : Type*} [TopologicalSpace X] [T1Space X] [Finite X] :
    DiscreteTopology X := by
  apply singletons_open_iff_discrete.mp
  intro x
  rw [← isClosed_compl_iff]
  exact (Set.toFinite _).isClosed
#align discrete_of_t1_of_finite discrete_of_t1_of_finite

theorem PreconnectedSpace.trivial_of_discrete [PreconnectedSpace α] [DiscreteTopology α] :
    Subsingleton α := by
  rw [← not_nontrivial_iff_subsingleton]
  rintro ⟨x, y, hxy⟩
  rw [Ne.def, ← mem_singleton_iff, (isClopen_discrete _).eq_univ <| singleton_nonempty y] at hxy
  exact hxy (mem_univ x)
#align preconnected_space.trivial_of_discrete PreconnectedSpace.trivial_of_discrete

theorem IsPreconnected.infinite_of_nontrivial [T1Space α] {s : Set α} (h : IsPreconnected s)
    (hs : s.Nontrivial) : s.Infinite := by
  refine' mt (fun hf => (subsingleton_coe s).mp _) (not_subsingleton_iff.mpr hs)
  haveI := @discrete_of_t1_of_finite s _ _ hf.to_subtype
  exact @PreconnectedSpace.trivial_of_discrete _ _ (Subtype.preconnectedSpace h) _
#align is_preconnected.infinite_of_nontrivial IsPreconnected.infinite_of_nontrivial

theorem ConnectedSpace.infinite [ConnectedSpace α] [Nontrivial α] [T1Space α] : Infinite α :=
  infinite_univ_iff.mp <| isPreconnected_univ.infinite_of_nontrivial nontrivial_univ
#align connected_space.infinite ConnectedSpace.infinite

/-- A non-trivial connected T1 space has no isolated points. -/
instance ConnectedSpace.neBot_nhdsWithin_compl_of_nontrivial_of_t1space
    [ConnectedSpace α] [Nontrivial α] [T1Space α] (x : α) :
    NeBot (𝓝[≠] x) := by
  by_contra contra
  rw [not_neBot, ← isOpen_singleton_iff_punctured_nhds] at contra
  replace contra := nonempty_inter isOpen_compl_singleton
    contra (compl_union_self _) (Set.nonempty_compl_of_nontrivial _) (singleton_nonempty _)
  simp [compl_inter_self {x}] at contra

theorem singleton_mem_nhdsWithin_of_mem_discrete {s : Set α} [DiscreteTopology s] {x : α}
    (hx : x ∈ s) : {x} ∈ 𝓝[s] x := by
  have : ({⟨x, hx⟩} : Set s) ∈ 𝓝 (⟨x, hx⟩ : s) := by simp [nhds_discrete]
  simpa only [nhdsWithin_eq_map_subtype_coe hx, image_singleton] using
    @image_mem_map _ _ _ ((↑) : s → α) _ this
#align singleton_mem_nhds_within_of_mem_discrete singleton_mem_nhdsWithin_of_mem_discrete

/-- The neighbourhoods filter of `x` within `s`, under the discrete topology, is equal to
the pure `x` filter (which is the principal filter at the singleton `{x}`.) -/
theorem nhdsWithin_of_mem_discrete {s : Set α} [DiscreteTopology s] {x : α} (hx : x ∈ s) :
    𝓝[s] x = pure x :=
  le_antisymm (le_pure_iff.2 <| singleton_mem_nhdsWithin_of_mem_discrete hx) (pure_le_nhdsWithin hx)
#align nhds_within_of_mem_discrete nhdsWithin_of_mem_discrete

theorem Filter.HasBasis.exists_inter_eq_singleton_of_mem_discrete {ι : Type*} {p : ι → Prop}
    {t : ι → Set α} {s : Set α} [DiscreteTopology s] {x : α} (hb : (𝓝 x).HasBasis p t)
    (hx : x ∈ s) : ∃ i, p i ∧ t i ∩ s = {x} := by
  rcases (nhdsWithin_hasBasis hb s).mem_iff.1 (singleton_mem_nhdsWithin_of_mem_discrete hx) with
    ⟨i, hi, hix⟩
  exact ⟨i, hi, hix.antisymm <| singleton_subset_iff.2 ⟨mem_of_mem_nhds <| hb.mem_of_mem hi, hx⟩⟩
#align filter.has_basis.exists_inter_eq_singleton_of_mem_discrete Filter.HasBasis.exists_inter_eq_singleton_of_mem_discrete

/-- A point `x` in a discrete subset `s` of a topological space admits a neighbourhood
that only meets `s` at `x`.  -/
theorem nhds_inter_eq_singleton_of_mem_discrete {s : Set α} [DiscreteTopology s] {x : α}
    (hx : x ∈ s) : ∃ U ∈ 𝓝 x, U ∩ s = {x} := by
  simpa using (𝓝 x).basis_sets.exists_inter_eq_singleton_of_mem_discrete hx
#align nhds_inter_eq_singleton_of_mem_discrete nhds_inter_eq_singleton_of_mem_discrete

/-- For point `x` in a discrete subset `s` of a topological space, there is a set `U`
such that
1. `U` is a punctured neighborhood of `x` (ie. `U ∪ {x}` is a neighbourhood of `x`),
2. `U` is disjoint from `s`.
-/
theorem disjoint_nhdsWithin_of_mem_discrete {s : Set α} [DiscreteTopology s] {x : α} (hx : x ∈ s) :
    ∃ U ∈ 𝓝[≠] x, Disjoint U s :=
  let ⟨V, h, h'⟩ := nhds_inter_eq_singleton_of_mem_discrete hx
  ⟨{x}ᶜ ∩ V, inter_mem_nhdsWithin _ h,
    disjoint_iff_inter_eq_empty.mpr (by rw [inter_assoc, h', compl_inter_self])⟩
#align disjoint_nhds_within_of_mem_discrete disjoint_nhdsWithin_of_mem_discrete

/-- Let `X` be a topological space and let `s, t ⊆ X` be two subsets.  If there is an inclusion
`t ⊆ s`, then the topological space structure on `t` induced by `X` is the same as the one
obtained by the induced topological space structure on `s`. Use `embedding_inclusion` instead. -/
@[deprecated embedding_inclusion]
theorem TopologicalSpace.subset_trans {X : Type*} [TopologicalSpace X] {s t : Set X}
    (ts : t ⊆ s) :
    (instTopologicalSpaceSubtype : TopologicalSpace t) =
      (instTopologicalSpaceSubtype : TopologicalSpace s).induced (Set.inclusion ts) :=
  (embedding_inclusion ts).induced
#align topological_space.subset_trans TopologicalSpace.subset_trans

/-- A T₂ space, also known as a Hausdorff space, is one in which for every
  `x ≠ y` there exists disjoint open sets around `x` and `y`. This is
  the most widely used of the separation axioms. -/
@[mk_iff t2Space_iff]
class T2Space (α : Type u) [TopologicalSpace α] : Prop where
  /-- Every two points in a Hausdorff space admit disjoint open neighbourhoods. -/
  t2 : ∀ x y, x ≠ y → ∃ u v : Set α, IsOpen u ∧ IsOpen v ∧ x ∈ u ∧ y ∈ v ∧ Disjoint u v
#align t2_space T2Space

/-- Two different points can be separated by open sets. -/
theorem t2_separation [T2Space α] {x y : α} (h : x ≠ y) :
    ∃ u v : Set α, IsOpen u ∧ IsOpen v ∧ x ∈ u ∧ y ∈ v ∧ Disjoint u v :=
  T2Space.t2 x y h
#align t2_separation t2_separation

-- todo: use this as a definition?
theorem t2Space_iff_disjoint_nhds : T2Space α ↔ ∀ x y : α, x ≠ y → Disjoint (𝓝 x) (𝓝 y) := by
  refine (t2Space_iff α).trans (forall₃_congr fun x y _ => ?_)
  simp only [(nhds_basis_opens x).disjoint_iff (nhds_basis_opens y), exists_prop, ← exists_and_left,
    and_assoc, and_comm, and_left_comm]
#align t2_space_iff_disjoint_nhds t2Space_iff_disjoint_nhds

@[simp]
theorem disjoint_nhds_nhds [T2Space α] {x y : α} : Disjoint (𝓝 x) (𝓝 y) ↔ x ≠ y :=
  ⟨fun hd he => by simp [he, nhds_neBot.ne] at hd, t2Space_iff_disjoint_nhds.mp ‹_› x y⟩
#align disjoint_nhds_nhds disjoint_nhds_nhds

theorem pairwise_disjoint_nhds [T2Space α] : Pairwise (Disjoint on (𝓝 : α → Filter α)) := fun _ _ =>
  disjoint_nhds_nhds.2
#align pairwise_disjoint_nhds pairwise_disjoint_nhds

protected theorem Set.pairwiseDisjoint_nhds [T2Space α] (s : Set α) : s.PairwiseDisjoint 𝓝 :=
  pairwise_disjoint_nhds.set_pairwise s
#align set.pairwise_disjoint_nhds Set.pairwiseDisjoint_nhds

/-- Points of a finite set can be separated by open sets from each other. -/
theorem Set.Finite.t2_separation [T2Space α] {s : Set α} (hs : s.Finite) :
    ∃ U : α → Set α, (∀ x, x ∈ U x ∧ IsOpen (U x)) ∧ s.PairwiseDisjoint U :=
  s.pairwiseDisjoint_nhds.exists_mem_filter_basis hs nhds_basis_opens
#align set.finite.t2_separation Set.Finite.t2_separation

theorem isOpen_setOf_disjoint_nhds_nhds : IsOpen { p : α × α | Disjoint (𝓝 p.1) (𝓝 p.2) } := by
  simp only [isOpen_iff_mem_nhds, Prod.forall, mem_setOf_eq]
  intro x y h
  obtain ⟨U, hU, V, hV, hd⟩ := ((nhds_basis_opens x).disjoint_iff (nhds_basis_opens y)).mp h
  exact
    mem_nhds_prod_iff.mpr
      ⟨U, hU.2.mem_nhds hU.1, V, hV.2.mem_nhds hV.1, fun ⟨x', y'⟩ ⟨hx', hy'⟩ =>
        disjoint_of_disjoint_of_mem hd (hU.2.mem_nhds hx') (hV.2.mem_nhds hy')⟩
#align is_open_set_of_disjoint_nhds_nhds isOpen_setOf_disjoint_nhds_nhds

-- see Note [lower instance priority]
instance (priority := 100) T2Space.t1Space [T2Space α] : T1Space α :=
  t1Space_iff_disjoint_pure_nhds.mpr fun _ _ hne =>
    (disjoint_nhds_nhds.2 hne).mono_left <| pure_le_nhds _
#align t2_space.t1_space T2Space.t1Space

/-- A space is T₂ iff the neighbourhoods of distinct points generate the bottom filter. -/
theorem t2_iff_nhds : T2Space α ↔ ∀ {x y : α}, NeBot (𝓝 x ⊓ 𝓝 y) → x = y := by
  simp only [t2Space_iff_disjoint_nhds, disjoint_iff, neBot_iff, Ne.def, not_imp_comm]
#align t2_iff_nhds t2_iff_nhds

theorem eq_of_nhds_neBot [T2Space α] {x y : α} (h : NeBot (𝓝 x ⊓ 𝓝 y)) : x = y :=
  t2_iff_nhds.mp ‹_› h
#align eq_of_nhds_ne_bot eq_of_nhds_neBot

theorem t2Space_iff_nhds : T2Space α ↔ ∀ {x y : α}, x ≠ y → ∃ U ∈ 𝓝 x, ∃ V ∈ 𝓝 y, Disjoint U V := by
  simp only [t2Space_iff_disjoint_nhds, Filter.disjoint_iff]
#align t2_space_iff_nhds t2Space_iff_nhds

theorem t2_separation_nhds [T2Space α] {x y : α} (h : x ≠ y) :
    ∃ u v, u ∈ 𝓝 x ∧ v ∈ 𝓝 y ∧ Disjoint u v :=
  let ⟨u, v, open_u, open_v, x_in, y_in, huv⟩ := t2_separation h
  ⟨u, v, open_u.mem_nhds x_in, open_v.mem_nhds y_in, huv⟩
#align t2_separation_nhds t2_separation_nhds

theorem t2_separation_compact_nhds [LocallyCompactSpace α] [T2Space α] {x y : α} (h : x ≠ y) :
    ∃ u v, u ∈ 𝓝 x ∧ v ∈ 𝓝 y ∧ IsCompact u ∧ IsCompact v ∧ Disjoint u v := by
  simpa only [exists_prop, ← exists_and_left, and_comm, and_assoc, and_left_comm] using
    ((compact_basis_nhds x).disjoint_iff (compact_basis_nhds y)).1 (disjoint_nhds_nhds.2 h)
#align t2_separation_compact_nhds t2_separation_compact_nhds

theorem t2_iff_ultrafilter :
    T2Space α ↔ ∀ {x y : α} (f : Ultrafilter α), ↑f ≤ 𝓝 x → ↑f ≤ 𝓝 y → x = y :=
  t2_iff_nhds.trans <| by simp only [← exists_ultrafilter_iff, and_imp, le_inf_iff, exists_imp]
#align t2_iff_ultrafilter t2_iff_ultrafilter

theorem t2_iff_isClosed_diagonal : T2Space α ↔ IsClosed (diagonal α) := by
  simp only [t2Space_iff_disjoint_nhds, ← isOpen_compl_iff, isOpen_iff_mem_nhds, Prod.forall,
    nhds_prod_eq, compl_diagonal_mem_prod, mem_compl_iff, mem_diagonal_iff]
#align t2_iff_is_closed_diagonal t2_iff_isClosed_diagonal

theorem isClosed_diagonal [T2Space α] : IsClosed (diagonal α) :=
  t2_iff_isClosed_diagonal.mp ‹_›
#align is_closed_diagonal isClosed_diagonal

-- porting note: 2 lemmas moved below

theorem tendsto_nhds_unique [T2Space α] {f : β → α} {l : Filter β} {a b : α} [NeBot l]
    (ha : Tendsto f l (𝓝 a)) (hb : Tendsto f l (𝓝 b)) : a = b :=
  eq_of_nhds_neBot <| neBot_of_le <| le_inf ha hb
#align tendsto_nhds_unique tendsto_nhds_unique

theorem tendsto_nhds_unique' [T2Space α] {f : β → α} {l : Filter β} {a b : α} (_ : NeBot l)
    (ha : Tendsto f l (𝓝 a)) (hb : Tendsto f l (𝓝 b)) : a = b :=
  eq_of_nhds_neBot <| neBot_of_le <| le_inf ha hb
#align tendsto_nhds_unique' tendsto_nhds_unique'

theorem tendsto_nhds_unique_of_eventuallyEq [T2Space α] {f g : β → α} {l : Filter β} {a b : α}
    [NeBot l] (ha : Tendsto f l (𝓝 a)) (hb : Tendsto g l (𝓝 b)) (hfg : f =ᶠ[l] g) : a = b :=
  tendsto_nhds_unique (ha.congr' hfg) hb
#align tendsto_nhds_unique_of_eventually_eq tendsto_nhds_unique_of_eventuallyEq

theorem tendsto_nhds_unique_of_frequently_eq [T2Space α] {f g : β → α} {l : Filter β} {a b : α}
    (ha : Tendsto f l (𝓝 a)) (hb : Tendsto g l (𝓝 b)) (hfg : ∃ᶠ x in l, f x = g x) : a = b :=
  have : ∃ᶠ z : α × α in 𝓝 (a, b), z.1 = z.2 := (ha.prod_mk_nhds hb).frequently hfg
  not_not.1 fun hne => this (isClosed_diagonal.isOpen_compl.mem_nhds hne)
#align tendsto_nhds_unique_of_frequently_eq tendsto_nhds_unique_of_frequently_eq

/-- A T₂.₅ space, also known as a Urysohn space, is a topological space
  where for every pair `x ≠ y`, there are two open sets, with the intersection of closures
  empty, one containing `x` and the other `y` . -/
class T25Space (α : Type u) [TopologicalSpace α] : Prop where
  /-- Given two distinct points in a T₂.₅ space, their filters of closed neighborhoods are
  disjoint. -/
  t2_5 : ∀ ⦃x y : α⦄, x ≠ y → Disjoint ((𝓝 x).lift' closure) ((𝓝 y).lift' closure)
#align t2_5_space T25Space

@[simp]
theorem disjoint_lift'_closure_nhds [T25Space α] {x y : α} :
    Disjoint ((𝓝 x).lift' closure) ((𝓝 y).lift' closure) ↔ x ≠ y :=
  ⟨fun h hxy => by simp [hxy, nhds_neBot.ne] at h, fun h => T25Space.t2_5 h⟩
#align disjoint_lift'_closure_nhds disjoint_lift'_closure_nhds

-- see Note [lower instance priority]
instance (priority := 100) T25Space.t2Space [T25Space α] : T2Space α :=
  t2Space_iff_disjoint_nhds.2 fun _ _ hne =>
    (disjoint_lift'_closure_nhds.2 hne).mono (le_lift'_closure _) (le_lift'_closure _)
#align t2_5_space.t2_space T25Space.t2Space

theorem exists_nhds_disjoint_closure [T25Space α] {x y : α} (h : x ≠ y) :
    ∃ s ∈ 𝓝 x, ∃ t ∈ 𝓝 y, Disjoint (closure s) (closure t) :=
  ((𝓝 x).basis_sets.lift'_closure.disjoint_iff (𝓝 y).basis_sets.lift'_closure).1 <|
    disjoint_lift'_closure_nhds.2 h
#align exists_nhds_disjoint_closure exists_nhds_disjoint_closure

theorem exists_open_nhds_disjoint_closure [T25Space α] {x y : α} (h : x ≠ y) :
    ∃ u : Set α,
      x ∈ u ∧ IsOpen u ∧ ∃ v : Set α, y ∈ v ∧ IsOpen v ∧ Disjoint (closure u) (closure v) := by
  simpa only [exists_prop, and_assoc] using
    ((nhds_basis_opens x).lift'_closure.disjoint_iff (nhds_basis_opens y).lift'_closure).1
      (disjoint_lift'_closure_nhds.2 h)
#align exists_open_nhds_disjoint_closure exists_open_nhds_disjoint_closure

section limUnder

variable [T2Space α] {f : Filter α}

/-!
### Properties of `lim` and `limUnder`

In this section we use explicit `Nonempty α` instances for `lim` and `limUnder`. This way the lemmas
are useful without a `Nonempty α` instance.
-/


theorem lim_eq {a : α} [NeBot f] (h : f ≤ 𝓝 a) : @lim _ _ ⟨a⟩ f = a :=
  tendsto_nhds_unique (le_nhds_lim ⟨a, h⟩) h
set_option linter.uppercaseLean3 false in
#align Lim_eq lim_eq

theorem lim_eq_iff [NeBot f] (h : ∃ a : α, f ≤ nhds a) {a} : @lim _ _ ⟨a⟩ f = a ↔ f ≤ 𝓝 a :=
  ⟨fun c => c ▸ le_nhds_lim h, lim_eq⟩
set_option linter.uppercaseLean3 false in
#align Lim_eq_iff lim_eq_iff

theorem Ultrafilter.lim_eq_iff_le_nhds [CompactSpace α] {x : α} {F : Ultrafilter α} :
    F.lim = x ↔ ↑F ≤ 𝓝 x :=
  ⟨fun h => h ▸ F.le_nhds_lim, lim_eq⟩
set_option linter.uppercaseLean3 false in
#align ultrafilter.Lim_eq_iff_le_nhds Ultrafilter.lim_eq_iff_le_nhds

theorem isOpen_iff_ultrafilter' [CompactSpace α] (U : Set α) :
    IsOpen U ↔ ∀ F : Ultrafilter α, F.lim ∈ U → U ∈ F.1 := by
  rw [isOpen_iff_ultrafilter]
  refine' ⟨fun h F hF => h F.lim hF F F.le_nhds_lim, _⟩
  intro cond x hx f h
  rw [← Ultrafilter.lim_eq_iff_le_nhds.2 h] at hx
  exact cond _ hx
#align is_open_iff_ultrafilter' isOpen_iff_ultrafilter'

theorem Filter.Tendsto.limUnder_eq {a : α} {f : Filter β} [NeBot f] {g : β → α}
    (h : Tendsto g f (𝓝 a)) : @limUnder _ _ _ ⟨a⟩ f g = a :=
  lim_eq h
#align filter.tendsto.lim_eq Filter.Tendsto.limUnder_eq

theorem Filter.limUnder_eq_iff {f : Filter β} [NeBot f] {g : β → α} (h : ∃ a, Tendsto g f (𝓝 a))
    {a} : @limUnder _ _ _ ⟨a⟩ f g = a ↔ Tendsto g f (𝓝 a) :=
  ⟨fun c => c ▸ tendsto_nhds_limUnder h, Filter.Tendsto.limUnder_eq⟩
#align filter.lim_eq_iff Filter.limUnder_eq_iff

theorem Continuous.limUnder_eq [TopologicalSpace β] {f : β → α} (h : Continuous f) (a : β) :
    @limUnder _ _ _ ⟨f a⟩ (𝓝 a) f = f a :=
  (h.tendsto a).limUnder_eq
#align continuous.lim_eq Continuous.limUnder_eq

@[simp]
theorem lim_nhds (a : α) : @lim _ _ ⟨a⟩ (𝓝 a) = a :=
  lim_eq le_rfl
set_option linter.uppercaseLean3 false in
#align Lim_nhds lim_nhds

@[simp]
theorem limUnder_nhds_id (a : α) : @limUnder _ _ _ ⟨a⟩ (𝓝 a) id = a :=
  lim_nhds a
#align lim_nhds_id limUnder_nhds_id

@[simp]
theorem lim_nhdsWithin {a : α} {s : Set α} (h : a ∈ closure s) : @lim _ _ ⟨a⟩ (𝓝[s] a) = a :=
  haveI : NeBot (𝓝[s] a) := mem_closure_iff_clusterPt.1 h
  lim_eq inf_le_left
set_option linter.uppercaseLean3 false in
#align Lim_nhds_within lim_nhdsWithin

@[simp]
theorem limUnder_nhdsWithin_id {a : α} {s : Set α} (h : a ∈ closure s) :
    @limUnder _ _ _ ⟨a⟩ (𝓝[s] a) id = a :=
  lim_nhdsWithin h
#align lim_nhds_within_id limUnder_nhdsWithin_id

end limUnder

/-!
### `T2Space` constructions

We use two lemmas to prove that various standard constructions generate Hausdorff spaces from
Hausdorff spaces:

* `separated_by_continuous` says that two points `x y : α` can be separated by open neighborhoods
  provided that there exists a continuous map `f : α → β` with a Hausdorff codomain such that
  `f x ≠ f y`. We use this lemma to prove that topological spaces defined using `induced` are
  Hausdorff spaces.

* `separated_by_openEmbedding` says that for an open embedding `f : α → β` of a Hausdorff space
  `α`, the images of two distinct points `x y : α`, `x ≠ y` can be separated by open neighborhoods.
  We use this lemma to prove that topological spaces defined using `coinduced` are Hausdorff spaces.
-/


-- see Note [lower instance priority]
instance (priority := 100) DiscreteTopology.toT2Space {α : Type*} [TopologicalSpace α]
    [DiscreteTopology α] : T2Space α :=
  ⟨fun x y h => ⟨{x}, {y}, isOpen_discrete _, isOpen_discrete _, rfl, rfl, disjoint_singleton.2 h⟩⟩
#align discrete_topology.to_t2_space DiscreteTopology.toT2Space

theorem separated_by_continuous {α : Type*} {β : Type*} [TopologicalSpace α] [TopologicalSpace β]
    [T2Space β] {f : α → β} (hf : Continuous f) {x y : α} (h : f x ≠ f y) :
    ∃ u v : Set α, IsOpen u ∧ IsOpen v ∧ x ∈ u ∧ y ∈ v ∧ Disjoint u v :=
  let ⟨u, v, uo, vo, xu, yv, uv⟩ := t2_separation h
  ⟨f ⁻¹' u, f ⁻¹' v, uo.preimage hf, vo.preimage hf, xu, yv, uv.preimage _⟩
#align separated_by_continuous separated_by_continuous

theorem separated_by_openEmbedding {α β : Type*} [TopologicalSpace α] [TopologicalSpace β]
    [T2Space α] {f : α → β} (hf : OpenEmbedding f) {x y : α} (h : x ≠ y) :
    ∃ u v : Set β, IsOpen u ∧ IsOpen v ∧ f x ∈ u ∧ f y ∈ v ∧ Disjoint u v :=
  let ⟨u, v, uo, vo, xu, yv, uv⟩ := t2_separation h
  ⟨f '' u, f '' v, hf.isOpenMap _ uo, hf.isOpenMap _ vo, mem_image_of_mem _ xu,
    mem_image_of_mem _ yv, disjoint_image_of_injective hf.inj uv⟩
#align separated_by_open_embedding separated_by_openEmbedding

instance {α : Type*} {p : α → Prop} [TopologicalSpace α] [T2Space α] : T2Space (Subtype p) :=
  ⟨fun _ _ h => separated_by_continuous continuous_subtype_val (mt Subtype.eq h)⟩

instance Prod.t2Space {α : Type*} {β : Type*} [TopologicalSpace α] [T2Space α]
    [TopologicalSpace β] [T2Space β] : T2Space (α × β) :=
  ⟨fun _ _ h => Or.elim (not_and_or.mp (mt Prod.ext_iff.mpr h))
    (fun h₁ => separated_by_continuous continuous_fst h₁) fun h₂ =>
    separated_by_continuous continuous_snd h₂⟩

/-- If the codomain of an injective continuous function is a Hausdorff space, then so is its
domain. -/
theorem T2Space.of_injective_continuous [TopologicalSpace β] [T2Space β] {f : α → β}
    (hinj : Injective f) (hc : Continuous f) : T2Space α :=
  ⟨fun _ _ h => separated_by_continuous hc (hinj.ne h)⟩

/-- If the codomain of a topological embedding is a Hausdorff space, then so is its domain.
See also `T2Space.of_continuous_injective`. -/
theorem Embedding.t2Space [TopologicalSpace β] [T2Space β] {f : α → β} (hf : Embedding f) :
    T2Space α :=
  .of_injective_continuous hf.inj hf.continuous
#align embedding.t2_space Embedding.t2Space

instance {α β : Type*} [TopologicalSpace α] [T2Space α] [TopologicalSpace β] [T2Space β] :
    T2Space (α ⊕ β) := by
  constructor
  rintro (x | x) (y | y) h
  · exact separated_by_openEmbedding openEmbedding_inl <| ne_of_apply_ne _ h
  · exact separated_by_continuous continuous_isLeft <| by simp
  · exact separated_by_continuous continuous_isLeft <| by simp
  · exact separated_by_openEmbedding openEmbedding_inr <| ne_of_apply_ne _ h

instance Pi.t2Space {α : Type*} {β : α → Type v} [∀ a, TopologicalSpace (β a)]
    [∀ a, T2Space (β a)] : T2Space (∀ a, β a) :=
  ⟨fun _ _ h =>
    let ⟨i, hi⟩ := not_forall.mp (mt funext h)
    separated_by_continuous (continuous_apply i) hi⟩
#align Pi.t2_space Pi.t2Space

instance Sigma.t2Space {ι} {α : ι → Type*} [∀ i, TopologicalSpace (α i)] [∀ a, T2Space (α a)] :
    T2Space (Σi, α i) := by
  constructor
  rintro ⟨i, x⟩ ⟨j, y⟩ neq
  rcases eq_or_ne i j with (rfl | h)
  · replace neq : x ≠ y := ne_of_apply_ne _ neq
    exact separated_by_openEmbedding openEmbedding_sigmaMk neq
  · let _ := (⊥ : TopologicalSpace ι); have : DiscreteTopology ι := ⟨rfl⟩
    exact separated_by_continuous (continuous_def.2 fun u _ => isOpen_sigma_fst_preimage u) h
#align sigma.t2_space Sigma.t2Space

variable {γ : Type*} [TopologicalSpace β] [TopologicalSpace γ]

theorem isClosed_eq [T2Space α] {f g : β → α} (hf : Continuous f) (hg : Continuous g) :
    IsClosed { x : β | f x = g x } :=
  continuous_iff_isClosed.mp (hf.prod_mk hg) _ isClosed_diagonal
#align is_closed_eq isClosed_eq

theorem isOpen_ne_fun [T2Space α] {f g : β → α} (hf : Continuous f) (hg : Continuous g) :
    IsOpen { x : β | f x ≠ g x } :=
  isOpen_compl_iff.mpr <| isClosed_eq hf hg
#align is_open_ne_fun isOpen_ne_fun

/-- If two continuous maps are equal on `s`, then they are equal on the closure of `s`. See also
`Set.EqOn.of_subset_closure` for a more general version. -/
protected theorem Set.EqOn.closure [T2Space α] {s : Set β} {f g : β → α} (h : EqOn f g s)
    (hf : Continuous f) (hg : Continuous g) : EqOn f g (closure s) :=
  closure_minimal h (isClosed_eq hf hg)
#align set.eq_on.closure Set.EqOn.closure

/-- If two continuous functions are equal on a dense set, then they are equal. -/
theorem Continuous.ext_on [T2Space α] {s : Set β} (hs : Dense s) {f g : β → α} (hf : Continuous f)
    (hg : Continuous g) (h : EqOn f g s) : f = g :=
  funext fun x => h.closure hf hg (hs x)
#align continuous.ext_on Continuous.ext_on

theorem eqOn_closure₂' [T2Space α] {s : Set β} {t : Set γ} {f g : β → γ → α}
    (h : ∀ x ∈ s, ∀ y ∈ t, f x y = g x y) (hf₁ : ∀ x, Continuous (f x))
    (hf₂ : ∀ y, Continuous fun x => f x y) (hg₁ : ∀ x, Continuous (g x))
    (hg₂ : ∀ y, Continuous fun x => g x y) : ∀ x ∈ closure s, ∀ y ∈ closure t, f x y = g x y :=
  suffices closure s ⊆ ⋂ y ∈ closure t, { x | f x y = g x y } by simpa only [subset_def, mem_iInter]
  (closure_minimal fun x hx => mem_iInter₂.2 <| Set.EqOn.closure (h x hx) (hf₁ _) (hg₁ _)) <|
    isClosed_biInter fun y _ => isClosed_eq (hf₂ _) (hg₂ _)
#align eq_on_closure₂' eqOn_closure₂'

theorem eqOn_closure₂ [T2Space α] {s : Set β} {t : Set γ} {f g : β → γ → α}
    (h : ∀ x ∈ s, ∀ y ∈ t, f x y = g x y) (hf : Continuous (uncurry f))
    (hg : Continuous (uncurry g)) : ∀ x ∈ closure s, ∀ y ∈ closure t, f x y = g x y :=
  eqOn_closure₂' h (fun x => continuous_uncurry_left x hf) (fun x => continuous_uncurry_right x hf)
    (fun y => continuous_uncurry_left y hg) fun y => continuous_uncurry_right y hg
#align eq_on_closure₂ eqOn_closure₂

/-- If `f x = g x` for all `x ∈ s` and `f`, `g` are continuous on `t`, `s ⊆ t ⊆ closure s`, then
`f x = g x` for all `x ∈ t`. See also `Set.EqOn.closure`. -/
theorem Set.EqOn.of_subset_closure [T2Space α] {s t : Set β} {f g : β → α} (h : EqOn f g s)
    (hf : ContinuousOn f t) (hg : ContinuousOn g t) (hst : s ⊆ t) (hts : t ⊆ closure s) :
    EqOn f g t := by
  intro x hx
  have : (𝓝[s] x).NeBot := mem_closure_iff_clusterPt.mp (hts hx)
  exact
    tendsto_nhds_unique_of_eventuallyEq ((hf x hx).mono_left <| nhdsWithin_mono _ hst)
      ((hg x hx).mono_left <| nhdsWithin_mono _ hst) (h.eventuallyEq_of_mem self_mem_nhdsWithin)
#align set.eq_on.of_subset_closure Set.EqOn.of_subset_closure

theorem Function.LeftInverse.closed_range [T2Space α] {f : α → β} {g : β → α}
    (h : Function.LeftInverse f g) (hf : Continuous f) (hg : Continuous g) : IsClosed (range g) :=
  have : EqOn (g ∘ f) id (closure <| range g) :=
    h.rightInvOn_range.eqOn.closure (hg.comp hf) continuous_id
  isClosed_of_closure_subset fun x hx => ⟨f x, this hx⟩
#align function.left_inverse.closed_range Function.LeftInverse.closed_range

theorem Function.LeftInverse.closedEmbedding [T2Space α] {f : α → β} {g : β → α}
    (h : Function.LeftInverse f g) (hf : Continuous f) (hg : Continuous g) : ClosedEmbedding g :=
  ⟨h.embedding hf hg, h.closed_range hf hg⟩
#align function.left_inverse.closed_embedding Function.LeftInverse.closedEmbedding

theorem isCompact_isCompact_separated [T2Space α] {s t : Set α} (hs : IsCompact s)
    (ht : IsCompact t) (hst : Disjoint s t) : SeparatedNhds s t := by
  simp only [SeparatedNhds, prod_subset_compl_diagonal_iff_disjoint.symm] at hst ⊢
  exact generalized_tube_lemma hs ht isClosed_diagonal.isOpen_compl hst
#align is_compact_is_compact_separated isCompact_isCompact_separated

section SeparatedFinset

theorem finset_disjoint_finset_opens_of_t2 [T2Space α] (s t : Finset α) (h : Disjoint s t) :
    SeparatedNhds (s : Set α) t :=
  isCompact_isCompact_separated s.finite_toSet.isCompact t.finite_toSet.isCompact <| by
    exact_mod_cast h
#align finset_disjoint_finset_opens_of_t2 finset_disjoint_finset_opens_of_t2

theorem point_disjoint_finset_opens_of_t2 [T2Space α] {x : α} {s : Finset α} (h : x ∉ s) :
    SeparatedNhds ({x} : Set α) s := by
  exact_mod_cast finset_disjoint_finset_opens_of_t2 {x} s (Finset.disjoint_singleton_left.mpr h)
#align point_disjoint_finset_opens_of_t2 point_disjoint_finset_opens_of_t2

end SeparatedFinset

/-- In a `T2Space`, every compact set is closed. -/
theorem IsCompact.isClosed [T2Space α] {s : Set α} (hs : IsCompact s) : IsClosed s :=
  isOpen_compl_iff.1 <| isOpen_iff_forall_mem_open.mpr fun x hx =>
    let ⟨u, v, _, vo, su, xv, uv⟩ :=
      isCompact_isCompact_separated hs isCompact_singleton (disjoint_singleton_right.2 hx)
    ⟨v, (uv.mono_left <| show s ≤ u from su).subset_compl_left, vo, by simpa using xv⟩
#align is_compact.is_closed IsCompact.isClosed

@[simp]
theorem Filter.coclosedCompact_eq_cocompact [T2Space α] : coclosedCompact α = cocompact α := by
  simp only [coclosedCompact, cocompact, iInf_and',
    and_iff_right_of_imp (@IsCompact.isClosed α _ _ _)]
#align filter.coclosed_compact_eq_cocompact Filter.coclosedCompact_eq_cocompact

@[simp]
theorem Bornology.relativelyCompact_eq_inCompact [T2Space α] :
    Bornology.relativelyCompact α = Bornology.inCompact α :=
  Bornology.ext _ _ Filter.coclosedCompact_eq_cocompact
#align bornology.relatively_compact_eq_in_compact Bornology.relativelyCompact_eq_inCompact

theorem IsCompact.preimage_continuous [CompactSpace α] [T2Space β] {f : α → β} {s : Set β}
    (hs : IsCompact s) (hf : Continuous f) : IsCompact (f ⁻¹' s) :=
  (hs.isClosed.preimage hf).isCompact

/-- If `V : ι → Set α` is a decreasing family of compact sets then any neighborhood of
`⋂ i, V i` contains some `V i`. This is a version of `exists_subset_nhds_of_isCompact'` where we
don't need to assume each `V i` closed because it follows from compactness since `α` is
assumed to be Hausdorff. -/
theorem exists_subset_nhds_of_isCompact [T2Space α] {ι : Type*} [Nonempty ι] {V : ι → Set α}
    (hV : Directed (· ⊇ ·) V) (hV_cpct : ∀ i, IsCompact (V i)) {U : Set α}
    (hU : ∀ x ∈ ⋂ i, V i, U ∈ 𝓝 x) : ∃ i, V i ⊆ U :=
  exists_subset_nhds_of_isCompact' hV hV_cpct (fun i => (hV_cpct i).isClosed) hU
#align exists_subset_nhds_of_is_compact exists_subset_nhds_of_isCompact

theorem CompactExhaustion.isClosed [T2Space α] (K : CompactExhaustion α) (n : ℕ) : IsClosed (K n) :=
  (K.isCompact n).isClosed
#align compact_exhaustion.is_closed CompactExhaustion.isClosed

theorem IsCompact.inter [T2Space α] {s t : Set α} (hs : IsCompact s) (ht : IsCompact t) :
    IsCompact (s ∩ t) :=
  hs.inter_right <| ht.isClosed
#align is_compact.inter IsCompact.inter

theorem isCompact_closure_of_subset_compact [T2Space α] {s t : Set α} (ht : IsCompact t)
    (h : s ⊆ t) : IsCompact (closure s) :=
  isCompact_of_isClosed_subset ht isClosed_closure (closure_minimal h ht.isClosed)
#align is_compact_closure_of_subset_compact isCompact_closure_of_subset_compact

@[simp]
theorem exists_compact_superset_iff [T2Space α] {s : Set α} :
    (∃ K, IsCompact K ∧ s ⊆ K) ↔ IsCompact (closure s) :=
  ⟨fun ⟨_K, hK, hsK⟩ => isCompact_closure_of_subset_compact hK hsK, fun h =>
    ⟨closure s, h, subset_closure⟩⟩
#align exists_compact_superset_iff exists_compact_superset_iff

theorem image_closure_of_isCompact [T2Space β] {s : Set α} (hs : IsCompact (closure s)) {f : α → β}
    (hf : ContinuousOn f (closure s)) : f '' closure s = closure (f '' s) :=
  Subset.antisymm hf.image_closure <|
    closure_minimal (image_subset f subset_closure) (hs.image_of_continuousOn hf).isClosed
#align image_closure_of_is_compact image_closure_of_isCompact

/-- If a compact set is covered by two open sets, then we can cover it by two compact subsets. -/
theorem IsCompact.binary_compact_cover [T2Space α] {K U V : Set α} (hK : IsCompact K)
    (hU : IsOpen U) (hV : IsOpen V) (h2K : K ⊆ U ∪ V) :
    ∃ K₁ K₂ : Set α, IsCompact K₁ ∧ IsCompact K₂ ∧ K₁ ⊆ U ∧ K₂ ⊆ V ∧ K = K₁ ∪ K₂ := by
  obtain ⟨O₁, O₂, h1O₁, h1O₂, h2O₁, h2O₂, hO⟩ :=
    isCompact_isCompact_separated (hK.diff hU) (hK.diff hV)
      (by rwa [disjoint_iff_inter_eq_empty, diff_inter_diff, diff_eq_empty])
  exact
    ⟨_, _, hK.diff h1O₁, hK.diff h1O₂, by rwa [diff_subset_comm], by rwa [diff_subset_comm], by
      rw [← diff_inter, hO.inter_eq, diff_empty]⟩
#align is_compact.binary_compact_cover IsCompact.binary_compact_cover

/-- A continuous map from a compact space to a Hausdorff space is a closed map. -/
protected theorem Continuous.isClosedMap [CompactSpace α] [T2Space β] {f : α → β}
    (h : Continuous f) : IsClosedMap f := fun _s hs => (hs.isCompact.image h).isClosed
#align continuous.is_closed_map Continuous.isClosedMap

/-- A continuous injective map from a compact space to a Hausdorff space is a closed embedding. -/
theorem Continuous.closedEmbedding [CompactSpace α] [T2Space β] {f : α → β} (h : Continuous f)
    (hf : Function.Injective f) : ClosedEmbedding f :=
  closedEmbedding_of_continuous_injective_closed h hf h.isClosedMap
#align continuous.closed_embedding Continuous.closedEmbedding

/-- A continuous surjective map from a compact space to a Hausdorff space is a quotient map. -/
theorem QuotientMap.of_surjective_continuous [CompactSpace α] [T2Space β] {f : α → β}
    (hsurj : Surjective f) (hcont : Continuous f) : QuotientMap f :=
  hcont.isClosedMap.to_quotientMap hcont hsurj
#align quotient_map.of_surjective_continuous QuotientMap.of_surjective_continuous

section

open Finset Function

/-- For every finite open cover `Uᵢ` of a compact set, there exists a compact cover `Kᵢ ⊆ Uᵢ`. -/
theorem IsCompact.finite_compact_cover [T2Space α] {s : Set α} (hs : IsCompact s) {ι} (t : Finset ι)
    (U : ι → Set α) (hU : ∀ i ∈ t, IsOpen (U i)) (hsC : s ⊆ ⋃ i ∈ t, U i) :
    ∃ K : ι → Set α, (∀ i, IsCompact (K i)) ∧ (∀ i, K i ⊆ U i) ∧ s = ⋃ i ∈ t, K i := by
  induction' t using Finset.induction with x t hx ih generalizing U s
  · refine' ⟨fun _ => ∅, fun _ => isCompact_empty, fun i => empty_subset _, _⟩
    simpa only [subset_empty_iff, Finset.not_mem_empty, iUnion_false, iUnion_empty] using hsC
  simp only [Finset.set_biUnion_insert] at hsC
  simp only [Finset.forall_mem_insert] at hU
  have hU' : ∀ i ∈ t, IsOpen (U i) := fun i hi => hU.2 i hi
  rcases hs.binary_compact_cover hU.1 (isOpen_biUnion hU') hsC with
    ⟨K₁, K₂, h1K₁, h1K₂, h2K₁, h2K₂, hK⟩
  rcases ih h1K₂ U hU' h2K₂ with ⟨K, h1K, h2K, h3K⟩
  refine' ⟨update K x K₁, _, _, _⟩
  · intro i
    rcases eq_or_ne i x with rfl | hi
    · simp only [update_same, h1K₁]
    · simp only [update_noteq hi, h1K]
  · intro i
    rcases eq_or_ne i x with rfl | hi
    · simp only [update_same, h2K₁]
    · simp only [update_noteq hi, h2K]
  · simp only [set_biUnion_insert_update _ hx, hK, h3K]
#align is_compact.finite_compact_cover IsCompact.finite_compact_cover

end

/-- If every points of a Hausdorff space admits a compact neighborhood, then this space is locally
compact. -/
theorem locally_compact_of_compact_nhds [T2Space α] (h : ∀ x : α, ∃ s, s ∈ 𝓝 x ∧ IsCompact s) :
    LocallyCompactSpace α :=
  ⟨fun x _n hn =>
    let ⟨_u, un, uo, xu⟩ := mem_nhds_iff.mp hn
    let ⟨k, kx, kc⟩ := h x
    -- K is compact but not necessarily contained in N.
    -- K \ U is again compact and doesn't contain x, so
    -- we may find open sets V, W separating x from K \ U.
    -- Then K \ W is a compact neighborhood of x contained in U.
    let ⟨v, w, vo, wo, xv, kuw, vw⟩ :=
      isCompact_isCompact_separated isCompact_singleton (kc.diff uo)
        (disjoint_singleton_left.2 fun h => h.2 xu)
    have wn : wᶜ ∈ 𝓝 x :=
      mem_nhds_iff.mpr ⟨v, vw.subset_compl_right, vo, singleton_subset_iff.mp xv⟩
    ⟨k \ w, Filter.inter_mem kx wn, Subset.trans (diff_subset_comm.mp kuw) un, kc.diff wo⟩⟩
#align locally_compact_of_compact_nhds locally_compact_of_compact_nhds

-- see Note [lower instance priority]
instance (priority := 100) locally_compact_of_compact [T2Space α] [CompactSpace α] :
    LocallyCompactSpace α :=
  locally_compact_of_compact_nhds fun _ => ⟨univ, isOpen_univ.mem_nhds trivial, isCompact_univ⟩
#align locally_compact_of_compact locally_compact_of_compact

/-- In a locally compact T₂ space, every point has an open neighborhood with compact closure -/
theorem exists_open_with_compact_closure [LocallyCompactSpace α] [T2Space α] (x : α) :
    ∃ U : Set α, IsOpen U ∧ x ∈ U ∧ IsCompact (closure U) := by
  rcases exists_compact_mem_nhds x with ⟨K, hKc, hxK⟩
  rcases mem_nhds_iff.1 hxK with ⟨t, h1t, h2t, h3t⟩
  exact ⟨t, h2t, h3t, isCompact_closure_of_subset_compact hKc h1t⟩
#align exists_open_with_compact_closure exists_open_with_compact_closure

/-- In a locally compact T₂ space, every compact set has an open neighborhood with compact closure.
-/
theorem exists_open_superset_and_isCompact_closure [LocallyCompactSpace α] [T2Space α] {K : Set α}
    (hK : IsCompact K) : ∃ V, IsOpen V ∧ K ⊆ V ∧ IsCompact (closure V) := by
  rcases exists_compact_superset hK with ⟨K', hK', hKK'⟩
  refine'
    ⟨interior K', isOpen_interior, hKK', isCompact_closure_of_subset_compact hK' interior_subset⟩
#align exists_open_superset_and_is_compact_closure exists_open_superset_and_isCompact_closure

/-- In a locally compact T₂ space, given a compact set `K` inside an open set `U`, we can find an
open set `V` between these sets with compact closure: `K ⊆ V` and the closure of `V` is inside `U`.
-/
theorem exists_open_between_and_isCompact_closure [LocallyCompactSpace α] [T2Space α] {K U : Set α}
    (hK : IsCompact K) (hU : IsOpen U) (hKU : K ⊆ U) :
    ∃ V, IsOpen V ∧ K ⊆ V ∧ closure V ⊆ U ∧ IsCompact (closure V) := by
  rcases exists_compact_between hK hU hKU with ⟨V, hV, hKV, hVU⟩
  exact
    ⟨interior V, isOpen_interior, hKV, (closure_minimal interior_subset hV.isClosed).trans hVU,
      isCompact_closure_of_subset_compact hV interior_subset⟩
#align exists_open_between_and_is_compact_closure exists_open_between_and_isCompact_closure

theorem isPreirreducible_iff_subsingleton [T2Space α] {S : Set α} :
    IsPreirreducible S ↔ S.Subsingleton := by
  refine' ⟨fun h x hx y hy => _, Set.Subsingleton.isPreirreducible⟩
  by_contra e
  obtain ⟨U, V, hU, hV, hxU, hyV, h'⟩ := t2_separation e
  exact ((h U V hU hV ⟨x, hx, hxU⟩ ⟨y, hy, hyV⟩).mono <| inter_subset_right _ _).not_disjoint h'
#align is_preirreducible_iff_subsingleton isPreirreducible_iff_subsingleton

-- todo: use `alias` + `attribute [protected]` once we get `attribute [protected]`
protected lemma IsPreirreducible.subsingleton [T2Space α] {S : Set α} (h : IsPreirreducible S) :
    S.Subsingleton :=
  isPreirreducible_iff_subsingleton.1 h
#align is_preirreducible.subsingleton IsPreirreducible.subsingleton

theorem isIrreducible_iff_singleton [T2Space α] {S : Set α} : IsIrreducible S ↔ ∃ x, S = {x} := by
  rw [IsIrreducible, isPreirreducible_iff_subsingleton,
    exists_eq_singleton_iff_nonempty_subsingleton]
#align is_irreducible_iff_singleton isIrreducible_iff_singleton

/-- There does not exist a nontrivial preirreducible T₂ space. -/
theorem not_preirreducible_nontrivial_t2 (α) [TopologicalSpace α] [PreirreducibleSpace α]
    [Nontrivial α] [T2Space α] : False :=
  (PreirreducibleSpace.isPreirreducible_univ (α := α)).subsingleton.not_nontrivial nontrivial_univ
#align not_preirreducible_nontrivial_t2 not_preirreducible_nontrivial_t2

end Separation

section RegularSpace

/-- A topological space is called a *regular space* if for any closed set `s` and `a ∉ s`, there
exist disjoint open sets `U ⊇ s` and `V ∋ a`. We formulate this condition in terms of `Disjoint`ness
of filters `𝓝ˢ s` and `𝓝 a`. -/
@[mk_iff regularSpace_iff]
class RegularSpace (X : Type u) [TopologicalSpace X] : Prop where
  /-- If `a` is a point that does not belong to a closed set `s`, then `a` and `s` admit disjoint
  neighborhoods.  -/
  regular : ∀ {s : Set X} {a}, IsClosed s → a ∉ s → Disjoint (𝓝ˢ s) (𝓝 a)
#align regular_space RegularSpace

theorem regularSpace_TFAE (X : Type u) [ TopologicalSpace X ] :
    List.TFAE [RegularSpace X,
      ∀ (s : Set X) a, a ∉ closure s → Disjoint (𝓝ˢ s) (𝓝 a),
      ∀ (a : X) (s : Set X), Disjoint (𝓝ˢ s) (𝓝 a) ↔ a ∉ closure s,
      ∀ (a : X) (s : Set X), s ∈ 𝓝 a → ∃ t ∈ 𝓝 a, IsClosed t ∧ t ⊆ s,
      ∀ a : X, (𝓝 a).lift' closure ≤ 𝓝 a,
      ∀ a : X , (𝓝 a).lift' closure = 𝓝 a] := by
  tfae_have 1 ↔ 5
  · rw [regularSpace_iff, (@compl_surjective (Set X) _).forall, forall_swap]
    simp only [isClosed_compl_iff, mem_compl_iff, Classical.not_not, @and_comm (_ ∈ _),
      (nhds_basis_opens _).lift'_closure.le_basis_iff (nhds_basis_opens _), and_imp,
      (nhds_basis_opens _).disjoint_iff_right, exists_prop, ← subset_interior_iff_mem_nhdsSet,
      interior_compl, compl_subset_compl]
  tfae_have 5 → 6
  · exact fun h a => (h a).antisymm (𝓝 _).le_lift'_closure
  tfae_have 6 → 4
  · intro H a s hs
    rw [← H] at hs
    rcases(𝓝 a).basis_sets.lift'_closure.mem_iff.mp hs with ⟨U, hU, hUs⟩
    exact ⟨closure U, mem_of_superset hU subset_closure, isClosed_closure, hUs⟩
  tfae_have 4 → 2
  · intro H s a ha
    have ha' : sᶜ ∈ 𝓝 a := by rwa [← mem_interior_iff_mem_nhds, interior_compl]
    rcases H _ _ ha' with ⟨U, hU, hUc, hUs⟩
    refine' disjoint_of_disjoint_of_mem disjoint_compl_left _ hU
    rwa [← subset_interior_iff_mem_nhdsSet, hUc.isOpen_compl.interior_eq, subset_compl_comm]
  tfae_have 2 → 3
  · refine' fun H a s => ⟨fun hd has => mem_closure_iff_nhds_neBot.mp has _, H s a⟩
    exact (hd.symm.mono_right <| @principal_le_nhdsSet _ _ s).eq_bot
  tfae_have 3 → 1
  · exact fun H => ⟨fun hs ha => (H _ _).mpr <| hs.closure_eq.symm ▸ ha⟩
  tfae_finish
#align regular_space_tfae regularSpace_TFAE

theorem RegularSpace.ofLift'_closure (h : ∀ a : α, (𝓝 a).lift' closure = 𝓝 a) : RegularSpace α :=
  Iff.mpr ((regularSpace_TFAE α).out 0 5) h
#align regular_space.of_lift'_closure RegularSpace.ofLift'_closure

theorem RegularSpace.ofBasis {ι : α → Sort*} {p : ∀ a, ι a → Prop} {s : ∀ a, ι a → Set α}
    (h₁ : ∀ a, (𝓝 a).HasBasis (p a) (s a)) (h₂ : ∀ a i, p a i → IsClosed (s a i)) :
    RegularSpace α :=
  RegularSpace.ofLift'_closure fun a => (h₁ a).lift'_closure_eq_self (h₂ a)
#align regular_space.of_basis RegularSpace.ofBasis

theorem RegularSpace.ofExistsMemNhdsIsClosedSubset
    (h : ∀ (a : α), ∀ s ∈ 𝓝 a, ∃ t ∈ 𝓝 a, IsClosed t ∧ t ⊆ s) : RegularSpace α :=
  Iff.mpr ((regularSpace_TFAE α).out 0 3) h
#align regular_space.of_exists_mem_nhds_is_closed_subset RegularSpace.ofExistsMemNhdsIsClosedSubset

variable [RegularSpace α] {a : α} {s : Set α}

theorem disjoint_nhdsSet_nhds : Disjoint (𝓝ˢ s) (𝓝 a) ↔ a ∉ closure s := by
  have h := (regularSpace_TFAE α).out 0 2
  exact h.mp ‹_› _ _
#align disjoint_nhds_set_nhds disjoint_nhdsSet_nhds

theorem disjoint_nhds_nhdsSet : Disjoint (𝓝 a) (𝓝ˢ s) ↔ a ∉ closure s :=
  disjoint_comm.trans disjoint_nhdsSet_nhds
#align disjoint_nhds_nhds_set disjoint_nhds_nhdsSet

theorem exists_mem_nhds_isClosed_subset {a : α} {s : Set α} (h : s ∈ 𝓝 a) :
    ∃ t ∈ 𝓝 a, IsClosed t ∧ t ⊆ s := by
  have h' := (regularSpace_TFAE α).out 0 3
  exact h'.mp ‹_› _ _ h
#align exists_mem_nhds_is_closed_subset exists_mem_nhds_isClosed_subset

theorem closed_nhds_basis (a : α) : (𝓝 a).HasBasis (fun s : Set α => s ∈ 𝓝 a ∧ IsClosed s) id :=
  hasBasis_self.2 fun _ => exists_mem_nhds_isClosed_subset
#align closed_nhds_basis closed_nhds_basis

theorem lift'_nhds_closure (a : α) : (𝓝 a).lift' closure = 𝓝 a :=
  (closed_nhds_basis a).lift'_closure_eq_self fun _ => And.right
#align lift'_nhds_closure lift'_nhds_closure

theorem Filter.HasBasis.nhds_closure {ι : Sort*} {a : α} {p : ι → Prop} {s : ι → Set α}
    (h : (𝓝 a).HasBasis p s) : (𝓝 a).HasBasis p fun i => closure (s i) :=
  lift'_nhds_closure a ▸ h.lift'_closure
#align filter.has_basis.nhds_closure Filter.HasBasis.nhds_closure

theorem hasBasis_nhds_closure (a : α) : (𝓝 a).HasBasis (fun s => s ∈ 𝓝 a) closure :=
  (𝓝 a).basis_sets.nhds_closure
#align has_basis_nhds_closure hasBasis_nhds_closure

theorem hasBasis_opens_closure (a : α) : (𝓝 a).HasBasis (fun s => a ∈ s ∧ IsOpen s) closure :=
  (nhds_basis_opens a).nhds_closure
#align has_basis_opens_closure hasBasis_opens_closure

theorem TopologicalSpace.IsTopologicalBasis.nhds_basis_closure {B : Set (Set α)}
    (hB : IsTopologicalBasis B) (a : α) :
    (𝓝 a).HasBasis (fun s : Set α => a ∈ s ∧ s ∈ B) closure := by
  simpa only [and_comm] using hB.nhds_hasBasis.nhds_closure
#align topological_space.is_topological_basis.nhds_basis_closure TopologicalSpace.IsTopologicalBasis.nhds_basis_closure

theorem TopologicalSpace.IsTopologicalBasis.exists_closure_subset {B : Set (Set α)}
    (hB : IsTopologicalBasis B) {a : α} {s : Set α} (h : s ∈ 𝓝 a) :
    ∃ t ∈ B, a ∈ t ∧ closure t ⊆ s := by
  simpa only [exists_prop, and_assoc] using hB.nhds_hasBasis.nhds_closure.mem_iff.mp h
#align topological_space.is_topological_basis.exists_closure_subset TopologicalSpace.IsTopologicalBasis.exists_closure_subset

theorem disjoint_nhds_nhds_iff_not_specializes {a b : α} : Disjoint (𝓝 a) (𝓝 b) ↔ ¬a ⤳ b := by
  rw [← nhdsSet_singleton, disjoint_nhdsSet_nhds, specializes_iff_mem_closure]
#align disjoint_nhds_nhds_iff_not_specializes disjoint_nhds_nhds_iff_not_specializes

theorem specializes_comm {a b : α} : a ⤳ b ↔ b ⤳ a := by
  simp only [← (disjoint_nhds_nhds_iff_not_specializes (α := α)).not_left, disjoint_comm]
#align specializes_comm specializes_comm

alias ⟨Specializes.symm, _⟩ := specializes_comm
#align specializes.symm Specializes.symm

theorem specializes_iff_inseparable {a b : α} : a ⤳ b ↔ Inseparable a b :=
  ⟨fun h => h.antisymm h.symm, le_of_eq⟩
#align specializes_iff_inseparable specializes_iff_inseparable

theorem isClosed_setOf_specializes : IsClosed { p : α × α | p.1 ⤳ p.2 } := by
  simp only [← isOpen_compl_iff, compl_setOf, ← disjoint_nhds_nhds_iff_not_specializes,
    isOpen_setOf_disjoint_nhds_nhds]
#align is_closed_set_of_specializes isClosed_setOf_specializes

theorem isClosed_setOf_inseparable : IsClosed { p : α × α | Inseparable p.1 p.2 } := by
  simp only [← specializes_iff_inseparable, isClosed_setOf_specializes]
#align is_closed_set_of_inseparable isClosed_setOf_inseparable

protected theorem Inducing.regularSpace [TopologicalSpace β] {f : β → α} (hf : Inducing f) :
    RegularSpace β :=
  RegularSpace.ofBasis
    (fun b => by rw [hf.nhds_eq_comap b]; exact (closed_nhds_basis _).comap _)
    fun b s hs => by exact hs.2.preimage hf.continuous
#align inducing.regular_space Inducing.regularSpace

theorem regularSpace_induced (f : β → α) : @RegularSpace β (induced f ‹_›) :=
  letI := induced f ‹_›
  Inducing.regularSpace ⟨rfl⟩
#align regular_space_induced regularSpace_induced

theorem regularSpace_sInf {X} {T : Set (TopologicalSpace X)} (h : ∀ t ∈ T, @RegularSpace X t) :
    @RegularSpace X (sInf T) := by
  let _ := sInf T
  have : ∀ a, (𝓝 a).HasBasis
      (fun If : ΣI : Set T, I → Set X =>
        If.1.Finite ∧ ∀ i : If.1, If.2 i ∈ @nhds X i a ∧ @IsClosed X i (If.2 i))
      fun If => ⋂ i : If.1, If.snd i := by
    intro a
    rw [nhds_sInf, ← iInf_subtype'']
    exact hasBasis_iInf fun t : T => @closed_nhds_basis X t (h t t.2) a
  refine' RegularSpace.ofBasis this fun a If hIf => isClosed_iInter fun i => _
  exact (hIf.2 i).2.mono (sInf_le (i : T).2)
#align regular_space_Inf regularSpace_sInf

theorem regularSpace_iInf {ι X} {t : ι → TopologicalSpace X} (h : ∀ i, @RegularSpace X (t i)) :
    @RegularSpace X (iInf t) :=
  regularSpace_sInf <| forall_range_iff.mpr h
#align regular_space_infi regularSpace_iInf

theorem RegularSpace.inf {X} {t₁ t₂ : TopologicalSpace X} (h₁ : @RegularSpace X t₁)
    (h₂ : @RegularSpace X t₂) : @RegularSpace X (t₁ ⊓ t₂) := by
  rw [inf_eq_iInf]
  exact regularSpace_iInf (Bool.forall_bool.2 ⟨h₂, h₁⟩)
#align regular_space.inf RegularSpace.inf

instance {p : α → Prop} : RegularSpace (Subtype p) :=
  embedding_subtype_val.toInducing.regularSpace

instance [TopologicalSpace β] [RegularSpace β] : RegularSpace (α × β) :=
  (regularSpace_induced (@Prod.fst α β)).inf (regularSpace_induced (@Prod.snd α β))

instance {ι : Type*} {π : ι → Type*} [∀ i, TopologicalSpace (π i)] [∀ i, RegularSpace (π i)] :
    RegularSpace (∀ i, π i) :=
  regularSpace_iInf fun _ => regularSpace_induced _

end RegularSpace

section T3

/-- A T₃ space is a T₀ space which is a regular space. Any T₃ space is a T₁ space, a T₂ space, and
a T₂.₅ space.  -/
class T3Space (α : Type u) [TopologicalSpace α] extends T0Space α, RegularSpace α : Prop
#align t3_space T3Space

-- see Note [lower instance priority]
instance (priority := 100) T3Space.t25Space [T3Space α] : T25Space α := by
  refine' ⟨fun x y hne => _⟩
  rw [lift'_nhds_closure, lift'_nhds_closure]
  have : x ∉ closure {y} ∨ y ∉ closure {x} :=
    (t0Space_iff_or_not_mem_closure α).mp inferInstance x y hne
  simp only [← disjoint_nhds_nhdsSet, nhdsSet_singleton] at this
  exact this.elim id fun h => h.symm
#align t3_space.t2_5_space T3Space.t25Space

protected theorem Embedding.t3Space [TopologicalSpace β] [T3Space β] {f : α → β}
    (hf : Embedding f) : T3Space α :=
  { toT0Space := hf.t0Space
    toRegularSpace := hf.toInducing.regularSpace }
#align embedding.t3_space Embedding.t3Space

instance Subtype.t3Space [T3Space α] {p : α → Prop} : T3Space (Subtype p) :=
  embedding_subtype_val.t3Space
#align subtype.t3_space Subtype.t3Space

instance [TopologicalSpace β] [T3Space α] [T3Space β] : T3Space (α × β) := ⟨⟩

instance {ι : Type*} {π : ι → Type*} [∀ i, TopologicalSpace (π i)] [∀ i, T3Space (π i)] :
    T3Space (∀ i, π i) := ⟨⟩

/-- Given two points `x ≠ y`, we can find neighbourhoods `x ∈ V₁ ⊆ U₁` and `y ∈ V₂ ⊆ U₂`,
with the `Vₖ` closed and the `Uₖ` open, such that the `Uₖ` are disjoint. -/
theorem disjoint_nested_nhds [T3Space α] {x y : α} (h : x ≠ y) :
    ∃ U₁ ∈ 𝓝 x, ∃ V₁ ∈ 𝓝 x, ∃ U₂ ∈ 𝓝 y, ∃ V₂ ∈ 𝓝 y,
      IsClosed V₁ ∧ IsClosed V₂ ∧ IsOpen U₁ ∧ IsOpen U₂ ∧ V₁ ⊆ U₁ ∧ V₂ ⊆ U₂ ∧ Disjoint U₁ U₂ := by
  rcases t2_separation h with ⟨U₁, U₂, U₁_op, U₂_op, x_in, y_in, H⟩
  rcases exists_mem_nhds_isClosed_subset (U₁_op.mem_nhds x_in) with ⟨V₁, V₁_in, V₁_closed, h₁⟩
  rcases exists_mem_nhds_isClosed_subset (U₂_op.mem_nhds y_in) with ⟨V₂, V₂_in, V₂_closed, h₂⟩
  exact ⟨U₁, mem_of_superset V₁_in h₁, V₁, V₁_in, U₂, mem_of_superset V₂_in h₂, V₂, V₂_in,
    V₁_closed, V₂_closed, U₁_op, U₂_op, h₁, h₂, H⟩
#align disjoint_nested_nhds disjoint_nested_nhds

open SeparationQuotient

/-- The `SeparationQuotient` of a regular space is a T₃ space. -/
instance [RegularSpace α] : T3Space (SeparationQuotient α) where
  regular {s a} hs ha := by
    rcases surjective_mk a with ⟨a, rfl⟩
    rw [← disjoint_comap_iff surjective_mk, comap_mk_nhds_mk, comap_mk_nhdsSet]
    exact RegularSpace.regular (hs.preimage continuous_mk) ha

end T3

section Normality

-- todo: rename this to `T4Space`, introduce `NormalSpace` without `T1Space` assumption
/-- A T₄ space, also known as a normal space (although this condition sometimes
  omits T₂), is one in which for every pair of disjoint closed sets `C` and `D`,
  there exist disjoint open sets containing `C` and `D` respectively. -/
class NormalSpace (α : Type u) [TopologicalSpace α] extends T1Space α : Prop where
  /-- Two disjoint sets in a normal space admit disjoint neighbourhoods. -/
  normal : ∀ s t : Set α, IsClosed s → IsClosed t → Disjoint s t → SeparatedNhds s t
#align normal_space NormalSpace

theorem normal_separation [NormalSpace α] {s t : Set α} (H1 : IsClosed s) (H2 : IsClosed t)
    (H3 : Disjoint s t) : SeparatedNhds s t :=
  NormalSpace.normal s t H1 H2 H3
#align normal_separation normal_separation

theorem normal_exists_closure_subset [NormalSpace α] {s t : Set α} (hs : IsClosed s) (ht : IsOpen t)
    (hst : s ⊆ t) : ∃ u, IsOpen u ∧ s ⊆ u ∧ closure u ⊆ t := by
  have : Disjoint s tᶜ := Set.disjoint_left.mpr fun x hxs hxt => hxt (hst hxs)
  rcases normal_separation hs (isClosed_compl_iff.2 ht) this with
    ⟨s', t', hs', ht', hss', htt', hs't'⟩
  refine ⟨s', hs', hss', Subset.trans (closure_minimal ?_ (isClosed_compl_iff.2 ht'))
    (compl_subset_comm.1 htt')⟩
  exact fun x hxs hxt => hs't'.le_bot ⟨hxs, hxt⟩
#align normal_exists_closure_subset normal_exists_closure_subset

-- see Note [lower instance priority]
instance (priority := 100) NormalSpace.t3Space [NormalSpace α] : T3Space α where
  regular hs hxs := by simpa only [nhdsSet_singleton] using (normal_separation hs isClosed_singleton
    (disjoint_singleton_right.mpr hxs)).disjoint_nhdsSet
#align normal_space.t3_space NormalSpace.t3Space

-- We can't make this an instance because it could cause an instance loop.
-- porting note: todo: now we can
theorem normalOfCompactT2 [CompactSpace α] [T2Space α] : NormalSpace α :=
  ⟨fun _s _t hs ht => isCompact_isCompact_separated hs.isCompact ht.isCompact⟩
#align normal_of_compact_t2 normalOfCompactT2

protected theorem ClosedEmbedding.normalSpace [TopologicalSpace β] [NormalSpace β] {f : α → β}
    (hf : ClosedEmbedding f) : NormalSpace α where
  toT1Space := hf.toEmbedding.t1Space
  normal s t hs ht hst := by
    have H : SeparatedNhds (f '' s) (f '' t) :=
      NormalSpace.normal (f '' s) (f '' t) (hf.isClosedMap s hs) (hf.isClosedMap t ht)
        (disjoint_image_of_injective hf.inj hst)
    exact (H.preimage hf.continuous).mono (subset_preimage_image _ _) (subset_preimage_image _ _)
#align closed_embedding.normal_space ClosedEmbedding.normalSpace

namespace SeparationQuotient

/-- The `SeparationQuotient` of a normal space is a T₄ space. We don't have separate typeclasses
for normal spaces (without T₁ assumption) and T₄ spaces, so we use the same class for assumption
and for conclusion.

One can prove this using a homeomorphism between `α` and `SeparationQuotient α`. We give an
alternative proof that works without assuming that `α` is a T₁ space. -/
instance [NormalSpace α] : NormalSpace (SeparationQuotient α) where
  normal s t hs ht hd := separatedNhds_iff_disjoint.2 <| by
    rw [← disjoint_comap_iff surjective_mk, comap_mk_nhdsSet, comap_mk_nhdsSet]
    exact (normal_separation (hs.preimage continuous_mk) (ht.preimage continuous_mk)
      (hd.preimage mk)).disjoint_nhdsSet

end SeparationQuotient

variable (α)

/-- A T₃ topological space with second countable topology is a normal space.
This lemma is not an instance to avoid a loop. -/
theorem normalSpaceOfT3SecondCountable [SecondCountableTopology α] [T3Space α] : NormalSpace α := by
  have key : ∀ {s t : Set α}, IsClosed t → Disjoint s t →
    ∃ U : Set (countableBasis α), (s ⊆ ⋃ u ∈ U, ↑u) ∧ (∀ u ∈ U, Disjoint (closure ↑u) t) ∧
      ∀ n : ℕ, IsClosed (⋃ (u ∈ U) (_ : Encodable.encode u ≤ n), closure (u : Set α)) := by
    intro s t hc hd
    rw [disjoint_left] at hd
    have : ∀ x ∈ s, ∃ U ∈ countableBasis α, x ∈ U ∧ Disjoint (closure U) t := by
      intro x hx
      rcases (isBasis_countableBasis α).exists_closure_subset (hc.compl_mem_nhds (hd hx))
        with ⟨u, hu, hxu, hut⟩
      exact ⟨u, hu, hxu, disjoint_left.2 hut⟩
    choose! U hu hxu hd using this
    set V : s → countableBasis α := MapsTo.restrict _ _ _ hu
    refine' ⟨range V, _, forall_range_iff.2 <| Subtype.forall.2 hd, fun n => _⟩
    · rw [biUnion_range]
      exact fun x hx => mem_iUnion.2 ⟨⟨x, hx⟩, hxu x hx⟩
    · simp only [← iSup_eq_iUnion, iSup_and']
      exact isClosed_biUnion (((finite_le_nat n).preimage_embedding (Encodable.encode' _)).subset <|
        inter_subset_right _ _) fun u _ => isClosed_closure
  refine' ⟨fun s t hs ht hd => _⟩
  rcases key ht hd with ⟨U, hsU, hUd, hUc⟩
  rcases key hs hd.symm with ⟨V, htV, hVd, hVc⟩
  refine ⟨⋃ u ∈ U, ↑u \ ⋃ (v ∈ V) (_ : Encodable.encode v ≤ Encodable.encode u), closure ↑v,
    ⋃ v ∈ V, ↑v \ ⋃ (u ∈ U) (_ : Encodable.encode u ≤ Encodable.encode v), closure ↑u,
    isOpen_biUnion fun u _ => (isOpen_of_mem_countableBasis u.2).sdiff (hVc _),
    isOpen_biUnion fun v _ => (isOpen_of_mem_countableBasis v.2).sdiff (hUc _),
    fun x hx => ?_, fun x hx => ?_, ?_⟩
  · rcases mem_iUnion₂.1 (hsU hx) with ⟨u, huU, hxu⟩
    refine' mem_biUnion huU ⟨hxu, _⟩
    simp only [mem_iUnion]
    rintro ⟨v, hvV, -, hxv⟩
    exact (hVd v hvV).le_bot ⟨hxv, hx⟩
  · rcases mem_iUnion₂.1 (htV hx) with ⟨v, hvV, hxv⟩
    refine' mem_biUnion hvV ⟨hxv, _⟩
    simp only [mem_iUnion]
    rintro ⟨u, huU, -, hxu⟩
    exact (hUd u huU).le_bot ⟨hxu, hx⟩
  · simp only [disjoint_left, mem_iUnion, mem_diff, not_exists, not_and, not_forall, not_not]
    rintro a ⟨u, huU, hau, haV⟩ v hvV hav
    cases' le_total (Encodable.encode u) (Encodable.encode v) with hle hle
    exacts [⟨u, huU, hle, subset_closure hau⟩, (haV _ hvV hle <| subset_closure hav).elim]
#align normal_space_of_t3_second_countable normalSpaceOfT3SecondCountable

end Normality

section CompletelyNormal

/-- A topological space `α` is a *completely normal Hausdorff space* if each subspace `s : Set α` is
a normal Hausdorff space. Equivalently, `α` is a `T₁` space and for any two sets `s`, `t` such that
`closure s` is disjoint with `t` and `s` is disjoint with `closure t`, there exist disjoint
neighbourhoods of `s` and `t`. -/
class T5Space (α : Type u) [TopologicalSpace α] extends T1Space α : Prop where
  /-- If `closure s` is disjoint with `t` and `s` is disjoint with `closure t`, then `s` and `t`
  admit disjoint neighbourhoods. -/
  completely_normal :
    ∀ ⦃s t : Set α⦄, Disjoint (closure s) t → Disjoint s (closure t) → Disjoint (𝓝ˢ s) (𝓝ˢ t)
#align t5_space T5Space

export T5Space (completely_normal)

theorem Embedding.t5Space [TopologicalSpace β] [T5Space β] {e : α → β} (he : Embedding e) :
    T5Space α := by
  haveI := he.t1Space
  refine' ⟨fun s t hd₁ hd₂ => _⟩
  simp only [he.toInducing.nhdsSet_eq_comap]
  refine disjoint_comap (completely_normal ?_ ?_)
  · rwa [← subset_compl_iff_disjoint_left, image_subset_iff, preimage_compl,
      ← he.closure_eq_preimage_closure_image, subset_compl_iff_disjoint_left]
  · rwa [← subset_compl_iff_disjoint_right, image_subset_iff, preimage_compl,
      ← he.closure_eq_preimage_closure_image, subset_compl_iff_disjoint_right]
#align embedding.t5_space Embedding.t5Space

/-- A subspace of a `T₅` space is a `T₅` space. -/
instance [T5Space α] {p : α → Prop} : T5Space { x // p x } :=
  embedding_subtype_val.t5Space

-- see Note [lower instance priority]
/-- A `T₅` space is a `T₄` space. -/
instance (priority := 100) T5Space.toNormalSpace [T5Space α] : NormalSpace α :=
  ⟨fun s t hs ht hd => separatedNhds_iff_disjoint.2 <|
    completely_normal (by rwa [hs.closure_eq]) (by rwa [ht.closure_eq])⟩
#align t5_space.to_normal_space T5Space.toNormalSpace

open SeparationQuotient

/-- The `SeparationQuotient` of a completely normal space is a T₅ space. We don't have separate
typeclasses for completely normal spaces (without T₁ assumption) and T₅ spaces, so we use the same
class for assumption and for conclusion.

One can prove this using a homeomorphism between `α` and `SeparationQuotient α`. We give an
alternative proof that works without assuming that `α` is a T₁ space. -/
instance [T5Space α] : T5Space (SeparationQuotient α) where
  completely_normal s t hd₁ hd₂ := by
    rw [← disjoint_comap_iff surjective_mk, comap_mk_nhdsSet, comap_mk_nhdsSet]
    apply T5Space.completely_normal <;> rw [← preimage_mk_closure]
    exacts [hd₁.preimage mk, hd₂.preimage mk]

end CompletelyNormal

/-- In a compact t2 space, the connected component of a point equals the intersection of all
its clopen neighbourhoods. -/
theorem connectedComponent_eq_iInter_clopen [T2Space α] [CompactSpace α] (x : α) :
    connectedComponent x = ⋂ Z : { Z : Set α // IsClopen Z ∧ x ∈ Z }, Z := by
  apply Subset.antisymm connectedComponent_subset_iInter_clopen
  -- Reduce to showing that the clopen intersection is connected.
  refine' IsPreconnected.subset_connectedComponent _ (mem_iInter.2 fun Z => Z.2.2)
  -- We do this by showing that any disjoint cover by two closed sets implies
  -- that one of these closed sets must contain our whole thing.
  -- To reduce to the case where the cover is disjoint on all of `α` we need that `s` is closed
  have hs : @IsClosed α _ (⋂ Z : { Z : Set α // IsClopen Z ∧ x ∈ Z }, Z) :=
    isClosed_iInter fun Z => Z.2.1.2
  rw [isPreconnected_iff_subset_of_fully_disjoint_closed hs]
  intro a b ha hb hab ab_disj
  haveI := @normalOfCompactT2 α _ _ _
  -- Since our space is normal, we get two larger disjoint open sets containing the disjoint
  -- closed sets. If we can show that our intersection is a subset of any of these we can then
  -- "descend" this to show that it is a subset of either a or b.
  rcases normal_separation ha hb ab_disj with ⟨u, v, hu, hv, hau, hbv, huv⟩
  obtain ⟨Z, H⟩ : ∃ Z : Set α, IsClopen Z ∧ x ∈ Z ∧ Z ⊆ u ∪ v

  /- Now we find a clopen set `Z` around `x`, contained in `u ∪ v`. We utilize the fact that
  `X \ u ∪ v` will be compact, so there must be some finite intersection of clopen neighbourhoods of
  `X` disjoint to it, but a finite intersection of clopen sets is clopen so we let this be our
  `Z`. -/
  · have H1 := (hu.union hv).isClosed_compl.isCompact.inter_iInter_nonempty
      (fun Z : { Z : Set α // IsClopen Z ∧ x ∈ Z } => Z) fun Z => Z.2.1.2
    rw [← not_disjoint_iff_nonempty_inter, imp_not_comm, not_forall] at H1
    cases' H1 (disjoint_compl_left_iff_subset.2 <| hab.trans <| union_subset_union hau hbv)
      with Zi H2
    refine' ⟨⋂ U ∈ Zi, Subtype.val U, _, _, _⟩
    · exact isClopen_biInter_finset fun Z _ => Z.2.1
    · exact mem_iInter₂.2 fun Z _ => Z.2.2
    · rwa [← disjoint_compl_left_iff_subset, disjoint_iff_inter_eq_empty,
        ← not_nonempty_iff_eq_empty]
  -- So, we get a disjoint decomposition `Z = Z ∩ u ∪ Z ∩ v` of clopen sets. The intersection of all
  -- clopen neighbourhoods will then lie in whichever of u or v x lies in and hence will be a subset
  -- of either a or b.
  · have H1 := isClopen_inter_of_disjoint_cover_clopen H.1 H.2.2 hu hv huv
    rw [union_comm] at H
    have H2 := isClopen_inter_of_disjoint_cover_clopen H.1 H.2.2 hv hu huv.symm
    by_cases hxu : x ∈ u <;> [left; right]
    -- The x ∈ u case.
    · suffices ⋂ Z : { Z : Set α // IsClopen Z ∧ x ∈ Z }, ↑Z ⊆ u
        from Disjoint.left_le_of_le_sup_right hab (huv.mono this hbv)
      · apply Subset.trans _ (inter_subset_right Z u)
        exact iInter_subset (fun Z : { Z : Set α // IsClopen Z ∧ x ∈ Z } => Z.1)
          ⟨Z ∩ u, H1, mem_inter H.2.1 hxu⟩
    -- If x ∉ u, we get x ∈ v since x ∈ u ∪ v. The rest is then like the x ∈ u case.
    · have h1 : x ∈ v :=
        (hab.trans (union_subset_union hau hbv) (mem_iInter.2 fun i => i.2.2)).resolve_left hxu
      suffices ⋂ Z : { Z : Set α // IsClopen Z ∧ x ∈ Z }, ↑Z ⊆ v
        from (huv.symm.mono this hau).left_le_of_le_sup_left hab
      · refine Subset.trans ?_ (inter_subset_right Z v)
        exact iInter_subset (fun Z : { Z : Set α // IsClopen Z ∧ x ∈ Z } => Z.1)
          ⟨Z ∩ v, H2, mem_inter H.2.1 h1⟩
#align connected_component_eq_Inter_clopen connectedComponent_eq_iInter_clopen

section Profinite

/-- A T1 space with a clopen basis is totally separated. -/
theorem totallySeparatedSpace_of_t1_of_basis_clopen [T1Space α]
    (h : IsTopologicalBasis { s : Set α | IsClopen s }) : TotallySeparatedSpace α := by
  constructor
  rintro x - y - hxy
  rcases h.mem_nhds_iff.mp (isOpen_ne.mem_nhds hxy) with ⟨U, hU, hxU, hyU⟩
  exact ⟨U, Uᶜ, hU.isOpen, hU.compl.isOpen, hxU, fun h => hyU h rfl, (union_compl_self U).superset,
    disjoint_compl_right⟩
#align totally_separated_space_of_t1_of_basis_clopen totallySeparatedSpace_of_t1_of_basis_clopen

variable [T2Space α] [CompactSpace α]

/-- A compact Hausdorff space is totally disconnected if and only if it is totally separated, this
  is also true for locally compact spaces. -/
theorem compact_t2_tot_disc_iff_tot_sep : TotallyDisconnectedSpace α ↔ TotallySeparatedSpace α := by
  refine ⟨fun h => ⟨fun x _ y _ => ?_⟩, @TotallySeparatedSpace.totallyDisconnectedSpace _ _⟩
  contrapose!
  intro hyp
  suffices x ∈ connectedComponent y by
    simpa [totallyDisconnectedSpace_iff_connectedComponent_singleton.1 h y, mem_singleton_iff]
  rw [connectedComponent_eq_iInter_clopen, mem_iInter]
  rintro ⟨w : Set α, hw : IsClopen w, hy : y ∈ w⟩
  by_contra hx
  exact hyp wᶜ w hw.2.isOpen_compl hw.1 hx hy (@isCompl_compl _ w _).symm.codisjoint.top_le
    disjoint_compl_left
#align compact_t2_tot_disc_iff_tot_sep compact_t2_tot_disc_iff_tot_sep

variable [TotallyDisconnectedSpace α]

/-- A totally disconnected compact Hausdorff space is totally separated. -/
instance : TotallySeparatedSpace α := compact_t2_tot_disc_iff_tot_sep.mp inferInstance

theorem nhds_basis_clopen (x : α) : (𝓝 x).HasBasis (fun s : Set α => x ∈ s ∧ IsClopen s) id :=
  ⟨fun U => by
    constructor
    · have hx : connectedComponent x = {x} :=
        totallyDisconnectedSpace_iff_connectedComponent_singleton.mp ‹_› x
      rw [connectedComponent_eq_iInter_clopen] at hx
      intro hU
      let N := { Z // IsClopen Z ∧ x ∈ Z }
      suffices : ∃ Z : N, Z.val ⊆ U
      · rcases this with ⟨⟨s, hs, hs'⟩, hs''⟩; exact ⟨s, ⟨hs', hs⟩, hs''⟩
      haveI : Nonempty N := ⟨⟨univ, isClopen_univ, mem_univ x⟩⟩
      have hNcl : ∀ Z : N, IsClosed Z.val := fun Z => Z.property.1.2
      have hdir : Directed Superset fun Z : N => Z.val := by
        rintro ⟨s, hs, hxs⟩ ⟨t, ht, hxt⟩
        exact ⟨⟨s ∩ t, hs.inter ht, ⟨hxs, hxt⟩⟩, inter_subset_left s t, inter_subset_right s t⟩
      have h_nhd : ∀ y ∈ ⋂ Z : N, Z.val, U ∈ 𝓝 y := fun y y_in => by
        erw [hx, mem_singleton_iff] at y_in
        rwa [y_in]
      exact exists_subset_nhds_of_compactSpace hdir hNcl h_nhd
    · rintro ⟨V, ⟨hxV, V_op, -⟩, hUV : V ⊆ U⟩
      rw [mem_nhds_iff]
      exact ⟨V, hUV, V_op, hxV⟩⟩
#align nhds_basis_clopen nhds_basis_clopen

theorem isTopologicalBasis_clopen : IsTopologicalBasis { s : Set α | IsClopen s } := by
  apply isTopologicalBasis_of_open_of_nhds fun U (hU : IsClopen U) => hU.1
  intro x U hxU U_op
  have : U ∈ 𝓝 x := IsOpen.mem_nhds U_op hxU
  rcases (nhds_basis_clopen x).mem_iff.mp this with ⟨V, ⟨hxV, hV⟩, hVU : V ⊆ U⟩
  use V
  tauto
#align is_topological_basis_clopen isTopologicalBasis_clopen

/-- Every member of an open set in a compact Hausdorff totally disconnected space
  is contained in a clopen set contained in the open set.  -/
theorem compact_exists_clopen_in_open {x : α} {U : Set α} (is_open : IsOpen U) (memU : x ∈ U) :
    ∃ V : Set α, IsClopen V ∧ x ∈ V ∧ V ⊆ U :=
  isTopologicalBasis_clopen.mem_nhds_iff.1 (is_open.mem_nhds memU)
#align compact_exists_clopen_in_open compact_exists_clopen_in_open

end Profinite

section LocallyCompact

variable {H : Type*} [TopologicalSpace H] [LocallyCompactSpace H] [T2Space H]

/-- A locally compact Hausdorff totally disconnected space has a basis with clopen elements. -/
theorem loc_compact_Haus_tot_disc_of_zero_dim [TotallyDisconnectedSpace H] :
    IsTopologicalBasis { s : Set H | IsClopen s } := by
  refine isTopologicalBasis_of_open_of_nhds (fun u hu => hu.1) fun x U memU hU => ?_
  obtain ⟨s, comp, xs, sU⟩ := exists_compact_subset hU memU
  let u : Set s := ((↑) : s → H) ⁻¹' interior s
  have u_open_in_s : IsOpen u := isOpen_interior.preimage continuous_subtype_val
  lift x to s using interior_subset xs
  haveI : CompactSpace s := isCompact_iff_compactSpace.1 comp
  obtain ⟨V : Set s, clopen_in_s, Vx, V_sub⟩ := compact_exists_clopen_in_open u_open_in_s xs
  have V_clopen : IsClopen (((↑) : s → H) '' V) := by
    refine' ⟨_, comp.isClosed.closedEmbedding_subtype_val.closed_iff_image_closed.1 clopen_in_s.2⟩
    let v : Set u := ((↑) : u → s) ⁻¹' V
    have : ((↑) : u → H) = ((↑) : s → H) ∘ ((↑) : u → s) := rfl
    have f0 : Embedding ((↑) : u → H) := embedding_subtype_val.comp embedding_subtype_val
    have f1 : OpenEmbedding ((↑) : u → H) := by
      refine' ⟨f0, _⟩
      · have : Set.range ((↑) : u → H) = interior s := by
          rw [this, Set.range_comp, Subtype.range_coe, Subtype.image_preimage_coe]
          apply Set.inter_eq_self_of_subset_left interior_subset
        rw [this]
        apply isOpen_interior
    have f2 : IsOpen v := clopen_in_s.1.preimage continuous_subtype_val
    have f3 : ((↑) : s → H) '' V = ((↑) : u → H) '' v := by
      rw [this, image_comp, Subtype.image_preimage_coe, inter_eq_self_of_subset_left V_sub]
    rw [f3]
    apply f1.isOpenMap v f2
  refine' ⟨(↑) '' V, V_clopen, by simp [Vx], Subset.trans _ sU⟩
  simp
set_option linter.uppercaseLean3 false in
#align loc_compact_Haus_tot_disc_of_zero_dim loc_compact_Haus_tot_disc_of_zero_dim

/-- A locally compact Hausdorff space is totally disconnected
  if and only if it is totally separated. -/
theorem loc_compact_t2_tot_disc_iff_tot_sep :
    TotallyDisconnectedSpace H ↔ TotallySeparatedSpace H := by
  constructor
  · intro h
    exact totallySeparatedSpace_of_t1_of_basis_clopen loc_compact_Haus_tot_disc_of_zero_dim
  apply TotallySeparatedSpace.totallyDisconnectedSpace
#align loc_compact_t2_tot_disc_iff_tot_sep loc_compact_t2_tot_disc_iff_tot_sep

end LocallyCompact

/-- `ConnectedComponents α` is Hausdorff when `α` is Hausdorff and compact -/
instance ConnectedComponents.t2 [T2Space α] [CompactSpace α] : T2Space (ConnectedComponents α) := by
  -- Proof follows that of: https://stacks.math.columbia.edu/tag/0900
  -- Fix 2 distinct connected components, with points a and b
  refine ⟨ConnectedComponents.surjective_coe.forall₂.2 fun a b ne => ?_⟩
  rw [ConnectedComponents.coe_ne_coe] at ne
  have h := connectedComponent_disjoint ne
  -- write ↑b as the intersection of all clopen subsets containing it
  rw [connectedComponent_eq_iInter_clopen b, disjoint_iff_inter_eq_empty] at h
  -- Now we show that this can be reduced to some clopen containing `↑b` being disjoint to `↑a`
  obtain ⟨U, V, hU, ha, hb, rfl⟩ : ∃ (U : Set α) (V : Set (ConnectedComponents α)),
      IsClopen U ∧ connectedComponent a ∩ U = ∅ ∧ connectedComponent b ⊆ U ∧ (↑) ⁻¹' V = U := by
    have h :=
      (isClosed_connectedComponent (α := α)).isCompact.elim_finite_subfamily_closed
        _ (fun Z : { Z : Set α // IsClopen Z ∧ b ∈ Z } => Z.2.1.2) h
    cases' h with fin_a ha
    -- This clopen and its complement will separate the connected components of `a` and `b`
    set U : Set α := ⋂ (i : { Z // IsClopen Z ∧ b ∈ Z }) (_ : i ∈ fin_a), i
    have hU : IsClopen U := isClopen_biInter_finset fun i _ => i.2.1
    exact ⟨U, (↑) '' U, hU, ha, subset_iInter₂ fun Z _ => Z.2.1.connectedComponent_subset Z.2.2,
      (connectedComponents_preimage_image U).symm ▸ hU.biUnion_connectedComponent_eq⟩
  rw [ConnectedComponents.quotientMap_coe.isClopen_preimage] at hU
  refine' ⟨Vᶜ, V, hU.compl.isOpen, hU.isOpen, _, hb mem_connectedComponent, disjoint_compl_left⟩
  exact fun h => flip Set.Nonempty.ne_empty ha ⟨a, mem_connectedComponent, h⟩
#align connected_components.t2 ConnectedComponents.t2
```
