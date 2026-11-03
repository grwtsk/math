/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-! Complete scalar observation error across an exact multiplier.
The exact analytic identity and each observation error remain explicit.
This is not a full-vector eigen-residual bound. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletObservationMultiplierError

theorem observation_discrepancy_le (A z w zhat what : ℂ)
    (ez ew : ℝ) (hzw : z = A * w)
    (hz : ‖zhat - z‖ ≤ ez) (hw : ‖w - what‖ ≤ ew) :
    ‖zhat - A * what‖ ≤ ez + ‖A‖ * ew := by
  calc
    ‖zhat - A * what‖ = ‖(zhat - z) + A * (w - what)‖ := by
      congr 1
      rw [hzw]
      ring
    _ ≤ ‖zhat - z‖ + ‖A * (w - what)‖ := norm_add_le _ _
    _ = ‖zhat - z‖ + ‖A‖ * ‖w - what‖ := by rw [norm_mul]
    _ ≤ ez + ‖A‖ * ew :=
      add_le_add hz (mul_le_mul_of_nonneg_left hw (norm_nonneg A))

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletObservationMultiplierError
