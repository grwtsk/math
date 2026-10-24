# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LocallyFinite.Variant792e190a977ec60b49fd3ab987cce0f8e778863f7de36283efa977fce54e3909

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `354031f9b3ca44bf55bc563dfd85e02c22f1c682` · SHA-256 `ff710243483898bdf4c054d0864fa58b47e18ab0d3046ebe5c99cf8114d15103`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FiniteUpperClosure.Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"edaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FiniteUpperClosure.Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54","mathematical_subject":"Algebra.OrderTheory","original_sha256":"edaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/UpperLower/LocallyFinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies, Sara Rousta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Set.Finite.Lattice
import Mathlib.Order.Interval.Finset.Defs
import Mathlib.Order.UpperLower.Closure

/-!
# Upper and lower sets in a locally finite order

In this file we characterise the interaction of `UpperSet`/`LowerSet` and `LocallyFiniteOrder`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FiniteUpperClosure.Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54

namespace Set

variable {α : Type*} [Preorder α] {s : Set α}

protected theorem Finite.upperClosure [LocallyFiniteOrderTop α] (hs : s.Finite) :
    (upperClosure s : Set α).Finite := by
  rw [coe_upperClosure]
  exact hs.biUnion fun _ _ => finite_Ici _

protected theorem Finite.lowerClosure [LocallyFiniteOrderBot α] (hs : s.Finite) :
    (lowerClosure s : Set α).Finite := by
  rw [coe_lowerClosure]
  exact hs.biUnion fun _ _ => finite_Iic _

end Set
```
