# Complete source: GRWTSK.Analysis.MeasureTheory.PreorderRestrict.Variant6a001b838b786bc65a03dc5e4dbbb6b6e5f158c95c2708f6adccb52caa32c868

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a364d46ba6c2fb7b7e6f94d62a61f86f03ff14e` · SHA-256 `96f8f93a8844d487567680ea533a0e292116a2d22b47ff4409b94e410049e89c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableRestrictLe.Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableRestrictLe.Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/MeasurableSpace/PreorderRestrict.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
import Mathlib.MeasureTheory.MeasurableSpace.Constructions
import Mathlib.Order.Restriction

/-!
# Measurability of the restriction function for functions indexed by a preorder

We prove that the map which restricts a function `f : (i : α) → X i` to elements `≤ a` is
measurable.
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableRestrictLe.Variant47f9ff5103b477e1899a54c8364fd67ce487bcce34d9c7d688eec7e10343630a

open MeasureTheory

namespace Preorder

variable {α : Type*} [Preorder α] {X : α → Type*} [∀ a, MeasurableSpace (X a)]

@[measurability, fun_prop]
theorem measurable_restrictLe (a : α) : Measurable (restrictLe (π := X) a) :=
    Set.measurable_restrict _

@[measurability, fun_prop]
theorem measurable_restrictLe₂ {a b : α} (hab : a ≤ b) : Measurable (restrictLe₂ (π := X) hab) :=
  Set.measurable_restrict₂ _

variable [LocallyFiniteOrderBot α]

@[measurability, fun_prop]
theorem measurable_frestrictLe (a : α) : Measurable (frestrictLe (π := X) a) :=
  Finset.measurable_restrict _

@[measurability, fun_prop]
theorem measurable_frestrictLe₂ {a b : α} (hab : a ≤ b) : Measurable (frestrictLe₂ (π := X) hab) :=
  Finset.measurable_restrict₂ _

end Preorder
```
