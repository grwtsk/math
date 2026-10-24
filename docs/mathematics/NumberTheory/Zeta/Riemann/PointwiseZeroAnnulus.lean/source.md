# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PointwiseZeroAnnulus

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6c9e8ab3e5725882496ad07a0b783ff1269238e` · SHA-256 `79267ea7a68d6dc12330017fd1a23fcbc051f434b1b73c449eaff1facc8c7b60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalHighCounting

/-! # Count-derived finite annuli for the pointwise zero head

The actual canonical zeros, multiplicities and absolute-height cutoffs are
retained. The bound below is on a FINITE annulus. Unlike the smoothed
inverse-square kernel bound it does not provide a vanishing infinite tail;
no cancellation or interchange of limits is inferred from counting alone.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Zeta.Riemann.PointwiseZeroAnnulus

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open GRWTSK.Analysis.Series.HeightCountingTail
open PointwiseFiniteZeroHead

theorem norm_pointwiseZeroTerm_le_of_height (x T : ℝ) (hx : 1 < x) (hT : 0 < T)
    (z : ZeroPoint) (hz : T ≤ height z) :
    ‖pointwiseZeroTerm x z.1‖ ≤ x / T := by
  have hx0 : 0 < x := by linarith
  have hn : Real.exp (z.1.re * Real.log x) ≤ x := by
    calc
      _ ≤ Real.exp (Real.log x) := Real.exp_le_exp.mpr (by
        simpa only [one_mul] using mul_le_mul_of_nonneg_right (point_mem_strip z).2.le
          (Real.log_nonneg hx.le))
      _ = x := Real.exp_log hx0
  have hnorm : T ≤ ‖z.1‖ := hz.trans (Complex.abs_im_le_norm z.1)
  rw [norm_pointwiseZeroTerm]
  exact (div_le_div_of_nonneg_right hn (norm_nonneg _)).trans
    (div_le_div_of_nonneg_left hx0.le hT hnorm)

def pointwiseAnnulusBudget (x T U : ℝ) : ℝ :=
  x * countingCoefficient * (U * Real.log U) / T

/-- Complete nested heads, including the exact right-closed height boundary.
The count has no omitted low-head term because the annulus lies above T>=2. -/
theorem norm_finiteHeightZeroHead_sub_le (x T U : ℝ)
    (hx : 1 < x) (hT : 2 ≤ T) (hTU : T ≤ U) :
    ‖finiteHeightZeroHead x U - finiteHeightZeroHead x T‖ ≤
      pointwiseAnnulusBudget x T U := by
  classical
  let S := heightHead U \ heightHead T
  have hhigh : ∀ z ∈ S, 2 < height z := by
    intro z hz
    exact hT.trans_lt (height_gt_of_not_mem_head T z (Finset.mem_sdiff.mp hz).2)
  have htop : ∀ z ∈ S, height z ≤ U := by
    intro z hz
    exact (mem_heightHead U z).mp (Finset.mem_sdiff.mp hz).1
  have hcount : (∑ z ∈ S, (multiplicity z : ℝ)) ≤
      countingCoefficient * (U * Real.log U) := by
    have hc := finiteCountingMass_high_le S U (hT.trans hTU) hhigh
    rw [finiteCountingMass_eq_total S height (fun z => (multiplicity z : ℝ)) U htop] at hc
    exact hc
  have heq : finiteHeightZeroHead x U - finiteHeightZeroHead x T =
      -(∑ z ∈ S, (multiplicity z : ℂ) * pointwiseZeroTerm x z.1) := by
    dsimp only [S]
    rw [Finset.sum_sdiff_eq_sub (heightHead_mono hTU)]
    unfold finiteHeightZeroHead
    ring
  rw [heq, norm_neg]
  calc
    _ ≤ ∑ z ∈ S, ‖(multiplicity z : ℂ) * pointwiseZeroTerm x z.1‖ := norm_sum_le _ _
    _ ≤ ∑ z ∈ S, (multiplicity z : ℝ) * (x / T) := by
      apply Finset.sum_le_sum
      intro z hz
      rw [norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        (norm_pointwiseZeroTerm_le_of_height x T hx (by linarith) z
          (height_gt_of_not_mem_head T z (Finset.mem_sdiff.mp hz).2).le)
        (Nat.cast_nonneg _)
    _ = (∑ z ∈ S, (multiplicity z : ℝ)) * (x / T) := (Finset.sum_mul _ _ _).symm
    _ ≤ (countingCoefficient * (U * Real.log U)) * (x / T) :=
      mul_le_mul_of_nonneg_right hcount (by positivity)
    _ = pointwiseAnnulusBudget x T U := by unfold pointwiseAnnulusBudget; ring

/-- On the x>1 domain of the annulus bound this majorant does not decay;
it cannot supply an infinite tail by summing positive budgets. -/
theorem pointwiseAnnulusBudget_dyadic (x T : ℝ) (hT : T ≠ 0) :
    pointwiseAnnulusBudget x T (2 * T) = 2 * x * countingCoefficient * Real.log (2 * T) := by
  unfold pointwiseAnnulusBudget
  field_simp

theorem pointwiseAnnulusBudget_dyadic_lower (x T : ℝ) (hx : 1 < x) (hT : 2 ≤ T) :
    2 * x * countingCoefficient * Real.log 4 ≤ pointwiseAnnulusBudget x T (2 * T) := by
  rw [pointwiseAnnulusBudget_dyadic x T (ne_of_gt (by linarith))]
  exact mul_le_mul_of_nonneg_left
    (Real.log_le_log (by norm_num) (show (4 : ℝ) ≤ 2 * T by linarith))
    (by have hc := countingCoefficient_pos; positivity)

end GRWTSK.NumberTheory.Zeta.Riemann.PointwiseZeroAnnulus
```
