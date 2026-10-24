# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarRadiusFibers

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4ff187dd8bee932f59d6ba7224fe6fbfbc84b04` · SHA-256 `edac3b497bbf34b6baaac1ea2d41d76b2b3555b6faef6cfa733845bd2ba3f8f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #984 head 54c392f1fc05b4803cd8cd44be99d76723f4ff57.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
import Mathlib.Tactic

/-!
# Radius rigidity for the real-angle polar map

This module isolates the purely radial part of the polar fiber
calculation. No angular quotient or complex argument selection
is used. The angular uniqueness and integer-periodicity obligations
remain separate.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarRadiusFibers

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk

/-- Equal polar values at nonnegative radii have equal radii. -/
theorem radius_eq_of_realAnglePolar_eq
    {θ φ r s : ℝ} (hr : 0 ≤ r) (hs : 0 ≤ s)
    (h : realAnglePolar θ r = realAnglePolar φ s) :
    r = s := by
  have hn := congrArg (fun z : ℂ => ‖z‖) h
  rw [realAnglePolar_norm θ hr, realAnglePolar_norm φ hs] at hn
  exact hn

/-- The only zero-valued nonnegative-radius polar points have radius zero. -/
theorem realAnglePolar_eq_zero_iff
    (θ : ℝ) {r : ℝ} (hr : 0 ≤ r) :
    realAnglePolar θ r = 0 ↔ r = 0 := by
  constructor
  · intro h
    have hn := congrArg (fun z : ℂ => ‖z‖) h
    simpa [realAnglePolar_norm θ hr] using hn
  · intro h
    subst r
    exact realAnglePolar_zero θ

/-- At radius zero, every real angular representative maps to the same point. -/
theorem realAnglePolar_apex_fiber (θ φ : ℝ) :
    realAnglePolar θ 0 = realAnglePolar φ 0 := by
  simp [realAnglePolar_zero]

/-- Positive-radius points never coincide with the apex. -/
theorem realAnglePolar_ne_zero
    (θ : ℝ) {r : ℝ} (hr : 0 < r) :
    realAnglePolar θ r ≠ 0 := by
  intro h
  have hz := (realAnglePolar_eq_zero_iff θ (le_of_lt hr)).mp h
  exact (ne_of_gt hr) hz

/-- Equal disk-valued polar points have equal actual radial parameters. -/
theorem diskPolar_radius_eq (θ φ : ℝ) (r s : unitInterval)
    (h : realAnglePolarDisk θ r = realAnglePolarDisk φ s) :
    (r : ℝ) = (s : ℝ) := by
  apply radius_eq_of_realAnglePolar_eq r.property.1 s.property.1
  exact congrArg Subtype.val h

/-
Remaining distinct obligations:
* integer-periodicity of the real angular expression;
* well-defined UnitAddCircle-valued angular parameterization;
* angular injectivity at strictly positive radius;
* cone quotient descent and surjectivity onto the closed disk;
* compact-to-Hausdorff homeomorphism and boundary compatibility.
No theorem in this module claims these.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarRadiusFibers
```
