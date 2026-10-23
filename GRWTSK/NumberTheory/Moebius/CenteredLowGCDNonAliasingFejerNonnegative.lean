/- Copyright (c) 2026 R.A. Jacob Martone. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerNormalization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.Primes.GoldbachFejerKernel

theorem symmetricTriangularKernel_eq_normalized_goldbachFejer
    {N : ℕ} (hN : 0 < N) (t : ℝ) :
    symmetricTriangularKernel N (t : AddCircle (1 : ℝ)) =
      ((goldbachFejerKernel (N - 1) t / (N : ℝ) : ℝ) : ℂ) := by
  rw [symmetricTriangularKernel_eq_normalized_goldbachFiniteKernel hN t,
    goldbachFiniteSingularKernel_eq_fejer]
  push_cast
  ring

theorem symmetricTriangularKernel_re_nonnegative
    {N : ℕ} (hN : 0 < N) (t : ℝ) :
    0 ≤
      (symmetricTriangularKernel N
        (t : AddCircle (1 : ℝ))).re := by
  rw [symmetricTriangularKernel_eq_normalized_goldbachFejer hN t]
  simp only [Complex.ofReal_re]
  exact div_nonneg
    (goldbachFejerKernel_nonneg (N - 1) t)
    (by exact_mod_cast hN.le)

theorem signedSampledTriangularKernelAtPeriod_nonnegative
    {L N : ℕ}
    (hL : 0 < L)
    (hN : 0 < N)
    (r : ℤ) :
    0 ≤ signedSampledTriangularKernelAtPeriod L N r := by
  unfold signedSampledTriangularKernelAtPeriod
  have hscale : 0 ≤ (1 : ℝ) / (L : ℝ) := by
    positivity
  exact mul_nonneg hscale
    (symmetricTriangularKernel_re_nonnegative hN
      ((r : ℝ) / (L : ℝ)))

end GRWTSK.RiemannHypothesis
