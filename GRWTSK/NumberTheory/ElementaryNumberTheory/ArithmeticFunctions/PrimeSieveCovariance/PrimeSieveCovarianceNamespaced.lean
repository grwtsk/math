-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeLcm.Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.PrimeLcm.Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"cc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/PrimeSieveCovariance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.Tactic


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeLcm.Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e

set_option autoImplicit false
namespace PrimeSieveCovarianceScratch
open Finset ArithmeticFunction
noncomputable section

private theorem prime_lcm (p q : ℕ) (hp : p.Prime) (hq : q.Prime) :
    Nat.lcm p q = if p = q then p else p * q := by
  by_cases h : p = q
  · simp [h]
  · rw [if_neg h]
    exact (Nat.coprime_primes hp hq).mpr h |>.lcm_eq_mul

/-- On prime support, the genuine two Möbius signs reinforce the weighted sieve form. -/
theorem prime_moebius_lcm_identity (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) =
      (∑ p ∈ P, w p ^ 2 / (p : ℝ)) + (∑ p ∈ P, w p / (p : ℝ)) ^ 2 -
        ∑ p ∈ P, (w p / (p : ℝ)) ^ 2 := by
  have he (p q : ℕ) (hp : p ∈ P) (hq : q ∈ P) :
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ) =
        (w p / (p : ℝ)) * (w q / (q : ℝ)) +
          if p = q then w p ^ 2 / (p : ℝ) - (w p / (p : ℝ)) ^ 2 else 0 := by
    rw [moebius_apply_prime (hP p hp), moebius_apply_prime (hP q hq),
      prime_lcm p q (hP p hp) (hP q hq)]
    by_cases hpq : p = q
    · subst q
      simp only [ite_true, Int.cast_neg, Int.cast_one]
      ring
    · simp only [if_neg hpq, Nat.cast_mul, Int.cast_neg, Int.cast_one]
      ring
  rw [show (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) =
      ∑ p ∈ P, ∑ q ∈ P,
        ((w p / (p : ℝ)) * (w q / (q : ℝ)) +
          if p = q then w p ^ 2 / (p : ℝ) - (w p / (p : ℝ)) ^ 2 else 0) by
    apply Finset.sum_congr rfl
    intro p hp
    apply Finset.sum_congr rfl
    intro q hq
    exact he p q hp hq]
  simp_rw [Finset.sum_add_distrib]
  have hdiag : (∑ p ∈ P, ∑ q ∈ P,
      if p = q then w p ^ 2 / (p : ℝ) - (w p / (p : ℝ)) ^ 2 else 0) =
      (∑ p ∈ P, w p ^ 2 / (p : ℝ)) - ∑ p ∈ P, (w p / (p : ℝ)) ^ 2 := by
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    simp [hp]
  rw [hdiag]
  have hprod : (∑ p ∈ P, ∑ q ∈ P, (w p / (p : ℝ)) * (w q / (q : ℝ))) =
      (∑ p ∈ P, w p / (p : ℝ)) ^ 2 := by
    simp_rw [← Finset.mul_sum]
    rw [← Finset.sum_mul]
    ring
  rw [hprod]
  ring

/-- An exact finite upper bound on the prime-supported sieve quadratic. -/
theorem prime_moebius_lcm_le (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) (N W : ℝ) (hN : 0 < N) (hW : 0 ≤ W)
    (hNp : ∀ p ∈ P, N ≤ (p : ℝ)) (hw : ∀ p ∈ P, 0 ≤ w p ∧ w p ≤ W) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) ≤
      W ^ 2 * ((P.card : ℝ) / N + ((P.card : ℝ) / N) ^ 2) := by
  rw [prime_moebius_lcm_identity P hP w]
  have h1 : (∑ p ∈ P, w p / (p : ℝ)) ≤ W * ((P.card : ℝ) / N) := by
    calc
      _ ≤ ∑ _p ∈ P, W / N := by
        apply Finset.sum_le_sum
        intro p hp
        have hp0 : 0 < (p : ℝ) := lt_of_lt_of_le hN (hNp p hp)
        exact (div_le_div_of_nonneg_right (hw p hp).2 hp0.le).trans
          (div_le_div_of_nonneg_left hW hN (hNp p hp))
      _ = _ := by simp; ring
  have h10 : 0 ≤ ∑ p ∈ P, w p / (p : ℝ) := by
    apply Finset.sum_nonneg
    intro p hp
    exact div_nonneg (hw p hp).1 (le_trans hN.le (hNp p hp))
  have h2 : (∑ p ∈ P, w p ^ 2 / (p : ℝ)) ≤ W ^ 2 * ((P.card : ℝ) / N) := by
    calc
      _ ≤ ∑ _p ∈ P, W ^ 2 / N := by
        apply Finset.sum_le_sum
        intro p hp
        have hp0 : 0 < (p : ℝ) := lt_of_lt_of_le hN (hNp p hp)
        have hs : w p ^ 2 ≤ W ^ 2 := by nlinarith [(hw p hp).1, (hw p hp).2]
        exact (div_le_div_of_nonneg_right hs hp0.le).trans
          (div_le_div_of_nonneg_left (sq_nonneg W) hN (hNp p hp))
      _ = _ := by simp; ring
  have h3 : 0 ≤ ∑ p ∈ P, (w p / (p : ℝ)) ^ 2 := by positivity
  have hs : (∑ p ∈ P, w p / (p : ℝ)) ^ 2 ≤
      (W * ((P.card : ℝ) / N)) ^ 2 := by nlinarith
  nlinarith

/-- When the prime block has at most N entries, the sieve upper bound is linear in its size. -/
theorem prime_moebius_lcm_le_card (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) (N W : ℝ) (hN : 0 < N) (hW : 0 ≤ W)
    (hNp : ∀ p ∈ P, N ≤ (p : ℝ)) (hw : ∀ p ∈ P, 0 ≤ w p ∧ w p ≤ W)
    (hcard : (P.card : ℝ) ≤ N) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) ≤
      2 * W ^ 2 * (P.card : ℝ) / N := by
  apply (prime_moebius_lcm_le P hP w N W hN hW hNp hw).trans
  have h0 : 0 ≤ (P.card : ℝ) / N := by positivity
  have h1 : (P.card : ℝ) / N ≤ 1 := (div_le_one hN).mpr hcard
  have hs : ((P.card : ℝ) / N) ^ 2 ≤ (P.card : ℝ) / N := by nlinarith
  calc
    _ ≤ W ^ 2 * (2 * ((P.card : ℝ) / N)) :=
      mul_le_mul_of_nonneg_left (by linarith) (sq_nonneg W)
    _ = _ := by ring

end
end PrimeSieveCovarianceScratch
