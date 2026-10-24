# Complete source: GRWTSK.Algebra.UniversalAlgebra.Center.Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dbe6e02450c81000b2be09a05e9251cb00b89fe` · SHA-256 `2a821e683c19e165e08ea229789a4818272b491afec2f4dccc358191ba739ace`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SetStarMemCenter.Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SetStarMemCenter.Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Star/Center.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Algebra.Star.Basic
import Mathlib.GroupTheory.Subsemigroup.Center
import Mathlib.GroupTheory.Subsemigroup.Centralizer
import Mathlib.Algebra.Star.Pointwise

/-! # `Set.center`, `Set.centralizer` and the `star` operation -/


namespace GRWTSK.Algebra.UniversalAlgebra.SetStarMemCenter.Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67

variable {R : Type*} [Mul R] [StarMul R] {a : R} {s : Set R}

theorem Set.star_mem_center (ha : a ∈ Set.center R) : star a ∈ Set.center R := by
  simpa only [star_mul, star_star] using fun g =>
    congr_arg star ((Set.mem_center_iff R).mp ha <| star g).symm

theorem Set.star_mem_centralizer' (h : ∀ a : R, a ∈ s → star a ∈ s) (ha : a ∈ Set.centralizer s) :
    star a ∈ Set.centralizer s := fun y hy => by simpa using congr_arg star (ha _ (h _ hy)).symm

open scoped Pointwise

theorem Set.star_mem_centralizer (ha : a ∈ Set.centralizer (s ∪ star s)) :
    star a ∈ Set.centralizer (s ∪ star s) :=
  Set.star_mem_centralizer'
    (fun _x hx => hx.elim (fun hx => Or.inr <| Set.star_mem_star.mpr hx) Or.inl) ha
```
