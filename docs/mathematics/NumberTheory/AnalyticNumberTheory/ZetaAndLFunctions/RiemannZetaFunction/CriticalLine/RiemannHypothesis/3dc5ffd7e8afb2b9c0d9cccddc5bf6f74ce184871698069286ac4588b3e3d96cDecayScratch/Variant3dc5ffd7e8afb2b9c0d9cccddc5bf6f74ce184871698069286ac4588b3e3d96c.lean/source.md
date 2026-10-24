# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96cDecayScratch.Variant3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd99790d58dbd90bf16b497a031672fce2791872` · SHA-256 `3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaKernel

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

/-- Explicit finite constant in the source decay estimate. -/
def thetaPhiDecayConstant : ℝ :=
  2 * Real.pi ^ 2 * HurwitzKernelBounds.F_nat 4 1 (1 / 2)

theorem thetaPhiDecayConstant_positive : 0 < thetaPhiDecayConstant := by
  unfold thetaPhiDecayConstant HurwitzKernelBounds.F_nat
  apply mul_pos (by positivity)
  exact (HurwitzKernelBounds.summable_f_nat 4 1 (by norm_num : (0 : ℝ) < 1 / 2)).tsum_pos
    (fun m => by unfold HurwitzKernelBounds.f_nat; positivity) 0 (by
      unfold HurwitzKernelBounds.f_nat
      positivity)

theorem thetaPhi_le_superexp {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t ≤ thetaPhiDecayConstant * Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t)) := by
  have hE : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hmode (m : ℕ) : thetaPhiTerm m t ≤
      (2 * Real.pi ^ 2 * Real.exp (9 * t) * Real.exp (-(Real.pi / 2) * Real.exp (4 * t))) *
        HurwitzKernelBounds.f_nat 4 1 (1 / 2) m := by
    rw [thetaPhiTerm_eq_gaussians]
    apply le_trans (sub_le_self _ (by unfold HurwitzKernelBounds.f_nat; positivity))
    have hn : (1 : ℝ) ≤ (m : ℝ) + 1 := by
      have : (0 : ℝ) ≤ m := Nat.cast_nonneg m
      linarith
    have hn2 : 1 ≤ ((m : ℝ) + 1) ^ 2 := one_le_pow₀ hn
    have hsplit : Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
        Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
          Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2)) := by
      rw [← Real.exp_add]
      apply Real.exp_le_exp.mpr
      have hprod := mul_nonneg (sub_nonneg.mpr hn2) (sub_nonneg.mpr hE)
      have hmid : Real.exp (4 * t) + ((m : ℝ) + 1) ^ 2 ≤
          2 * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t) := by nlinarith
      nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hmid)]
    unfold HurwitzKernelBounds.f_nat
    calc
      _ ≤ (2 * Real.pi ^ 2 * Real.exp (9 * t)) *
          (((m : ℝ) + 1) ^ 4 * (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
            Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2)))) := by
        gcongr
      _ = _ := by ring
  have hsum := (thetaPhi_summable t).tsum_le_tsum hmode
    ((HurwitzKernelBounds.summable_f_nat 4 1 (by norm_num : (0 : ℝ) < 1 / 2)).mul_left _)
  apply hsum.trans_eq
  rw [tsum_mul_left]
  unfold thetaPhiDecayConstant HurwitzKernelBounds.F_nat
  rw [sub_eq_add_neg, Real.exp_add, neg_mul]
  ring

theorem thirteen_mul_le_half_pi_exp {t : ℝ} (ht : 0 ≤ t) :
    13 * t ≤ (Real.pi / 2) * Real.exp (4 * t) := by
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hpi : 3 * Real.exp (4 * t) ≤ Real.pi * Real.exp (4 * t) :=
    mul_le_mul_of_nonneg_right Real.pi_gt_three.le (Real.exp_pos _).le
  nlinarith [sq_nonneg (24 * t - 7)]

theorem thetaPhi_le_exp_neg_four_mul {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t ≤ thetaPhiDecayConstant * Real.exp (-4 * t) := by
  refine (thetaPhi_le_superexp ht).trans ?_
  apply mul_le_mul_of_nonneg_left _ thetaPhiDecayConstant_positive.le
  apply Real.exp_le_exp.mpr
  linarith [thirteen_mul_le_half_pi_exp ht]

theorem thetaPhi_le_exp_neg_two_mul {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t ≤ thetaPhiDecayConstant * Real.exp (-2 * t) := by
  refine (thetaPhi_le_exp_neg_four_mul ht).trans ?_
  apply mul_le_mul_of_nonneg_left _ thetaPhiDecayConstant_positive.le
  apply Real.exp_le_exp.mpr
  linarith

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
