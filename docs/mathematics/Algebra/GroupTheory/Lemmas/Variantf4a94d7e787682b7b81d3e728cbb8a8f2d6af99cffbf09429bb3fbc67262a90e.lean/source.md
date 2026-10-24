# Complete source: GRWTSK.Algebra.GroupTheory.Lemmas.Variantf4a94d7e787682b7b81d3e728cbb8a8f2d6af99cffbf09429bb3fbc67262a90e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1beff38d2736d4a4947caa34e8c553d3fcbd4d47` · SHA-256 `a8c8e1063ced624d690d5d405c2f8ac95fd9e936f0ee63825c8e8cf95a93ebf0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MonoidHomCoeFinsetProd.Variant75eae4ecb2130179720710a6bdb73436dc05390719d1377bec44cb25cb02418a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75eae4ecb2130179720710a6bdb73436dc05390719d1377bec44cb25cb02418a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MonoidHomCoeFinsetProd.Variant75eae4ecb2130179720710a6bdb73436dc05390719d1377bec44cb25cb02418a","mathematical_subject":"Algebra.Groups","original_sha256":"75eae4ecb2130179720710a6bdb73436dc05390719d1377bec44cb25cb02418a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/BigOperators/Group/Finset/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

public import Mathlib.Algebra.BigOperators.Group.Finset.Basic
public import Mathlib.Algebra.Group.Even
public import Mathlib.Algebra.Group.Pi.Lemmas
public import Mathlib.Algebra.Notation.Support

/-!
# Miscellaneous lemmas on big operators

The lemmas in this file have been moved out of
`Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean` to reduce its imports.
-/


namespace GRWTSK.Algebra.GroupTheory.MonoidHomCoeFinsetProd.Variant75eae4ecb2130179720710a6bdb73436dc05390719d1377bec44cb25cb02418a

public section

variable {ι κ M N : Type*}

@[to_additive]
theorem MonoidHom.coe_finsetProd [MulOneClass M] [CommMonoid N] (f : ι → M →* N) (s : Finset ι) :
    ⇑(∏ x ∈ s, f x) = ∏ x ∈ s, ⇑(f x) :=
  map_prod (MonoidHom.coeFn M N) _ _

@[deprecated (since := "2026-04-08")]
alias AddMonoidHom.coe_finset_sum := AddMonoidHom.coe_finsetSum

@[to_additive existing, deprecated (since := "2026-04-08")]
alias MonoidHom.coe_finset_prod := MonoidHom.coe_finsetProd

/-- See also `Finset.prod_apply`, with the same conclusion but with the weaker hypothesis
`f : α → M → N` -/
@[to_additive (attr := simp)
  /-- See also `Finset.sum_apply`, with the same conclusion but with the weaker hypothesis
  `f : α → M → N` -/]
theorem MonoidHom.finsetProd_apply [MulOneClass M] [CommMonoid N] (f : ι → M →* N) (s : Finset ι)
    (b : M) : (∏ x ∈ s, f x) b = ∏ x ∈ s, f x b :=
  map_prod (MonoidHom.eval b) _ _

@[deprecated (since := "2026-04-08")]
alias AddMonoidHom.finset_sum_apply := AddMonoidHom.finsetSum_apply

@[to_additive existing, deprecated (since := "2026-04-08")]
alias MonoidHom.finset_prod_apply := MonoidHom.finsetProd_apply

namespace Finset

variable [CommMonoid M]

open Function in
@[to_additive]
lemma mulSupport_prod (s : Finset ι) (f : ι → κ → M) :
    mulSupport (fun x ↦ ∏ i ∈ s, f i x) ⊆ ⋃ i ∈ s, mulSupport (f i) := by
  simp only [mulSupport_subset_iff', Set.mem_iUnion, not_exists, notMem_mulSupport]
  exact fun x ↦ prod_eq_one

@[to_additive]
lemma isSquare_prod {s : Finset ι} (f : ι → M) (h : ∀ c ∈ s, IsSquare (f c)) :
    IsSquare (∏ i ∈ s, f i) := by
  rw [isSquare_iff_exists_sq]
  use (∏ (x : s), ((isSquare_iff_exists_sq _).mp (h _ x.2)).choose)
  rw [@sq, ← Finset.prod_mul_distrib, ← Finset.prod_coe_sort]
  congr
  ext i
  rw [← @sq]
  exact ((isSquare_iff_exists_sq _).mp (h _ i.2)).choose_spec

end Finset
```
