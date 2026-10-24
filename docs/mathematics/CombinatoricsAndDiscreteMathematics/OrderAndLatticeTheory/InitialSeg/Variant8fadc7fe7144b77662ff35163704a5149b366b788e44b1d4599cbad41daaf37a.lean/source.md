# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.InitialSeg.Variant8fadc7fe7144b77662ff35163704a5149b366b788e44b1d4599cbad41daaf37a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c3a58f0fdbe2b2fc8bc11fac27512e775da28d9` · SHA-256 `d9ad7fa8cef532bdcbbafb9602fcdba9080a8e61c7df0450c5ce33e314867ad1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.InitialSegIic.Variant449d0d7b34ef213f440194f3acd4ef6691955420e42aefb22bb7be42cd7fc749","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"449d0d7b34ef213f440194f3acd4ef6691955420e42aefb22bb7be42cd7fc749","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.InitialSegIic.Variant449d0d7b34ef213f440194f3acd4ef6691955420e42aefb22bb7be42cd7fc749","mathematical_subject":"Algebra.OrderTheory","original_sha256":"449d0d7b34ef213f440194f3acd4ef6691955420e42aefb22bb7be42cd7fc749","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Set/InitialSeg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Order.InitialSeg

/-!
# Intervals as initial segments

We show that `Set.Iic` and `Set.Iio` are respectively initial and
principal segments, and that any principal segment `f` is order
isomorphic to `Set.Iio f.top`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.InitialSegIic.Variant449d0d7b34ef213f440194f3acd4ef6691955420e42aefb22bb7be42cd7fc749

namespace Set

variable {α : Type*} [Preorder α]

/-- `Set.Iic j` is an initial segment. -/
@[simps]
def initialSegIic (j : α) :
    Set.Iic j ≤i α where
  toFun := fun ⟨j, hj⟩ ↦ j
  inj' _ _ _ := by aesop
  map_rel_iff' := by aesop
  mem_range_of_rel' x k h := by simpa using h.le.trans x.2

/-- `Set.Iio j` is a principal segment. -/
@[simps]
def principalSegIio (j : α) :
    Set.Iio j <i α where
  top := j
  toFun := fun ⟨j, hj⟩ ↦ j
  inj' _ _ _ := by aesop
  map_rel_iff' := by aesop
  mem_range_iff_rel' := by aesop

@[simp]
lemma principalSegIio_toRelEmbedding {j : α} (k : Iio j) :
    (Set.principalSegIio j).toRelEmbedding k = k.1 := rfl

/-- If `i ≤ j`, then `Set.Iic i` is an initial segment of `Set.Iic j`. -/
@[simps]
def initialSegIicIicOfLE {i j : α} (h : i ≤ j) :
    Set.Iic i ≤i Set.Iic j where
  toFun := fun ⟨k, hk⟩ ↦ ⟨k, hk.trans h⟩
  inj' _ _ _ := by aesop
  map_rel_iff' := by aesop
  mem_range_of_rel' x k h := ⟨⟨k.1, (Subtype.coe_le_coe.2 h.le).trans x.2⟩, rfl⟩

/-- If `i ≤ j`, then `Set.Iio i` is a principal segment of `Set.Iic j`. -/
@[simps top]
def principalSegIioIicOfLE {i j : α} (h : i ≤ j) :
    Set.Iio i <i Set.Iic j where
  top := ⟨i, h⟩
  toFun := fun ⟨k, hk⟩ ↦ ⟨k, hk.le.trans h⟩
  inj' _ _ _ := by aesop
  map_rel_iff' := by aesop
  mem_range_iff_rel' := by aesop

@[simp]
lemma principalSegIioIicOfLE_toRelEmbedding {i j : α} (h : i ≤ j)
    (k : Iio i) :
    (Set.principalSegIioIicOfLE h).toRelEmbedding k = ⟨k, k.2.le.trans h⟩ := rfl

end Set

/-- If `f : α <i β` is a principal segment, this is the induced order
isomorphism `α ≃o Set.Iio f.top`. -/
@[simps! apply_coe]
noncomputable def PrincipalSeg.orderIsoIio {α β : Type*} [PartialOrder α] [PartialOrder β]
    (f : α <i β) :
    α ≃o Set.Iio f.top where
  toEquiv := Equiv.ofBijective (f := fun a ↦ ⟨f a, f.lt_top a⟩) (by
    constructor
    · intro x y hxy
      exact f.injective (by simpa using hxy)
    · rintro ⟨z, hz⟩
      obtain ⟨x, hx⟩ := f.mem_range_of_rel_top hz
      exact ⟨x, by simpa using hx⟩)
  map_rel_iff' := by simp
```
