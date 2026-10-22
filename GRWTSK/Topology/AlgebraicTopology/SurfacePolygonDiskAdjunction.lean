/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Topology.AlgebraicTopology.TopologicalDiskAdjunction
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary

/-!
# The genuine polygon-boundary disk adjunction

Specialize the verified generic quotient construction to the *actual*
polygon one-skeleton and its authenticated Euclidean boundary
attachment. The underlying relation and quotient topology are those
of TopologicalDiskAdjunction, without any substituted CW axioms.

An equivalence with FilledPolygonQuotient is not claimed. Such an
equivalence requires a comparison of the two source quotient kernels,
including the true outer reversed side pairings and apex relation.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary
open GRWTSK.Topology.AlgebraicTopology.TopologicalDiskAdjunction

/-- The actual attached disk with the original genus-dependent
paired-side quotient as its base. -/
abbrev PolygonAttachedDisk (k : ℕ) : Type _ :=
  AttachedDisk (diskBoundaryAttachingMap k)

/-- Original one-skeleton included in the attached disk. -/
def originalSkeletonMap (k : ℕ) :
    PolygonBoundaryOneSkeleton k → PolygonAttachedDisk k :=
  baseMap (diskBoundaryAttachingMap k)

/-- The canonical map of the *whole genuine* Euclidean two-disk. -/
def originalDiskMap (k : ℕ) :
    TopCat.disk.{0} 2 → PolygonAttachedDisk k :=
  diskMap (diskBoundaryAttachingMap k)

theorem originalSkeletonMap_continuous (k : ℕ) :
    Continuous (originalSkeletonMap k) :=
  baseMap_continuous (diskBoundaryAttachingMap k)

theorem originalDiskMap_continuous (k : ℕ) :
    Continuous (originalDiskMap k) :=
  diskMap_continuous (diskBoundaryAttachingMap k)

/-- The actual attaching square, evaluated on the original source
side and tangential coordinate, not merely on abstract boundary
points. This preserves the direction and reversal conventions. -/
theorem original_source_boundary_commutes (k : ℕ)
    (p : BoundaryPoint k) :
    originalSkeletonMap k (boundaryProjection k p) =
      originalDiskMap k
        (TopCat.diskBoundaryInclusion 2
          (perimeterDiskBoundaryHomeomorph k
            (perimeterProjection k p))) := by
  rw [← diskBoundaryAttachingMap_source k p]
  exact attachment_commutes (diskBoundaryAttachingMap k)
    (perimeterDiskBoundaryHomeomorph k (perimeterProjection k p))

/-- Exact boundary agreement for every point, not just the original
edge sources. -/
theorem original_boundary_commutes (k : ℕ)
    (x : TopCat.diskBoundary.{0} 2) :
    originalSkeletonMap k (diskBoundaryAttachingMap k x) =
      originalDiskMap k (TopCat.diskBoundaryInclusion 2 x) :=
  attachment_commutes (diskBoundaryAttachingMap k) x

/-- Genuine source-exact continuous-map universal property. No
independent Pushout Prop or compatibility field is introduced. -/
def polygonDescend (k : ℕ) {Y : Type*}
    (f : PolygonBoundaryOneSkeleton k → Y)
    (g : TopCat.disk.{0} 2 → Y)
    (h : ∀ x : TopCat.diskBoundary.{0} 2,
      f (diskBoundaryAttachingMap k x) =
        g (TopCat.diskBoundaryInclusion 2 x)) :
    PolygonAttachedDisk k → Y :=
  descend (diskBoundaryAttachingMap k) f g h

theorem polygonDescend_continuous (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (f : PolygonBoundaryOneSkeleton k → Y)
    (g : TopCat.disk.{0} 2 → Y)
    (h : ∀ x : TopCat.diskBoundary.{0} 2,
      f (diskBoundaryAttachingMap k x) =
        g (TopCat.diskBoundaryInclusion 2 x))
    (hf : Continuous f) (hg : Continuous g) :
    Continuous (polygonDescend k f g h) :=
  descend_continuous (diskBoundaryAttachingMap k) f g h hf hg

@[simp] theorem polygonDescend_skeleton (k : ℕ)
    {Y : Type*}
    (f : PolygonBoundaryOneSkeleton k → Y)
    (g : TopCat.disk.{0} 2 → Y)
    (h : ∀ x : TopCat.diskBoundary.{0} 2,
      f (diskBoundaryAttachingMap k x) =
        g (TopCat.diskBoundaryInclusion 2 x))
    (b : PolygonBoundaryOneSkeleton k) :
    polygonDescend k f g h (originalSkeletonMap k b) = f b :=
  descend_base (diskBoundaryAttachingMap k) f g h b

@[simp] theorem polygonDescend_disk (k : ℕ)
    {Y : Type*}
    (f : PolygonBoundaryOneSkeleton k → Y)
    (g : TopCat.disk.{0} 2 → Y)
    (h : ∀ x : TopCat.diskBoundary.{0} 2,
      f (diskBoundaryAttachingMap k x) =
        g (TopCat.diskBoundaryInclusion 2 x))
    (d : TopCat.disk.{0} 2) :
    polygonDescend k f g h (originalDiskMap k d) = g d :=
  descend_disk (diskBoundaryAttachingMap k) f g h d

theorem polygonDescend_unique (k : ℕ)
    {Y : Type*}
    (f : PolygonBoundaryOneSkeleton k → Y)
    (g : TopCat.disk.{0} 2 → Y)
    (h : ∀ x : TopCat.diskBoundary.{0} 2,
      f (diskBoundaryAttachingMap k x) =
        g (TopCat.diskBoundaryInclusion 2 x))
    (u : PolygonAttachedDisk k → Y)
    (huB : ∀ b, u (originalSkeletonMap k b) = f b)
    (huD : ∀ d, u (originalDiskMap k d) = g d) :
    u = polygonDescend k f g h :=
  descend_unique (diskBoundaryAttachingMap k) f g h u huB huD

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction
