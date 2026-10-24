-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.OuterMeasureToMeasure.Variantb4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.OuterMeasureToMeasure.Variantb4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"b4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Measure/OuterMeasure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.MeasureTheory.Measure.Basic

/-!
# Constructing a measure from an outer measure

Given `m` an outer measure over `α`, we construct a measure `m.toMeasure` for a measurable space
`ms ≤ m.caratheodory`, by defining `m.toMeasure s = m s` when `MeasurableSet s`.

## Main definition

* `OuterMeasure.toMeasure`: Obtain a measure by giving an outer measure where all sets in the
  σ-algebra are Carathéodory measurable.

measure, outer measure
-/


namespace GRWTSK.Analysis.MeasureTheory.OuterMeasureToMeasure.Variantb4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d

@[expose] public section

namespace MeasureTheory

variable {α : Type*} [ms : MeasurableSpace α] {s t : Set α}

/-- Obtain a measure by giving an outer measure where all sets in the σ-algebra are
  Carathéodory measurable. -/
noncomputable def OuterMeasure.toMeasure (m : OuterMeasure α) (h : ms ≤ m.caratheodory) :
    Measure α :=
  Measure.ofMeasurable (fun s _ => m s) m.empty fun _f hf hd =>
    m.iUnion_eq_of_caratheodory (fun i => h _ (hf i)) hd

theorem le_toOuterMeasure_caratheodory (μ : Measure α) : ms ≤ μ.toOuterMeasure.caratheodory :=
  fun _s hs _t => (measure_inter_add_sdiff _ hs).symm

@[simp]
theorem toMeasure_toOuterMeasure (m : OuterMeasure α) (h : ms ≤ m.caratheodory) :
    (m.toMeasure h).toOuterMeasure = m.trim :=
  rfl

@[simp]
theorem toMeasure_apply (m : OuterMeasure α) (h : ms ≤ m.caratheodory) {s : Set α}
    (hs : MeasurableSet s) : m.toMeasure h s = m s :=
  m.trim_eq hs

theorem le_toMeasure_apply (m : OuterMeasure α) (h : ms ≤ m.caratheodory) (s : Set α) :
    m s ≤ m.toMeasure h s :=
  m.le_trim s

theorem toMeasure_apply₀ (m : OuterMeasure α) (h : ms ≤ m.caratheodory) {s : Set α}
    (hs : NullMeasurableSet s (m.toMeasure h)) : m.toMeasure h s = m s := by
  refine le_antisymm ?_ (le_toMeasure_apply _ _ _)
  rcases hs.exists_measurable_subset_ae_eq with ⟨t, hts, htm, heq⟩
  calc
    m.toMeasure h s = m.toMeasure h t := measure_congr heq.symm
    _ = m t := toMeasure_apply m h htm
    _ ≤ m s := m.mono hts

@[simp]
theorem toOuterMeasure_toMeasure {μ : Measure α} :
    μ.toOuterMeasure.toMeasure (le_toOuterMeasure_caratheodory _) = μ :=
  Measure.ext fun _s => μ.toOuterMeasure.trim_eq

@[simp]
theorem boundedBy_measure (μ : Measure α) : OuterMeasure.boundedBy μ = μ.toOuterMeasure :=
  μ.toOuterMeasure.boundedBy_eq_self

end MeasureTheory
