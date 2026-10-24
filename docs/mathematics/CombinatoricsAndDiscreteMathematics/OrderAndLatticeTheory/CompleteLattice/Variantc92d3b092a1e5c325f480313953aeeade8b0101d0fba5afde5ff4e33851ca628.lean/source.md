# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLattice.Variantc92d3b092a1e5c325f480313953aeeade8b0101d0fba5afde5ff4e33851ca628

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46ea51d72b4e590bc44daefe18aaf4bec059917f` · SHA-256 `e62c92395a2662491bac0fb2e7b93f6f82f057666b77fbb92e576e5977129a72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CsSupInv.Variantbe68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.CsSupInv.Variantbe68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a","mathematical_subject":"Algebra.OrderTheory","original_sha256":"be68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/Pointwise/CompleteLattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Algebra.Order.Group.Pointwise.Bounds
public import Mathlib.Order.ConditionallyCompleteLattice.Indexed

/-!
# Infima/suprema in ordered monoids and groups

In this file we prove a few facts like “The infimum of `-s` is `-` the supremum of `s`”.

## TODO

`sSup (s • t) = sSup s • sSup t` and `sInf (s • t) = sInf s • sInf t` hold as well but
`CovariantClass` is currently not polymorphic enough to state it.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CsSupInv.Variantbe68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a

public section

open Set
open scoped Pointwise

variable {M : Type*}

section ConditionallyCompleteLattice
variable [ConditionallyCompleteLattice M]

section One
variable [One M]

@[to_additive (attr := simp)] lemma csSup_one : sSup (1 : Set M) = 1 := csSup_singleton _
@[to_additive (attr := simp)] lemma csInf_one : sInf (1 : Set M) = 1 := csInf_singleton _

end One

section Group
variable [Group M] [MulLeftMono M] [MulRightMono M]
  {s t : Set M}

@[to_additive]
lemma csSup_inv (hs₀ : s.Nonempty) (hs₁ : BddBelow s) : sSup s⁻¹ = (sInf s)⁻¹ := by
  rw [← image_inv_eq_inv]
  exact ((OrderIso.inv _).map_csInf' hs₀ hs₁).symm

@[to_additive]
lemma csInf_inv (hs₀ : s.Nonempty) (hs₁ : BddAbove s) : sInf s⁻¹ = (sSup s)⁻¹ := by
  rw [← image_inv_eq_inv]
  exact ((OrderIso.inv _).map_csSup' hs₀ hs₁).symm

@[to_additive]
lemma csSup_mul (hs₀ : s.Nonempty) (hs₁ : BddAbove s) (ht₀ : t.Nonempty) (ht₁ : BddAbove t) :
    sSup (s * t) = sSup s * sSup t :=
  csSup_image2_eq_csSup_csSup (fun _ => (OrderIso.mulRight _).to_galoisConnection)
    (fun _ => (OrderIso.mulLeft _).to_galoisConnection) hs₀ hs₁ ht₀ ht₁

@[to_additive]
lemma csInf_mul (hs₀ : s.Nonempty) (hs₁ : BddBelow s) (ht₀ : t.Nonempty) (ht₁ : BddBelow t) :
    sInf (s * t) = sInf s * sInf t :=
  csInf_image2_eq_csInf_csInf (fun _ => (OrderIso.mulRight _).symm.to_galoisConnection)
    (fun _ => (OrderIso.mulLeft _).symm.to_galoisConnection) hs₀ hs₁ ht₀ ht₁

@[to_additive]
lemma csSup_div (hs₀ : s.Nonempty) (hs₁ : BddAbove s) (ht₀ : t.Nonempty) (ht₁ : BddBelow t) :
    sSup (s / t) = sSup s / sInf t := by
  rw [div_eq_mul_inv, csSup_mul hs₀ hs₁ ht₀.inv ht₁.inv, csSup_inv ht₀ ht₁, div_eq_mul_inv]

@[to_additive]
lemma csInf_div (hs₀ : s.Nonempty) (hs₁ : BddBelow s) (ht₀ : t.Nonempty) (ht₁ : BddAbove t) :
    sInf (s / t) = sInf s / sSup t := by
  rw [div_eq_mul_inv, csInf_mul hs₀ hs₁ ht₀.inv ht₁.inv, csInf_inv ht₀ ht₁, div_eq_mul_inv]

end Group
end ConditionallyCompleteLattice

section CompleteLattice
variable [CompleteLattice M]

section One
variable [One M]

@[to_additive] lemma sSup_one : sSup (1 : Set M) = 1 := sSup_singleton
@[to_additive] lemma sInf_one : sInf (1 : Set M) = 1 := sInf_singleton

end One

section Group
variable [Group M] [MulLeftMono M] [MulRightMono M]
  (s t : Set M)

@[to_additive]
lemma sSup_inv (s : Set M) : sSup s⁻¹ = (sInf s)⁻¹ := by
  rw [← image_inv_eq_inv, sSup_image]
  exact ((OrderIso.inv M).map_sInf _).symm

@[to_additive]
lemma sInf_inv (s : Set M) : sInf s⁻¹ = (sSup s)⁻¹ := by
  rw [← image_inv_eq_inv, sInf_image]
  exact ((OrderIso.inv M).map_sSup _).symm

@[to_additive]
lemma sSup_mul : sSup (s * t) = sSup s * sSup t :=
  (sSup_image2_eq_sSup_sSup fun _ => (OrderIso.mulRight _).to_galoisConnection) fun _ =>
    (OrderIso.mulLeft _).to_galoisConnection

@[to_additive]
lemma sInf_mul : sInf (s * t) = sInf s * sInf t :=
  (sInf_image2_eq_sInf_sInf fun _ => (OrderIso.mulRight _).symm.to_galoisConnection) fun _ =>
    (OrderIso.mulLeft _).symm.to_galoisConnection

@[to_additive]
lemma sSup_div : sSup (s / t) = sSup s / sInf t := by simp_rw [div_eq_mul_inv, sSup_mul, sSup_inv]

@[to_additive]
lemma sInf_div : sInf (s / t) = sInf s / sSup t := by simp_rw [div_eq_mul_inv, sInf_mul, sInf_inv]

end Group
end CompleteLattice
```
