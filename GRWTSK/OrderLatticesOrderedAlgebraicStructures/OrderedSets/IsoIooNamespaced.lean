-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoIooNegOneOne.Variantc3aa452cf08a8f3412a86d01ab588742dda59cd82ae8c6d6e158e6bc58473a91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c3aa452cf08a8f3412a86d01ab588742dda59cd82ae8c6d6e158e6bc58473a91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.OrderIsoIooNegOneOne.Variantc3aa452cf08a8f3412a86d01ab588742dda59cd82ae8c6d6e158e6bc58473a91","mathematical_subject":"Algebra.OrderTheory","original_sha256":"c3aa452cf08a8f3412a86d01ab588742dda59cd82ae8c6d6e158e6bc58473a91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Set/IsoIoo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Order.Monotone.Odd
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Tactic.FieldSimp

/-!
# Order isomorphism between a linear ordered field and `(-1, 1)`

In this file we provide an order isomorphism `orderIsoIooNegOneOne` between the open interval
`(-1, 1)` in a linear ordered field and the whole field.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoIooNegOneOne.Variantc3aa452cf08a8f3412a86d01ab588742dda59cd82ae8c6d6e158e6bc58473a91

open Set

/-- In a linear ordered field, the whole field is order isomorphic to the open interval `(-1, 1)`.
We consider the actual implementation to be a "black box", so it is irreducible.
-/
@[irreducible]
def orderIsoIooNegOneOne (k : Type*) [Field k] [LinearOrder k] [IsStrictOrderedRing k] :
    k ≃o Ioo (-1 : k) 1 := by
  refine StrictMono.orderIsoOfRightInverse ?_ ?_ (fun x ↦ x / (1 - |↑x|)) ?_
  · refine codRestrict (fun x ↦ x / (1 + |x|)) _ fun x ↦ abs_lt.1 ?_
    have H : 0 < 1 + |x| := (abs_nonneg x).trans_lt (lt_one_add _)
    calc
      |x / (1 + |x|)| = |x| / (1 + |x|) := by rw [abs_div, abs_of_pos H]
      _ < 1 := (div_lt_one H).2 (lt_one_add _)
  · refine (strictMono_of_odd_strictMonoOn_nonneg ?_ ?_).codRestrict _
    · intro x
      simp only [abs_neg, neg_div]
    · rintro x (hx : 0 ≤ x) y (hy : 0 ≤ y) hxy
      simp [abs_of_nonneg, mul_add, mul_comm x y, div_lt_div_iff₀, hx.trans_lt (lt_one_add _),
        hy.trans_lt (lt_one_add _), *]
  · refine fun x ↦ Subtype.ext ?_
    have : 0 < 1 - |(x : k)| := sub_pos.2 (abs_lt.2 x.2)
    field_simp [abs_div, this.ne', abs_of_pos this]
