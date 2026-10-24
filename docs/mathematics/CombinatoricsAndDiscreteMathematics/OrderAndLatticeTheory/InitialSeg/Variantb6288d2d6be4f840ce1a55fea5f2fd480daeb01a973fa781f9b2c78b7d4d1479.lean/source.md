# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.InitialSeg.Variantb6288d2d6be4f840ce1a55fea5f2fd480daeb01a973fa781f9b2c78b7d4d1479

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `413586f920bafccb17093d445cb1a01ef4f5fcfd` · SHA-256 `afe70b5730184f98a70b5ad40c41aaf577690f7b786ca6bfb8bea59640368490`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.InitialSegIic.Variantef6455b7af096c475f2a2e57d0406c843cc978b0624cddb8c61ece49dc5dc0cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef6455b7af096c475f2a2e57d0406c843cc978b0624cddb8c61ece49dc5dc0cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.InitialSegIic.Variantef6455b7af096c475f2a2e57d0406c843cc978b0624cddb8c61ece49dc5dc0cc","mathematical_subject":"Algebra.OrderTheory","original_sha256":"ef6455b7af096c475f2a2e57d0406c843cc978b0624cddb8c61ece49dc5dc0cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Interval/Set/InitialSeg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Order.InitialSeg

/-!
# Intervals as initial segments

We show that `Iic` and `Iio` are respectively initial and principal segments, and that any principal
segment `f` is order isomorphic to `Iio f.top`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.InitialSegIic.Variantef6455b7af096c475f2a2e57d0406c843cc978b0624cddb8c61ece49dc5dc0cc

@[expose] public section

namespace Set

variable {α : Type*} [Preorder α] {i j : α}

set_option backward.isDefEq.respectTransparency false in
/-- `Iic j` is an initial segment. -/
@[implicit_reducible, simps]
def initialSegIic (j : α) : Iic j ≤i α where
  toFun j := j
  inj' _ _ _ := by aesop
  map_rel_iff' := by aesop
  mem_range_of_rel' x k h := by simpa using h.le.trans x.2

/-- `Iio j` is a principal segment. -/
@[implicit_reducible, simps]
def principalSegIio (j : α) : Iio j <i α where
  top := j
  toFun j := j
  inj' _ _ _ := by aesop
  map_rel_iff' := by aesop
  mem_range_iff_rel' := by aesop

@[simp]
lemma principalSegIio_apply (k : Iio j) : principalSegIio j k = k.1 :=
  rfl

@[deprecated (since := "2026-04-12")]
alias principalSegIio_toRelEmbedding := principalSegIio_apply

set_option backward.isDefEq.respectTransparency false in
/-- If `i ≤ j`, then `Iic i` is an initial segment of `Iic j`. -/
@[simps]
def initialSegIicIicOfLE (h : i ≤ j) : Iic i ≤i Iic j where
  toFun k := ⟨k, k.2.trans h⟩
  inj' _ _ _ := by aesop
  map_rel_iff' := by aesop
  mem_range_of_rel' x k h := ⟨⟨k.1, (Subtype.coe_le_coe.2 h.le).trans x.2⟩, rfl⟩

set_option backward.isDefEq.respectTransparency false in
/-- If `i ≤ j`, then `Iio i` is a principal segment of `Iic j`. -/
@[simps top]
def principalSegIioIicOfLE (h : i ≤ j) : Iio i <i Iic j where
  top := ⟨i, h⟩
  toFun k := ⟨k, k.2.le.trans h⟩
  inj' _ _ _ := by aesop
  map_rel_iff' := by aesop
  mem_range_iff_rel' := by aesop

@[simp]
lemma principalSegIioIicOfLE_apply (h : i ≤ j) (k : Iio i) :
    principalSegIioIicOfLE h k = ⟨k, k.2.le.trans h⟩ := rfl

@[deprecated (since := "2026-04-12")]
alias principalSegIioIicOfLE_toRelEmbedding := principalSegIioIicOfLE_apply

end Set

/-- If `f : α <i β` is a principal segment, this is the induced order
isomorphism `α ≃o Iio f.top`. -/
@[simps! apply_coe]
noncomputable def PrincipalSeg.orderIsoIio {α β : Type*} [PartialOrder α] [PartialOrder β]
    (f : α <i β) : α ≃o Set.Iio f.top :=
  .ofRelIsoLT f.subrelIso.symm
```
