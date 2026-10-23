/-
Copyright (c) 2026 R.A. Jacob Martone. Released under MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1011 head 35b67b0ff345112caebebac230dca0ccedd0397f.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionCompatibility

/-!
# Compatible disk-boundary pairs respect the exact outer cone relation

This bounded supplier proves the required constancy on the original
outer-side generators, their EqvGen closure, and the exact disk
characteristic fibers. The continuous extension and full pushout
universal property remain separate obligations.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionExtension

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeOuterPairs
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernelBridge
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionCompatibility

/-- Pull the proposed disk map back along the actual perimeter-cone
homeomorphism, retaining the original cone source identities. -/
def conePullback (k : ℕ) {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y) : PerimeterCone k → Y :=
  disk ∘ perimeterConeHomeomorphUnitClosedDisc k

/-- Compatibility with the original polygon attaching map makes the
disk pullback constant on each authentic opposite-side generator. -/
theorem conePullback_respects_outerStep (k : ℕ)
    {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary)
    {x y : PerimeterCone k}
    (h : ConeOuterPairStep k x y) :
    conePullback k disk x = conePullback k disk y := by
  cases h with
  | pairA h t =>
      change disk (perimeterConeHomeomorphUnitClosedDisc k
          (coneBoundary k (perimeterProjection k ((h, 0), t)))) =
        disk (perimeterConeHomeomorphUnitClosedDisc k
          (coneBoundary k (perimeterProjection k
            ((h, 2), unitInterval.symm t))))
      calc
        _ = boundary (perimeterAttach k
              (perimeterProjection k ((h, 0), t))) :=
          hcompat _
        _ = boundary (perimeterAttach k
              (perimeterProjection k ((h, 2), unitInterval.symm t))) :=
          congrArg boundary (attachingMap_pairs_a k h t)
        _ = _ := (hcompat _).symm
  | pairB h t =>
      change disk (perimeterConeHomeomorphUnitClosedDisc k
          (coneBoundary k (perimeterProjection k ((h, 1), t)))) =
        disk (perimeterConeHomeomorphUnitClosedDisc k
          (coneBoundary k (perimeterProjection k
            ((h, 3), unitInterval.symm t))))
      calc
        _ = boundary (perimeterAttach k
              (perimeterProjection k ((h, 1), t))) :=
          hcompat _
        _ = boundary (perimeterAttach k
              (perimeterProjection k ((h, 3), unitInterval.symm t))) :=
          congrArg boundary (attachingMap_pairs_b k h t)
        _ = _ := (hcompat _).symm

/-- The same constancy holds for the full generated equivalence,
without introducing any interior radial identifications. -/
theorem conePullback_respects_outerConnected (k : ℕ)
    {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary)
    {x y : PerimeterCone k}
    (h : ConeOuterConnected k x y) :
    conePullback k disk x = conePullback k disk y := by
  induction h with
  | rel x y hxy =>
      exact conePullback_respects_outerStep k disk boundary hcompat hxy
  | refl x => rfl
  | symm x y _ ih => exact ih.symm
  | trans x y z _ _ ih₁ ih₂ => exact ih₁.trans ih₂

/-- Compatible disk maps are constant on EVERY exact fiber of the
standard disk characteristic, using the reconciled full cone kernel. -/
theorem disk_eq_of_characteristic_eq (k : ℕ)
    {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary)
    {u v : Complex.UnitClosedDisc}
    (h : diskCharacteristic k u = diskCharacteristic k v) :
    disk u = disk v := by
  have hk := (diskCharacteristic_eq_iff_outerConnected k u v).mp h
  have hc := conePullback_respects_outerConnected
    k disk boundary hcompat hk
  simpa [conePullback] using hc

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionExtension
