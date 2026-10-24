# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPhase

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e94737db7d50d0733ab5c7427af8b5306071a70` · SHA-256 `3c3268265176be3bd53560b010e3f040764c333a967875543d6e793ffb64a6f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #988 head 951f688024fa27cb82ff8d9b4f4f783cc9de7e86.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriodicity
import Mathlib.Tactic

/-!
# Polar phase recovery before additive-circle descent

Integer periodicity is already a source candidate in the parent.
The remaining angular ingredient is cancellation of a nonzero radius.
This module isolates phase recovery without silently choosing an
angle representative of UnitAddCircle.

To finish descent, prove that Mathlib's AddCircle quotient equality
is exactly integral translation, then construct the quotient lift
and prove its continuity. These are OPEN.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPhase

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarRadiusFibers

/-- At strictly positive radius, equality of polar points implies
equality of their complex unit phases. -/
theorem phase_eq_of_realAnglePolar_eq
    {θ φ r : ℝ} (hr : 0 < r)
    (h : realAnglePolar θ r = realAnglePolar φ r) :
    Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) =
      Complex.exp ((2 * Real.pi * φ : ℝ) * Complex.I) := by
  unfold realAnglePolar at h
  exact mul_left_cancel₀ (Complex.ofReal_ne_zero.mpr (ne_of_gt hr)) h

/-- Equality of polar values with two positive radii forces both
radius equality and unit-phase equality. -/
theorem radius_and_phase_eq_of_polar_eq
    {θ φ r s : ℝ} (hr : 0 < r) (hs : 0 < s)
    (h : realAnglePolar θ r = realAnglePolar φ s) :
    r = s ∧
      Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) =
        Complex.exp ((2 * Real.pi * φ : ℝ) * Complex.I) := by
  have hrs := radius_eq_of_realAnglePolar_eq
    (le_of_lt hr) (le_of_lt hs) h
  refine ⟨hrs, ?_⟩
  subst s
  exact phase_eq_of_realAnglePolar_eq hr h

/-
Remaining exact obligations:
1. phase equality iff integer angular difference, with correct 2π normalization;
2. quotient relation proof for Mathlib UnitAddCircle;
3. continuous descended polar map UnitAddCircle × unitInterval → ClosedComplexUnitDisk;
4. exact StandardCircleCone quotient fiber theorem;
5. polar surjectivity and compact-to-Hausdorff homeomorphism.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPhase
```
