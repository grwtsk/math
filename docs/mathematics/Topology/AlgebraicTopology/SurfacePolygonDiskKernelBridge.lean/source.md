# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernelBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec4fdfaadeba25123df16adf8c57f350bd860730` · SHA-256 `50acee258de8268172c03a80dcfbf3614b69a316c494ad8484d5f3c22573a8a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner #1001. Parent PR #1003 head 9f1809e7870608f98fbaa943c4ab9bf53a9ba489.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel

/-!
# Reconcile the standard disk characteristic and exact cone fibers

The original disk characteristic is obtained from coneToFilled by a
homeomorphism, and therefore its exact fibers are precisely the
outer-pairing equivalence classes transported through that disk model.
This is NOT a claim of CW adjunction or manifold structure.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernelBridge

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeOuterPairs
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel

/-- Exact disk characteristic fiber equality, with the source
outer-pairing relation on the genuine cone, not an arbitrary quotient. -/
theorem diskCharacteristic_eq_iff_outerConnected (k : ℕ)
    (x y : Complex.UnitClosedDisc) :
    diskCharacteristic k x = diskCharacteristic k y ↔
      ConeOuterConnected k
        ((perimeterConeHomeomorphUnitClosedDisc k).symm x)
        ((perimeterConeHomeomorphUnitClosedDisc k).symm y) := by
  exact coneToFilled_eq_iff_outerConnected k _ _

/-- Original disk characteristic map is a genuine quotient map,
by composing the cone-to-filled quotient with a homeomorphism. -/
theorem diskCharacteristic_isQuotientMap (k : ℕ) :
    IsQuotientMap (diskCharacteristic k) := by
  change IsQuotientMap
    (coneToFilled k ∘ (perimeterConeHomeomorphUnitClosedDisc k).symm)
  exact (coneToFilled_isQuotientMap k).comp
    (perimeterConeHomeomorphUnitClosedDisc k).symm.isQuotientMap

/-- The final topology of the actual filled quotient is characterized
by pulling maps back to the standard disk characteristic map. -/
theorem continuous_iff_comp_diskCharacteristic (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (f : FilledPolygonQuotient k → Y) :
    Continuous f ↔ Continuous (f ∘ diskCharacteristic k) :=
  (diskCharacteristic_isQuotientMap k).continuous_iff

/-- The original polygon attaching boundary remains exact after
the cone-kernel branch has been reconciled. -/
theorem diskCharacteristic_original_boundary (k : ℕ)
    (x : UnpairedPerimeter k) :
    diskCharacteristic k
      (perimeterConeHomeomorphUnitClosedDisc k (coneBoundary k x)) =
      boundaryInclusion k (perimeterAttach k x) :=
  diskCharacteristic_boundary k x

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernelBridge
```
