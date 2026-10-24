# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExactAnatomicFactorization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7435811adf3ef6d8cc94c8ca0a6b6f48844437a8` · SHA-256 `21ea90de33ed4bee7bcc6a4a73719073bbd6dca753a545a3cffcbac6155a080e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Bhavik Mehta, Arend Mellendijk.
Copyright (c) 2026 grwtsk contributors.
SPDX-License-Identifier: Apache-2.0

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Lemma 2.2. The source paper credits Bhavik
Mehta for assistance using Lean to verify parts of an earlier version.

The proof architecture for multiplicity layers is adapted from Bhavik Mehta
and Arend Mellendijk's `NiceFactorization` development in
`b-mehta/ABC-Exceptions`. This module isolates the exact prime-factorization
core: it does not yet compress the high-multiplicity layers or prove the
quantitative epsilon bounds of Lemma 2.2.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Squarefree
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset UniqueFactorizationMonoid
open scoped BigOperators

namespace ExactAnatomicFactorization

/-- The product of the primes occurring in `n` with multiplicity exactly `j`.
This is the quantity denoted `m_j` in Bernert--Browning--Lichtman--Teräväinen,
Lemma 2.2. -/
def multiplicityLayer (n j : ℕ) : ℕ :=
  ∏ p ∈ n.primeFactors with n.factorization p = j, p

@[simp]
theorem multiplicityLayer_zero (n : ℕ) : multiplicityLayer n 0 = 1 := by
  simp +contextual [multiplicityLayer, Nat.factorization_eq_zero_iff]

theorem multiplicityLayer_pos (n j : ℕ) : 0 < multiplicityLayer n j := by
  apply Finset.prod_pos
  simp only [Finset.mem_filter, Nat.mem_primeFactors, ne_eq, and_imp]
  intro p hp _ _ _
  exact hp.pos

private theorem prod_multiplicityLayer_pow_eq_self_of_cover {n : ℕ}
    (hn : n ≠ 0) {s : Finset ℕ}
    (hs : ∀ p, p.Prime → p ∣ n → n.factorization p ∈ s) :
    ∏ m ∈ s, multiplicityLayer n m ^ m = n := by
  simp_rw [multiplicityLayer]
  conv_rhs =>
    rw [← Nat.prod_factorization_pow_eq_self hn]
  simp_rw [← Finset.prod_pow]
  rw [Nat.prod_factorization_eq_prod_primeFactors]
  convert Finset.prod_fiberwise_of_maps_to
      (f := fun p ↦ p ^ n.factorization p)
      (g := n.factorization) (s := n.primeFactors) (t := s) ?_ using 1
  · apply Finset.prod_congr rfl
    intro k hk
    apply Finset.prod_congr rfl
    simp only [Finset.mem_filter, Nat.mem_primeFactors, ne_eq, and_imp]
    rintro _ _ _ _ rfl
    rfl
  · simp only [Nat.mem_primeFactors, ne_eq, and_imp]
    intro p hp hpn hn'
    exact hs p hp hpn

/-- Exact reconstruction from all nonzero multiplicity layers. -/
theorem prod_multiplicityLayer_pow_eq_self {n : ℕ} (hn : 0 < n) :
    ∏ j ∈ Finset.Icc 1 n, multiplicityLayer n j ^ j = n := by
  apply prod_multiplicityLayer_pow_eq_self_of_cover hn.ne'
  intro p hp hpn
  apply Finset.mem_Icc.mpr
  constructor
  · exact (hp.dvd_iff_one_le_factorization hn.ne').mp hpn
  · exact (Nat.factorization_lt p hn.ne').le

private theorem prime_dvd_multiplicityLayer_imp {n i p : ℕ} (hp : p.Prime) :
    p ∣ multiplicityLayer n i → n.factorization p = i := by
  rw [multiplicityLayer, Prime.dvd_finsetProd_iff hp.prime]
  simp only [Finset.mem_filter, Nat.mem_primeFactors, ne_eq]
  rintro ⟨q, ⟨⟨hq, _⟩, rfl⟩, hpq⟩
  congr
  rw [eq_comm, ← hq.dvd_iff_eq hp.ne_one]
  exact hpq

/-- Distinct multiplicity layers are coprime because no prime can occur with
two different valuations. -/
theorem multiplicityLayer_coprime (n i j : ℕ) (hij : i ≠ j) :
    Nat.Coprime (multiplicityLayer n i) (multiplicityLayer n j) := by
  apply Nat.coprime_of_dvd
  intro p hp hpi hpj
  have hi := prime_dvd_multiplicityLayer_imp (n := n) (i := i) hp hpi
  have hj := prime_dvd_multiplicityLayer_imp (n := n) (i := j) hp hpj
  exact hij (hi.symm.trans hj)

private theorem squarefree_finset_prod {ι : Type*} (f : ι → ℕ) {s : Finset ι}
    (hf : ∀ i ∈ s, Squarefree (f i))
    (h : Set.Pairwise (s : Set ι) (Function.onFun Nat.Coprime f)) :
    Squarefree (∏ i ∈ s, f i) := by
  induction s using Finset.cons_induction with
  | empty => simp
  | cons i s his ih =>
      simp only [Finset.prod_cons]
      simp only [Finset.mem_cons, forall_eq_or_imp] at hf
      rw [Finset.coe_cons,
        Set.pairwise_insert_of_symm_of_notMem (by simpa using his)] at h
      rw [Nat.squarefree_mul]
      · exact ⟨hf.1, ih hf.2 h.1⟩
      apply Nat.Coprime.prod_right
      intro j hj
      exact h.2 j hj

/-- Each multiplicity layer is squarefree: every selected prime occurs once. -/
theorem multiplicityLayer_squarefree (n i : ℕ) :
    Squarefree (multiplicityLayer n i) := by
  rw [multiplicityLayer]
  apply squarefree_finset_prod
  · simp +contextual [Finset.mem_filter, Nat.mem_primeFactors,
      Nat.Prime.prime, Prime.squarefree]
  · simp +contextual [Nat.coprime_primes, Function.onFun, Set.Pairwise]

/-- Exact radical reconstruction: forgetting all multiplicities in the
factorization of `n` is the same as multiplying the valuation layers once. -/
theorem prod_multiplicityLayer_eq_radical {n : ℕ} (hn : 0 < n) :
    ∏ j ∈ Finset.Icc 1 n, multiplicityLayer n j = radical n := by
  conv_rhs =>
    rw [← prod_multiplicityLayer_pow_eq_self hn]
  rw [radical_prod]
  · apply Finset.prod_congr rfl
    intro i hi
    have hi0 : i ≠ 0 := by
      exact Nat.ne_of_gt (Finset.mem_Icc.mp hi).1
    rw [radical_pow _ hi0]
    have h := radical_associated
      (multiplicityLayer_squarefree n i).isRadical
      (multiplicityLayer_pos n i).ne'
    exact associated_iff_eq.mp h.symm
  · intro i _ j _ hij
    apply Nat.coprime_iff_isRelPrime.mp
    apply Nat.Coprime.pow_right
    apply Nat.Coprime.pow_left
    exact multiplicityLayer_coprime n i j hij

/-- A reusable package for the exact prime-multiplicity anatomy of a positive
integer. The later epsilon-dependent compression in Lemma 2.2 is deliberately
kept out of this exact record. -/
structure Data (n : ℕ) where
  layer : ℕ → ℕ
  layer_pos : ∀ j, 0 < layer j
  pairwise_coprime : ∀ i j, i ≠ j → Nat.Coprime (layer i) (layer j)
  reconstruct : ∏ j ∈ Finset.Icc 1 n, layer j ^ j = n
  radical_reconstruct : ∏ j ∈ Finset.Icc 1 n, layer j = radical n

/-- The canonical exact anatomy supplied by the prime factorization of `n`. -/
noncomputable def canonical (n : ℕ) (hn : 0 < n) : Data n where
  layer := multiplicityLayer n
  layer_pos := multiplicityLayer_pos n
  pairwise_coprime := multiplicityLayer_coprime n
  reconstruct := prod_multiplicityLayer_pow_eq_self hn
  radical_reconstruct := prod_multiplicityLayer_eq_radical hn

@[simp]
theorem canonical_layer (n : ℕ) (hn : 0 < n) (j : ℕ) :
    (canonical n hn).layer j = multiplicityLayer n j := rfl

end ExactAnatomicFactorization

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
