/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MertensIncrementInverseGrowth

set_option autoImplicit false
noncomputable section

/-! Exact initial-coordinate and two-coordinate inverse error accounting.
No reciprocal gap factor is suppressed. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.MertensIncrementInverseError
open MertensIncrementPrefixInverse
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

theorem inverse_initial_error (g x y : ℕ → ℝ) :
    |inverseIncrementCoefficients g x 0-inverseIncrementCoefficients g y 0| =
      |x 0-y 0|/|g 1| := by
  unfold inverseIncrementCoefficients
  simp only [prefixDifference]
  rw [← sub_div,abs_div]

theorem inverse_successor_error (g x y : ℕ → ℝ) (n : ℕ) :
    |inverseIncrementCoefficients g x (n+1)-inverseIncrementCoefficients g y (n+1)| ≤
      |x (n+1)-y (n+1)|/|g (n+2)|+|x n-y n|/|g (n+1)| := by
  have he : inverseIncrementCoefficients g x (n+1)-inverseIncrementCoefficients g y (n+1) =
      (x (n+1)-y (n+1))/g (n+2)-(x n-y n)/g (n+1) := by
    unfold inverseIncrementCoefficients
    simp only [prefixDifference]
    ring
  rw [he]
  simpa only [abs_div] using abs_sub_le
    ((x (n+1)-y (n+1))/g (n+2)) ((x n-y n)/g (n+1))

theorem actual_inverse_successor_uniform_error (x y : ℕ → ℝ) (n : ℕ) (η : ℝ)
    (hnext : |x (n+1)-y (n+1)| ≤ η) (hprev : |x n-y n| ≤ η) :
    |inverseIncrementCoefficients criticalEndpointGap x (n+1)-
      inverseIncrementCoefficients criticalEndpointGap y (n+1)| ≤
        η/criticalEndpointGap (n+2)+η/criticalEndpointGap (n+1) := by
  have hn := actual_gap_pos (n+2) (by omega)
  have hp := actual_gap_pos (n+1) (by omega)
  have hh := inverse_successor_error criticalEndpointGap x y n
  rw [abs_of_pos hn,abs_of_pos hp] at hh
  exact hh.trans (add_le_add (div_le_div_of_nonneg_right hnext hn.le)
    (div_le_div_of_nonneg_right hprev hp.le))

end GRWTSK.NumberTheory.Zeta.Riemann.MertensIncrementInverseError
