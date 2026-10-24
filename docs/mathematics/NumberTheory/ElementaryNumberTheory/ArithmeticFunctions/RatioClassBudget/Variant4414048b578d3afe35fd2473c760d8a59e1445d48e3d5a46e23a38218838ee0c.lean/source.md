# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RatioClassBudget.Variant4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d74d8f8d871b1d2ece204ca3bcf633387ed173e` · SHA-256 `4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeRatioProduct
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate
import Mathlib.NumberTheory.Harmonic.Bounds

set_option autoImplicit false

namespace RatioClassBudgetScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open ThetaRemainder ThetaKernelEstimate PrimeRatioProduct

noncomputable section

def ratioClassContribution (A : ℝ) (u v : ℕ) : ℝ :=
  (ArithmeticFunction.moebius (u * v) : ℝ) *
    ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
      (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g (u * v) then 1 else 0) * thetaRemainder A ((u * v) * g ^ 2)

theorem source_harmonic_sum_le (A : ℝ) (hA : 1 ≤ A) :
    (∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, 1 / (g : ℝ)) ≤ 1 + A := by
  have he : 1 ≤ Real.exp A := (Real.one_le_exp_iff).mpr (by linarith)
  simpa only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast,
    one_div, Real.log_exp] using harmonic_floor_le_one_add_log (Real.exp A) he

private theorem moebius_real_abs_le (n : ℕ) : |(ArithmeticFunction.moebius n : ℝ)| ≤ 1 := by
  exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))

private theorem ratio_term_abs_le (A : ℝ) (u v g : ℕ)
    (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) (hg : 1 ≤ g) :
    |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
      (if Nat.Coprime g (u * v) then 1 else 0) * thetaRemainder A ((u * v) * g ^ 2)| ≤
      (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) * (1 / (g : ℝ)) := by
  have hK := kernelBound_nonneg A hA
  have hu0 : 0 < u := by omega
  have hv0 : 0 < v := by omega
  have hg0 : 0 < g := by omega
  have hq : 1 ≤ (u * v) * g ^ 2 := by
    have hq0 : 0 < (u * v) * g ^ 2 := by positivity
    omega
  have hs := thetaRemainder_abs_le_kernelBound A ((u * v) * g ^ 2) hA hq
  have hmsq : (ArithmeticFunction.moebius g : ℝ) ^ 2 ≤ 1 := by
    have h := pow_le_pow_left₀ (abs_nonneg (ArithmeticFunction.moebius g : ℝ))
      (moebius_real_abs_le g) 2
    simpa only [sq_abs, one_pow] using h
  have hden : kernelBound A / Real.sqrt (((u * v) * g ^ 2 : ℕ) : ℝ) =
      (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) * (1 / (g : ℝ)) := by
    rw [Nat.cast_mul, Nat.cast_pow, Real.sqrt_mul (Nat.cast_nonneg _),
      Real.sqrt_sq_eq_abs, abs_of_nonneg (Nat.cast_nonneg _)]
    ring
  by_cases hcop : Nat.Coprime g (u * v)
  · rw [if_pos hcop, mul_one, abs_mul, abs_of_nonneg (sq_nonneg _)]
    calc
      _ ≤ |thetaRemainder A ((u * v) * g ^ 2)| :=
        mul_le_of_le_one_left (abs_nonneg _) hmsq
      _ ≤ _ := hs.trans_eq hden
  · rw [if_neg hcop, mul_zero, zero_mul, abs_zero]
    positivity

theorem ratioClass_abs_le (A : ℝ) (u v : ℕ)
    (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    |ratioClassContribution A u v| ≤
      kernelBound A * (1 + A) / Real.sqrt ((u * v : ℕ) : ℝ) := by
  have hK := kernelBound_nonneg A hA
  have hcoef : 0 ≤ kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ) := by positivity
  have hsub : Icc 1 (⌊Real.exp A⌋₊ / max u v) ⊆ Icc 1 ⌊Real.exp A⌋₊ := by
    intro g hg
    exact mem_Icc.mpr ⟨(mem_Icc.mp hg).1, (mem_Icc.mp hg).2.trans (Nat.div_le_self _ _)⟩
  unfold ratioClassContribution
  rw [abs_mul]
  calc
    _ ≤ |∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
        (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (u * v) then 1 else 0) * thetaRemainder A ((u * v) * g ^ 2)| :=
      mul_le_of_le_one_left (abs_nonneg _) (moebius_real_abs_le _)
    _ ≤ ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
        |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (u * v) then 1 else 0) * thetaRemainder A ((u * v) * g ^ 2)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
        (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) * (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      exact ratio_term_abs_le A u v g hA hu hv (mem_Icc.mp hg).1
    _ = (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) *
        ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v), 1 / (g : ℝ) := (mul_sum _ _ _).symm
    _ ≤ (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) *
        ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, 1 / (g : ℝ) := by
      apply mul_le_mul_of_nonneg_left _ hcoef
      exact sum_le_sum_of_subset_of_nonneg hsub (fun g _ _ ↦ by positivity)
    _ ≤ (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) * (1 + A) :=
      mul_le_mul_of_nonneg_left (source_harmonic_sum_le A hA) hcoef
    _ = _ := by ring

theorem supported_ratio_sum_abs_le (A : ℝ) (P : Finset ℕ)
    (hA : 1 ≤ A) (hP : ∀ p ∈ P, Nat.Prime p) :
    |∑ p ∈ supportedPairs P, ratioClassContribution A p.1 p.2| ≤
      kernelBound A * (1 + A) * ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) := by
  calc
    _ ≤ ∑ p ∈ supportedPairs P, |ratioClassContribution A p.1 p.2| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ supportedPairs P,
        kernelBound A * (1 + A) / Real.sqrt ((p.1 * p.2 : ℕ) : ℝ) := by
      apply sum_le_sum
      intro p hp
      have hs := (mem_supportedPairs_iff P hP p.1 p.2).mp hp
      exact ratioClass_abs_le A p.1 p.2 hA
        (Nat.one_le_iff_ne_zero.mpr hs.1.ne_zero)
        (Nat.one_le_iff_ne_zero.mpr hs.2.1.ne_zero)
    _ = kernelBound A * (1 + A) *
        ∑ p ∈ supportedPairs P, 1 / Real.sqrt ((p.1 * p.2 : ℕ) : ℝ) := by
      rw [mul_sum]
      apply sum_congr rfl
      intro p _
      ring
    _ = _ := by rw [supportedPairs_weight_sum P hP]

end
end RatioClassBudgetScratch
```
