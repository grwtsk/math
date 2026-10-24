/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection

set_option autoImplicit false

/-! Source controls only; NOT_RUN / NOT_KERNEL_AUDITED. No zeta data are used. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.SignedTentCorrectionControls

open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection
open GRWTSK.NumberTheory.Chebyshev.TentSource

noncomputable section

/-- The first density term at two is 1/8, not the complete density 1/6. -/
theorem first_density_term_control :
    rationalDensity 2 = 1 / 6 ∧ densityPrefix 1 2 = 1 / 8 ∧
      rationalDensity 2 - densityPrefix 1 2 = 1 / 24 := by
  norm_num [rationalDensity, densityPrefix, Finset.sum_range_succ]

/-- The first two omitted-even-parameter terms give a strictly different value. -/
theorem second_density_term_control :
    densityPrefix 2 2 = 5 / 32 ∧ rationalDensity 2 - densityPrefix 2 2 = 1 / 96 := by
  norm_num [rationalDensity, densityPrefix, Finset.sum_range_succ]

/-- Negative prefix zero is an upper approximation, not a lower one. -/
theorem empty_prefix_control : correctionPrefix 0 3 1 = 0 ∧ rationalTentCorrection 3 1 < 0 := by
  constructor
  · simp [correctionPrefix, densityPrefix]
  · exact rationalTentCorrection_neg 3 1 (by norm_num) (by norm_num)

/-- Exact normalized area; doubling it would corrupt the pole contribution. -/
theorem radius_not_diameter_control :
    (∫ t in (2 : ℝ)..4, GRWTSK.Analysis.RealAnalysis.TentWeight.tent 3 1 t) = 1 := by
  simpa using integral_tent 3 1 (by norm_num)

/-- Stage two keeps a nonzero negative correction, with rational endpoint bounds. -/
theorem square_two_bounds_control :
    -(1 / 24 : ℝ) ≤ squareTrivialCorrection 2 ∧ squareTrivialCorrection 2 ≤ -(1 / 288 : ℝ) := by
  have hb := squareTrivialCorrection_bounds 2 (by decide)
  norm_num [squareTrivialBudget, squareRadius] at hb
  exact hb

/-- The analytic domain excludes the first square stage, whose left endpoint is one. -/
theorem first_square_domain_control : ¬ (1 : ℝ) < squareCenter 1 - squareRadius 1 := by
  norm_num [squareCenter, squareRadius]

/-- Totalized division at t=1 is not a substitute for the admitted density domain. -/
theorem singular_density_control : rationalDensity 1 = 0 ∧ ¬ (1 : ℝ) < 1 := by
  norm_num [rationalDensity]

/-- Equality at the scalar margin cannot imply positive prime-only mass. -/
theorem equality_margin_control :
    (1 : ℝ) - 3 / 4 - 1 / 4 = 0 ∧ ¬ (0 : ℝ) < 1 - 3 / 4 - 1 / 4 := by
  norm_num

end
end GRWTSK.NumberTheory.Chebyshev.Checks.SignedTentCorrectionControls
