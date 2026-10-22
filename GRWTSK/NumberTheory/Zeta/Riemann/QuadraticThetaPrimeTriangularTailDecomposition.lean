/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularBoundaryLocalization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Correct error model for triangular/Fejer-type smoothing: a near-boundary
piece plus a noncompact tail-leakage piece. -/
structure TriangularBoundaryTailData
    (X N m : ℕ) (tailBound : ℝ) where
  left : ℕ
  right : ℕ
  left_le_right : left ≤ right
  right_le_fourX : right ≤ 4 * X
  interval_length_le :
    right - left ≤ Nat.ceil ((X : ℝ) / (N : ℝ))
  nearBoundaryError : ℝ
  tailError : ℝ
  totalApproximationError : ℝ
  total_error_eq :
    totalApproximationError =
      nearBoundaryError + tailError
  nearBoundaryError_abs_le :
    |nearBoundaryError| ≤ primeIntervalLogMass left right
  tailBound_nonnegative : 0 ≤ tailBound
  tailError_abs_le :
    |tailError| ≤ tailBound

/-- The total approximation error is bounded by the already-closed arithmetic
boundary term plus the remaining tail budget. -/
theorem TriangularBoundaryTailData.total_error_le
    {X N m : ℕ} {tailBound : ℝ}
    (hX : 0 < X)
    (data : TriangularBoundaryTailData X N m tailBound) :
    |data.totalApproximationError| ≤
      (Nat.ceil ((X : ℝ) / (N : ℝ)) : ℝ) *
          Real.log ((4 * X : ℕ) : ℝ) +
        tailBound := by
  rw [data.total_error_eq]
  have htri :
      |data.nearBoundaryError + data.tailError| ≤
        |data.nearBoundaryError| + |data.tailError| :=
    abs_add _ _
  have hnear :
      |data.nearBoundaryError| ≤
        (Nat.ceil ((X : ℝ) / (N : ℝ)) : ℝ) *
          Real.log ((4 * X : ℕ) : ℝ) := by
    exact data.nearBoundaryError_abs_le.trans
      (primeBoundaryMass_le_length_log_fourX
        hX data.left_le_right data.right_le_fourX
        data.interval_length_le)
  exact htri.trans (add_le_add hnear data.tailError_abs_le)

/-- Corrected source-facing boundary claim: construct a decomposition with a
named tail bound.  Unlike strict compact localization, this allows global
kernel leakage. -/
def TriangularBoundaryTailDecompositionClaim
    (tailBudget : ℕ → ℕ → ℕ → ℝ) : Prop :=
  ∀ X N : ℕ, 0 < X → 0 < N →
    ∀ m : ℕ, 2 * X ≤ m → m ≤ 4 * X →
      Nonempty
        (TriangularBoundaryTailData
          X N m (tailBudget X N m))

/-- Power-log tail budget sufficient for the seven-eighths target. -/
def SevenEighthsTriangularTailBudget
    (tailBudget : ℕ → ℕ → ℕ → ℝ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ N m : ℕ,
        0 < N →
        2 * dyadicScale j ≤ m →
        m ≤ 4 * dyadicScale j →
        tailBudget (dyadicScale j) N m ≤
          C *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
            (Real.log (dyadicScale j : ℝ))^2

/-- The balanced cutoff exponent remains compatible with the near-boundary
piece independently of the tail estimate. -/
theorem oneThird_boundary_power_below_threeQuarters :
    truncatedFourierBoundaryExponent ((1 : ℝ) / 3) <
      (3 : ℝ) / 4 := by
  norm_num [truncatedFourierBoundaryExponent]

/-- The analytic frontier for the triangular candidate after correcting
noncompact support: construct a tail decomposition and prove the tail leakage
at the target power-log scale. -/
structure TriangularSmoothingTailAccepted
    (tailBudget : ℕ → ℕ → ℕ → ℝ) where
  decomposition :
    TriangularBoundaryTailDecompositionClaim tailBudget
  sevenEighthsTail :
    SevenEighthsTriangularTailBudget tailBudget

end GRWTSK.RiemannHypothesis
