# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.FiniteCubicZetaTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9a10655c573ec4c0242dee5c72dc304387ebc38` · SHA-256 `725eb551720b418997a32c1557ae52649c4aaac6ef6a53db068e951f15460b62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.FiniteCubicZetaApproximation
import GRWTSK.Analysis.Complex.FiniteExponentialEnclosure
import Mathlib.Analysis.Complex.Liouville

set_option autoImplicit false

/-!
# Complete value and slope tails for the finite zeta approximation

On Re(s)>=0 the entire omitted cubic remainder is bounded by 1/(96 L^2).
Cauchy applies to its analytic product, not to the magnitude bound and not to
raw zeta across its pole. A positive disk radius inside Re>=0 gives a complete
slope-tail bound. No finite sample or next-term estimate supplies these tails.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.FiniteCubicZetaTail

open Set Metric
open scoped Topology BigOperators
open GRWTSK.Analysis.Real.PowerCellMajorant
open GRWTSK.Analysis.Complex.FiniteExponentialEnclosure
open CubicRemainder FiniteCubicZetaApproximation

noncomputable section

/-- Rectangular ceilings make this expression rational on rational centers and radii. -/
def diskBudget (N : ℕ) (c : ℂ) (r : ℝ) : ℝ :=
  (rectNorm c + r) * (rectNorm (c + 1) + r) * (rectNorm (c + 2) + r) /
    (96 * cutoff N ^ 2)

theorem diskBudget_nonneg (N : ℕ) (c : ℂ) (r : ℝ) (hr : 0 ≤ r) :
    0 ≤ diskBudget N c r := by
  have h0 := rectNorm_nonneg c
  have h1 := rectNorm_nonneg (c + 1)
  have h2 := rectNorm_nonneg (c + 2)
  unfold diskBudget
  positivity

/-- Strengthen the inherited tail on Re>=0; L=N+1 is the first omitted cell. -/
theorem norm_remainder_sub_prefix_le_square (N : ℕ) (s : ℂ) (hs : 0 ≤ s.re) :
    ‖CubicRemainder.cubicRemainder s - cellPrefix N s‖ ≤
      1 / (96 * cutoff N ^ 2) := by
  have hb := norm_cubicRemainder_sub_prefix_le 0 (by norm_num) s hs N
  have he : decayPower 2 (cutoff N) = 1 / cutoff N ^ 2 := by
    unfold decayPower
    rw [show -(2 : ℝ) * Real.log (cutoff N) =
      -(Real.log (cutoff N) + Real.log (cutoff N)) by ring,
      Real.exp_neg, Real.exp_add, Real.exp_log (cutoff_pos N)]
    simp [pow_two, one_div]
  norm_num only [zero_add] at hb
  change ‖CubicRemainder.cubicRemainder s - cellPrefix N s‖ ≤
    decayPower 2 (cutoff N) / 96 at hb
  rw [he] at hb
  convert hb using 1 <;> ring

theorem norm_tail_le (N : ℕ) (s : ℂ) (hs : 0 ≤ s.re) :
    ‖analyticTail N s‖ ≤ ‖s‖ * ‖s + 1‖ * ‖s + 2‖ / (96 * cutoff N ^ 2) := by
  unfold analyticTail
  rw [norm_mul, norm_neg, norm_mul, norm_mul]
  have h := mul_le_mul_of_nonneg_left (norm_remainder_sub_prefix_le_square N s hs)
    (show 0 ≤ ‖s‖ * ‖s + 1‖ * ‖s + 2‖ by positivity)
  simpa only [mul_one_div] using h

/-- Every point of a closed parameter disk stays in the required half-plane. -/
theorem re_nonneg_on_disk (c s : ℂ) (r : ℝ) (hc : r ≤ c.re)
    (hs : s ∈ closedBall c r) : 0 ≤ s.re := by
  have hd : ‖s - c‖ ≤ r := by simpa [mem_closedBall, dist_eq_norm] using hs
  have hp := (Complex.abs_re_le_norm (s - c)).trans hd
  change |s.re - c.re| ≤ r at hp
  linarith [(abs_le.mp hp).1]

/-- Complete all-point tail control on the disk, not just its center or samples. -/
theorem norm_tail_le_diskBudget (N : ℕ) (c : ℂ) (r : ℝ)
    (hr : 0 ≤ r) (hc : r ≤ c.re) (s : ℂ) (hs : s ∈ closedBall c r) :
    ‖analyticTail N s‖ ≤ diskBudget N c r := by
  have hd : ‖s - c‖ ≤ r := by simpa [mem_closedBall, dist_eq_norm] using hs
  have hshift (a : ℂ) : ‖s + a‖ ≤ rectNorm (c + a) + r := by
    have ht := norm_le_norm_sub_add (s + a) (c + a)
    have he : (s + a) - (c + a) = s - c := by ring
    rw [he] at ht
    linarith [norm_le_rectNorm (c + a)]
  have h0 : ‖s‖ ≤ rectNorm c + r := by simpa using hshift 0
  have h1 := hshift 1
  have h2 := hshift 2
  refine (norm_tail_le N s (re_nonneg_on_disk c s r hc hs)).trans ?_
  unfold diskBudget
  apply div_le_div_of_nonneg_right _ (by positivity)
  exact mul_le_mul (mul_le_mul h0 h1 (norm_nonneg _) (by
    linarith [rectNorm_nonneg c])) h2 (norm_nonneg _) (by
      have h := rectNorm_nonneg c
      have h' := rectNorm_nonneg (c + 1)
      positivity)

/-- Cauchy is applied to the holomorphic omitted tail, including at one. -/
theorem norm_deriv_tail_le (N : ℕ) (c : ℂ) (r : ℝ) (hr : 0 < r) (hc : r ≤ c.re) :
    ‖deriv (analyticTail N) c‖ ≤ diskBudget N c r / r := by
  have ha : AnalyticOnNhd ℂ (analyticTail N) (closedBall c r) := by
    intro s hs
    exact analyticAt_analyticTail N s (by linarith [re_nonneg_on_disk c s r hc hs])
  have hd : DiffContOnCl ℂ (analyticTail N) (ball c r) :=
    DiffContOnCl.mk_ball
      (fun s hs => (ha s (ball_subset_closedBall hs)).differentiableAt.differentiableWithinAt)
      (fun s hs => (ha s hs).continuousAt.continuousWithinAt)
  exact Complex.norm_deriv_le_of_forall_mem_sphere_norm_le hr hd
    (fun s hs => norm_tail_le_diskBudget N c r hr.le hc s (sphere_subset_closedBall hs))

/-- The two actual-source defects have different budgets. Raw zeta still excludes one. -/
theorem value_and_slope_bounds (N : ℕ) (c : ℂ) (r : ℝ)
    (hr : 0 < r) (hc : r ≤ c.re) (hpole : c ≠ 1) :
    ‖riemannZeta c - approximation N c‖ ≤ diskBudget N c 0 ∧
      ‖deriv riemannZeta c - approximationSlope N c‖ ≤ diskBudget N c r / r := by
  have hc0 : 0 ≤ c.re := hr.le.trans hc
  constructor
  · rw [zeta_sub_approximation N c (by linarith) hpole]
    exact norm_tail_le_diskBudget N c 0 (by norm_num) hc0 c (mem_closedBall_self le_rfl)
  · rw [slope_defect_eq_deriv_tail N c (by linarith) hpole]
    exact norm_deriv_tail_le N c r hr hc

/-- Finite numerical evaluation errors are charged IN ADDITION to complete analytic tails. -/
theorem center_enclosures_of_finite (N : ℕ) (c : ℂ) (r : ℝ)
    (hr : 0 < r) (hc : r ≤ c.re) (hpole : c ≠ 1)
    (v d : ℂ) (ev ed : ℝ)
    (hv : ‖approximation N c - v‖ ≤ ev)
    (hd : ‖approximationSlope N c - d‖ ≤ ed) :
    ‖riemannZeta c - v‖ ≤ diskBudget N c 0 + ev ∧
      ‖deriv riemannZeta c - d‖ ≤ diskBudget N c r / r + ed := by
  have h := value_and_slope_bounds N c r hr hc hpole
  constructor
  · exact (norm_sub_le_norm_sub_add_norm_sub _ (approximation N c) _).trans (add_le_add h.1 hv)
  · exact (norm_sub_le_norm_sub_add_norm_sub _ (approximationSlope N c) _).trans (add_le_add h.2 hd)

end
end GRWTSK.RiemannHypothesis.FiniteCubicZetaTail
```
