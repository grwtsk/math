# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3ace74825f6b4be9d2757cb7e9a46fd01343ca7` · SHA-256 `25a51b029431ccd9890879cf06b75a5eb14f9eff3bdfdffb8d6c0d81bd0519c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicallyOrderedAddMultisetProdPos.Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CanonicallyOrderedAddMultisetProdPos.Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/BigOperators/Ring/Multiset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Ruben Van de Velde. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ruben Van de Velde
-/
import Mathlib.Algebra.BigOperators.Group.Multiset.Defs
import Mathlib.Algebra.Order.BigOperators.Ring.List

/-!
# Big operators on a multiset in ordered rings

This file contains the results concerning the interaction of multiset big operators with ordered
rings.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicallyOrderedAddMultisetProdPos.Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374

open Multiset

@[simp]
lemma CanonicallyOrderedAdd.multiset_prod_pos {R : Type*}
    [CommSemiring R] [PartialOrder R] [CanonicallyOrderedAdd R] [NoZeroDivisors R] [Nontrivial R]
    {m : Multiset R} : 0 < m.prod ↔ ∀ x ∈ m, 0 < x := by
  rcases m with ⟨l⟩
  rw [Multiset.quot_mk_to_coe'', Multiset.prod_coe]
  exact CanonicallyOrderedAdd.list_prod_pos

section OrderedCommSemiring

variable {α β : Type*} [CommMonoid α] [CommMonoidWithZero β] [PartialOrder β] [PosMulMono β]

theorem Multiset.le_prod_of_submultiplicative_on_pred_of_nonneg (f : α → β) (p : α → Prop)
    (h0 : ∀ a, 0 ≤ f a) (h_one : f 1 ≤ 1) (h_mul : ∀ a b, p a → p b → f (a * b) ≤ f a * f b)
    (hp_mul : ∀ a b, p a → p b → p (a * b)) (s : Multiset α) (hps : ∀ a, a ∈ s → p a) :
    f s.prod ≤ (s.map f).prod := by
  revert s
  refine Multiset.induction (by simp [h_one]) ?_
  intro a s hs hpsa
  by_cases hs0 : s = ∅
  · simp [hs0]
  · have hps : ∀ x, x ∈ s → p x := fun x hx ↦ hpsa x (mem_cons_of_mem hx)
    have hp_prod : p s.prod := prod_induction_nonempty p hp_mul hs0 hps
    rw [prod_cons, map_cons, prod_cons]
    exact (h_mul a s.prod (hpsa a (mem_cons_self a s)) hp_prod).trans
      (mul_le_mul_of_nonneg_left (hs hps) (h0 _))

theorem Multiset.le_prod_of_submultiplicative_of_nonneg (f : α → β) (h0 : ∀ a, 0 ≤ f a)
    (h_one : f 1 ≤ 1) (h_mul : ∀ a b, f (a * b) ≤ f a * f b) (s : Multiset α) :
    f s.prod ≤ (s.map f).prod :=
  le_prod_of_submultiplicative_on_pred_of_nonneg f (fun _ ↦ True) h0 h_one
    (fun x y _ _ ↦ h_mul x y) (by simp) s (by simp)

end OrderedCommSemiring
```
