# Complete source: GRWTSK.Topology.GeneralTopology.BaireMeasurable.Variante638da1989d785668ea4b2952381f3ecb03b60b3e7ac57c2e2518ce841f26df0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10f1f6f2b0b559d0501ea0f036b480bc00aa794c` · SHA-256 `8b56b96ac00afe5ab7b00c598483957bbe7c54c3267f3c94753e57d72ea0cbe0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CoborderMemResidual.Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CoborderMemResidual.Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Baire/BaireMeasurable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Felix Weilacher. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Felix Weilacher
-/
module

public import Mathlib.Topology.LocallyClosed
public import Mathlib.MeasureTheory.MeasurableSpace.EventuallyMeasurable
public import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic

/-!
# Baire category and Baire measurable sets

This file defines some of the basic notions of Baire category and Baire measurable sets.

## Main definitions

First, we define the notation `=ᵇ`. This denotes eventual equality with respect to the filter of
`residual` sets in a topological space.

A set `s` in a topological space `α` is called a `BaireMeasurableSet` or said to have the
*property of Baire* if it satisfies either of the following equivalent conditions:

* There is a *Borel* set `u` such that `s =ᵇ u`. (This is our definition)
* There is an *open* set `u` such that `s =ᵇ u`. (See `BaireMeasurableSet.residual_eq_open`)

-/


namespace GRWTSK.Topology.GeneralTopology.CoborderMemResidual.Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee

@[expose] public section

variable (α : Type*) {β : Type*} [TopologicalSpace α] [TopologicalSpace β]

open Topology

/-- Notation for `=ᶠ[residual _]`. That is, eventual equality with respect to
the filter of residual sets.
In lemma names, this is called `residualEq`. -/
scoped[Topology] notation:50 f " =ᵇ " g:50 => f =ᶠ[residual _] g

section delaborators
open Lean Lean.PrettyPrinter.Delaborator

/-- Delaborator printing `Filter.EventuallyEq (residual _) f g` as `f =ᵇ g`. -/
@[app_delab Filter.EventuallyEq]
meta def delabResidualEventuallyEq : Delab :=
  whenNotPPOption getPPExplicit <| whenPPOption getPPNotation do
    let e ← SubExpr.getExpr
    guard <| e.isAppOfArity ``Filter.EventuallyEq 5
    guard <| (e.getArg! 2).isAppOfArity ``residual 2
    let f ← SubExpr.withNaryArg 3 delab
    let g ← SubExpr.withNaryArg 4 delab
    `($f =ᵇ $g)

/-- Delaborator printing `Filter.EventuallyEqSet (residual _) s t` as `s =ᵇ t`. -/
@[app_delab Filter.EventuallyEqSet]
meta def delabResidualEventuallyEqSet : Delab :=
  whenNotPPOption getPPExplicit <| whenPPOption getPPNotation do
    let e ← SubExpr.getExpr
    guard <| e.isAppOfArity ``Filter.EventuallyEqSet 4
    guard <| (e.getArg! 1).isAppOfArity ``residual 2
    let s ← SubExpr.withNaryArg 2 delab
    let t ← SubExpr.withNaryArg 3 delab
    `($s =ᵇ $t)

end delaborators

/-- Notation to say that a property of points in a topological space holds
almost everywhere in the sense of Baire category. That is, on a residual set. -/
scoped[Topology] notation3 "∀ᵇ " (...) ", " r:(scoped p => Filter.Eventually p <| residual _) => r

/-- Notation to say that a property of points in a topological space holds on a nonmeager set. -/
scoped[Topology] notation3 "∃ᵇ " (...) ", " r:(scoped p => Filter.Frequently p <| residual _) => r

variable {α}

theorem coborder_mem_residual {s : Set α} (hs : IsLocallyClosed s) : coborder s ∈ residual α :=
  residual_of_dense_open hs.isOpen_coborder dense_coborder

theorem closure_residualEq {s : Set α} (hs : IsLocallyClosed s) : closure s =ᵇ s := by
  rw [Filter.eventuallyEqSet_iff]
  filter_upwards [coborder_mem_residual hs] with x hx
  nth_rewrite 2 [← closure_inter_coborder (s := s)]
  simp [hx]

/-- We say a set is a `BaireMeasurableSet` if it differs from some Borel set by
a meager set. This forms a σ-algebra.

It is equivalent, and a more standard definition, to say that the set differs from
some *open* set by a meager set. See `BaireMeasurableSet.iff_residualEq_isOpen` -/
def BaireMeasurableSet (s : Set α) : Prop :=
  @MeasurableSet _ (eventuallyMeasurableSpace (borel _) (residual _)) s

variable {s t : Set α}

namespace BaireMeasurableSet

theorem of_mem_residual (h : s ∈ residual _) : BaireMeasurableSet s :=
  eventuallyMeasurableSet_of_mem_filter (α := α) h

theorem _root_.GRWTSK.Topology.GeneralTopology.CoborderMemResidual.Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.MeasurableSet.baireMeasurableSet [MeasurableSpace α] [BorelSpace α]
    (h : MeasurableSet s) : BaireMeasurableSet s := by
  borelize α
  exact h.eventuallyMeasurableSet

theorem _root_.GRWTSK.Topology.GeneralTopology.CoborderMemResidual.Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.IsOpen.baireMeasurableSet (h : IsOpen s) : BaireMeasurableSet s := by
  borelize α
  exact h.measurableSet.baireMeasurableSet

theorem compl (h : BaireMeasurableSet s) : BaireMeasurableSet sᶜ := MeasurableSet.compl h

theorem of_compl (h : BaireMeasurableSet sᶜ) : BaireMeasurableSet s := MeasurableSet.of_compl h

theorem _root_.GRWTSK.Topology.GeneralTopology.CoborderMemResidual.Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.IsMeagre.baireMeasurableSet (h : IsMeagre s) : BaireMeasurableSet s :=
  (of_mem_residual h).of_compl

theorem iUnion {ι : Sort*} [Countable ι] {s : ι → Set α}
    (h : ∀ i, BaireMeasurableSet (s i)) : BaireMeasurableSet (⋃ i, s i) :=
  MeasurableSet.iUnion h

theorem biUnion {ι : Type*} {s : ι → Set α} {t : Set ι} (ht : t.Countable)
    (h : ∀ i ∈ t, BaireMeasurableSet (s i)) : BaireMeasurableSet (⋃ i ∈ t, s i) :=
  MeasurableSet.biUnion ht h

theorem sUnion {s : Set (Set α)} (hs : s.Countable)
    (h : ∀ t ∈ s, BaireMeasurableSet t) : BaireMeasurableSet (⋃₀ s) :=
  MeasurableSet.sUnion hs h

theorem iInter {ι : Sort*} [Countable ι] {s : ι → Set α}
    (h : ∀ i, BaireMeasurableSet (s i)) : BaireMeasurableSet (⋂ i, s i) :=
  MeasurableSet.iInter h

theorem biInter {ι : Type*} {s : ι → Set α} {t : Set ι} (ht : t.Countable)
    (h : ∀ i ∈ t, BaireMeasurableSet (s i)) : BaireMeasurableSet (⋂ i ∈ t, s i) :=
  MeasurableSet.biInter ht h

theorem sInter {s : Set (Set α)} (hs : s.Countable)
    (h : ∀ t ∈ s, BaireMeasurableSet t) : BaireMeasurableSet (⋂₀ s) :=
  MeasurableSet.sInter hs h

theorem union (hs : BaireMeasurableSet s) (ht : BaireMeasurableSet t) :
    BaireMeasurableSet (s ∪ t) :=
  MeasurableSet.union hs ht

theorem inter (hs : BaireMeasurableSet s) (ht : BaireMeasurableSet t) :
    BaireMeasurableSet (s ∩ t) :=
  MeasurableSet.inter hs ht

theorem diff (hs : BaireMeasurableSet s) (ht : BaireMeasurableSet t) :
    BaireMeasurableSet (s \ t) :=
  MeasurableSet.diff hs ht

theorem congr (hs : BaireMeasurableSet s) (h : s =ᵇ t) : BaireMeasurableSet t :=
  EventuallyMeasurableSet.congr (α := α) hs h.symm

end BaireMeasurableSet

open Filter

/-- Any Borel set differs from some open set by a meager set. -/
theorem MeasurableSet.residualEq_isOpen [MeasurableSpace α] [BorelSpace α] (h : MeasurableSet s) :
    ∃ u : Set α, IsOpen u ∧ s =ᵇ u := by
  induction s, h using MeasurableSet.induction_on_open with
  | isOpen U hU => exact ⟨U, hU, .rfl⟩
  | compl s _ ihs =>
    obtain ⟨U, Uo, hsU⟩ := ihs
    use (closure U)ᶜ, isClosed_closure.isOpen_compl
    exact .compl <| hsU.trans <| .symm <| closure_residualEq Uo.isLocallyClosed
  | iUnion f _ _ ihf =>
    choose u uo su using ihf
    exact ⟨⋃ i, u i, isOpen_iUnion uo, .countable_iUnion su⟩

/-- Any `BaireMeasurableSet` differs from some open set by a meager set. -/
theorem BaireMeasurableSet.residualEq_isOpen (h : BaireMeasurableSet s) :
    ∃ u : Set α, (IsOpen u) ∧ s =ᵇ u := by
  borelize α
  rcases h with ⟨t, ht, hst⟩
  rcases ht.residualEq_isOpen with ⟨u, hu, htu⟩
  exact ⟨u, hu, hst.trans htu⟩

/-- A set is Baire measurable if and only if it differs from some open set by a meager set. -/
theorem BaireMeasurableSet.iff_residualEq_isOpen :
    BaireMeasurableSet s ↔ ∃ u : Set α, (IsOpen u) ∧ s =ᵇ u :=
  ⟨fun h => h.residualEq_isOpen, fun ⟨_, uo, ueq⟩ => uo.baireMeasurableSet.congr ueq.symm⟩

section Map

open Set

variable {f : α → β}

theorem tendsto_residual_of_isOpenMap (hc : Continuous f) (ho : IsOpenMap f) :
    Tendsto f (residual α) (residual β) := by
  apply le_countableGenerate_iff_of_countableInterFilter.mpr
  rintro t ⟨ht, htd⟩
  exact residual_of_dense_open (ht.preimage hc) (htd.preimage ho)

/-- The preimage of a meager set under a continuous open map is meager. -/
theorem IsMeagre.preimage_of_isOpenMap (hc : Continuous f) (ho : IsOpenMap f)
    {s : Set β} (h : IsMeagre s) : IsMeagre (f ⁻¹' s) :=
  tendsto_residual_of_isOpenMap hc ho h

/-- The preimage of a `BaireMeasurableSet` under a continuous open map is Baire measurable. -/
theorem BaireMeasurableSet.preimage (hc : Continuous f) (ho : IsOpenMap f)
    {s : Set β} (h : BaireMeasurableSet s) : BaireMeasurableSet (f ⁻¹' s) := by
  rcases h with ⟨u, hu, hsu⟩
  refine ⟨f ⁻¹' u, ?_, hsu.filter_mono <| tendsto_residual_of_isOpenMap hc ho⟩
  borelize α β
  exact hc.measurable hu

theorem Homeomorph.residual_map_eq (h : α ≃ₜ β) : (residual α).map h = residual β := by
  refine le_antisymm (tendsto_residual_of_isOpenMap h.continuous h.isOpenMap) (le_map ?_)
  simp_rw [← preimage_symm]
  exact tendsto_residual_of_isOpenMap h.symm.continuous h.symm.isOpenMap

end Map
```
