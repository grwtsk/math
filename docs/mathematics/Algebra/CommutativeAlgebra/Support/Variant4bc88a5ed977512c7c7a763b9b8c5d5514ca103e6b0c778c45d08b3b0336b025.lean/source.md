# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Support.Variant4bc88a5ed977512c7c7a763b9b8c5d5514ca103e6b0c778c45d08b3b0336b025

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19087d2e96845a8413370cb848d5d0e3886b5f54` · SHA-256 `b42d279ea485bac7894230d03e105f6b0b7862a5644e03fda7d243eb049fed8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.SupDegreeEqNatDegree.Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.SupDegreeEqNatDegree.Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6","mathematical_subject":"Algebra.Polynomials","original_sha256":"a269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Degree/Support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
import Mathlib.Algebra.MonoidAlgebra.Support
import Mathlib.Algebra.Polynomial.Degree.Operations

/-!
# Degree and support of univariate polynomials

## Main results
* `Polynomial.as_sum_support`: write `p : R[X]` as a sum over its support
* `Polynomial.as_sum_range`: write `p : R[X]` as a sum over `{0, ..., natDegree p}`
* `Polynomial.natDegree_mem_support_of_nonzero`: `natDegree p ∈ support p` if `p ≠ 0`
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.SupDegreeEqNatDegree.Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6

noncomputable section

open Finsupp Finset

open Polynomial

namespace Polynomial

universe u v

variable {R : Type u} {S : Type v} {a b c d : R} {n m : ℕ}

section Semiring

variable [Semiring R] {p q r : R[X]}

theorem supDegree_eq_natDegree (p : R[X]) : p.toFinsupp.supDegree id = p.natDegree := by
  obtain rfl|h := eq_or_ne p 0
  · simp
  apply WithBot.coe_injective
  rw [← AddMonoidAlgebra.supDegree_withBot_some_comp, Function.comp_id, supDegree_eq_degree,
    degree_eq_natDegree h, Nat.cast_withBot]
  rwa [support_toFinsupp, nonempty_iff_ne_empty, Ne, support_eq_empty]

theorem le_natDegree_of_mem_supp (a : ℕ) : a ∈ p.support → a ≤ natDegree p :=
  le_natDegree_of_ne_zero ∘ mem_support_iff.mp

theorem supp_subset_range (h : natDegree p < m) : p.support ⊆ Finset.range m := fun _n hn =>
  mem_range.2 <| (le_natDegree_of_mem_supp _ hn).trans_lt h

theorem supp_subset_range_natDegree_succ : p.support ⊆ Finset.range (natDegree p + 1) :=
  supp_subset_range (Nat.lt_succ_self _)

theorem as_sum_support (p : R[X]) : p = ∑ i ∈ p.support, monomial i (p.coeff i) :=
  (sum_monomial_eq p).symm

theorem as_sum_support_C_mul_X_pow (p : R[X]) : p = ∑ i ∈ p.support, C (p.coeff i) * X ^ i :=
  _root_.trans p.as_sum_support <| by simp only [C_mul_X_pow_eq_monomial]

/-- We can reexpress a sum over `p.support` as a sum over `range n`,
for any `n` satisfying `p.natDegree < n`.
-/
theorem sum_over_range' [AddCommMonoid S] (p : R[X]) {f : ℕ → R → S} (h : ∀ n, f n 0 = 0) (n : ℕ)
    (w : p.natDegree < n) : p.sum f = ∑ a ∈ range n, f a (coeff p a) := by
  rcases p with ⟨⟩
  have := supp_subset_range w
  simp only [Polynomial.sum, support, coeff, natDegree, degree] at this ⊢
  exact Finsupp.sum_of_support_subset _ this _ fun n _hn => h n

/-- We can reexpress a sum over `p.support` as a sum over `range (p.natDegree + 1)`.
-/
theorem sum_over_range [AddCommMonoid S] (p : R[X]) {f : ℕ → R → S} (h : ∀ n, f n 0 = 0) :
    p.sum f = ∑ a ∈ range (p.natDegree + 1), f a (coeff p a) :=
  sum_over_range' p h (p.natDegree + 1) (lt_add_one _)

-- TODO this is essentially a duplicate of `sum_over_range`, and should be removed.
theorem sum_fin [AddCommMonoid S] (f : ℕ → R → S) (hf : ∀ i, f i 0 = 0) {n : ℕ} {p : R[X]}
    (hn : p.degree < n) : (∑ i : Fin n, f i (p.coeff i)) = p.sum f := by
  by_cases hp : p = 0
  · rw [hp, sum_zero_index, Finset.sum_eq_zero]
    intro i _
    exact hf i
  rw [sum_over_range' _ hf n ((natDegree_lt_iff_degree_lt hp).mpr hn),
    Fin.sum_univ_eq_sum_range fun i => f i (p.coeff i)]

theorem as_sum_range' (p : R[X]) (n : ℕ) (w : p.natDegree < n) :
    p = ∑ i ∈ range n, monomial i (coeff p i) :=
  p.sum_monomial_eq.symm.trans <| p.sum_over_range' monomial_zero_right _ w

theorem as_sum_range (p : R[X]) : p = ∑ i ∈ range (p.natDegree + 1), monomial i (coeff p i) :=
  p.sum_monomial_eq.symm.trans <| p.sum_over_range <| monomial_zero_right

theorem as_sum_range_C_mul_X_pow (p : R[X]) :
    p = ∑ i ∈ range (p.natDegree + 1), C (coeff p i) * X ^ i :=
  p.as_sum_range.trans <| by simp only [C_mul_X_pow_eq_monomial]

theorem mem_support_C_mul_X_pow {n a : ℕ} {c : R} (h : a ∈ support (C c * X ^ n)) : a = n :=
  mem_singleton.1 <| support_C_mul_X_pow' n c h

theorem card_support_C_mul_X_pow_le_one {c : R} {n : ℕ} : #(support (C c * X ^ n)) ≤ 1 := by
  rw [← card_singleton n]
  apply card_le_card (support_C_mul_X_pow' n c)

theorem card_supp_le_succ_natDegree (p : R[X]) : #p.support ≤ p.natDegree + 1 := by
  rw [← Finset.card_range (p.natDegree + 1)]
  exact Finset.card_le_card supp_subset_range_natDegree_succ

theorem le_degree_of_mem_supp (a : ℕ) : a ∈ p.support → ↑a ≤ degree p :=
  le_degree_of_ne_zero ∘ mem_support_iff.mp

theorem nonempty_support_iff : p.support.Nonempty ↔ p ≠ 0 := by
  rw [Ne, nonempty_iff_ne_empty, Ne, ← support_eq_empty]

end Semiring

section Semiring

variable [Semiring R] {p q : R[X]} {ι : Type*}

theorem natDegree_mem_support_of_nonzero (H : p ≠ 0) : p.natDegree ∈ p.support := by
  rw [mem_support_iff]
  exact (not_congr leadingCoeff_eq_zero).mpr H

theorem natDegree_eq_support_max' (h : p ≠ 0) :
    p.natDegree = p.support.max' (nonempty_support_iff.mpr h) :=
  (le_max' _ _ <| natDegree_mem_support_of_nonzero h).antisymm <|
    max'_le _ _ _ le_natDegree_of_mem_supp

end Semiring

end Polynomial
```
