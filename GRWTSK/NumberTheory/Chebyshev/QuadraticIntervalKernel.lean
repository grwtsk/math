/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
import GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals

/-!
# Coupled Mellin kernel at the source's exact half-square endpoints

This adapter reuses the v0.1 endpoints. It neither defines another prime count
nor assumes that any parameter family is the zeta divisor. Its finite error
bound covers included parameters only. The explicit formula and omitted tail
remain separate obligations under #189/#139-#141; the prime-count consumer is
owned separately by #261. Source draft: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel

open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open scoped BigOperators

noncomputable section

/-- The exact endpoint kernel, with no critical-line projection of its parameter. -/
def squareKernel (n : ℕ) (z : ℂ) : ℂ :=
  kernel (squareEndpoint n) (squareEndpoint (n + 1)) z

theorem squareEndpoint_strict_order (n : ℕ) :
    squareEndpoint n < squareEndpoint (n + 1) := by
  have hw := squareEndpoint_width n
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  linarith

theorem differentiable_squareKernel (n : ℕ) (hn : 1 ≤ n) :
    Differentiable ℂ (squareKernel n) :=
  differentiable_kernel (squareEndpoint_gt_one n hn) (squareEndpoint_strict_order n).le

theorem squareKernel_eq_quotient (n : ℕ) (hn : 1 ≤ n) {z : ℂ} (hz : z ≠ 0) :
    squareKernel n z =
      (logPower (squareEndpoint (n + 1)) z - logPower (squareEndpoint n) z) / z :=
  kernel_eq_quotient (squareEndpoint_gt_one n hn) (squareEndpoint_strict_order n).le hz

theorem squareKernel_zero (n : ℕ) (hn : 1 ≤ n) :
    squareKernel n 0 =
      (Real.log (squareEndpoint (n + 1)) - Real.log (squareEndpoint n) : ℝ) :=
  kernel_zero (squareEndpoint_gt_one n hn) (squareEndpoint_strict_order n).le

theorem squareKernel_zero_ne_zero (n : ℕ) (hn : 1 ≤ n) : squareKernel n 0 ≠ 0 :=
  kernel_zero_ne_zero (squareEndpoint_gt_one n hn) (squareEndpoint_strict_order n)

/-- At parameter one, the coupled kernel is exactly the arithmetic main-term width. -/
theorem squareKernel_one (n : ℕ) : squareKernel n 1 = (2 * (n : ℝ) + 1 : ℝ) := by
  simp only [squareKernel, kernel_one, squareEndpoint_width]

theorem norm_squareKernel_sub_le (n : ℕ) (hn : 1 ≤ n) {β : ℝ} {z w : ℂ}
    (hz : z.re ≤ β) (hw : w.re ≤ β) :
    ‖squareKernel n z - squareKernel n w‖ ≤
      ((2 * (n : ℝ) + 1) * Real.log (squareEndpoint (n + 1)) *
        densityBound (squareEndpoint n) (squareEndpoint (n + 1)) β) * ‖z - w‖ := by
  simpa only [squareKernel, sensitivity, squareEndpoint_width] using
    norm_kernel_sub_le (squareEndpoint_gt_one n hn) (squareEndpoint_strict_order n).le hz hw

/-- Exact finite multiplicity transport, without an infinite-divisor claim. -/
theorem square_finite_enclosure_error (n : ℕ) (hn : 1 ≤ n)
    {ι : Type*} (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j) :
    ‖(∑ j ∈ S, (m j : ℂ) * squareKernel n (ρ j)) -
      ∑ j ∈ S, (m j : ℂ) * squareKernel n (c j)‖ ≤
      ∑ j ∈ S, (m j : ℝ) *
        (sensitivity (squareEndpoint n) (squareEndpoint (n + 1)) (β j) * r j) :=
  finite_enclosure_error S m ρ c r β (squareEndpoint_gt_one n hn)
    (squareEndpoint_strict_order n).le hρ hc hr

end
end GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel
