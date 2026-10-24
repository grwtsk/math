/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLogarithmicResidues
import GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel

set_option autoImplicit false

/-!
# Actual zero and pole coefficients for first-Riesz and tent integrands

The negative log derivative is the actual zeta expression. Kernel multipliers
are the existing positive-axis Mellin functions. No fitted residue coefficient,
simple-zero assumption, or critical-line replacement is introduced.

The declarations identify local contributions only. Perron inversion, contour
orientation, boundary zero avoidance, the trivial-zero residue family, its
complete sum, and the infinite contour limit are not proved by this module.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentResidueContributions

open Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalLogarithmicResidues

noncomputable section

/-- The first-Riesz multiplier uses the same explicit real-log power convention.
Its quotient formula is not an analytic declaration at zero or minus one. -/
def firstRieszKernel (u : ℝ) (s : ℂ) : ℂ :=
  logPower u (s + 1) / (s * (s + 1))

/-- Local continuity is derived exactly where both parameter denominators are nonzero. -/
theorem continuousAt_firstRieszKernel (u : ℝ) (s : ℂ)
    (hs : s ≠ 0) (hs1 : s + 1 ≠ 0) : ContinuousAt (firstRieszKernel u) s := by
  unfold firstRieszKernel logPower
  apply ContinuousAt.div
  · fun_prop
  · fun_prop
  · exact mul_ne_zero hs hs1

/-- The first-Riesz pole coefficient has the expected quadratic normalization. -/
theorem firstRieszKernel_one (u : ℝ) (hu : 0 < u) :
    firstRieszKernel u 1 = (u : ℂ) ^ 2 / 2 := by
  have h1 : logPower u (1 : ℂ) = (u : ℂ) := by
    simpa [logPower] using exp_real_log hu
  have h2 := logPower_add_one hu (1 : ℂ)
  norm_num only [one_add_one_eq_two] at h2
  simp only [firstRieszKernel, one_add_one_eq_two, one_mul, h2, h1, pow_two]

/-- The integral-defined tent kernel is entire, including its removable
parameters zero and minus one. This is derived from the retained interval kernels. -/
theorem differentiable_tentKernel (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Differentiable ℂ (tentKernel x h) := by
  have hleft := differentiable_kernel ha (by linarith : x - h ≤ x)
  have hright := differentiable_kernel (by linarith : 1 < x) (by linarith : x ≤ x + h)
  have hshift : Differentiable ℂ (fun s : ℂ => s + 1) := by fun_prop
  exact ((((hleft.comp hshift).sub (hleft.const_mul ((x - h : ℝ) : ℂ))).add
    (hright.const_mul ((x + h : ℝ) : ℂ))).sub (hright.comp hshift)).div_const (h : ℂ)

/-- No arbitrary residue: the canonical zero contributes minus its actual
multiplicity times the multiplier evaluated at its full complex location. -/
theorem firstRiesz_zero_residue_limit (u : ℝ) (z : ZeroPoint) :
    Tendsto (fun s => (s - z.1) * (-logDeriv riemannZeta s * firstRieszKernel u s))
      (𝓝[≠] z.1) (𝓝 (-(multiplicity z : ℂ) * firstRieszKernel u z.1)) := by
  have hs1 : z.1 + 1 ≠ 0 := by
    intro he
    have hr := congrArg Complex.re he
    have hpos := (point_mem_strip z).1
    simp only [Complex.add_re, Complex.one_re, Complex.zero_re] at hr
    linarith
  exact canonical_zero_weighted_limit z (firstRieszKernel u)
    (continuousAt_firstRieszKernel u z.1 z.2.ne_zero hs1)

/-- The actual zeta pole gives the positive quadratic term of the Riesz source. -/
theorem firstRiesz_pole_residue_limit (u : ℝ) (hu : 0 < u) :
    Tendsto (fun s => (s - 1) * (-logDeriv riemannZeta s * firstRieszKernel u s))
      (𝓝[≠] (1 : ℂ)) (𝓝 ((u : ℂ) ^ 2 / 2)) := by
  simpa only [firstRieszKernel_one u hu] using zeta_pole_weighted_limit
    (firstRieszKernel u) (continuousAt_firstRieszKernel u 1 (by norm_num) (by norm_num))

/-- The pointwise tent contribution is derived without any count or source-identity premise. -/
theorem tent_zero_residue_limit (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ZeroPoint) :
    Tendsto (fun s => (s - z.1) * (-logDeriv riemannZeta s * tentKernel x h s))
      (𝓝[≠] z.1) (𝓝 (-(multiplicity z : ℂ) * tentKernel x h z.1)) :=
  canonical_zero_weighted_limit z (tentKernel x h)
    (differentiable_tentKernel x h hh ha).continuous.continuousAt

/-- The pole contributes the radius h, not the diameter 2h. -/
theorem tent_pole_residue_limit (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun s => (s - 1) * (-logDeriv riemannZeta s * tentKernel x h s))
      (𝓝[≠] (1 : ℂ)) (𝓝 (h : ℂ)) := by
  simpa only [tentKernel_one x h hh ha] using zeta_pole_weighted_limit
    (tentKernel x h) (differentiable_tentKernel x h hh ha).continuous.continuousAt

/-- Second differencing the actual Riesz multipliers gives the existing tent
multiplier, with the radius divisor and the two excluded quotient parameters retained. -/
theorem firstRiesz_second_difference (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) (hz : z ≠ 0) (hz1 : z + 1 ≠ 0) :
    (firstRieszKernel (x + h) z - 2 * firstRieszKernel x z +
      firstRieszKernel (x - h) z) / (h : ℂ) = tentKernel x h z := by
  rw [tentKernel_eq_quotient x h hh ha z hz hz1]
  unfold firstRieszKernel
  field_simp [hz, hz1, (by exact_mod_cast ne_of_gt hh : (h : ℂ) ≠ 0)]

/-- The same scalar identity transports a finite-order residue, not a global contour sum. -/
theorem weighted_residue_second_difference (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (z : ℂ) (hz : z ≠ 0) (hz1 : z + 1 ≠ 0) (m : ℕ) :
    (-(m : ℂ) * firstRieszKernel (x + h) z -
      2 * (-(m : ℂ) * firstRieszKernel x z) +
      (-(m : ℂ) * firstRieszKernel (x - h) z)) / (h : ℂ) =
        -(m : ℂ) * tentKernel x h z := by
  rw [← firstRiesz_second_difference x h hh ha z hz hz1]
  ring

end
end GRWTSK.NumberTheory.Chebyshev.TentResidueContributions
