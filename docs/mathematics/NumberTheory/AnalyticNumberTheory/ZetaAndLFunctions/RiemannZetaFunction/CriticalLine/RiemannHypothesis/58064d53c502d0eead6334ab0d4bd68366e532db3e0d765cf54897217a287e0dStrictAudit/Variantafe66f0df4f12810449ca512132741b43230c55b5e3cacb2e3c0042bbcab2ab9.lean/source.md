# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0dStrictAudit.Variantafe66f0df4f12810449ca512132741b43230c55b5e3cacb2e3c0042bbcab2ab9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1e085e54168372c5bd462da78f430fe24c26cdf` · SHA-256 `5d0b993266f4d102945f21bf65c6f6e8d004631b0a140fe2fc85b3cb8c086f4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LongDivisorRow.Variant58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LongDivisorRow.Variant58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/broad-incremental-20261007T104512Z/portfolio-four32-focused-record-recovery/bytes/58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0d--StrictAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.Linarith

/-!
# A concrete variation cost in the literal long-divisor row

The row formula is the exact finite formula for `EstimateVaughanIdentity.beta`.
This independent finite arithmetic calculation does not identify a heat array
with the complete source readout or prove a uniform arithmetic estimate.
Research direction and evaluation: grwtsk contributors.
Finite calculation and formalization: OpenAI Codex / ChatGPT.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LongDivisorRow.Variant58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0d

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCutoffVariation

open ArithmeticFunction

noncomputable section

/-- All positive divisors strictly above the closed short cutoff are retained. -/
def longDivisorRow (U n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors.filter (fun d => U < d), (moebius d : ℝ)

/-- Adjacent variation from the included cutoff `a` to the included cutoff `b`. -/
def cutoffVariation (row : ℕ → ℝ) (a b : ℕ) : ℝ :=
  ∑ U ∈ Finset.Ico a b, |row (U + 1) - row U|

/-- The complete coefficient update, without treating the row as a binary mask. -/
theorem long_divisor_row_increment (U n : ℕ) (hn : 0 < n) :
    longDivisorRow (U + 1) n - longDivisorRow U n =
      -(if U + 1 ∣ n then (moebius (U + 1) : ℝ) else 0) := by
  classical
  have hcut (d : ℕ) :
      (if U + 1 < d then (moebius d : ℝ) else 0) -
        (if U < d then (moebius d : ℝ) else 0) =
      if d = U + 1 then -(moebius d : ℝ) else 0 := by
    split_ifs <;> first | omega | ring
  simp only [longDivisorRow, Finset.sum_filter]
  rw [← Finset.sum_sub_distrib]
  simp_rw [hcut]
  rw [Finset.sum_ite_eq']
  simp [Nat.mem_divisors, hn.ne']
  split_ifs <;> ring

/-- Refinement cost is an exact squarefree-divisor inventory, rather than a
bound determined just by how often the row's cutoff support enters or leaves. -/
theorem cutoff_variation_eq_divisor_cost (a b n : ℕ) (hn : 0 < n) :
    cutoffVariation (fun U => longDivisorRow U n) a b =
      ∑ U ∈ Finset.Ico a b,
        if U + 1 ∣ n then |(moebius (U + 1) : ℝ)| else 0 := by
  apply Finset.sum_congr rfl
  intro U _
  rw [long_divisor_row_increment U n hn, abs_neg]
  split_ifs <;> simp

private theorem mu_six : moebius 6 = 1 := by
  rw [show (6 : ℕ) = 2 * 3 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (2 : ℕ).gcd 3 = 1 by decide)]
  norm_num [moebius_apply_prime (by norm_num : Nat.Prime 2),
    moebius_apply_prime (by norm_num : Nat.Prime 3)]

private theorem mu_ten : moebius 10 = 1 := by
  rw [show (10 : ℕ) = 2 * 5 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (2 : ℕ).gcd 5 = 1 by decide)]
  norm_num [moebius_apply_prime (by norm_num : Nat.Prime 2),
    moebius_apply_prime (by norm_num : Nat.Prime 5)]

private theorem mu_fifteen : moebius 15 = 1 := by
  rw [show (15 : ℕ) = 3 * 5 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (3 : ℕ).gcd 5 = 1 by decide)]
  norm_num [moebius_apply_prime (by norm_num : Nat.Prime 3),
    moebius_apply_prime (by norm_num : Nat.Prime 5)]

private theorem mu_thirty : moebius 30 = -1 := by
  rw [show (30 : ℕ) = 6 * 5 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (6 : ℕ).gcd 5 = 1 by decide),
    mu_six, moebius_apply_prime (by norm_num : Nat.Prime 5)]
  norm_num

private theorem divisors_thirty : (30 : ℕ).divisors = {1, 2, 3, 5, 6, 10, 15, 30} := by
  norm_num [Nat.divisors]
  decide

private theorem mu_thirty_five : moebius 35 = 1 := by
  rw [show (35 : ℕ) = 5 * 7 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (5 : ℕ).gcd 7 = 1 by decide)]
  norm_num [moebius_apply_prime (by norm_num : Nat.Prime 5),
    moebius_apply_prime (by norm_num : Nat.Prime 7)]

private theorem mu_forty_two : moebius 42 = -1 := by
  rw [show (42 : ℕ) = 6 * 7 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (6 : ℕ).gcd 7 = 1 by decide),
    mu_six, moebius_apply_prime (by norm_num : Nat.Prime 7)]
  norm_num

private theorem mu_seventy : moebius 70 = -1 := by
  rw [show (70 : ℕ) = 10 * 7 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (10 : ℕ).gcd 7 = 1 by decide),
    mu_ten, moebius_apply_prime (by norm_num : Nat.Prime 7)]
  norm_num

private theorem mu_one_hundred_five : moebius 105 = -1 := by
  rw [show (105 : ℕ) = 15 * 7 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (15 : ℕ).gcd 7 = 1 by decide),
    mu_fifteen, moebius_apply_prime (by norm_num : Nat.Prime 7)]
  norm_num

private theorem mu_two_hundred_ten : moebius 210 = 1 := by
  rw [show (210 : ℕ) = 30 * 7 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (30 : ℕ).gcd 7 = 1 by decide),
    mu_thirty, moebius_apply_prime (by norm_num : Nat.Prime 7)]
  norm_num

private theorem divisors_two_hundred_ten : (210 : ℕ).divisors =
    {1, 2, 3, 5, 6, 7, 10, 14, 15, 21, 30, 35, 42, 70, 105, 210} := by
  norm_num [Nat.divisors]
  decide

/-- A source-derived exact step formula; the equality endpoint stays short. -/
theorem long_divisor_row_thirty (U : ℕ) (hU : 1 ≤ U) :
    longDivisorRow U 30 =
      (if U < 2 then -1 else 0) + (if U < 3 then -1 else 0) +
      (if U < 5 then -1 else 0) + (if U < 6 then 1 else 0) +
      (if U < 10 then 1 else 0) + (if U < 15 then 1 else 0) +
      (if U < 30 then -1 else 0) := by
  have hone : ¬ U < 1 := by omega
  simp [longDivisorRow, divisors_thirty, Finset.sum_filter, hone,
    moebius_apply_prime (by norm_num : Nat.Prime 2),
    moebius_apply_prime (by norm_num : Nat.Prime 3),
    moebius_apply_prime (by norm_num : Nat.Prime 5),
    mu_six, mu_ten, mu_fifteen, mu_thirty]
  ring

/-- The natural supremum envelope is exactly two before the row leaves. -/
theorem row_thirty_envelope (U : ℕ) (hU : 1 ≤ U) (hU30 : U < 30) :
    |longDivisorRow U 30| ≤ 2 := by
  rw [long_divisor_row_thirty U hU]
  interval_cases U <;> norm_num

theorem row_thirty_attains_envelope : |longDivisorRow 5 30| = 2 := by
  rw [long_divisor_row_thirty 5 (by norm_num)]
  norm_num

/-- Internal cutoff changes alone exceed the twice-envelope mask allowance. -/
theorem row_thirty_variation : cutoffVariation (fun U => longDivisorRow U 30) 1 29 = 6 := by
  norm_num [cutoffVariation, Finset.sum_Ico_succ_top, longDivisorRow, divisors_thirty,
    Finset.sum_filter, moebius_apply_prime (by norm_num : Nat.Prime 2),
    moebius_apply_prime (by norm_num : Nat.Prime 3),
    moebius_apply_prime (by norm_num : Nat.Prime 5),
    mu_six, mu_ten, mu_fifteen, mu_thirty]

/-- Discarding the first raw-row transition still leaves variation five. -/
theorem row_thirty_variation_from_two :
    cutoffVariation (fun U => longDivisorRow U 30) 2 29 = 5 := by
  norm_num [cutoffVariation, Finset.sum_Ico_succ_top, longDivisorRow, divisors_thirty,
    Finset.sum_filter, moebius_apply_prime (by norm_num : Nat.Prime 2),
    moebius_apply_prime (by norm_num : Nat.Prime 3),
    moebius_apply_prime (by norm_num : Nat.Prime 5),
    mu_six, mu_ten, mu_fifteen, mu_thirty]

theorem minimal_envelope_fails_mask_variation :
    ¬ cutoffVariation (fun U => longDivisorRow U 30) 1 29 ≤ 2 * (2 : ℝ) := by
  rw [row_thirty_variation]
  norm_num

/-- An enlarged envelope is possible; its necessary cost is kept explicit. -/
theorem mask_variation_forces_envelope {M : ℝ}
    (hvar : cutoffVariation (fun U => longDivisorRow U 30) 1 29 ≤ 2 * M) :
    3 ≤ M := by
  rw [row_thirty_variation] at hvar
  linarith

/-- A later divisor path compatible with a fixed physical partner 256.
The source-scale/product-support interpretation remains a separate adapter. -/
theorem long_divisor_row_two_hundred_ten (U : ℕ) (hU : 29 ≤ U) :
    longDivisorRow U 210 =
      (if U < 30 then -1 else 0) + (if U < 35 then 1 else 0) +
      (if U < 42 then -1 else 0) + (if U < 70 then -1 else 0) +
      (if U < 105 then -1 else 0) + (if U < 210 then 1 else 0) := by
  simp [longDivisorRow, divisors_two_hundred_ten, Finset.sum_filter,
    show ¬ U < 1 by omega, show ¬ U < 2 by omega,
    show ¬ U < 3 by omega, show ¬ U < 5 by omega,
    show ¬ U < 6 by omega, show ¬ U < 7 by omega,
    show ¬ U < 10 by omega, show ¬ U < 14 by omega,
    show ¬ U < 15 by omega, show ¬ U < 21 by omega,
    mu_thirty, mu_thirty_five, mu_forty_two, mu_seventy,
    mu_one_hundred_five, mu_two_hundred_ten]
  ring

theorem row_two_hundred_ten_envelope (U : ℕ) (hU : 29 ≤ U) (hU210 : U < 210) :
    |longDivisorRow U 210| ≤ 2 := by
  rw [long_divisor_row_two_hundred_ten U hU]
  interval_cases U <;> norm_num

theorem row_two_hundred_ten_attains_envelope : |longDivisorRow 29 210| = 2 := by
  rw [long_divisor_row_two_hundred_ten 29 (by norm_num)]
  norm_num

theorem row_two_hundred_ten_variation :
    cutoffVariation (fun U => longDivisorRow U 210) 29 105 = 5 := by
  rw [cutoff_variation_eq_divisor_cost 29 105 210 (by norm_num)]
  norm_num [Finset.sum_Ico_succ_top, mu_thirty, mu_thirty_five, mu_forty_two,
    mu_seventy, mu_one_hundred_five]

theorem supported_minimal_envelope_fails_mask_variation :
    ¬ cutoffVariation (fun U => longDivisorRow U 210) 29 105 ≤ 2 * (2 : ℝ) := by
  rw [row_two_hundred_ten_variation]
  norm_num

theorem supported_mask_variation_forces_envelope {M : ℝ}
    (hvar : cutoffVariation (fun U => longDivisorRow U 210) 29 105 ≤ 2 * M) :
    5 / 2 ≤ M := by
  rw [row_two_hundred_ten_variation] at hvar
  linarith

end
end FormalResearch.RiemannHypothesis.SourceCutoffVariation

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceCutoffVariation
#print axioms long_divisor_row_increment
#print axioms cutoff_variation_eq_divisor_cost
#print axioms long_divisor_row_thirty
#print axioms row_thirty_envelope
#print axioms row_thirty_attains_envelope
#print axioms row_thirty_variation
#print axioms row_thirty_variation_from_two
#print axioms minimal_envelope_fails_mask_variation
#print axioms mask_variation_forces_envelope
#print axioms long_divisor_row_two_hundred_ten
#print axioms row_two_hundred_ten_envelope
#print axioms row_two_hundred_ten_attains_envelope
#print axioms row_two_hundred_ten_variation
#print axioms supported_minimal_envelope_fails_mask_variation
#print axioms supported_mask_variation_forces_envelope
```
