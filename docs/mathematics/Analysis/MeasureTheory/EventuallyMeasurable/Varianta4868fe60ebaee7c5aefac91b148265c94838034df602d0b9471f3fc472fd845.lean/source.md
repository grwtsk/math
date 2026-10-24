# Complete source: GRWTSK.Analysis.MeasureTheory.EventuallyMeasurable.Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49c60644c6e680d695022c0fa15cd8c96bb8cf8c` · SHA-256 `cb51e47aa5d9d2a130ff611b3b6d030a5f10f7ae5757691832cbc8faea73a537`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.EventuallyMeasurableSpace.Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.EventuallyMeasurableSpace.Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/MeasurableSpace/EventuallyMeasurable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Felix Weilacher. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Felix Weilacher
-/

import Mathlib.MeasureTheory.MeasurableSpace.Defs
import Mathlib.Order.Filter.CountableInter

/-!
# Measurability modulo a filter

In this file we consider the general notion of measurability modulo a σ-filter.
Two important instances of this construction are null-measurability with respect to a measure,
where the filter is the collection of co-null sets, and
Baire-measurability with respect to a topology,
where the filter is the collection of comeager (residual) sets.
(not to be confused with measurability with respect to the sigma algebra
of Baire sets, which is sometimes also called this.)
TODO: Implement the latter.

## Main definitions

* `EventuallyMeasurableSpace`: A `MeasurableSpace` on a type `α` consisting of sets which are
  `Filter.EventuallyEq` to a measurable set with respect to a given `CountableInterFilter` on `α`
  and `MeasurableSpace` on `α`.
* `EventuallyMeasurableSet`: A `Prop` for sets which are measurable with respect to some
  `EventuallyMeasurableSpace`.
* `EventuallyMeasurable`: A `Prop` for functions which are measurable with respect to some
  `EventuallyMeasurableSpace` on the domain.

-/


namespace GRWTSK.Analysis.MeasureTheory.EventuallyMeasurableSpace.Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b

open Filter Set MeasurableSpace

variable {α : Type*} (m : MeasurableSpace α) {s t : Set α}

/-- The `MeasurableSpace` of sets which are measurable with respect to a given σ-algebra `m`
on `α`, modulo a given σ-filter `l` on `α`. -/
def EventuallyMeasurableSpace (l : Filter α) [CountableInterFilter l] : MeasurableSpace α where
  MeasurableSet' s := ∃ t, MeasurableSet t ∧ s =ᶠ[l] t
  measurableSet_empty := ⟨∅, MeasurableSet.empty, EventuallyEq.refl _ _ ⟩
  measurableSet_compl := fun _ ⟨t, ht, hts⟩ => ⟨tᶜ, ht.compl, hts.compl⟩
  measurableSet_iUnion s hs := by
    choose t ht hts using hs
    exact ⟨⋃ i, t i, MeasurableSet.iUnion ht, EventuallyEq.countable_iUnion hts⟩

/-- We say a set `s` is an `EventuallyMeasurableSet` with respect to a given
σ-algebra `m` and σ-filter `l` if it differs from a set in `m` by a set in
the dual ideal of `l`. -/
def EventuallyMeasurableSet (l : Filter α) [CountableInterFilter l] (s : Set α) : Prop :=
  @MeasurableSet _ (EventuallyMeasurableSpace m l) s

variable {l : Filter α} [CountableInterFilter l]
variable {m}

theorem MeasurableSet.eventuallyMeasurableSet (hs : MeasurableSet s) :
    EventuallyMeasurableSet m l s :=
  ⟨s, hs, EventuallyEq.refl _ _⟩

theorem EventuallyMeasurableSpace.measurable_le : m ≤ EventuallyMeasurableSpace m l :=
  fun _ hs => hs.eventuallyMeasurableSet

theorem eventuallyMeasurableSet_of_mem_filter (hs : s ∈ l) : EventuallyMeasurableSet m l s :=
  ⟨univ, MeasurableSet.univ, eventuallyEq_univ.mpr hs⟩

/-- A set which is `EventuallyEq` to an `EventuallyMeasurableSet`
is an `EventuallyMeasurableSet`. -/
theorem EventuallyMeasurableSet.congr
    (ht : EventuallyMeasurableSet m l t) (hst : s =ᶠ[l] t) : EventuallyMeasurableSet m l s := by
  rcases ht with ⟨t', ht', htt'⟩
  exact ⟨t', ht', hst.trans htt'⟩

section instances

namespace EventuallyMeasurableSpace

instance measurableSingleton [MeasurableSingletonClass α] :
    @MeasurableSingletonClass α (EventuallyMeasurableSpace m l) :=
  @MeasurableSingletonClass.mk _ (_) <| fun x => (MeasurableSet.singleton x).eventuallyMeasurableSet

end EventuallyMeasurableSpace

end instances

section EventuallyMeasurable

open Function

variable (m l) {β γ : Type*} [MeasurableSpace β] [MeasurableSpace γ]

/-- We say a function is `EventuallyMeasurable` with respect to a given
σ-algebra `m` and σ-filter `l` if the preimage of any measurable set is equal to some
`m`-measurable set modulo `l`.
Warning: This is not always the same as being equal to some `m`-measurable function modulo `l`.
In general it is weaker. See `Measurable.eventuallyMeasurable_of_eventuallyEq`.
*TODO*: Add lemmas about when these are equivalent. -/
def EventuallyMeasurable (f : α → β) : Prop := @Measurable _ _ (EventuallyMeasurableSpace m l) _ f

variable {m l} {f g : α → β} {h : β → γ}

theorem Measurable.eventuallyMeasurable (hf : Measurable f) : EventuallyMeasurable m l f :=
  hf.le EventuallyMeasurableSpace.measurable_le

theorem Measurable.comp_eventuallyMeasurable (hh : Measurable h) (hf : EventuallyMeasurable m l f) :
    EventuallyMeasurable m l (h ∘ f) :=
  hh.comp hf

/-- A function which is `EventuallyEq` to some `EventuallyMeasurable` function
is `EventuallyMeasurable`. -/
theorem EventuallyMeasurable.congr
    (hf : EventuallyMeasurable m l f) (hgf : g =ᶠ[l] f) : EventuallyMeasurable m l g :=
  fun _ hs => EventuallyMeasurableSet.congr (hf hs)
    (hgf.preimage _)

/-- A function which is `EventuallyEq` to some `Measurable` function is `EventuallyMeasurable`. -/
theorem Measurable.eventuallyMeasurable_of_eventuallyEq
    (hf : Measurable f) (hgf : g =ᶠ[l] f) : EventuallyMeasurable m l g :=
  hf.eventuallyMeasurable.congr hgf

end EventuallyMeasurable
```
