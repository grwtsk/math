/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.MobiusDilationPairSplit

/-!
# Quantitative negative doubling credit in the exact triangular kernel

The exact source relation is H + credit = complete remainder. The credit is
nonnegative and bounded by twice a shifted harmonic sum, hence by
(2/epsilon)*(N+1)^epsilon for every 0 < epsilon <= 1. No Mertens mean-square
summability or new signed-cancellation premise is used for that estimate.

Consequently deleting the doubling packet preserves the EXISTENCE of a
fixed-epsilon subpower upper bound, with its constant changed explicitly.
This is not a proof of either open upper bound. A negative packet alone has
not paid the missing arithmetic estimate for the complete source.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare
open GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare

def doublingCreditRow (n : ℕ) : ℝ :=
  ∑ m ∈ Finset.range n,
    (2 * criticalEndpointGap m * criticalEndpointGap n) *
      (-mertensDoublingPairPacket m n)

def triangularDoublingCredit (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N, doublingCreditRow (k + 1)

/-- The beneficial negative packet is retained as a source-identified credit. -/
theorem signedMixedPrefix_add_doublingCredit (N : ℕ) :
    sampleSignedMixedPrefix N + triangularDoublingCredit N =
      triangularDoublingRemainder N := by
  rw [sampleSignedMixedPrefix_eq_triangular]
  unfold triangularDoublingCredit doublingCreditRow triangularDoublingRemainder
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  rw [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  simp only [dilationIncrementSource_eq_prefixGap]
  calc
    _ = (2 * criticalEndpointGap m * criticalEndpointGap (k + 1)) *
        (pickupMertensPrefix m * pickupMertensPrefix (k + 1) -
          mertensDoublingPairPacket m (k + 1)) := by ring
    _ = _ := by rw [mertens_product_eq_doubling_add_remainder]; ring

theorem triangularDoublingCredit_nonneg (N : ℕ) : 0 ≤ triangularDoublingCredit N := by
  have he := signedMixedPrefix_add_doublingCredit N
  have hl := signedMixedPrefix_le_triangularDoublingRemainder N
  linarith

/-- Exact selected-pair credit costs at most the number of eligible first
indices. This retains both original cutoffs; no density assertion is needed. -/
theorem neg_mertensDoublingPairPacket_le_firstCutoff (m n : ℕ) :
    -mertensDoublingPairPacket m n ≤ (m : ℝ) := by
  have hprod (r : ℕ) : -(1 : ℝ) ≤ moebiusReal r * moebiusReal (2 * r) := by
    rw [moebius_doubling_product]
    split_ifs
    · have h := GRWTSK.RiemannHypothesis.CCC.moebiusReal_sq_le_one r
      linarith
    · norm_num
  have hl : -(m : ℝ) ≤ mertensDoublingPairPacket m n := by
    unfold mertensDoublingPairPacket
    calc
      _ = ∑ _r ∈ Finset.Icc 1 m, (-1 : ℝ) := by simp
      _ ≤ _ := by
        apply Finset.sum_le_sum
        intro r _
        split_ifs
        · exact hprod r
        · norm_num
  linarith

/-- Deterministic source-kernel estimate, including its exceptional zero
index. It does not substitute an artificial sequence for the actual source. -/
theorem nat_mul_endpointGap_le_sqrt_step (m : ℕ) :
    (m : ℝ) * criticalEndpointGap m ≤ Real.sqrt (m + 1 : ℕ) - Real.sqrt m := by
  by_cases hm : m = 0
  · subst m
    norm_num [criticalEndpointGap]
  have hmpos : (0 : ℝ) < m := by exact_mod_cast (Nat.pos_of_ne_zero hm)
  let a : ℝ := Real.sqrt m
  let b : ℝ := Real.sqrt (m + 1 : ℕ)
  have ha : 0 < a := Real.sqrt_pos.mpr hmpos
  have hb : 0 < b := by dsimp [b]; positivity
  have hab : a ≤ b := Real.sqrt_le_sqrt (by exact_mod_cast (Nat.le_succ m))
  have ha2 : a * a = (m : ℝ) := by
    dsimp [a]
    simpa only [pow_two] using Real.sq_sqrt hmpos.le
  have hmab : (m : ℝ) ≤ a * b := by
    rw [← ha2]
    exact mul_le_mul_of_nonneg_left hab ha.le
  calc
    _ ≤ (a * b) * criticalEndpointGap m :=
      mul_le_mul_of_nonneg_right hmab (criticalEndpointGap_nonneg (Nat.one_le_iff_ne_zero.mpr hm))
    _ = b - a := by
      change a * b * (a⁻¹ - b⁻¹) = b - a
      field_simp [ha.ne', hb.ne'] <;> ring

theorem sum_nat_mul_endpointGap_le_sqrt (n : ℕ) :
    (∑ m ∈ Finset.range n, (m : ℝ) * criticalEndpointGap m) ≤ Real.sqrt n := by
  have ht : (∑ m ∈ Finset.range n,
      (Real.sqrt (m + 1 : ℕ) - Real.sqrt m)) = Real.sqrt n := by
    induction n with
    | zero => simp
    | succ n ih => rw [Finset.sum_range_succ, ih]; ring
  calc
    _ ≤ ∑ m ∈ Finset.range n, (Real.sqrt (m + 1 : ℕ) - Real.sqrt m) :=
      Finset.sum_le_sum (fun m _ => nat_mul_endpointGap_le_sqrt_step m)
    _ = _ := ht

theorem endpointGap_mul_sqrt_le_succ_inv {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointGap n * Real.sqrt n ≤ 1 / ((n + 1 : ℕ) : ℝ) := by
  have hs : (0 : ℝ) < Real.sqrt n := Real.sqrt_pos.mpr (by exact_mod_cast (by omega : 0 < n))
  calc
    _ ≤ (1 / (Real.sqrt n * ((n + 1 : ℕ) : ℝ))) * Real.sqrt n :=
      mul_le_mul_of_nonneg_right (criticalEndpointGap_le_inv_sqrt_mul_succ hn) hs.le
    _ = _ := by field_simp [hs.ne'] <;> ring

/-- The full inner credit in the original triangular kernel has a harmonic
majorant. The zero row is proved zero before any positivity argument. -/
theorem doublingCreditRow_le {n : ℕ} (hn : 1 ≤ n) :
    doublingCreditRow n ≤ 2 / ((n + 1 : ℕ) : ℝ) := by
  have hgn := criticalEndpointGap_nonneg hn
  calc
    _ ≤ ∑ m ∈ Finset.range n,
        (2 * criticalEndpointGap n) * ((m : ℝ) * criticalEndpointGap m) := by
      unfold doublingCreditRow
      apply Finset.sum_le_sum
      intro m _
      by_cases hm : m = 0
      · subst m
        simp [mertensDoublingPairPacket]
      have hgm := criticalEndpointGap_nonneg (Nat.one_le_iff_ne_zero.mpr hm)
      calc
        _ ≤ (2 * criticalEndpointGap m * criticalEndpointGap n) * (m : ℝ) :=
          mul_le_mul_of_nonneg_left (neg_mertensDoublingPairPacket_le_firstCutoff m n)
            (mul_nonneg (mul_nonneg (by norm_num) hgm) hgn)
        _ = _ := by ring
    _ = (2 * criticalEndpointGap n) *
        (∑ m ∈ Finset.range n, (m : ℝ) * criticalEndpointGap m) := by rw [Finset.mul_sum]
    _ ≤ (2 * criticalEndpointGap n) * Real.sqrt n :=
      mul_le_mul_of_nonneg_left (sum_nat_mul_endpointGap_le_sqrt n) (by positivity)
    _ = 2 * (criticalEndpointGap n * Real.sqrt n) := by ring
    _ ≤ 2 * (1 / ((n + 1 : ℕ) : ℝ)) :=
      mul_le_mul_of_nonneg_left (endpointGap_mul_sqrt_le_succ_inv hn) (by norm_num)
    _ = _ := by ring

theorem triangularDoublingCredit_le_harmonic (N : ℕ) :
    triangularDoublingCredit N ≤
      2 * ∑ k ∈ Finset.range N, (1 / ((k + 2 : ℕ) : ℝ)) := by
  unfold triangularDoublingCredit
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k _
  have h := doublingCreditRow_le (n := k + 1) (by omega)
  simpa only [Nat.add_assoc, mul_one_div] using h

/-- Every positive exponent has an explicit deterministic constant. This is
only the selected doubling credit, not the complete arithmetic remainder. -/
theorem triangularDoublingCredit_le_subpower {ε : ℝ}
    (hε0 : 0 < ε) (hε1 : ε ≤ 1) (N : ℕ) :
    triangularDoublingCredit N ≤ (2 / ε) * (((N + 1 : ℕ) : ℝ) ^ ε) := by
  have hsum : (∑ k ∈ Finset.range N, (1 / ((k + 2 : ℕ) : ℝ))) ≤
      ∑ k ∈ Finset.range N, (((k + 1 : ℕ) : ℝ) ^ (ε - 1)) := by
    apply Finset.sum_le_sum
    intro k _
    have hp : (0 : ℝ) < (k + 1 : ℕ) := by positivity
    have hb : (1 : ℝ) ≤ (k + 1 : ℕ) := by exact_mod_cast (by omega : 1 ≤ k + 1)
    calc
      _ ≤ (((k + 1 : ℕ) : ℝ) ^ (-1 : ℝ)) := by
        rw [Real.rpow_neg_one, ← one_div]
        exact one_div_le_one_div_of_le hp (by exact_mod_cast (Nat.le_succ (k + 1)))
      _ ≤ _ := Real.rpow_le_rpow_of_exponent_le hb (by linarith)
  have hpower := sum_range_succ_rpow_sub_one_le hε0 hε1 N
  have hmono : (N : ℝ) ^ ε ≤ ((N + 1 : ℕ) : ℝ) ^ ε :=
    Real.rpow_le_rpow (Nat.cast_nonneg N) (by exact_mod_cast (Nat.le_succ N)) hε0.le
  calc
    _ ≤ 2 * ∑ k ∈ Finset.range N, (1 / ((k + 2 : ℕ) : ℝ)) :=
      triangularDoublingCredit_le_harmonic N
    _ ≤ 2 * ((N : ℝ) ^ ε / ε) :=
      mul_le_mul_of_nonneg_left (hsum.trans hpower) (by norm_num)
    _ = (2 / ε) * (N : ℝ) ^ ε := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left hmono (by positivity)

/-- Removing the known negative packet does not weaken the fixed-epsilon
open upper-bound problem: its explicit credit is already subpower. -/
theorem doublingRemainderUpper_of_signedPrefixUpper {ε K : ℝ}
    (hε0 : 0 < ε) (hε1 : ε ≤ 1) (hH : SampleSignedPrefixUpper ε K) :
    ∀ N : ℕ, triangularDoublingRemainder N ≤
      (K + 2 / ε) * (((N + 1 : ℕ) : ℝ) ^ ε) := by
  intro N
  rw [← signedMixedPrefix_add_doublingCredit]
  have hh := hH N
  have hc := triangularDoublingCredit_le_subpower hε0 hε1 N
  nlinarith

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
