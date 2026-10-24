# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantc91dd9575da2f0a51783c6fc8636fce73456720235a04e353dd024882d4cc2f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0230eada13b99efd1032871f00dbb2c7bffe12cc` · SHA-256 `1aeb2896ddb98814a4b0847fc4ae87a5194391e960d145e6c626449dfeb63efa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SumISup.Variant6921045cb674f76d538ebc736bfa723cdcffff0e6d3bbe9aa8dd78352d369779","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6921045cb674f76d538ebc736bfa723cdcffff0e6d3bbe9aa8dd78352d369779","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SumISup.Variant6921045cb674f76d538ebc736bfa723cdcffff0e6d3bbe9aa8dd78352d369779","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6921045cb674f76d538ebc736bfa723cdcffff0e6d3bbe9aa8dd78352d369779","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/ENat/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joachim Breitner, Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner, Yaël Dillies
-/
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.ENat.Lattice

/-!
# Sum of suprema in `ENat`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SumISup.Variant6921045cb674f76d538ebc736bfa723cdcffff0e6d3bbe9aa8dd78352d369779

assert_not_exists Field

namespace ENat

lemma sum_iSup {α ι : Type*} {s : Finset α} {f : α → ι → ℕ∞}
    (hf : ∀ i j, ∃ k, ∀ a, f a i ≤ f a k ∧ f a j ≤ f a k) :
    ∑ a ∈ s, ⨆ i, f a i = ⨆ i, ∑ a ∈ s, f a i := by
  induction' s using Finset.cons_induction with a s ha ihs
  · simp
  simp_rw [Finset.sum_cons, ihs]
  refine iSup_add_iSup fun i j ↦ (hf i j).imp fun k hk ↦ ?_
  gcongr
  exacts [(hk a).1, (hk _).2]

lemma sum_iSup_of_monotone {α ι : Type*} [Preorder ι] [IsDirected ι (· ≤ ·)] {s : Finset α}
    {f : α → ι → ℕ∞} (hf : ∀ a, Monotone (f a)) : (∑ a ∈ s, iSup (f a)) = ⨆ n, ∑ a ∈ s, f a n :=
  sum_iSup fun i j ↦ (exists_ge_ge i j).imp fun _k ⟨hi, hj⟩ a ↦ ⟨hf a hi, hf a hj⟩

end ENat
```
