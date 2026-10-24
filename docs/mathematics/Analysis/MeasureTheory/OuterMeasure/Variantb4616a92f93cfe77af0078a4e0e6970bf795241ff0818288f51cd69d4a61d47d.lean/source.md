# Complete source: GRWTSK.Analysis.MeasureTheory.OuterMeasure.Variantb4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `792e648c1a89c8606456050408522b450da6deea` · SHA-256 `b4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
