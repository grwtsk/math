# Complete source: GRWTSK.Analysis.MeasureTheory.CompNotation.Variantf265f348082660b11e78af34e59562278deb6d525fbcca89a2c8793e8cdb70d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `368882fa0186841b6b319c1d9a590571cef7cdcc` · SHA-256 `3d733a17c618d8eb8da068d63791bc6b0c6c8a4315bf3eac0ff49dbeb6e1a617`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.CompApplyUniv.Variant2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.CompApplyUniv.Variant2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/Kernel/Composition/CompNotation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne, Lorenzo Luccioli
-/
import Mathlib.Probability.Kernel.Basic

/-!
# Notation for the compostition of a measure and a kernel

This operation, for which we introduce the notation `∘ₘ`, takes `μ : Measure α` and
`κ : Kernel α β` and creates `κ ∘ₘ μ : Measure β`. The integral of a function against `κ ∘ₘ μ` is
`∫⁻ x, f x ∂(κ ∘ₘ μ) = ∫⁻ a, ∫⁻ b, f b ∂(κ a) ∂μ`.

This file does not define composition but only introduces notation for
`MeasureTheory.Measure.bind μ κ`.

## Notations

* `κ ∘ₘ μ = MeasureTheory.Measure.bind μ κ`, for `κ` a kernel.
-/

/- This file is only for lemmas that are direct specializations of `Measure.bind` to kernels,
anything more involved should go elsewhere (for example the `MeasureComp` file). -/

namespace GRWTSK.Analysis.MeasureTheory.CompApplyUniv.Variant2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a

assert_not_exists ProbabilityTheory.Kernel.compProd

open ProbabilityTheory

namespace MeasureTheory.Measure

variable {α β : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
  {μ : Measure α} {κ : Kernel α β}

/-- Composition of a measure and a kernel.

Notation for `MeasureTheory.Measure.bind` -/
scoped[ProbabilityTheory] notation:100 κ:101 " ∘ₘ " μ:100 => MeasureTheory.Measure.bind μ κ

@[simp]
lemma comp_apply_univ [IsMarkovKernel κ] : (κ ∘ₘ μ) Set.univ = μ Set.univ := by
  simp [bind_apply .univ κ.aemeasurable]

lemma deterministic_comp_eq_map {f : α → β} (hf : Measurable f) :
    Kernel.deterministic f hf ∘ₘ μ = μ.map f :=
  Measure.bind_dirac_eq_map μ hf

@[simp]
lemma id_comp : Kernel.id ∘ₘ μ = μ := by rw [Kernel.id, deterministic_comp_eq_map, Measure.map_id]

lemma swap_comp {μ : Measure (α × β)} : (Kernel.swap α β) ∘ₘ μ = μ.map Prod.swap :=
  deterministic_comp_eq_map measurable_swap

@[simp]
lemma const_comp {ν : Measure β} : (Kernel.const α ν) ∘ₘ μ = μ Set.univ • ν := μ.bind_const

end MeasureTheory.Measure
```
