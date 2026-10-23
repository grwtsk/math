/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1014 exact head 3aa2a98ffc824c410c8b0b7ce1cc68bc4f55bdb1.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarComplexPhase
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport
import Mathlib.Topology.Compactness.Compact
import Mathlib.Tactic

/-!
# Standard circle cone homeomorphic to the closed complex unit disk

The source uses the exact polar map previously descended through
the actual cone quotient. Injectivity is from its complete cone
fiber characterization; surjectivity uses complex argument. The
domain is compact and the complex disk is Hausdorff. The resulting
homeomorphism is not an identification of the original filled
polygon quotient with a disk: paired outer edges remain distinct
in the source cone but are identified in the filled target.

All Lean declarations remain unelaborated candidates.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskHomeomorphism

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarConeFibers
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarComplexPhase

/-- The closed complex disk is Hausdorff with its actual subtype
topology inherited from ℂ. -/
theorem closedComplexUnitDisk_t2 :
    T2Space ClosedComplexUnitDisk := inferInstance

/-- The genuine standard cone is compact by the exact quotient
construction from the compact circle-cylinder. -/
theorem standardCircleCone_compact :
    CompactSpace StandardCircleCone :=
  standardCircleConeCompactSpace

/-- The original polar map is a continuous bijection, not an
unconstrained equivalence of carriers. -/
theorem standardConePolarDisk_bijective :
    Function.Bijective standardConePolarDisk :=
  ⟨standardConePolarDisk_injective, standardConePolarDisk_surjective⟩

/-- The target genuine topological homeomorphism, consuming the
compact-to-Hausdorff theorem on the exact source polar map. -/
noncomputable def standardCircleConeHomeomorphClosedDisk :
    StandardCircleCone ≃ₜ ClosedComplexUnitDisk := by
  letI : CompactSpace StandardCircleCone := standardCircleCone_compact
  letI : T2Space ClosedComplexUnitDisk := closedComplexUnitDisk_t2
  exact Continuous.homeoOfEquivCompactToT2
    (Equiv.ofBijective standardConePolarDisk standardConePolarDisk_bijective)
    standardConePolarDisk_continuous

/-- The homeomorphism is definitionally tied to the actual polar
map, retaining its source coordinate formula. -/
theorem standardCircleConeHomeomorphClosedDisk_apply
    (z : StandardCircleCone) :
    standardCircleConeHomeomorphClosedDisk z =
      standardConePolarDisk z := rfl

/-- The authentic polygon perimeter cone is homeomorphic to the
standard closed disk by composition with the previously constructed
source-exact perimeter-circle cone transport. -/
noncomputable def perimeterConeHomeomorphClosedDisk (k : ℕ) :
    PerimeterCone k ≃ₜ ClosedComplexUnitDisk :=
  (perimeterConeHomeomorphStandardCircleCone k).trans
    standardCircleConeHomeomorphClosedDisk

/-- The original source cone apex maps to the disk origin. -/
theorem perimeterConeHomeomorphClosedDisk_apex (k : ℕ) :
    perimeterConeHomeomorphClosedDisk k (coneApex k) =
      (⟨0, by simp⟩ : ClosedComplexUnitDisk) := by
  rw [perimeterConeHomeomorphClosedDisk]
  rw [perimeterConeHomeomorphStandardCircleCone_apex]
  exact standardConePolarDisk_apex

/-
Strictly open and independent:
* exact-head elaboration, generated declaration/axiom audit;
* full coneToFilled quotient fibers and disk attaching pushout;
* actual CW manifold and cellular/singular comparison;
* hyperbolic/geodesic/trace-formula and arithmetic applications.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskHomeomorphism
