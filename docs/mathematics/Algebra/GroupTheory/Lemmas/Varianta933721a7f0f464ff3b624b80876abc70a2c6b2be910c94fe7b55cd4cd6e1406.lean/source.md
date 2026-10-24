# Complete source: GRWTSK.Algebra.GroupTheory.Lemmas.Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c63f3e75f5b173d06d6d266531e432352be50ae3` · SHA-256 `5edda0aa1f4d724480dc6f531efc4b9ee72cd6bd5e18ce349e3be3ed145bfac9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MonoidHomCoeFinsetProd.Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MonoidHomCoeFinsetProd.Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e","mathematical_subject":"Algebra.Groups","original_sha256":"c9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/Group/Finset/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Group.Even
import Mathlib.Algebra.Group.Pi.Lemmas
import Mathlib.Algebra.Group.Support

/-!
# Miscellaneous lemmas on big operators

The lemmas in this file have been moved out of
`Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean` to reduce its imports.
-/


namespace GRWTSK.Algebra.GroupTheory.MonoidHomCoeFinsetProd.Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e

variable {ι α β γ : Type*}

@[to_additive]
theorem MonoidHom.coe_finset_prod [MulOneClass β] [CommMonoid γ] (f : α → β →* γ) (s : Finset α) :
    ⇑(∏ x ∈ s, f x) = ∏ x ∈ s, ⇑(f x) :=
  map_prod (MonoidHom.coeFn β γ) _ _

/-- See also `Finset.prod_apply`, with the same conclusion but with the weaker hypothesis
`f : α → β → γ` -/
@[to_additive (attr := simp)
  "See also `Finset.sum_apply`, with the same conclusion but with the weaker hypothesis
  `f : α → β → γ`"]
theorem MonoidHom.finset_prod_apply [MulOneClass β] [CommMonoid γ] (f : α → β →* γ) (s : Finset α)
    (b : β) : (∏ x ∈ s, f x) b = ∏ x ∈ s, f x b :=
  map_prod (MonoidHom.eval b) _ _

namespace Finset

variable [CommMonoid β]

open Function in
@[to_additive]
lemma mulSupport_prod (s : Finset ι) (f : ι → α → β) :
    mulSupport (fun x ↦ ∏ i ∈ s, f i x) ⊆ ⋃ i ∈ s, mulSupport (f i) := by
  simp only [mulSupport_subset_iff', Set.mem_iUnion, not_exists, notMem_mulSupport]
  exact fun x ↦ prod_eq_one

@[to_additive]
lemma isSquare_prod {s : Finset ι} [CommMonoid α] (f : ι → α)
    (h : ∀ c ∈ s, IsSquare (f c)) : IsSquare (∏ i ∈ s, f i) := by
  rw [isSquare_iff_exists_sq]
  use (∏ (x : s), ((isSquare_iff_exists_sq _).mp (h _ x.2)).choose)
  rw [@sq, ← Finset.prod_mul_distrib, ← Finset.prod_coe_sort]
  congr
  ext i
  rw [← @sq]
  exact ((isSquare_iff_exists_sq _).mp (h _ i.2)).choose_spec

end Finset
```
