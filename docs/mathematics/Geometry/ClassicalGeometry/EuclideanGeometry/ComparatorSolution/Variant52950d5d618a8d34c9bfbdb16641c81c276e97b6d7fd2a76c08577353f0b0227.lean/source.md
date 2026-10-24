# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ComparatorSolution.Variant52950d5d618a8d34c9bfbdb16641c81c276e97b6d7fd2a76c08577353f0b0227

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc232068cd384dbbddce2753b1fc4a4017c0f2d7` · SHA-256 `52950d5d618a8d34c9bfbdb16641c81c276e97b6d7fd2a76c08577353f0b0227`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import NavierStokes.ComparatorR3Theorem
import NavierStokes.ComparatorTheorem

/-!
# Navier–Stokes Comparator submission: options (C) and (D)

Expose the project's proof adapters under the reference theorem names.
The adapters import `ComparatorDefinitions`, never the challenge module.
-/

namespace NavierStokes.Comparator

local notation "ℝ³" => EuclideanSpace ℝ (Fin 3)

/-- (C) Breakdown of Navier–Stokes solutions on ℝ³. -/
theorem navier_stokes_breakdown_R3 (nu : ℝ) (hnu : nu > 0) :
    ∃ (u₀ : ℝ³ → ℝ³) (f : ℝ³ → ℝ → ℝ³),
    InitialVelocityConditionDecay u₀ ∧ ForceConditionDecay f ∧
    ¬ (∃ v p, NavierStokesExistenceAndSmoothnessRn nu u₀ f v p) := by
  exact ComparatorBridge.navier_stokes_breakdown_R3 nu hnu

/-- (D) Breakdown of Navier–Stokes solutions on ℝ³/ℤ³. -/
theorem navier_stokes_breakdown_periodic (nu : ℝ) (hnu : nu > 0) :
    ∃ (u₀ : ℝ³ → ℝ³) (f : ℝ³ → ℝ → ℝ³),
    InitialVelocityConditionPeriodic u₀ ∧ ForceConditionPeriodic f ∧
    ¬ (∃ v p, NavierStokesExistenceAndSmoothnessPeriodic nu u₀ f v p) := by
  exact ComparatorBridge.navier_stokes_breakdown_periodic nu hnu

end NavierStokes.Comparator

#print axioms NavierStokes.Comparator.navier_stokes_breakdown_R3
#print axioms NavierStokes.Comparator.navier_stokes_breakdown_periodic
```
