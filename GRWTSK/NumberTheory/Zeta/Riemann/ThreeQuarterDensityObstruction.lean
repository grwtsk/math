import Mathlib
import GRWTSK.Combinatorics.GraphTheory.PrimeSphericalRimObstruction

/-!
# Three-quarter zero-density gate for a prime-addressed sofic rim

Copyright (c) 2026 grwtsk contributors. MIT.

The threshold 3/4 is a coordinate in the critical strip, not the
critical line 1/2. Standard zero-density upper estimates count possible
off-line zeros and do not by themselves force emptiness. The finite
statements below isolate the exact arithmetic premise an off-rim
obstruction would require. This is a source proof candidate:
compilation, kernel replay, and axiom audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.ThreeQuarterDensityObstruction

/-- Abstract count of off-rim witnesses to a chosen threshold.
It must be instantiated with a theorem-proved connection to actual
zeta zeros before it has any RH consequence. -/
structure ThresholdCount where
  count : ℝ → ℕ

/-- Absence of exceptional objects at a chosen threshold. -/
def NoExceptions (C : ThresholdCount) (sigma : ℝ) : Prop :=
  C.count sigma = 0

/-- A strict upper bound below one eliminates a natural-number count. -/
theorem noExceptions_of_lt_one (C : ThresholdCount) (sigma : ℝ)
    (h : (C.count sigma : ℝ) < 1) :
    NoExceptions C sigma := by
  unfold NoExceptions
  omega

/-- A positive upper allowance does not imply exclusion.
One exception satisfies the allowance two. -/
theorem positive_density_allowance_has_counterexample :
    ∃ C : ThresholdCount,
      (C.count (3 / 4 : ℝ) : ℝ) ≤ 2 ∧
      ¬ NoExceptions C (3 / 4 : ℝ) := by
  refine ⟨⟨fun _ => 1⟩, ?_, ?_⟩
  · norm_num
  · simp [NoExceptions]

/-- A zero-free conclusion from a density supplier requires that
supplier to cross the discrete counting threshold below one. -/
theorem exclusion_at_three_quarters
    (C : ThresholdCount)
    (strictBound : (C.count (3 / 4 : ℝ) : ℝ) < 1) :
    NoExceptions C (3 / 4 : ℝ) :=
  noExceptions_of_lt_one C (3 / 4 : ℝ) strictBound

end GRWTSK.NumberTheory.Zeta.Riemann.ThreeQuarterDensityObstruction
