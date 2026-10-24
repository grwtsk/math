# Complete source: GRWTSK.Topology.GeneralTopology.Opens.Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf43c31a5759a186aee318cbb709473b9d843936` · SHA-256 `be312a8bda55351887da740795c9e9ba02dd5ca9fa26b97afcaa115ef87e14a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Opens.Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Opens.Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201","mathematical_subject":"Topology.GeneralTopology","original_sha256":"38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Sets/Opens.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Floris van Doorn
-/
import Mathlib.Order.Hom.CompleteLattice
import Mathlib.Topology.Bases
import Mathlib.Topology.Homeomorph
import Mathlib.Topology.ContinuousFunction.Basic
import Mathlib.Order.CompactlyGenerated
import Mathlib.Order.Copy


namespace GRWTSK.Topology.GeneralTopology.Opens.Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201

#align_import topology.sets.opens from "leanprover-community/mathlib"@"dc6c365e751e34d100e80fe6e314c3c3e0fd2988"

/-!
# Open sets

## Summary

We define the subtype of open sets in a topological space.

## Main Definitions

### Bundled open sets

- `TopologicalSpace.Opens α` is the type of open subsets of a topological space `α`.
- `TopologicalSpace.Opens.IsBasis` is a predicate saying that a set of `opens`s form a topological
  basis.
- `TopologicalSpace.Opens.comap`: preimage of an open set under a continuous map as a `FrameHom`.
- `Homeomorph.opensCongr`: order-preserving equivalence between open sets in the domain and the
  codomain of a homeomorphism.

### Bundled open neighborhoods

- `TopologicalSpace.OpenNhdsOf x` is the type of open subsets of a topological space `α` containing
  `x : α`.
- `TopologicalSpace.OpenNhdsOf.comap f x U` is the preimage of open neighborhood `U` of `f x` under
  `f : C(α, β)`.

## Main results

We define order structures on both `opens α` (`complete_structure`, `frame`) and `open_nhds_of x`
(`OrderTop`, `DistribLattice`).

## TODO

- Rename `TopologicalSpace.Opens` to `Open`?
- Port the `auto_cases` tactic version (as a plugin if the ported `auto_cases` will allow plugins).
-/


open Filter Function Order Set

open Topology

variable {ι α β γ : Type*} [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ]

namespace TopologicalSpace

variable (α)

/-- The type of open subsets of a topological space. -/
structure Opens where
  /-- The underlying set of a bundled `TopologicalSpace.Opens` object. -/
  carrier : Set α
  /-- The `TopologicalSpace.Opens.carrier _` is an open set. -/
  is_open' : IsOpen carrier
#align topological_space.opens TopologicalSpace.Opens

variable {α}

namespace Opens

instance : SetLike (Opens α) α where
  coe := Opens.carrier
  coe_injective' := fun ⟨_, _⟩ ⟨_, _⟩ _ => by congr

instance : CanLift (Set α) (Opens α) (↑) IsOpen :=
  ⟨fun s h => ⟨⟨s, h⟩, rfl⟩⟩

theorem «forall» {p : Opens α → Prop} : (∀ U, p U) ↔ ∀ (U : Set α) (hU : IsOpen U), p ⟨U, hU⟩ :=
  ⟨fun h _ _ => h _, fun h _ => h _ _⟩
#align topological_space.opens.forall TopologicalSpace.Opens.forall

@[simp] theorem carrier_eq_coe (U : Opens α) : U.1 = ↑U := rfl
#align topological_space.opens.carrier_eq_coe TopologicalSpace.Opens.carrier_eq_coe

/-- the coercion `Opens α → Set α` applied to a pair is the same as taking the first component -/
@[simp]
theorem coe_mk {U : Set α} {hU : IsOpen U} : ↑(⟨U, hU⟩ : Opens α) = U :=
  rfl
#align topological_space.opens.coe_mk TopologicalSpace.Opens.coe_mk

@[simp]
theorem mem_mk {x : α} {U : Set α} {h : IsOpen U} : x ∈ mk U h ↔ x ∈ U := Iff.rfl
#align topological_space.opens.mem_mk TopologicalSpace.Opens.mem_mk

-- porting note: removed @[simp] because LHS simplifies to `∃ x, x ∈ U`
protected theorem nonempty_coeSort {U : Opens α} : Nonempty U ↔ (U : Set α).Nonempty :=
  Set.nonempty_coe_sort
#align topological_space.opens.nonempty_coe_sort TopologicalSpace.Opens.nonempty_coeSort

-- porting note: new lemma; todo: prove it for a `SetLike`?
protected theorem nonempty_coe {U : Opens α} : (U : Set α).Nonempty ↔ ∃ x, x ∈ U :=
  Iff.rfl

@[ext] -- porting note: todo: replace with `∀ x, x ∈ U ↔ x ∈ V`
theorem ext {U V : Opens α} (h : (U : Set α) = V) : U = V :=
  SetLike.coe_injective h
#align topological_space.opens.ext TopologicalSpace.Opens.ext

-- porting note: removed @[simp], simp can prove it
theorem coe_inj {U V : Opens α} : (U : Set α) = V ↔ U = V :=
  SetLike.ext'_iff.symm
#align topological_space.opens.coe_inj TopologicalSpace.Opens.coe_inj

protected theorem isOpen (U : Opens α) : IsOpen (U : Set α) :=
  U.is_open'
#align topological_space.opens.is_open TopologicalSpace.Opens.isOpen

@[simp] theorem mk_coe (U : Opens α) : mk (↑U) U.isOpen = U := rfl
#align topological_space.opens.mk_coe TopologicalSpace.Opens.mk_coe

/-- See Note [custom simps projection]. -/
def Simps.coe (U : Opens α) : Set α := U
#align topological_space.opens.simps.coe TopologicalSpace.Opens.Simps.coe

initialize_simps_projections Opens (carrier → coe)

/-- The interior of a set, as an element of `Opens`. -/
nonrec def interior (s : Set α) : Opens α :=
  ⟨interior s, isOpen_interior⟩
#align topological_space.opens.interior TopologicalSpace.Opens.interior

theorem gc : GaloisConnection ((↑) : Opens α → Set α) interior := fun U _ =>
  ⟨fun h => interior_maximal h U.isOpen, fun h => le_trans h interior_subset⟩
#align topological_space.opens.gc TopologicalSpace.Opens.gc

/-- The galois coinsertion between sets and opens. -/
def gi : GaloisCoinsertion (↑) (@interior α _) where
  choice s hs := ⟨s, interior_eq_iff_isOpen.mp <| le_antisymm interior_subset hs⟩
  gc := gc
  u_l_le _ := interior_subset
  choice_eq _s hs := le_antisymm hs interior_subset
#align topological_space.opens.gi TopologicalSpace.Opens.gi

instance : CompleteLattice (Opens α) :=
  CompleteLattice.copy (GaloisCoinsertion.liftCompleteLattice gi)
    -- le
    (fun U V => (U : Set α) ⊆ V) rfl
    -- top
    ⟨univ, isOpen_univ⟩ (ext interior_univ.symm)
    -- bot
    ⟨∅, isOpen_empty⟩ rfl
    -- sup
    (fun U V => ⟨↑U ∪ ↑V, U.2.union V.2⟩) rfl
    -- inf
    (fun U V => ⟨↑U ∩ ↑V, U.2.inter V.2⟩)
    (funext₂ fun U V => ext (U.2.inter V.2).interior_eq.symm)
    -- sSup
    (fun S => ⟨⋃ s ∈ S, ↑s, isOpen_biUnion fun s _ => s.2⟩)
    (funext fun _ => ext sSup_image.symm)
    -- sInf
    _ rfl

@[simp]
theorem mk_inf_mk {U V : Set α} {hU : IsOpen U} {hV : IsOpen V} :
    (⟨U, hU⟩ ⊓ ⟨V, hV⟩ : Opens α) = ⟨U ⊓ V, IsOpen.inter hU hV⟩ :=
  rfl
#align topological_space.opens.mk_inf_mk TopologicalSpace.Opens.mk_inf_mk

@[simp, norm_cast]
theorem coe_inf (s t : Opens α) : (↑(s ⊓ t) : Set α) = ↑s ∩ ↑t :=
  rfl
#align topological_space.opens.coe_inf TopologicalSpace.Opens.coe_inf

@[simp, norm_cast]
theorem coe_sup (s t : Opens α) : (↑(s ⊔ t) : Set α) = ↑s ∪ ↑t :=
  rfl
#align topological_space.opens.coe_sup TopologicalSpace.Opens.coe_sup

@[simp, norm_cast]
theorem coe_bot : ((⊥ : Opens α) : Set α) = ∅ :=
  rfl
#align topological_space.opens.coe_bot TopologicalSpace.Opens.coe_bot

-- porting note: new lemma
@[simp, norm_cast]
theorem coe_eq_empty {U : Opens α} : (U : Set α) = ∅ ↔ U = ⊥ :=
  SetLike.coe_injective.eq_iff' rfl

@[simp, norm_cast]
theorem coe_top : ((⊤ : Opens α) : Set α) = Set.univ :=
  rfl
#align topological_space.opens.coe_top TopologicalSpace.Opens.coe_top

-- porting note: new lemma
@[simp, norm_cast]
theorem coe_eq_univ {U : Opens α} : (U : Set α) = univ ↔ U = ⊤ :=
  SetLike.coe_injective.eq_iff' rfl

@[simp, norm_cast]
theorem coe_sSup {S : Set (Opens α)} : (↑(sSup S) : Set α) = ⋃ i ∈ S, ↑i :=
  rfl
#align topological_space.opens.coe_Sup TopologicalSpace.Opens.coe_sSup

@[simp, norm_cast]
theorem coe_finset_sup (f : ι → Opens α) (s : Finset ι) : (↑(s.sup f) : Set α) = s.sup ((↑) ∘ f) :=
  map_finset_sup (⟨⟨(↑), coe_sup⟩, coe_bot⟩ : SupBotHom (Opens α) (Set α)) _ _
#align topological_space.opens.coe_finset_sup TopologicalSpace.Opens.coe_finset_sup

@[simp, norm_cast]
theorem coe_finset_inf (f : ι → Opens α) (s : Finset ι) : (↑(s.inf f) : Set α) = s.inf ((↑) ∘ f) :=
  map_finset_inf (⟨⟨(↑), coe_inf⟩, coe_top⟩ : InfTopHom (Opens α) (Set α)) _ _
#align topological_space.opens.coe_finset_inf TopologicalSpace.Opens.coe_finset_inf

instance : Inhabited (Opens α) := ⟨⊥⟩

-- porting note: new instance
instance [IsEmpty α] : Unique (Opens α) where
  uniq _ := ext <| Subsingleton.elim _ _

-- porting note: new instance
instance [Nonempty α] : Nontrivial (Opens α) where
  exists_pair_ne := ⟨⊥, ⊤, mt coe_inj.2 empty_ne_univ⟩

@[simp, norm_cast]
theorem coe_iSup {ι} (s : ι → Opens α) : ((⨆ i, s i : Opens α) : Set α) = ⋃ i, s i := by
  simp [iSup]
#align topological_space.opens.coe_supr TopologicalSpace.Opens.coe_iSup

theorem iSup_def {ι} (s : ι → Opens α) : ⨆ i, s i = ⟨⋃ i, s i, isOpen_iUnion fun i => (s i).2⟩ :=
  ext <| coe_iSup s
#align topological_space.opens.supr_def TopologicalSpace.Opens.iSup_def

@[simp]
theorem iSup_mk {ι} (s : ι → Set α) (h : ∀ i, IsOpen (s i)) :
    (⨆ i, ⟨s i, h i⟩ : Opens α) = ⟨⋃ i, s i, isOpen_iUnion h⟩ :=
  iSup_def _
#align topological_space.opens.supr_mk TopologicalSpace.Opens.iSup_mk

@[simp]
theorem mem_iSup {ι} {x : α} {s : ι → Opens α} : x ∈ iSup s ↔ ∃ i, x ∈ s i := by
  rw [← SetLike.mem_coe]
  simp
#align topological_space.opens.mem_supr TopologicalSpace.Opens.mem_iSup

@[simp]
theorem mem_sSup {Us : Set (Opens α)} {x : α} : x ∈ sSup Us ↔ ∃ u ∈ Us, x ∈ u := by
  simp_rw [sSup_eq_iSup, mem_iSup, exists_prop]
#align topological_space.opens.mem_Sup TopologicalSpace.Opens.mem_sSup

instance : Frame (Opens α) :=
  { inferInstanceAs (CompleteLattice (Opens α)) with
    sSup := sSup
    inf_sSup_le_iSup_inf := fun a s =>
      (ext <| by simp only [coe_inf, coe_iSup, coe_sSup, Set.inter_iUnion₂]).le }

theorem openEmbedding_of_le {U V : Opens α} (i : U ≤ V) :
    OpenEmbedding (Set.inclusion $ SetLike.coe_subset_coe.2 i) :=
  { toEmbedding := embedding_inclusion i
    open_range := by
      rw [Set.range_inclusion i]
      exact U.isOpen.preimage continuous_subtype_val }
#align topological_space.opens.open_embedding_of_le TopologicalSpace.Opens.openEmbedding_of_le

theorem not_nonempty_iff_eq_bot (U : Opens α) : ¬Set.Nonempty (U : Set α) ↔ U = ⊥ := by
  rw [← coe_inj, coe_bot, ← Set.not_nonempty_iff_eq_empty]
#align topological_space.opens.not_nonempty_iff_eq_bot TopologicalSpace.Opens.not_nonempty_iff_eq_bot

theorem ne_bot_iff_nonempty (U : Opens α) : U ≠ ⊥ ↔ Set.Nonempty (U : Set α) := by
  rw [Ne.def, ← not_nonempty_iff_eq_bot, not_not]
#align topological_space.opens.ne_bot_iff_nonempty TopologicalSpace.Opens.ne_bot_iff_nonempty

/-- An open set in the indiscrete topology is either empty or the whole space. -/
theorem eq_bot_or_top {α} [t : TopologicalSpace α] (h : t = ⊤) (U : Opens α) : U = ⊥ ∨ U = ⊤ := by
  subst h; letI : TopologicalSpace α := ⊤
  rw [← coe_eq_empty, ← coe_eq_univ, ← isOpen_top_iff]
  exact U.2
#align topological_space.opens.eq_bot_or_top TopologicalSpace.Opens.eq_bot_or_top

-- porting note: new instance
instance [Nonempty α] [Subsingleton α] : IsSimpleOrder (Opens α) where
  eq_bot_or_eq_top := eq_bot_or_top <| Subsingleton.elim _ _

/-- A set of `opens α` is a basis if the set of corresponding sets is a topological basis. -/
def IsBasis (B : Set (Opens α)) : Prop :=
  IsTopologicalBasis (((↑) : _ → Set α) '' B)
#align topological_space.opens.is_basis TopologicalSpace.Opens.IsBasis

theorem isBasis_iff_nbhd {B : Set (Opens α)} :
    IsBasis B ↔ ∀ {U : Opens α} {x}, x ∈ U → ∃ U' ∈ B, x ∈ U' ∧ U' ≤ U := by
  constructor <;> intro h
  · rintro ⟨sU, hU⟩ x hx
    rcases h.mem_nhds_iff.mp (IsOpen.mem_nhds hU hx) with ⟨sV, ⟨⟨V, H₁, H₂⟩, hsV⟩⟩
    refine' ⟨V, H₁, _⟩
    cases V
    dsimp at H₂
    subst H₂
    exact hsV
  · refine' isTopologicalBasis_of_open_of_nhds _ _
    · rintro sU ⟨U, -, rfl⟩
      exact U.2
    · intro x sU hx hsU
      rcases @h ⟨sU, hsU⟩ x hx with ⟨V, hV, H⟩
      exact ⟨V, ⟨V, hV, rfl⟩, H⟩
#align topological_space.opens.is_basis_iff_nbhd TopologicalSpace.Opens.isBasis_iff_nbhd

theorem isBasis_iff_cover {B : Set (Opens α)} :
    IsBasis B ↔ ∀ U : Opens α, ∃ Us, Us ⊆ B ∧ U = sSup Us := by
  constructor
  · intro hB U
    refine ⟨{ V : Opens α | V ∈ B ∧ V ≤ U }, fun U hU => hU.left, ext ?_⟩
    rw [coe_sSup, hB.open_eq_sUnion' U.isOpen]
    simp_rw [sUnion_eq_biUnion, iUnion, mem_setOf_eq, iSup_and, iSup_image]
    rfl
  · intro h
    rw [isBasis_iff_nbhd]
    intro U x hx
    rcases h U with ⟨Us, hUs, rfl⟩
    rcases mem_sSup.1 hx with ⟨U, Us, xU⟩
    exact ⟨U, hUs Us, xU, le_sSup Us⟩
#align topological_space.opens.is_basis_iff_cover TopologicalSpace.Opens.isBasis_iff_cover

/-- If `α` has a basis consisting of compact opens, then an open set in `α` is compact open iff
  it is a finite union of some elements in the basis -/
theorem IsBasis.isCompact_open_iff_eq_finite_iUnion {ι : Type*} (b : ι → Opens α)
    (hb : IsBasis (Set.range b)) (hb' : ∀ i, IsCompact (b i : Set α)) (U : Set α) :
    IsCompact U ∧ IsOpen U ↔ ∃ s : Set ι, s.Finite ∧ U = ⋃ i ∈ s, b i := by
  apply isCompact_open_iff_eq_finite_iUnion_of_isTopologicalBasis fun i : ι => (b i).1
  · convert (config := {transparency := .default}) hb
    ext
    simp
  · exact hb'
#align topological_space.opens.is_basis.is_compact_open_iff_eq_finite_Union TopologicalSpace.Opens.IsBasis.isCompact_open_iff_eq_finite_iUnion

@[simp]
theorem isCompactElement_iff (s : Opens α) :
    CompleteLattice.IsCompactElement s ↔ IsCompact (s : Set α) := by
  rw [isCompact_iff_finite_subcover, CompleteLattice.isCompactElement_iff]
  refine' ⟨_, fun H ι U hU => _⟩
  · introv H hU hU'
    obtain ⟨t, ht⟩ := H ι (fun i => ⟨U i, hU i⟩) (by simpa)
    refine' ⟨t, Set.Subset.trans ht _⟩
    rw [coe_finset_sup, Finset.sup_eq_iSup]
    rfl
  · obtain ⟨t, ht⟩ :=
      H (fun i => U i) (fun i => (U i).isOpen) (by simpa using show (s : Set α) ⊆ ↑(iSup U) from hU)
    refine' ⟨t, Set.Subset.trans ht _⟩
    simp only [Set.iUnion_subset_iff]
    show ∀ i ∈ t, U i ≤ t.sup U
    exact fun i => Finset.le_sup
#align topological_space.opens.is_compact_element_iff TopologicalSpace.Opens.isCompactElement_iff

/-- The preimage of an open set, as an open set. -/
def comap (f : C(α, β)) : FrameHom (Opens β) (Opens α) where
  toFun s := ⟨f ⁻¹' s, s.2.preimage f.continuous⟩
  map_sSup' s := ext <| by simp only [coe_sSup, preimage_iUnion, biUnion_image, coe_mk]
  map_inf' a b := rfl
  map_top' := rfl
#align topological_space.opens.comap TopologicalSpace.Opens.comap

@[simp]
theorem comap_id : comap (ContinuousMap.id α) = FrameHom.id _ :=
  FrameHom.ext fun _ => ext rfl
#align topological_space.opens.comap_id TopologicalSpace.Opens.comap_id

theorem comap_mono (f : C(α, β)) {s t : Opens β} (h : s ≤ t) : comap f s ≤ comap f t :=
  OrderHomClass.mono (comap f) h
#align topological_space.opens.comap_mono TopologicalSpace.Opens.comap_mono

@[simp]
theorem coe_comap (f : C(α, β)) (U : Opens β) : ↑(comap f U) = f ⁻¹' U :=
  rfl
#align topological_space.opens.coe_comap TopologicalSpace.Opens.coe_comap

protected theorem comap_comp (g : C(β, γ)) (f : C(α, β)) :
    comap (g.comp f) = (comap f).comp (comap g) :=
  rfl
#align topological_space.opens.comap_comp TopologicalSpace.Opens.comap_comp

protected theorem comap_comap (g : C(β, γ)) (f : C(α, β)) (U : Opens γ) :
    comap f (comap g U) = comap (g.comp f) U :=
  rfl
#align topological_space.opens.comap_comap TopologicalSpace.Opens.comap_comap

theorem comap_injective [T0Space β] : Injective (comap : C(α, β) → FrameHom (Opens β) (Opens α)) :=
  fun f g h =>
  ContinuousMap.ext fun a =>
    Inseparable.eq <|
      inseparable_iff_forall_open.2 fun s hs =>
        have : comap f ⟨s, hs⟩ = comap g ⟨s, hs⟩ := FunLike.congr_fun h ⟨_, hs⟩
        show a ∈ f ⁻¹' s ↔ a ∈ g ⁻¹' s from Set.ext_iff.1 (coe_inj.2 this) a
#align topological_space.opens.comap_injective TopologicalSpace.Opens.comap_injective

/-- A homeomorphism induces an order-preserving equivalence on open sets, by taking comaps. -/
@[simps (config := { fullyApplied := false }) apply]
def _root_.GRWTSK.Topology.GeneralTopology.Opens.Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.Homeomorph.opensCongr (f : α ≃ₜ β) : Opens α ≃o Opens β where
  toFun := Opens.comap f.symm.toContinuousMap
  invFun := Opens.comap f.toContinuousMap
  left_inv := fun U => ext <| f.toEquiv.preimage_symm_preimage _
  right_inv := fun U => ext <| f.toEquiv.symm_preimage_preimage _
  map_rel_iff' := by
    simp only [← SetLike.coe_subset_coe]; exact f.symm.surjective.preimage_subset_preimage_iff
#align homeomorph.opens_congr Homeomorph.opensCongr

@[simp]
theorem _root_.GRWTSK.Topology.GeneralTopology.Opens.Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.Homeomorph.opensCongr_symm (f : α ≃ₜ β) : f.opensCongr.symm = f.symm.opensCongr :=
  rfl
#align homeomorph.opens_congr_symm Homeomorph.opensCongr_symm

instance [Finite α] : Finite (Opens α) :=
  Finite.of_injective _ SetLike.coe_injective

end Opens

/-- The open neighborhoods of a point. See also `Opens` or `nhds`. -/
structure OpenNhdsOf (x : α) extends Opens α where
  /-- The point `x` belongs to every `U : TopologicalSpace.OpenNhdsOf x`. -/
  mem' : x ∈ carrier
#align topological_space.open_nhds_of TopologicalSpace.OpenNhdsOf

namespace OpenNhdsOf

variable {x : α}

theorem toOpens_injective : Injective (toOpens : OpenNhdsOf x → Opens α)
  | ⟨_, _⟩, ⟨_, _⟩, rfl => rfl
#align topological_space.open_nhds_of.to_opens_injective TopologicalSpace.OpenNhdsOf.toOpens_injective

instance : SetLike (OpenNhdsOf x) α where
  coe U := U.1
  coe_injective' := SetLike.coe_injective.comp toOpens_injective

instance canLiftSet : CanLift (Set α) (OpenNhdsOf x) (↑) fun s => IsOpen s ∧ x ∈ s :=
  ⟨fun s hs => ⟨⟨⟨s, hs.1⟩, hs.2⟩, rfl⟩⟩
#align topological_space.open_nhds_of.can_lift_set TopologicalSpace.OpenNhdsOf.canLiftSet

protected theorem mem (U : OpenNhdsOf x) : x ∈ U :=
  U.mem'
#align topological_space.open_nhds_of.mem TopologicalSpace.OpenNhdsOf.mem

protected theorem isOpen (U : OpenNhdsOf x) : IsOpen (U : Set α) :=
  U.is_open'
#align topological_space.open_nhds_of.is_open TopologicalSpace.OpenNhdsOf.isOpen

instance : OrderTop (OpenNhdsOf x) where
  top := ⟨⊤, Set.mem_univ _⟩
  le_top _ := subset_univ _

instance : Inhabited (OpenNhdsOf x) := ⟨⊤⟩
instance : Inf (OpenNhdsOf x) := ⟨fun U V => ⟨U.1 ⊓ V.1, U.2, V.2⟩⟩
instance : Sup (OpenNhdsOf x) := ⟨fun U V => ⟨U.1 ⊔ V.1, Or.inl U.2⟩⟩

-- porting note: new instance
instance [Subsingleton α] : Unique (OpenNhdsOf x) where
  uniq U := SetLike.ext' <| Subsingleton.eq_univ_of_nonempty ⟨x, U.mem⟩

instance : DistribLattice (OpenNhdsOf x) :=
  toOpens_injective.distribLattice _ (fun _ _ => rfl) fun _ _ => rfl

theorem basis_nhds : (𝓝 x).HasBasis (fun _ : OpenNhdsOf x => True) (↑) :=
  (nhds_basis_opens x).to_hasBasis (fun U hU => ⟨⟨⟨U, hU.2⟩, hU.1⟩, trivial, Subset.rfl⟩) fun U _ =>
    ⟨U, ⟨⟨U.mem, U.isOpen⟩, Subset.rfl⟩⟩
#align topological_space.open_nhds_of.basis_nhds TopologicalSpace.OpenNhdsOf.basis_nhds

/-- Preimage of an open neighborhood of `f x` under a continuous map `f` as a `LatticeHom`. -/
def comap (f : C(α, β)) (x : α) : LatticeHom (OpenNhdsOf (f x)) (OpenNhdsOf x) where
  toFun U := ⟨Opens.comap f U.1, U.mem⟩
  map_sup' _ _ := rfl
  map_inf' _ _ := rfl
#align topological_space.open_nhds_of.comap TopologicalSpace.OpenNhdsOf.comap

end OpenNhdsOf

end TopologicalSpace

-- porting note: TODO: once we port `auto_cases`, port this
-- namespace Tactic

-- namespace AutoCases

-- /-- Find an `auto_cases_tac` which matches `TopologicalSpace.Opens`. -/
-- unsafe def opens_find_tac : expr → Option auto_cases_tac
--   | q(TopologicalSpace.Opens _) => tac_cases
--   | _ => none
-- #align tactic.auto_cases.opens_find_tac tactic.auto_cases.opens_find_tac

-- end AutoCases

-- /-- A version of `tactic.auto_cases` that works for `TopologicalSpace.Opens`. -/
-- @[hint_tactic]
-- unsafe def auto_cases_opens : tactic String :=
--   auto_cases tactic.auto_cases.opens_find_tac
-- #align tactic.auto_cases_opens tactic.auto_cases_opens

-- end Tactic
```
