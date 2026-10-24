/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries

set_option autoImplicit false

/-! Source controls only; NOT_RUN / NOT_KERNEL_AUDITED. No prime certificate is produced. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.TrivialZeroSeriesControls

open scoped BigOperators
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries

noncomputable section

/-- The zero-based index starts at -2 and includes -4 next. -/
theorem first_two_parameters : trivialPoint 0 = -2 ∧ trivialPoint 1 = -4 := by
  norm_num [trivialPoint]

/-- Equal heights do not identify different trivial-zero locations. -/
theorem same_height_distinct_points :
    (trivialPoint 0).im = (trivialPoint 1).im ∧ trivialPoint 0 ≠ trivialPoint 1 := by
  constructor
  · simp
  · intro he
    have h := trivialPoint_injective he
    norm_num at h

/-- Trivial points must not be inserted in the canonical nontrivial divisor. -/
theorem first_trivial_is_excluded : ¬ NontrivialZetaZero (trivialPoint 0) :=
  trivialPoint_not_nontrivial 0

/-- A positive inverse-height-tail threshold cannot cover a zero-height term. -/
theorem no_positive_height_guard (k : ℕ) : ¬ (1 : ℝ) ≤ |(trivialPoint k).im| := by
  simp

/-- Actual simplicity at -2 is derived, not placed in a fixture hypothesis. -/
theorem first_trivial_derivative_nonzero : deriv riemannZeta (-2) ≠ 0 := by
  simpa only [(first_two_parameters).1] using deriv_zeta_trivialPoint_ne_zero 0

/-- Parameter -2 has density t^-3, not the t^-1 density of parameter zero. -/
theorem first_density_at_two : density (trivialPoint 0) 2 = (1 / 8 : ℂ) := by
  have he := density_trivialPoint (t := 2) (by norm_num) 0
  norm_num at he
  exact he

/-- Even this short finite geometric prefix has a nonzero omitted part. -/
theorem finite_density_still_has_remainder :
    densityPrefix 2 2 = (5 / 32 : ℝ) ∧
      rationalDensity 2 - densityPrefix 2 2 = (1 / 96 : ℝ) := by
  norm_num [densityPrefix, rationalDensity, Finset.sum_range_succ]

/-- The empty observed prefix cannot be the full, strictly negative correction series. -/
theorem empty_prefix_is_not_complete :
    (∑ k ∈ Finset.range 0, -tentKernel 3 1 (trivialPoint k)) ≠
      ∑' k : ℕ, -tentKernel 3 1 (trivialPoint k) := by
  rw [tsum_trivial_tent_coefficients 3 1 (by norm_num) (by norm_num)]
  simp only [Finset.range_zero, Finset.sum_empty]
  exact Ne.symm (Complex.ofReal_ne_zero.mpr
    (ne_of_lt (rationalTentCorrection_neg 3 1 (by norm_num) (by norm_num))))

end
end GRWTSK.NumberTheory.Chebyshev.Checks.TrivialZeroSeriesControls
