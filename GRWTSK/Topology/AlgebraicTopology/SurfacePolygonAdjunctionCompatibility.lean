/-
Copyright (c) 2026 R.A. Jacob Martone. Released under MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1006 exact head fc00b2fd610573b34b29564ec624e19f18450733.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernelBridge

/-!
# First bounded disk-attachment universal-property supplier

A continuous function on the actual filled quotient restricts to
continuous functions on its disk characteristic and paired boundary.
The restrictions agree along the original polygon attaching map.
The converse compatible-pair extension is not claimed here.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionCompatibility

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernelBridge

/-- A compatible disk-and-boundary pair agrees on the exact
polygon attaching boundary, with original source identifiers. -/
def CompatibleDiskBoundary (k : ℕ)
    {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y) : Prop :=
  ∀ x : UnpairedPerimeter k,
    disk (perimeterConeHomeomorphUnitClosedDisc k
      (coneBoundary k x)) =
      boundary (perimeterAttach k x)

/-- Every map from the filled quotient gives an exactly compatible
pair, independent of its continuity. -/
theorem compatible_of_filledMap (k : ℕ)
    {Y : Type*} (f : FilledPolygonQuotient k → Y) :
    CompatibleDiskBoundary k
      (f ∘ diskCharacteristic k)
      (f ∘ boundaryInclusion k) := by
  intro x
  exact congrArg f (diskCharacteristic_boundary k x)

/-- The disk restriction of a continuous filled map is continuous. -/
theorem continuous_disk_restriction (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    {f : FilledPolygonQuotient k → Y}
    (hf : Continuous f) :
    Continuous (f ∘ diskCharacteristic k) :=
  hf.comp (diskCharacteristic_continuous k)

/-- The paired boundary restriction of a continuous filled map is
continuous, consuming the inherited actual boundary inclusion. -/
theorem continuous_boundary_restriction (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    {f : FilledPolygonQuotient k → Y}
    (hf : Continuous f) :
    Continuous (f ∘ boundaryInclusion k) :=
  hf.comp (boundaryInclusion_continuous k)

/-- Equality of disk restrictions forces equality of maps from the
filled quotient because the disk characteristic is surjective. -/
theorem filledMap_ext_of_disk (k : ℕ)
    {Y : Type*} {f g : FilledPolygonQuotient k → Y}
    (h : f ∘ diskCharacteristic k = g ∘ diskCharacteristic k) :
    f = g := by
  funext y
  obtain ⟨x, rfl⟩ := diskCharacteristic_surjective k y
  exact congrFun h x

/-- The quotient-map criterion reduces all continuity checks for a
filled map to its standard-disk restriction. -/
theorem filledMap_continuous_iff_disk (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (f : FilledPolygonQuotient k → Y) :
    Continuous f ↔ Continuous (f ∘ diskCharacteristic k) :=
  continuous_iff_comp_diskCharacteristic k f

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionCompatibility
