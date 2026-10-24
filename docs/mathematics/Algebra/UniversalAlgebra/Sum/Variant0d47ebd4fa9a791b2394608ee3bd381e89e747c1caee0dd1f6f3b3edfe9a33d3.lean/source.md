# Complete source: GRWTSK.Algebra.UniversalAlgebra.Sum.Variant0d47ebd4fa9a791b2394608ee3bd381e89e747c1caee0dd1f6f3b3edfe9a33d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55a4f21a7dfdb679e25194b754a8ac6376d58cf1` · SHA-256 `3953729986c760401823a59118bf9e563b3e2b9059834120e50ba128cb31b282`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.OneLeElimIff.Variant2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.OneLeElimIff.Variant2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Sum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Martin Dvorak. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Martin Dvorak
-/
import Mathlib.Algebra.Notation.Pi
import Mathlib.Order.Basic

/-!
# Interaction between `Sum.elim`, `≤`, and `0` or `1`

This file provides basic API for part-wise comparison of `Sum.elim` vectors against `0` or `1`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.OneLeElimIff.Variant2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255

namespace Sum

variable {α₁ α₂ β : Type*} [LE β] [One β] {v₁ : α₁ → β} {v₂ : α₂ → β}

@[to_additive]
lemma one_le_elim_iff : 1 ≤ Sum.elim v₁ v₂ ↔ 1 ≤ v₁ ∧ 1 ≤ v₂ :=
  const_le_elim_iff

@[to_additive]
lemma elim_le_one_iff : Sum.elim v₁ v₂ ≤ 1 ↔ v₁ ≤ 1 ∧ v₂ ≤ 1 :=
  elim_le_const_iff

end Sum
```
