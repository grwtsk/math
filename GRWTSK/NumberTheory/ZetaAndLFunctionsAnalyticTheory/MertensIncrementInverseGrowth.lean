/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.CyclicMertensIncrementRightInverse

set_option autoImplicit false
noncomputable section

/-! Actual reciprocal gap amplification. Finite inversion is not uniformly
well conditioned. No signed arithmetic or analytic bridge follows. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.MertensIncrementInverseGrowth
open MertensIncrementPrefixInverse
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

theorem actual_inverse_gap_sq_lower (n : ℕ) (hn : 1 ≤ n) :
    (n : ℝ)^3 ≤ ((criticalEndpointGap n)⁻¹)^2 := by
  have hg := actual_gap_pos n hn
  have hp : (0 : ℝ)<n := by exact_mod_cast (by omega : 0<n)
  have hh := (div_le_iff₀ (pow_pos hp 3)).mp (criticalEndpointGap_sq_le hn)
  have hi : ((criticalEndpointGap n)⁻¹)^2=1/(criticalEndpointGap n)^2 := by
    simp only [inv_pow,one_div]
  rw [hi]
  apply (le_div_iff₀ (sq_pos_of_pos hg)).mpr
  nlinarith

theorem last_spike_inverse_coordinate (N : ℕ) (hN : 1 ≤ N) :
    inverseIncrementCoefficients criticalEndpointGap
      (fun k => if k=N-1 then (1 : ℝ) else 0) (N-1) =
      (criticalEndpointGap N)⁻¹ := by
  cases N with
  | zero => omega
  | succ n =>
    cases n with
    | zero => simp [inverseIncrementCoefficients,prefixDifference]
    | succ k =>
      simp [inverseIncrementCoefficients,prefixDifference,show k ≠ k+1 by omega]

end GRWTSK.NumberTheory.Zeta.Riemann.MertensIncrementInverseGrowth
