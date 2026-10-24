# Complete source: GRWTSK.Algebra.LucasPrimality.Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7023e086fe3ca2f1684166b05688152c26ebda0d` · SHA-256 `1c1fb21d678700906ceb210369f834458ef24a3dfe18fedadf69b882dce346ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LucasPrimality.Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.LucasPrimality.Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/LucasPrimality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bolton Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bolton Bailey
-/
import Mathlib.Algebra.Field.ZMod
import Mathlib.RingTheory.IntegralDomain

/-!
# The Lucas test for primes

This file implements the Lucas test for primes (not to be confused with the Lucas-Lehmer test for
Mersenne primes). A number `a` witnesses that `n` is prime if `a` has order `n-1` in the
multiplicative group of integers mod `n`. This is checked by verifying that `a^(n-1) = 1 (mod n)`
and `a^d ≠ 1 (mod n)` for any divisor `d | n - 1`. This test is the basis of the Pratt primality
certificate.

## TODO
- Write a tactic that uses this theorem to generate Pratt primality certificates
- Integrate Pratt primality certificates into the norm_num primality verifier

## Implementation notes

Note that the proof for `lucas_primality` relies on analyzing the multiplicative group
modulo `p`. Despite this, the theorem still holds vacuously for `p = 0` and `p = 1`. In these
cases, we can take `q` to be any prime and see that `hd` does not hold, since `a^((p-1)/q)` reduces
to `1`.
-/



namespace GRWTSK.Algebra.LucasPrimality.Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e

/-- If `a^(p-1) = 1 mod p`, but `a^((p-1)/q) ≠ 1 mod p` for all prime factors `q` of `p-1`, then `p`
is prime. This is true because `a` has order `p-1` in the multiplicative group mod `p`, so this
group must itself have order `p-1`, which only happens when `p` is prime.
-/
theorem lucas_primality (p : ℕ) (a : ZMod p) (ha : a ^ (p - 1) = 1)
    (hd : ∀ q : ℕ, q.Prime → q ∣ p - 1 → a ^ ((p - 1) / q) ≠ 1) : p.Prime := by
  have h : p ≠ 0 ∧ p ≠ 1 := by
    constructor <;> rintro rfl <;> exact hd 2 Nat.prime_two (dvd_zero _) (pow_zero _)
  have hp1 : 1 < p := Nat.one_lt_iff_ne_zero_and_ne_one.2 h
  have : NeZero p := ⟨h.1⟩
  rw [Nat.prime_iff_card_units]
  apply (Nat.card_units_zmod_lt_sub_one hp1).antisymm
  let a' : (ZMod p)ˣ := Units.mkOfMulEqOne a _ (by rwa [← pow_succ', tsub_add_eq_add_tsub hp1])
  calc p - 1 = orderOf a := (orderOf_eq_of_pow_and_pow_div_prime (tsub_pos_of_lt hp1) ha hd).symm
    _ = orderOf a' := orderOf_injective (Units.coeHom _) Units.ext a'
    _ ≤ Fintype.card (ZMod p)ˣ := orderOf_le_card_univ

/-- If `p` is prime, then there exists an `a` such that `a^(p-1) = 1 mod p`
and `a^((p-1)/q) ≠ 1 mod p` for all prime factors `q` of `p-1`.
The multiplicative group mod `p` is cyclic, so `a` can be any generator of the group
(which must have order `p-1`).
-/
theorem reverse_lucas_primality (p : ℕ) (hP : p.Prime) :
    ∃ a : ZMod p, a ^ (p - 1) = 1 ∧ ∀ q : ℕ, q.Prime → q ∣ p - 1 → a ^ ((p - 1) / q) ≠ 1 := by
  have : Fact p.Prime := ⟨hP⟩
  obtain ⟨g, hg⟩ := IsCyclic.exists_generator (α := (ZMod p)ˣ)
  have h1 : orderOf g = p - 1 := by
    rwa [orderOf_eq_card_of_forall_mem_zpowers hg, Nat.card_eq_fintype_card,
      ← Nat.prime_iff_card_units]
  have h2 := tsub_pos_iff_lt.2 hP.one_lt
  rw [← orderOf_injective (Units.coeHom _) Units.ext _, orderOf_eq_iff h2] at h1
  refine ⟨g, h1.1, fun q hq hqd ↦ ?_⟩
  replace hq := hq.one_lt
  exact h1.2 _ (Nat.div_lt_self h2 hq) (Nat.div_pos (Nat.le_of_dvd h2 hqd) (zero_lt_one.trans hq))

/-- A number `p` is prime if and only if there exists an `a` such that
`a^(p-1) = 1 mod p` and `a^((p-1)/q) ≠ 1 mod p` for all prime factors `q` of `p-1`.
-/
theorem lucas_primality_iff (p : ℕ) : p.Prime ↔
    ∃ a : ZMod p, a ^ (p - 1) = 1 ∧ ∀ q : ℕ, q.Prime → q ∣ p - 1 → a ^ ((p - 1) / q) ≠ 1 :=
  ⟨reverse_lucas_primality p, fun ⟨a, ⟨ha, hb⟩⟩ ↦ lucas_primality p a ha hb⟩
```
