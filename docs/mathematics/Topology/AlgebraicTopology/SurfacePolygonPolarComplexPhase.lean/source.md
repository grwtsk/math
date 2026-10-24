# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarComplexPhase

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d790f36777c1bafabe89dda19823a4cc2fe72a5` · SHA-256 `8fab019fe02c86ef83f718c98c1e8b4c5cd5349079842bc2a6a837bb284f5dae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1012 head abe111452a3c63a0a5d4cc49880f395d793988b8.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskSurjectivity
import Mathlib.Analysis.SpecialFunctions.Complex.Arg
import Mathlib.Analysis.SpecialFunctions.Complex.Log
import Mathlib.Tactic

/-!
# Complex phase decomposition via the genuine complex argument

The remaining surjectivity supplier is the standard identity
  z = ‖z‖ * exp (arg z * I)
for nonzero complex z. Normalize its argument by 2π to obtain a
real angular representative for the UnitAddCircle polar map.
This is an exact source candidate using pinned Mathlib Complex.arg
and exp identities, not an assumed global branch of complex log.

The source does not claim a continuous global argument or logarithm.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarComplexPhase

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskSurjectivity

/-- Every nonzero complex point has the standard norm/argument
exponential representation. The exact Mathlib theorem is to be
reconciled at the pinned toolchain. -/
theorem complex_norm_exp_arg (z : ℂ) (_hz : z ≠ 0) :
    z = (‖z‖ : ℂ) * Complex.exp ((Complex.arg z : ℝ) * Complex.I) := by
  have h := Complex.norm_mul_exp_arg_mul_I z
  simpa [mul_comm, mul_left_comm, mul_assoc] using h.symm

/-- The normalized angular coordinate has precisely the 2π phase
needed by the original realAnglePolar definition. -/
def normalizedComplexAngle (z : ℂ) : ℝ :=
  Complex.arg z / (2 * Real.pi)

/-- Normalization recovers the unscaled complex argument. -/
theorem normalizedComplexAngle_mul_two_pi (z : ℂ) :
    2 * Real.pi * normalizedComplexAngle z = Complex.arg z := by
  unfold normalizedComplexAngle
  field_simp

/-- Unconditional complex polar phase representation candidate. -/
theorem complex_realAnglePolar_representation (z : ℂ) (hz : z ≠ 0) :
    z = realAnglePolar (normalizedComplexAngle z) (‖z‖) := by
  unfold realAnglePolar
  rw [normalizedComplexAngle_mul_two_pi]
  exact complex_norm_exp_arg z hz

/-- Unconditional surjectivity candidate obtained by consuming the
exact complex norm/argument identity, not a new hypothesis. -/
theorem standardConePolarDisk_surjective :
    Function.Surjective
      GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent.standardConePolarDisk := by
  apply standardConePolarDisk_surjective_of_phase
  intro z hz
  exact ⟨normalizedComplexAngle z,
    complex_realAnglePolar_representation z hz⟩

/-
OPEN: exact-head Lean elaboration of Complex.norm_mul_exp_arg_mul_I
and all inherited quotient/continuity sources; then package the
compact-to-Hausdorff homeomorphism and perimeter cone transport.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarComplexPhase
```
