# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Imo2008Q3.Variant69c0e79d19efd62d7bf9cb5cecc852f728a51db347664588a8f0143e503ab3ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec0e7a2a379ea3c392bb73a7d4c54fbe110f69cc` · SHA-256 `c6d0092fce9ec2db93c3d28ae14349b1707478e6387f775313c40e04296b65a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.PLemma.Variant9105cf702fb50384ac6f5263fdbfd2e7febfb9e14ca9c779d8792f150c275147","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9105cf702fb50384ac6f5263fdbfd2e7febfb9e14ca9c779d8792f150c275147","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PLemma.Variant9105cf702fb50384ac6f5263fdbfd2e7febfb9e14ca9c779d8792f150c275147","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9105cf702fb50384ac6f5263fdbfd2e7febfb9e14ca9c779d8792f150c275147","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Archive/Imo/Imo2008Q3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Manuel Candales. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Manuel Candales
-/
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Nat.Prime
import Mathlib.NumberTheory.PrimesCongruentOne
import Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity
import Mathlib.Tactic.LinearCombination


namespace GRWTSK.FoundationsLogicAndTypeTheory.PLemma.Variant9105cf702fb50384ac6f5263fdbfd2e7febfb9e14ca9c779d8792f150c275147

#align_import imo.imo2008_q3 from "leanprover-community/mathlib"@"308826471968962c6b59c7ff82a22757386603e3"

/-!
# IMO 2008 Q3
Prove that there exist infinitely many positive integers `n` such that `n^2 + 1` has a prime
divisor which is greater than `2n + √(2n)`.

# Solution
We first prove the following lemma: for every prime `p > 20`, satisfying `p ≡ 1 [MOD 4]`,
there exists `n ∈ ℕ` such that `p ∣ n^2 + 1` and `p > 2n + √(2n)`. Then the statement of the
problem follows from the fact that there exist infinitely many primes `p ≡ 1 [MOD 4]`.

To prove the lemma, notice that `p ≡ 1 [MOD 4]` implies `∃ n ∈ ℕ` such that `n^2 ≡ -1 [MOD p]`
and we can take this `n` such that `n ≤ p/2`. Let `k = p - 2n ≥ 0`. Then we have:
`k^2 + 4 = (p - 2n)^2 + 4 ≣ 4n^2 + 4 ≡ 0 [MOD p]`. Then `k^2 + 4 ≥ p` and so `k ≥ √(p - 4) > 4`.
Then `p = 2n + k ≥ 2n + √(p - 4) = 2n + √(2n + k - 4) > √(2n)` and we are done.
-/


open Real

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

namespace Imo2008Q3

theorem p_lemma (p : ℕ) (hpp : Nat.Prime p) (hp_mod_4_eq_1 : p ≡ 1 [MOD 4]) (hp_gt_20 : p > 20) :
    ∃ n : ℕ, p ∣ n ^ 2 + 1 ∧ (p : ℝ) > 2 * n + sqrt (2 * n) := by
  haveI := Fact.mk hpp
  have hp_mod_4_ne_3 : p % 4 ≠ 3 := by linarith [show p % 4 = 1 from hp_mod_4_eq_1]
  obtain ⟨y, hy⟩ := ZMod.exists_sq_eq_neg_one_iff.mpr hp_mod_4_ne_3
  let m := ZMod.valMinAbs y
  let n := Int.natAbs m
  have hnat₁ : p ∣ n ^ 2 + 1 := by
    refine' Int.coe_nat_dvd.mp _
    simp only [Int.natAbs_sq, Int.coe_nat_pow, Int.ofNat_succ, Int.coe_nat_dvd.mp]
    refine' (ZMod.int_cast_zmod_eq_zero_iff_dvd (m ^ 2 + 1) p).mp _
    simp only [Int.cast_pow, Int.cast_add, Int.cast_one, ZMod.coe_valMinAbs]
    rw [pow_two, ← hy]; exact add_left_neg 1
  have hnat₂ : n ≤ p / 2 := ZMod.natAbs_valMinAbs_le y
  have hnat₃ : p ≥ 2 * n := by linarith [Nat.div_mul_le_self p 2]
  set k : ℕ := p - 2 * n with hnat₄
  have hnat₅ : p ∣ k ^ 2 + 4 := by
    cases' hnat₁ with x hx
    have : (p : ℤ) ∣ (k : ℤ) ^ 2 + 4 := by
      use (p : ℤ) - 4 * n + 4 * x
      have hcast₁ : (k : ℤ) = p - 2 * n := by assumption_mod_cast
      have hcast₂ : (n : ℤ) ^ 2 + 1 = p * x := by assumption_mod_cast
      linear_combination ((k : ℤ) + p - 2 * n) * hcast₁ + 4 * hcast₂
    assumption_mod_cast
  have hnat₆ : k ^ 2 + 4 ≥ p := Nat.le_of_dvd (k ^ 2 + 3).succ_pos hnat₅
  have hreal₁ : (k : ℝ) = p - 2 * n := by assumption_mod_cast
  have hreal₂ : (p : ℝ) > 20 := by assumption_mod_cast
  have hreal₃ : (k : ℝ) ^ 2 + 4 ≥ p := by assumption_mod_cast
  have hreal₅ : (k : ℝ) > 4 := by
    refine' lt_of_pow_lt_pow 2 k.cast_nonneg _
    linarith only [hreal₂, hreal₃]
  have hreal₆ : (k : ℝ) > sqrt (2 * n) := by
    refine' lt_of_pow_lt_pow 2 k.cast_nonneg _
    rw [sq_sqrt (mul_nonneg zero_le_two n.cast_nonneg)]
    linarith only [hreal₁, hreal₃, hreal₅]
  exact ⟨n, hnat₁, by linarith only [hreal₆, hreal₁]⟩
#align imo2008_q3.p_lemma Imo2008Q3.p_lemma

end Imo2008Q3

open Imo2008Q3

theorem imo2008_q3 : ∀ N : ℕ, ∃ n : ℕ, n ≥ N ∧
    ∃ p : ℕ, Nat.Prime p ∧ p ∣ n ^ 2 + 1 ∧ (p : ℝ) > 2 * n + sqrt (2 * n) := by
  intro N
  obtain ⟨p, hpp, hineq₁, hpmod4⟩ := Nat.exists_prime_gt_modEq_one (N ^ 2 + 20) four_ne_zero
  obtain ⟨n, hnat, hreal⟩ := p_lemma p hpp hpmod4 (by linarith [hineq₁, Nat.zero_le (N ^ 2)])
  have hineq₂ : n ^ 2 + 1 ≥ p := Nat.le_of_dvd (n ^ 2).succ_pos hnat
  have hineq₃ : n * n ≥ N * N := by linarith [hineq₁, hineq₂]
  have hn_ge_N : n ≥ N := Nat.mul_self_le_mul_self_iff.mpr hineq₃
  exact ⟨n, hn_ge_N, p, hpp, hnat, hreal⟩
#align imo2008_q3 imo2008_q3
```
