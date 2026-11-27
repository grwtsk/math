import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Convex.Deriv
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Harmonic kernels for weighted prime discrepancy

The ordinary-prime weight at order `n` is `y⁻² (1-y⁻²)^n`.
At the logarithmic coordinate `s = 2 log y`, summing these weights with
coefficients `1/n` leads to the kernel below. Its normalized prefix is
antitone. The derivative of the unnormalized moving block is computed exactly;
the normalized moving block can increase, even at order one.
-/

namespace GRWTSK.XiPrimeHarmonic

/-- Prefix of the weighted powers in logarithmic coordinates. -/
noncomputable def kernel (N : ℕ) (s : ℝ) : ℝ :=
  ∑ k ∈ Finset.range N, (1 - Real.exp (-s)) ^ (k + 1) / ((k : ℝ) + 1)

/-- The block containing precisely the orders strictly above `N` and at most `2N`. -/
noncomputable def block (N : ℕ) (s : ℝ) : ℝ := kernel (2 * N) s - kernel N s

@[simp] theorem kernel_zero_arg (N : ℕ) : kernel N 0 = 0 := by
  simp [kernel]

/-- The logarithmic change of variables recovers each original power. -/
theorem kernel_at_two_log {y : ℝ} (hy : 0 < y) (N : ℕ) :
    kernel N (2 * Real.log y) =
      ∑ k ∈ Finset.range N, (1 - (y^2)⁻¹) ^ (k + 1) / ((k : ℝ) + 1) := by
  have he : Real.exp (-(2 * Real.log y)) = (y^2)⁻¹ := by
    rw [Real.exp_neg, two_mul, Real.exp_add, Real.exp_log hy, pow_two]
  simp only [kernel, he]

theorem hasDerivAt_kernel (N : ℕ) (s : ℝ) :
    HasDerivAt (kernel N) (1 - (1 - Real.exp (-s)) ^ N) s := by
  have hbase : HasDerivAt (fun t : ℝ => 1 - Real.exp (-t)) (Real.exp (-s)) s := by
    simpa using (((hasDerivAt_id s).neg.exp).const_sub 1)
  induction N with
  | zero =>
    have h0 : kernel 0 = fun _ => 0 := by funext t; simp [kernel]
    rw [h0]
    simpa using (hasDerivAt_const s (0 : ℝ))
  | succ N ih =>
    have hn : (N : ℝ) + 1 ≠ 0 := by positivity
    have h := ih.add ((hbase.fun_pow (N+1)).div_const ((N : ℝ) + 1))
    convert h using 1
    · funext t
      simp [kernel, Finset.sum_range_succ]
    · simp only [Nat.cast_add, Nat.cast_one, Nat.add_sub_cancel]
      rw [pow_succ]
      field_simp
      ring

/-- The prefix kernel is concave on the nonnegative ray. -/
theorem concaveOn_kernel (N : ℕ) : ConcaveOn ℝ (Set.Ici 0) (kernel N) := by
  apply AntitoneOn.concaveOn_of_deriv (convex_Ici _)
    (fun x _ => (hasDerivAt_kernel N x).continuousAt.continuousWithinAt)
    (fun x _ => (hasDerivAt_kernel N x).differentiableAt.differentiableWithinAt)
  intro x hx y _ hxy
  rw [(hasDerivAt_kernel N x).deriv, (hasDerivAt_kernel N y).deriv]
  apply sub_le_sub_left
  have hx0 : (0 : ℝ) ≤ x := interior_subset hx
  have hxexp : Real.exp (-x) ≤ 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  apply pow_le_pow_left₀ (sub_nonneg.mpr hxexp) _ N
  exact sub_le_sub_left (Real.exp_le_exp.mpr (neg_le_neg hxy)) 1

/-- This antitonicity supplies the sign in partial summation for prefixes. -/
theorem normalized_kernel_antitone (N : ℕ) :
    AntitoneOn (fun s : ℝ => kernel N s / s) (Set.Ioi 0) := by
  intro x hx y hy hxy
  have hx' : 0 < x := hx
  have hy' : 0 < y := hy
  have hxy' : 0 ≤ x / y := (div_pos hx' hy').le
  have hcoef : x / y ≤ 1 := (div_le_one hy').mpr hxy
  have h := (concaveOn_kernel N).2 (show y ∈ Set.Ici (0 : ℝ) from hy'.le)
    (show (0 : ℝ) ∈ Set.Ici 0 from (show (0 : ℝ) ≤ 0 from le_refl 0)) hxy' (sub_nonneg.mpr hcoef)
    (show x/y + (1 - x/y) = 1 by ring)
  simp only [smul_eq_mul, mul_zero, kernel_zero_arg, add_zero, div_mul_cancel₀ _ hy'.ne'] at h
  apply (div_le_div_iff₀ hy' hx').mpr
  have hk := (div_le_iff₀ hy').mp (show x * kernel N y / y ≤ kernel N x by
    convert h using 1
    ring)
  linarith

/-- The block derivative has a single scalar peak, at `(1 - exp(-s))^N = 1/2`. -/
theorem hasDerivAt_block (N : ℕ) (s : ℝ) :
    HasDerivAt (block N)
      ((1 - Real.exp (-s)) ^ N * (1 - (1 - Real.exp (-s)) ^ N)) s := by
  have h := (hasDerivAt_kernel (2 * N) s).sub (hasDerivAt_kernel N s)
  unfold block
  convert h using 1
  simp only [two_mul, pow_add]
  ring

theorem deriv_block_le_quarter (N : ℕ) (s : ℝ) : deriv (block N) s ≤ 1/4 := by
  rw [(hasDerivAt_block N s).deriv]
  nlinarith [sq_nonneg ((1 - Real.exp (-s))^N - 1/2)]

theorem deriv_block_eq_quarter_iff (N : ℕ) (s : ℝ) :
    deriv (block N) s = 1/4 ↔ (1 - Real.exp (-s))^N = 1/2 := by
  rw [(hasDerivAt_block N s).deriv]
  constructor
  · intro h
    have he : ((1 - Real.exp (-s))^N - 1/2)^2 = 0 := by nlinarith
    simpa using sub_eq_zero.mp (sq_eq_zero_iff.mp he)
  · intro h
    rw [h]
    norm_num

private theorem base_pow_strict {N : ℕ} (hN : N ≠ 0) {s t : ℝ} (hs : 0 ≤ s) (hst : s < t) :
    (1 - Real.exp (-s))^N < (1 - Real.exp (-t))^N := by
  apply pow_lt_pow_left₀ _ _ hN
  · exact sub_lt_sub_left (Real.exp_lt_exp.mpr (neg_lt_neg hst)) 1
  · rw [sub_nonneg, ← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)

/-- Before the half-height crossing, the slope of the moving block increases strictly. -/
theorem deriv_block_strict_rise {N : ℕ} (hN : N ≠ 0) {s t : ℝ} (hs : 0 ≤ s) (hst : s < t)
    (ht : (1 - Real.exp (-t))^N ≤ 1/2) : deriv (block N) s < deriv (block N) t := by
  rw [(hasDerivAt_block N s).deriv, (hasDerivAt_block N t).deriv]
  have h := base_pow_strict hN hs hst
  have hpos : 0 < (1 - (1 - Real.exp (-s))^N - (1 - Real.exp (-t))^N) := by linarith
  nlinarith only [mul_pos (sub_pos.mpr h) hpos]

/-- After the half-height crossing, the slope of the moving block decreases strictly. -/
theorem deriv_block_strict_fall {N : ℕ} (hN : N ≠ 0) {s t : ℝ} (hs : 0 ≤ s) (hst : s < t)
    (hc : 1/2 ≤ (1 - Real.exp (-s))^N) : deriv (block N) t < deriv (block N) s := by
  rw [(hasDerivAt_block N s).deriv, (hasDerivAt_block N t).deriv]
  have h := base_pow_strict hN hs hst
  have hpos : 0 < (1 - Real.exp (-s))^N + (1 - Real.exp (-t))^N - 1 := by linarith
  nlinarith only [mul_pos (sub_pos.mpr h) hpos]

/-- At order one, the normalized block increases between log 2 and twice log 2.
Thus prefix antitonicity cannot be applied to this block. -/
theorem normalized_block_one_increases :
    block 1 (Real.log 2) / Real.log 2 <
    block 1 (2 * Real.log 2) / (2 * Real.log 2) := by
  have he : Real.exp (-(Real.log 2)) = (2 : ℝ)⁻¹ := by
    rw [Real.exp_neg, Real.exp_log (by norm_num)]
  have he' : Real.exp (-(2 * Real.log 2)) = ((2 : ℝ)^2)⁻¹ := by
    rw [Real.exp_neg, two_mul, Real.exp_add, Real.exp_log (by norm_num), pow_two]
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  unfold block kernel
  norm_num [Finset.sum_range_succ, he, he']
  field_simp
  linarith

end GRWTSK.XiPrimeHarmonic
