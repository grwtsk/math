/-
Copyright (c) 2026 R.A. Jacob Martone. Released under MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1015 head 941de95e1c6f536c7b105792d68c269388d475ec.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionExtension

/-!
# Compatible-pair extension through the authentic polygon filling

The disk characteristic is a quotient map and is surjective. A
compatible disk map is constant on its exact fibers. We therefore
define the extension by choosing a disk preimage of each filled point,
prove independence of that choice, then derive continuity using the
actual quotient-map final topology. The boundary restriction uses
the authentic surjective perimeter attaching map.
No CW or manifold claim is made here.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionUniversal

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernelBridge
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionCompatibility
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionExtension

/-- An arbitrary disk representative of an actual filled point.
The eventual value is independent of this noncanonical choice. -/
private def diskRepresentative (k : ℕ)
    (y : FilledPolygonQuotient k) : Complex.UnitClosedDisc :=
  Classical.choose (diskCharacteristic_surjective k y)

private theorem diskRepresentative_spec (k : ℕ)
    (y : FilledPolygonQuotient k) :
    diskCharacteristic k (diskRepresentative k y) = y :=
  Classical.choose_spec (diskCharacteristic_surjective k y)

/-- Source-independent extension of a compatible disk map through
the original polygon filled quotient. -/
def extendCompatibleDisk (k : ℕ) {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (_hcompat : CompatibleDiskBoundary k disk boundary) :
    FilledPolygonQuotient k → Y :=
  fun y => disk (diskRepresentative k y)

/-- The extension is exactly the given disk map on all disk points. -/
theorem extendCompatibleDisk_disk (k : ℕ) {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary) :
    extendCompatibleDisk k disk boundary hcompat ∘ diskCharacteristic k =
      disk := by
  funext x
  unfold extendCompatibleDisk
  apply disk_eq_of_characteristic_eq k disk boundary hcompat
  exact (diskRepresentative_spec k (diskCharacteristic k x)).symm

/-- Continuity descends by the *genuine* quotient-map final topology,
not by continuity of separately chosen disk representatives. -/
theorem extendCompatibleDisk_continuous (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary)
    (hdisk : Continuous disk) :
    Continuous (extendCompatibleDisk k disk boundary hcompat) := by
  apply (filledMap_continuous_iff_disk k _).mpr
  rw [extendCompatibleDisk_disk]
  exact hdisk

/-- The extension agrees with the prescribed paired boundary map,
using surjectivity of the original perimeter attaching map. -/
theorem extendCompatibleDisk_boundary (k : ℕ) {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary) :
    extendCompatibleDisk k disk boundary hcompat ∘ boundaryInclusion k =
      boundary := by
  funext b
  obtain ⟨x, rfl⟩ := perimeterAttach_surjective k b
  have h := congrFun (extendCompatibleDisk_disk k disk boundary hcompat)
    (perimeterConeHomeomorphUnitClosedDisc k (coneBoundary k x))
  change extendCompatibleDisk k disk boundary hcompat
    (diskCharacteristic k
      (perimeterConeHomeomorphUnitClosedDisc k (coneBoundary k x))) =
    disk (perimeterConeHomeomorphUnitClosedDisc k (coneBoundary k x)) at h
  rw [diskCharacteristic_boundary] at h
  exact h.trans (hcompat x)

/-- A continuous compatible disk/boundary pair has a UNIQUE
continuous extension through the actual filled polygon quotient. -/
theorem existsUnique_continuous_compatible_extension (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary)
    (hdisk : Continuous disk)
    (_hboundary : Continuous boundary) :
    ∃! f : FilledPolygonQuotient k → Y,
      Continuous f ∧
      f ∘ diskCharacteristic k = disk ∧
      f ∘ boundaryInclusion k = boundary := by
  refine ⟨extendCompatibleDisk k disk boundary hcompat, ?_, ?_⟩
  · exact ⟨extendCompatibleDisk_continuous k disk boundary hcompat hdisk,
      extendCompatibleDisk_disk k disk boundary hcompat,
      extendCompatibleDisk_boundary k disk boundary hcompat⟩
  · intro f hf
    exact filledMap_ext_of_disk k (hf.2.1.trans\n      (extendCompatibleDisk_disk k disk boundary hcompat).symm)

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionUniversal
