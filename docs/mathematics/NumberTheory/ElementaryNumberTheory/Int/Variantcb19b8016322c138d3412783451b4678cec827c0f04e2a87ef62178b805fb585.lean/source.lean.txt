-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeIffPrimeInt.Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.PrimeIffPrimeInt.Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"ef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Prime/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Algebra.Group.Int.Units
import Mathlib.Data.Int.Basic

/-!
# Prime numbers in the naturals and the integers

TODO: This file can probably be merged with `Mathlib/Data/Int/NatPrime.lean`.
-/



namespace GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeIffPrimeInt.Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f

namespace Nat

theorem prime_iff_prime_int {p : ℕ} : p.Prime ↔ _root_.Prime (p : ℤ) :=
  ⟨fun hp =>
    ⟨Int.natCast_ne_zero_iff_pos.2 hp.pos, mt Int.isUnit_iff_natAbs_eq.1 hp.ne_one, fun a b h => by
      rw [← Int.dvd_natAbs, Int.natCast_dvd_natCast, Int.natAbs_mul, hp.dvd_mul] at h
      rwa [← Int.dvd_natAbs, Int.natCast_dvd_natCast, ← Int.dvd_natAbs, Int.natCast_dvd_natCast]⟩,
    fun hp =>
    Nat.prime_iff.2
      ⟨Int.natCast_ne_zero.1 hp.1,
        (mt Nat.isUnit_iff.1) fun h => by simp [h, not_prime_one] at hp, fun a b => by
        simpa only [Int.natCast_dvd_natCast, (Int.natCast_mul _ _).symm] using hp.2.2 a b⟩⟩

/-- Two prime powers with positive exponents are equal only when the primes and the
exponents are equal. -/
lemma Prime.pow_inj {p q m n : ℕ} (hp : p.Prime) (hq : q.Prime)
    (h : p ^ (m + 1) = q ^ (n + 1)) : p = q ∧ m = n := by
  have H := dvd_antisymm (Prime.dvd_of_dvd_pow hp <| h ▸ dvd_pow_self p (succ_ne_zero m))
    (Prime.dvd_of_dvd_pow hq <| h.symm ▸ dvd_pow_self q (succ_ne_zero n))
  exact ⟨H, succ_inj.mp <| Nat.pow_right_injective hq.two_le (H ▸ h)⟩

end Nat

namespace Int

@[simp]
theorem prime_ofNat_iff {n : ℕ} :
    Prime (ofNat(n) : ℤ) ↔ Nat.Prime (OfNat.ofNat n) :=
  Nat.prime_iff_prime_int.symm

theorem prime_two : Prime (2 : ℤ) :=
  prime_ofNat_iff.mpr Nat.prime_two

theorem prime_three : Prime (3 : ℤ) :=
  prime_ofNat_iff.mpr Nat.prime_three

end Int
