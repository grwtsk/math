# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBetaPrefixStorage.Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2cd789a3cb6213126aef5caa6afaa244189722b` · SHA-256 `8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Data.Nat.ModEq

/-!
# Exact cyclic primitive of the actual centered beta prefix

UNCOMPILED preparation. The divisor primitive is independent of any source
profile or desired remainder. Its mean, two Abel endpoints and cutoff-dependent
budget are retained. Existing centered-discrepancy theorems supply the arithmetic
adapter; no new classification or source-scale flux infrastructure is defined.

AI attribution: prepared with OpenAI Codex; no native Lean replay is recorded.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceBetaPrefixStorage

open ArithmeticFunction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanIdentity

noncomputable section

/-- The anchored single-divisor prefix discrepancy, using natural remainders. -/
def divisorPrefix (U d k : ℕ) : ℝ :=
  ((k % d : ℕ) : ℝ) / (d : ℝ) - ((U % d : ℕ) : ℝ) / (d : ℝ)

/-- The mean over a complete divisor period; it need not vanish. -/
def divisorMean (U d : ℕ) : ℝ :=
  ((d : ℝ) - 1) / (2 * (d : ℝ)) - ((U % d : ℕ) : ℝ) / (d : ℝ)

/-- The mean-zero oscillation whose cyclic primitive is given below. -/
def divisorOscillation (d k : ℕ) : ℝ :=
  (((k % d : ℕ) : ℝ) - ((d : ℝ) - 1) / 2) / (d : ℝ)

/-- A fixed cyclic primitive with S_d(0)=0, chosen independently of all weights. -/
def divisorStorage (d k : ℕ) : ℝ :=
  ((k % d : ℕ) : ℝ) * (((k % d : ℕ) : ℝ) - (d : ℝ)) / (2 * (d : ℝ))

/-- The complete signed divisor mean of the actual beta prefix. -/
def centeredPrefixMean (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * divisorMean U d

private theorem cast_mod_div (n d : ℕ) (hd : 0 < d) :
    ((n % d : ℕ) : ℝ) / (d : ℝ) =
      (n : ℝ) / (d : ℝ) - ((n / d : ℕ) : ℝ) := by
  have hd0 : (d : ℝ) ≠ 0 := by exact_mod_cast hd.ne'
  have h : ((n % d : ℕ) : ℝ) + (d : ℝ) * ((n / d : ℕ) : ℝ) = (n : ℝ) := by
    exact_mod_cast Nat.mod_add_div n d
  field_simp [hd0]
  nlinarith

/-- Exact transport from the already recorded separately cast quotient discrepancy. -/
theorem divisorPrefix_eq_neg_floorDiscrepancy (U d k : ℕ) (hd : 0 < d) :
    divisorPrefix U d k = -floorDiscrepancy U k d := by
  unfold divisorPrefix floorDiscrepancy
  rw [cast_mod_div k d hd, cast_mod_div U d hd]
  ring

/-- The cyclic primitive includes the wraparound step, with d>0 explicit. -/
theorem divisorStorage_succ_sub (d k : ℕ) (hd : 0 < d) :
    divisorStorage d (k + 1) - divisorStorage d k = divisorOscillation d k := by
  by_cases hd1 : d = 1
  · subst d
    simp [divisorStorage, divisorOscillation]
  have h1d : 1 < d := by omega
  have hd0 : (d : ℝ) ≠ 0 := by exact_mod_cast hd.ne'
  have hnext : (k + 1) % d = (k % d + 1) % d := by
    rw [Nat.add_mod, Nat.mod_eq_of_lt h1d]
  by_cases hwrap : k % d + 1 = d
  · have hz : (k + 1) % d = 0 := by rw [hnext, hwrap, Nat.mod_self]
    have hc : ((k % d : ℕ) : ℝ) + 1 = (d : ℝ) := by exact_mod_cast hwrap
    have hc' : ((k % d : ℕ) : ℝ) = (d : ℝ) - 1 := by linarith
    unfold divisorStorage divisorOscillation
    rw [hz]
    simp only [Nat.cast_zero, zero_mul, zero_div, zero_sub]
    rw [hc']
    field_simp [hd0]
    ring
  · have hlt : k % d + 1 < d := by have := Nat.mod_lt k hd; omega
    have hs : (k + 1) % d = k % d + 1 := by rw [hnext, Nat.mod_eq_of_lt hlt]
    unfold divisorStorage divisorOscillation
    rw [hs, Nat.cast_add, Nat.cast_one]
    field_simp [hd0]
    ring

/-- The actual anchored discrepancy retains its mean and primitive difference. -/
theorem divisorPrefix_eq_mean_add_storage (U d k : ℕ) (hd : 0 < d) :
    divisorPrefix U d k = divisorMean U d +
      (divisorStorage d (k + 1) - divisorStorage d k) := by
  rw [divisorStorage_succ_sub d k hd]
  unfold divisorPrefix divisorMean divisorOscillation
  have hd0 : (d : ℝ) ≠ 0 := by exact_mod_cast hd.ne'
  field_simp [hd0]
  ring

/-- The primitive has a divisor-size budget; this is not uniform after short summation. -/
theorem divisorStorage_bounds (d k : ℕ) (hd : 0 < d) :
    -(d : ℝ) / 8 ≤ divisorStorage d k ∧ divisorStorage d k ≤ 0 := by
  have hd0 : 0 < (d : ℝ) := by exact_mod_cast hd
  have hr0 : 0 ≤ ((k % d : ℕ) : ℝ) := Nat.cast_nonneg _
  have hrd : ((k % d : ℕ) : ℝ) < (d : ℝ) := by exact_mod_cast Nat.mod_lt k hd
  constructor
  · have hsq : 0 ≤ (((k % d : ℕ) : ℝ) - (d : ℝ) / 2) ^ 2 := sq_nonneg _
    unfold divisorStorage
    apply (le_div_iff₀ (by positivity : 0 < 2 * (d : ℝ))).2
    nlinarith
  · unfold divisorStorage
    exact div_nonpos_of_nonpos_of_nonneg
      (mul_nonpos_of_nonneg_of_nonpos hr0 (sub_nonpos.mpr hrd.le)) (by positivity)

/-- The absolute primitive error budget still carries the actual divisor size. -/
theorem divisorStorage_abs_le (d k : ℕ) (hd : 0 < d) :
    |divisorStorage d k| ≤ (d : ℝ) / 8 := by
  obtain ⟨hl, hu⟩ := divisorStorage_bounds d k hd
  rw [abs_of_nonpos hu]
  linarith

/-- Weighted finite Abel reconstruction retains the mean and BOTH endpoint terms. -/
theorem divisorPrefix_weighted_abel (U d l h : ℕ) (w : ℕ → ℝ)
    (hd : 0 < d) (hlh : l ≤ h) :
    (∑ k ∈ Finset.Ico l h, divisorPrefix U d k * w k) =
      divisorMean U d * (∑ k ∈ Finset.Ico l h, w k) +
        divisorStorage d h * w h - divisorStorage d l * w l -
        ∑ k ∈ Finset.Ico l h, divisorStorage d (k + 1) * (w (k + 1) - w k) := by
  have hs : (∑ k ∈ Finset.Ico l h,
      (divisorStorage d (k + 1) - divisorStorage d k) * w k) =
      divisorStorage d h * w h - divisorStorage d l * w l -
        ∑ k ∈ Finset.Ico l h, divisorStorage d (k + 1) * (w (k + 1) - w k) := by
    calc
      _ = ∑ k ∈ Finset.Ico l h,
          ((divisorStorage d (k + 1) * w (k + 1) - divisorStorage d k * w k) -
            divisorStorage d (k + 1) * (w (k + 1) - w k)) := by
        apply Finset.sum_congr rfl
        intro k _
        ring
      _ = _ := by
        rw [Finset.sum_sub_distrib, Finset.sum_Ico_sub
          (fun k ↦ divisorStorage d k * w k) hlh]
  calc
    _ = ∑ k ∈ Finset.Ico l h,
        (divisorMean U d * w k +
          (divisorStorage d (k + 1) - divisorStorage d k) * w k) := by
      apply Finset.sum_congr rfl
      intro k _
      rw [divisorPrefix_eq_mean_add_storage U d k hd]
      ring
    _ = _ := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, hs]
      ring

/-- The original centered-prefix adapter reuses its exact interval discrepancy theorem. -/
theorem actual_centered_prefix_eq_divisor_prefix (U k : ℕ) (hU : 1 ≤ U) (hUk : U ≤ k) :
    (∑ n ∈ Finset.Ioc U k, centeredBeta U n) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * divisorPrefix U d k := by
  rw [centeredBeta_interval_eq_discrepancy U U k hU le_rfl hUk,
    ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  rw [divisorPrefix_eq_neg_floorDiscrepancy U d k (by
    have := (Finset.mem_Icc.mp hd).1
    omega)]
  ring

/-- Exact quotient counting and the existing short beta identity give the convolution unit. -/
theorem moebius_floor_convolution (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U / d : ℕ) : ℝ)) = 1 := by
  have hi (n : ℕ) (hn : n ∈ Finset.Ioc 0 U) :
      (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) =
        if n = 1 then 1 else 0 := by
    have he := beta_eq_delta_sub_short U n
    rw [beta_zero_of_le U n (Finset.mem_Ioc.mp hn).2,
      short_divisor_sum_eq_indicator U n (Finset.mem_Ioc.mp hn).1] at he
    linarith
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (∑ n ∈ Finset.Ioc 0 U, if d ∣ n then (1 : ℝ) else 0) := by
      simp_rw [multiples_prefix_sum]
    _ = ∑ n ∈ Finset.Ioc 0 U,
        ∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0 := by
      simp_rw [Finset.mul_sum, mul_ite, mul_one, mul_zero]
      rw [Finset.sum_comm]
    _ = ∑ n ∈ Finset.Ioc 0 U, if n = 1 then (1 : ℝ) else 0 := by
      exact Finset.sum_congr rfl hi
    _ = 1 := by simp [Finset.mem_Ioc, hU]

/-- The divisor mean's quotient expression preserves the original anchor U. -/
theorem divisorMean_eq_quotient (U d : ℕ) (hd : 0 < d) :
    divisorMean U d = ((U / d : ℕ) : ℝ) + (1 / 2 : ℝ) -
      ((U : ℝ) + (1 / 2 : ℝ)) / (d : ℝ) := by
  unfold divisorMean
  rw [cast_mod_div U d hd]
  have hd0 : (d : ℝ) ≠ 0 := by exact_mod_cast hd.ne'
  field_simp [hd0]
  ring

/-- The signed prefix mean involves actual finite Mobius sums and alpha; it need not vanish. -/
theorem centeredPrefixMean_eq_actual_arithmetic (U : ℕ) (hU : 1 ≤ U) :
    centeredPrefixMean U = 1 + (1 / 2 : ℝ) *
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ)) -
      ((U : ℝ) + (1 / 2 : ℝ)) * alpha U := by
  calc
    _ = ∑ d ∈ Finset.Icc 1 U,
        ((moebius d : ℝ) * ((U / d : ℕ) : ℝ) +
          (1 / 2 : ℝ) * (moebius d : ℝ) -
          ((U : ℝ) + (1 / 2 : ℝ)) * ((moebius d : ℝ) / (d : ℝ))) := by
      unfold centeredPrefixMean
      apply Finset.sum_congr rfl
      intro d hd
      rw [divisorMean_eq_quotient U d (by
        have := (Finset.mem_Icc.mp hd).1
        omega)]
      ring
    _ = _ := by
      simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib, ← Finset.mul_sum,
        moebius_floor_convolution U hU, alpha]

/-- The complete actual centered prefix is mean plus signed cyclic storage work. -/
theorem actual_centered_prefix_eq_mean_add_storage (U k : ℕ)
    (hU : 1 ≤ U) (hUk : U ≤ k) :
    (∑ n ∈ Finset.Ioc U k, centeredBeta U n) = centeredPrefixMean U +
      ∑ d ∈ Finset.Icc 1 U,
        (moebius d : ℝ) * (divisorStorage d (k + 1) - divisorStorage d k) := by
  rw [actual_centered_prefix_eq_divisor_prefix U k hU hUk]
  unfold centeredPrefixMean
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  rw [divisorPrefix_eq_mean_add_storage U d k (by
    have := (Finset.mem_Icc.mp hd).1
    omega)]
  ring

/-- At the original anchor the nonzero mean is canceled by its signed storage difference. -/
theorem actual_anchor_compensation (U : ℕ) (hU : 1 ≤ U) :
    0 = centeredPrefixMean U + ∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * (divisorStorage d (U + 1) - divisorStorage d U) := by
  simpa using actual_centered_prefix_eq_mean_add_storage U U hU le_rfl

/-- Short summation retains the signed arithmetic inventory size in the error budget. -/
theorem signed_storage_abs_budget (U k : ℕ) :
    |∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * divisorStorage d k| ≤
      ∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ)| * ((d : ℝ) / 8) := by
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  apply Finset.sum_le_sum
  intro d hd
  rw [abs_mul]
  exact mul_le_mul_of_nonneg_left (divisorStorage_abs_le d k (by
    have := (Finset.mem_Icc.mp hd).1
    omega)) (abs_nonneg _)

/-- A deliberately coarse inventory bound grows as U squared; it is not RH closure. -/
theorem signed_storage_abs_coarse_budget (U k : ℕ) :
    |∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * divisorStorage d k| ≤
      (U : ℝ) ^ 2 / 8 := by
  refine (signed_storage_abs_budget U k).trans ?_
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, (U : ℝ) / 8 := by
      apply Finset.sum_le_sum
      intro d hd
      have hm : |(moebius d : ℝ)| ≤ 1 := by
        exact_mod_cast (abs_moebius_le_one (n := d))
      have hdU : (d : ℝ) ≤ (U : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hd).2
      calc
        _ ≤ 1 * ((d : ℝ) / 8) := mul_le_mul_of_nonneg_right hm (by positivity)
        _ ≤ (U : ℝ) / 8 := by linarith
    _ = (U : ℝ) ^ 2 / 8 := by
      simpa [Finset.card_Icc, pow_two] using
        (mul_div_assoc (U : ℝ) (U : ℝ) (8 : ℝ)).symm

end
end FormalResearch.RiemannHypothesis.SourceBetaPrefixStorage
```
