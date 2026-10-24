# Complete source: GRWTSK.Algebra.CommutativeAlgebra.PrimesCongruentOne.Variantb1cc493e99e2adc44948d687abbc88dae1f4df2cadf01457b988f3c512ddc621

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf9f0644d0e577da22d7bddf2ee61f088d15e888` · SHA-256 `0b991365e73f51a6058179a9f443d1da26655b02749799ce4cbb601cfdd7199f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.ExistsPrimeGtModEqOne.Variant4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.ExistsPrimeGtModEqOne.Variant4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56","mathematical_subject":"Algebra.Polynomials","original_sha256":"4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/NumberTheory/PrimesCongruentOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca
-/
import Mathlib.RingTheory.Polynomial.Cyclotomic.Eval


namespace GRWTSK.Algebra.CommutativeAlgebra.ExistsPrimeGtModEqOne.Variant4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56

#align_import number_theory.primes_congruent_one from "leanprover-community/mathlib"@"f0c8bf9245297a541f468be517f1bde6195105e9"

/-!
# Primes congruent to one

We prove that, for any positive `k : ℕ`, there are infinitely many primes `p` such that
`p ≡ 1 [MOD k]`.
-/


namespace Nat

open Polynomial Nat Filter

open scoped Nat

/-- For any positive `k : ℕ` there exists an arbitrarily large prime `p` such that
`p ≡ 1 [MOD k]`. -/
theorem exists_prime_gt_modEq_one {k : ℕ} (n : ℕ) (hk0 : k ≠ 0) :
    ∃ p : ℕ, Nat.Prime p ∧ n < p ∧ p ≡ 1 [MOD k] := by
  rcases (one_le_iff_ne_zero.2 hk0).eq_or_lt with (rfl | hk1)
  · rcases exists_infinite_primes (n + 1) with ⟨p, hnp, hp⟩
    exact ⟨p, hp, hnp, modEq_one⟩
  let b := k * (n !)
  have hgt : 1 < (eval (↑b) (cyclotomic k ℤ)).natAbs := by
    rcases le_iff_exists_add'.1 hk1.le with ⟨k, rfl⟩
    have hb : 2 ≤ b := le_mul_of_le_of_one_le hk1 n.factorial_pos
    calc
      1 ≤ b - 1 := le_tsub_of_add_le_left hb
      _ < (eval (b : ℤ) (cyclotomic (k + 1) ℤ)).natAbs :=
        sub_one_lt_natAbs_cyclotomic_eval hk1 (succ_le_iff.1 hb).ne'
  let p := minFac (eval (↑b) (cyclotomic k ℤ)).natAbs
  haveI hprime : Fact p.Prime := ⟨minFac_prime (ne_of_lt hgt).symm⟩
  have hroot : IsRoot (cyclotomic k (ZMod p)) (castRingHom (ZMod p) b) := by
    have : ((b : ℤ) : ZMod p) = ↑(Int.castRingHom (ZMod p) b) := by simp
    rw [IsRoot.def, ← map_cyclotomic_int k (ZMod p), eval_map, coe_castRingHom, ← Int.cast_ofNat,
      this, eval₂_hom, Int.coe_castRingHom, ZMod.int_cast_zmod_eq_zero_iff_dvd _ _]
    apply Int.dvd_natAbs.1
    exact_mod_cast minFac_dvd (eval (↑b) (cyclotomic k ℤ)).natAbs
  have hpb : ¬p ∣ b :=
    hprime.1.coprime_iff_not_dvd.1 (coprime_of_root_cyclotomic hk0.bot_lt hroot).symm
  refine' ⟨p, hprime.1, not_le.1 fun habs => _, _⟩
  · exact hpb (dvd_mul_of_dvd_right (dvd_factorial (minFac_pos _) habs) _)
  · have hdiv : orderOf (b : ZMod p) ∣ p - 1 :=
      ZMod.orderOf_dvd_card_sub_one (mt (CharP.cast_eq_zero_iff _ _ _).1 hpb)
    haveI : NeZero (k : ZMod p) :=
      NeZero.of_not_dvd (ZMod p) fun hpk => hpb (dvd_mul_of_dvd_left hpk _)
    have : k = orderOf (b : ZMod p) := (isRoot_cyclotomic_iff.mp hroot).eq_orderOf
    rw [← this] at hdiv
    exact ((modEq_iff_dvd' hprime.1.pos).2 hdiv).symm
#align nat.exists_prime_gt_modeq_one Nat.exists_prime_gt_modEq_one

theorem frequently_atTop_modEq_one {k : ℕ} (hk0 : k ≠ 0) :
    ∃ᶠ p in atTop, Nat.Prime p ∧ p ≡ 1 [MOD k] := by
  refine' frequently_atTop.2 fun n => _
  obtain ⟨p, hp⟩ := exists_prime_gt_modEq_one n hk0
  exact ⟨p, ⟨hp.2.1.le, hp.1, hp.2.2⟩⟩
#align nat.frequently_at_top_modeq_one Nat.frequently_atTop_modEq_one

/-- For any positive `k : ℕ` there are infinitely many primes `p` such that `p ≡ 1 [MOD k]`. -/
theorem infinite_setOf_prime_modEq_one {k : ℕ} (hk0 : k ≠ 0) :
    Set.Infinite {p : ℕ | Nat.Prime p ∧ p ≡ 1 [MOD k]} :=
  frequently_atTop_iff_infinite.1 (frequently_atTop_modEq_one hk0)
#align nat.infinite_set_of_prime_modeq_one Nat.infinite_setOf_prime_modEq_one

end Nat
```
