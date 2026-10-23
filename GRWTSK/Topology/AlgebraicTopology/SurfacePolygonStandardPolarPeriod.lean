/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #986 exact head 9df9bac939a89b407f614494841d668f4fb78095.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarRadiusFibers
import Mathlib.Analysis.SpecialFunctions.Complex.CircleMap

/-!
# Integer periodicity of the explicit polar formula

The real-angle polar expression is r * exp(2πIθ). Its integer
periodicity is a necessary independent supplier before descent to
UnitAddCircle. This source does not yet claim quotient descent,
angular injectivity, surjectivity or a disk homeomorphism.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriod

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarRadiusFibers

/-- Adding an integer angular turn leaves the original complex
polar value unchanged. The source proof uses the exponential's
periodicity by 2πi and integer induction. -/
theorem realAnglePolar_add_int (θ r : ℝ) (n : ℤ) :
    realAnglePolar (θ + n) r = realAnglePolar θ r := by
  have hperiod : ∀ n : ℤ,
      Complex.exp (((2 * Real.pi : ℝ) * n) * Complex.I) = 1 := by
    intro n
    exact Complex.exp_int_mul_two_pi_mul_I n
  unfold realAnglePolar
  have hsplit :
      ((2 * Real.pi * (θ + n) : ℝ) * Complex.I) =
        ((2 * Real.pi * θ : ℝ) * Complex.I) +
          ((2 * Real.pi * n : ℝ) * Complex.I) := by
    push_cast
    ring
  rw [hsplit, Complex.exp_add, hperiod]
  simp

/-- The same periodicity holds in the actual closed-disk subtype. -/
theorem realAnglePolarDisk_add_int (θ : ℝ)
    (r : unitInterval) (n : ℤ) :
    realAnglePolarDisk (θ + n) r = realAnglePolarDisk θ r := by
  apply Subtype.ext
  exact realAnglePolar_add_int θ r n

/-- The integer-periodicity statement for genus two is the same
authentic real-circle statement, not a new polygon-side relation. -/
theorem genusTwo_polar_integer_period (θ : ℝ) (r : unitInterval) :
    realAnglePolarDisk (θ + 1) r = realAnglePolarDisk θ r :=
  realAnglePolarDisk_add_int θ r 1

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriod
