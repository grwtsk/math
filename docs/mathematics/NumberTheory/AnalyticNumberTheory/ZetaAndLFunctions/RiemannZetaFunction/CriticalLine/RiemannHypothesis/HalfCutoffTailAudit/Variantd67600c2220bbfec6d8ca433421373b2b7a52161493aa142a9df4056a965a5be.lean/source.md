# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HalfCutoffTailAudit.Variantd67600c2220bbfec6d8ca433421373b2b7a52161493aa142a9df4056a965a5be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0f29149eaec52475dbd8e7609445ad4b014f231` · SHA-256 `d67600c2220bbfec6d8ca433421373b2b7a52161493aa142a9df4056a965a5be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate

set_option autoImplicit false

namespace HalfCutoffTailScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

theorem reciprocal_half_cutoff_tail_le (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 := by
  have hY : (0 : ℝ) < (Y : ℝ) + 1 := by positivity
  calc
    _ ≤ ∑ _g ∈ Ioc Y G, 1 / ((Y : ℝ) + 1) := by
      apply sum_le_sum
      intro g hg
      apply one_div_le_one_div_of_le hY
      have hg1 : Y + 1 ≤ g := by have hh := (mem_Ioc.mp hg).1; omega
      exact_mod_cast hg1
    _ = ((G - Y : ℕ) : ℝ) / ((Y : ℝ) + 1) := by
      simp only [sum_const, Nat.card_Ioc, nsmul_eq_mul, mul_one_div]
    _ ≤ 1 := by
      apply (div_le_one hY).mpr
      have hcard : G - Y ≤ Y + 1 := by omega
      exact_mod_cast hcard

theorem sqrt_square_scale (h g : ℕ) :
    Real.sqrt ((h*g^2 : ℕ) : ℝ) = Real.sqrt (h : ℝ) * (g : ℝ) := by
  push_cast
  rw [Real.sqrt_mul (Nat.cast_nonneg h), Real.sqrt_sq (Nat.cast_nonneg g)]

theorem thetaRemainder_half_cutoff_tail_abs_le (A : ℝ) (h Y G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h*g^2)| ≤
      ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) := by
  calc
    _ ≤ ∑ g ∈ Ioc Y G, |ThetaRemainder.thetaRemainder A (h*g^2)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Ioc Y G, (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      have hg1 : 1 ≤ g := by have h := (mem_Ioc.mp hg).1; omega
      have hq : 1 ≤ h*g^2 := Nat.mul_pos hh (Nat.pow_pos hg1)
      have he := ThetaKernelEstimate.thetaRemainder_abs_le_kernelBound A (h*g^2) hA hq
      rw [sqrt_square_scale] at he
      simpa only [div_eq_mul_inv, mul_inv_rev, one_mul, mul_assoc, mul_comm, mul_left_comm] using he
    _ = (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Ioc Y G, 1 / (g : ℝ) := by rw [mul_sum]
    _ ≤ _ := by
      have hk : 0 ≤ ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) :=
        div_nonneg (ThetaKernelEstimate.kernelBound_nonneg A hA) (Real.sqrt_nonneg _)
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (reciprocal_half_cutoff_tail_le Y G hYG hhalf) hk

end
end HalfCutoffTailScratch

#print HalfCutoffTailScratch.reciprocal_half_cutoff_tail_le
#print axioms HalfCutoffTailScratch.reciprocal_half_cutoff_tail_le
#print HalfCutoffTailScratch.sqrt_square_scale
#print axioms HalfCutoffTailScratch.sqrt_square_scale
#print HalfCutoffTailScratch.thetaRemainder_half_cutoff_tail_abs_le
#print axioms HalfCutoffTailScratch.thetaRemainder_half_cutoff_tail_abs_le
```
