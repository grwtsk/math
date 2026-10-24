# Complete source: GRWTSK.Analysis.MeasureTheory.Prod.Variant20f89f10079d1e32437e9cf660badbf41fda7a517b449f49adf7db81f825bd5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `796019f0c7ab44fee937ce95e30dd3047c64e081` · SHA-256 `20f89f10079d1e32437e9cf660badbf41fda7a517b449f49adf7db81f825bd5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.MeasureTheory.Function.LpSeminorm.Basic

/-!
# ℒp spaces and products

-/

public section

open scoped ENNReal

namespace MeasureTheory

variable {α β ε : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
  [TopologicalSpace ε] [ContinuousENorm ε]
  {μ : Measure α} {ν : Measure β} {p : ℝ≥0∞}

lemma MemLp.comp_fst {f : α → ε} (hf : MemLp f p μ) (ν : Measure β) [IsFiniteMeasure ν] :
    MemLp (fun x ↦ f x.1) p (μ.prod ν) := by
  have hf' : MemLp f p (ν .univ • μ) := hf.smul_measure (by simp)
  change MemLp (f ∘ Prod.fst) p (μ.prod ν)
  rw [← memLp_map_measure_iff ?_ (by fun_prop)]
  · simpa using hf'
  · simpa using hf'.aestronglyMeasurable

lemma MemLp.comp_snd {f : β → ε} (hf : MemLp f p ν) (μ : Measure α) [IsFiniteMeasure μ]
    [SFinite ν] :
    MemLp (fun x ↦ f x.2) p (μ.prod ν) := by
  have hf' : MemLp f p (μ .univ • ν) := hf.smul_measure (by simp)
  change MemLp (f ∘ Prod.snd) p (μ.prod ν)
  rw [← memLp_map_measure_iff ?_ (by fun_prop)]
  · simpa using hf'
  · simpa using hf'.aestronglyMeasurable

end MeasureTheory
```
