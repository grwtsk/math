# Complete source: GRWTSK.Analysis.MeasureTheory.NCard.Variant03d8f7eb1b0477a9b1d3714b6e7f3e22e918f5f501d0ef61cadb608c62a16395

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff79bbd7b46ae6526af7604d8ee2a37337f2ba4f` · SHA-256 `873a7ee5eae6f8f72d5606d1fbcac751bed4ec0d44049ffa4e3622e7824f46ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableEncard.Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableEncard.Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/MeasurableSpace/NCard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Set.Card
import Mathlib.MeasureTheory.MeasurableSpace.Constructions

/-!
# Measurability of `Set.encard` and `Set.ncard`

In this file we prove that `Set.encard` and `Set.ncard` are measurable functions,
provided that the ambient space is countable.
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableEncard.Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16

open Set

variable {α : Type*} [Countable α]

@[measurability]
theorem measurable_encard : Measurable (Set.encard : Set α → ℕ∞) :=
  ENat.measurable_iff.2 fun _n ↦ Countable.measurableSet <| Countable.setOf_finite.mono fun _s hs ↦
    finite_of_encard_eq_coe hs

@[measurability]
theorem measurable_ncard : Measurable (Set.ncard : Set α → ℕ) :=
  Measurable.of_discrete.comp measurable_encard
```
