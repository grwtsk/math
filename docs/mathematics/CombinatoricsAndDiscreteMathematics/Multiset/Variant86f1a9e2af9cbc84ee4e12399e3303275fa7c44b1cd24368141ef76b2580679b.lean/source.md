# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7573d193619ab99aee85e0aa8113386b79e9eb70` · SHA-256 `43922726062f4f13754f4c37d395f22489ec38a08e7a29e8aa2c9c6d2f005123`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProdEqZero.Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProdEqZero.Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/Ring/Multiset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Bhavik Mehta, Eric Wieser
-/
import Mathlib.Algebra.BigOperators.Group.Multiset.Basic
import Mathlib.Algebra.BigOperators.Ring.List
import Mathlib.Data.Multiset.Antidiagonal
import Mathlib.Data.Multiset.Sections

/-! # Lemmas about `Multiset.sum` and `Multiset.prod` requiring extra algebra imports -/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProdEqZero.Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e

variable {ι α β : Type*}

namespace Multiset
section CommMonoid
variable [CommMonoid α] [HasDistribNeg α]

@[simp] lemma prod_map_neg (s : Multiset α) : (s.map Neg.neg).prod = (-1) ^ card s * s.prod :=
  Quotient.inductionOn s (by simp)

end CommMonoid

section CommMonoidWithZero
variable [CommMonoidWithZero α] {s : Multiset α}

lemma prod_eq_zero (h : (0 : α) ∈ s) : s.prod = 0 := by
  rcases Multiset.exists_cons_of_mem h with ⟨s', hs'⟩; simp [hs', Multiset.prod_cons]

variable [NoZeroDivisors α] [Nontrivial α] {s : Multiset α}

@[simp] lemma prod_eq_zero_iff : s.prod = 0 ↔ (0 : α) ∈ s :=
  Quotient.inductionOn s fun l ↦ by rw [quot_mk_to_coe, prod_coe]; exact List.prod_eq_zero_iff

lemma prod_ne_zero (h : (0 : α) ∉ s) : s.prod ≠ 0 := mt prod_eq_zero_iff.1 h

end CommMonoidWithZero

section NonUnitalNonAssocSemiring
variable [NonUnitalNonAssocSemiring α] {a : α} {s : Multiset ι} {f : ι → α}

lemma sum_map_mul_left : sum (s.map fun i ↦ a * f i) = a * sum (s.map f) :=
  Multiset.induction_on s (by simp) fun i s ih => by simp [ih, mul_add]

lemma sum_map_mul_right : sum (s.map fun i ↦ f i * a) = sum (s.map f) * a :=
  Multiset.induction_on s (by simp) fun a s ih => by simp [ih, add_mul]

end NonUnitalNonAssocSemiring

section NonUnitalSemiring
variable [NonUnitalSemiring α] {s : Multiset α} {a : α}

lemma dvd_sum : (∀ x ∈ s, a ∣ x) → a ∣ s.sum :=
  Multiset.induction_on s (fun _ ↦ dvd_zero _) fun x s ih h ↦ by
    rw [sum_cons]
    exact dvd_add (h _ (mem_cons_self _ _)) (ih fun y hy ↦ h _ <| mem_cons.2 <| Or.inr hy)

end NonUnitalSemiring

section CommSemiring
variable [CommSemiring α]

lemma prod_map_sum {s : Multiset (Multiset α)} :
    prod (s.map sum) = sum ((Sections s).map prod) :=
  Multiset.induction_on s (by simp) fun a s ih ↦ by
    simp [ih, map_bind, sum_map_mul_left, sum_map_mul_right]

lemma prod_map_add {s : Multiset ι} {f g : ι → α} :
    prod (s.map fun i ↦ f i + g i) =
      sum ((antidiagonal s).map fun p ↦ (p.1.map f).prod * (p.2.map g).prod) := by
  refine s.induction_on ?_ fun a s ih ↦ ?_
  · simp only [map_zero, prod_zero, antidiagonal_zero, map_singleton, mul_one, sum_singleton]
  · simp only [map_cons, prod_cons, ih, sum_map_mul_left.symm, add_mul, mul_left_comm (f a),
      mul_left_comm (g a), sum_map_add, antidiagonal_cons, Prod.map_fst, Prod.map_snd,
      id_eq, map_add, map_map, Function.comp_apply, mul_assoc, sum_add]
    exact add_comm _ _

end CommSemiring
end Multiset

open Multiset

namespace Commute

variable [NonUnitalNonAssocSemiring α] (s : Multiset α)

theorem multiset_sum_right (a : α) (h : ∀ b ∈ s, Commute a b) : Commute a s.sum := by
  induction s using Quotient.inductionOn
  rw [quot_mk_to_coe, sum_coe]
  exact Commute.list_sum_right _ _ h

theorem multiset_sum_left (b : α) (h : ∀ a ∈ s, Commute a b) : Commute s.sum b :=
  ((Commute.multiset_sum_right _ _) fun _ ha => (h _ ha).symm).symm

end Commute
```
