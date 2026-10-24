# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeFin.Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `922eee6cc32b559c1c06e4ca5bf51ee718b3949f` · SHA-256 `8ea1ffc172b150e63df08cc9f1fe6955fc02722c1d1225e5fd01e79282d6bca2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.InfiniteSetOfPrime.Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.InfiniteSetOfPrime.Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Nat/PrimeFin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Data.Countable.Defs
import Mathlib.Data.Nat.Factors
import Mathlib.Data.Set.Finite


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.InfiniteSetOfPrime.Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab

#align_import data.nat.prime_fin from "leanprover-community/mathlib"@"d6fad0e5bf2d6f48da9175d25c3dc5706b3834ce"

/-!
# Prime numbers

This file contains some results about prime numbers which depend on finiteness of sets.
-/


namespace Nat

/-- A version of `Nat.exists_infinite_primes` using the `Set.Infinite` predicate. -/
theorem infinite_setOf_prime : { p | Prime p }.Infinite :=
  Set.infinite_of_not_bddAbove not_bddAbove_setOf_prime
#align nat.infinite_set_of_prime Nat.infinite_setOf_prime

instance Primes.infinite : Infinite Primes := infinite_setOf_prime.to_subtype

instance Primes.countable : Countable Primes := ⟨⟨coeNat.coe, coe_nat_injective⟩⟩

/-- If `a`, `b` are positive, the prime divisors of `a * b` are the union of those of `a` and `b` -/
theorem factors_mul_toFinset {a b : ℕ} (ha : a ≠ 0) (hb : b ≠ 0) :
    (a * b).factors.toFinset = a.factors.toFinset ∪ b.factors.toFinset :=
  (List.toFinset.ext fun _ => (mem_factors_mul ha hb).trans List.mem_union_iff.symm).trans <|
    List.toFinset_union _ _
#align nat.factors_mul_to_finset Nat.factors_mul_toFinset

theorem pow_succ_factors_toFinset (n k : ℕ) :
    (n ^ (k + 1)).factors.toFinset = n.factors.toFinset := by
  rcases eq_or_ne n 0 with (rfl | hn)
  · simp
  induction' k with k ih
  · simp
  · rw [pow_succ', factors_mul_toFinset hn (pow_ne_zero _ hn), ih, Finset.union_idempotent]
#align nat.pow_succ_factors_to_finset Nat.pow_succ_factors_toFinset

theorem pow_factors_toFinset (n : ℕ) {k : ℕ} (hk : k ≠ 0) :
    (n ^ k).factors.toFinset = n.factors.toFinset := by
  cases k
  · simp at hk
  rw [pow_succ_factors_toFinset]
#align nat.pow_factors_to_finset Nat.pow_factors_toFinset

/-- The only prime divisor of positive prime power `p^k` is `p` itself -/
theorem prime_pow_prime_divisor {p k : ℕ} (hk : k ≠ 0) (hp : Prime p) :
    (p ^ k).factors.toFinset = {p} := by simp [pow_factors_toFinset p hk, factors_prime hp]
#align nat.prime_pow_prime_divisor Nat.prime_pow_prime_divisor

theorem factors_mul_toFinset_of_coprime {a b : ℕ} (hab : coprime a b) :
    (a * b).factors.toFinset = a.factors.toFinset ∪ b.factors.toFinset :=
  (List.toFinset.ext <| mem_factors_mul_of_coprime hab).trans <| List.toFinset_union _ _
#align nat.factors_mul_to_finset_of_coprime Nat.factors_mul_toFinset_of_coprime

end Nat
```
