# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31e1926c791320398a8b865f197f320032b9aedf` · SHA-256 `62595ea46bb46c4e1fc6d7a830c54b02d2aaa4dfbb477479d88d354a3c9f5293`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue #980; parent PR #978 exact head d901f661103da93c9c4779e2eb3d595d0c5b7ca9.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport
import Mathlib.Analysis.SpecialFunctions.Complex.CircleMap
import Mathlib.Topology.Instances.AddCircle.Real
import Mathlib.Tactic

/-!
# Standard circle cone to complex disk: exact proof obligations

The polar formula is r * exp (2 * π * I * θ). The circle coordinate is
a class modulo integers; the exponential must descend from ℝ to
UnitAddCircle before any cone quotient descent.

The exact fiber criterion, continuity, polar surjectivity and the
compact-to-Hausdorff homeomorphism are deliberately NOT asserted as
theorems until their proofs elaborate on the pinned Mathlib revision.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport

/-- Actual target carrier: the closed complex unit disk. -/
abbrev ClosedComplexUnitDisk := {z : ℂ // z ∈ Metric.closedBall (0 : ℂ) 1}

/-- Unquotiented real-angle polar expression, prior to proving integer periodicity. -/
def realAnglePolar (θ r : ℝ) : ℂ :=
  (r : ℂ) * Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I)

/-- Radius-zero is independent of the real angular representative. -/
theorem realAnglePolar_zero (θ : ℝ) :
    realAnglePolar θ 0 = 0 := by
  simp [realAnglePolar]

/-- The polar expression has exactly the chosen nonnegative radius as norm. -/
theorem realAnglePolar_norm (θ : ℝ) {r : ℝ} (hr : 0 ≤ r) :
    ‖realAnglePolar θ r‖ = r := by
  simp [realAnglePolar, Complex.norm_exp, hr]

/-- An explicit source-level disk point from a real angle and a unit radius. -/
def realAnglePolarDisk (θ : ℝ) (r : unitInterval) :
    ClosedComplexUnitDisk :=
  ⟨realAnglePolar θ r, by
    rw [Metric.mem_closedBall, dist_zero_right]
    rw [realAnglePolar_norm θ r.property.1]
    exact r.property.2⟩

/-
Next isolated obligations, not silently discharged:
1. realAnglePolar (θ + n) r = realAnglePolar θ r for n : ℤ;
2. descend realAnglePolarDisk to UnitAddCircle × unitInterval;
3. prove exact fiber equality, including positive radius;
4. descend to the authentic StandardCircleCone;
5. polar decomposition of every z in ClosedComplexUnitDisk;
6. compact-to-Hausdorff bundled homeomorphism;
7. apex, radius and outer boundary transport back to PerimeterCone k.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
```
