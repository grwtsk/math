# Complete source: GRWTSK.Analysis.MeasureTheory.Prod.Variantabfa65bd37482b4190c07a3aab26d6b64e6318c8c84626b9082e192dc4999f9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a84892a3b2db9a7ad41410e180e1806c5cca64a` · SHA-256 `d65428a21d0cf5159f43856b4de67c0554606cb20bc82c8a6ec9abadd4ac8bbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MemLpCompFst.Variant20f89f10079d1e32437e9cf660badbf41fda7a517b449f49adf7db81f825bd5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20f89f10079d1e32437e9cf660badbf41fda7a517b449f49adf7db81f825bd5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MemLpCompFst.Variant20f89f10079d1e32437e9cf660badbf41fda7a517b449f49adf7db81f825bd5f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"20f89f10079d1e32437e9cf660badbf41fda7a517b449f49adf7db81f825bd5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Function/LpSeminorm/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.MeasureTheory.MemLpCompFst.Variant20f89f10079d1e32437e9cf660badbf41fda7a517b449f49adf7db81f825bd5f

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
