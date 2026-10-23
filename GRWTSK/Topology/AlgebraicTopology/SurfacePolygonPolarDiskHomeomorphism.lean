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
import Mathlib.Topology.Homeomorph.Lemmas
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
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
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
    (f := Equiv.ofBijective standardConePolarDisk standardConePolarDisk_bijective)
    standardConePolarDisk_continuous

/-- The homeomorphism is definitionally tied to the actual polar
map, retaining its source coordinate formula. -/
theorem standardCircleConeHomeomorphClosedDisk_apply
    (z : StandardCircleCone) :
    standardCircleConeHomeomorphClosedDisk z =
      standardConePolarDisk z := rfl

/-- The standard cone's genuine radial coordinate is the complex norm
of its image under the authentic polar disk homeomorphism. -/
theorem standardCircleConeHomeomorphClosedDisk_radius
    (z : StandardCircleCone) :
    ‖(standardCircleConeHomeomorphClosedDisk z).val‖ =
      (standardCircleConeRadius z : ℝ) := by
  calc
    ‖(standardCircleConeHomeomorphClosedDisk z).val‖ =
        ‖(standardConePolarDisk z).val‖ :=
      congrArg (fun w : ClosedComplexUnitDisk => ‖w.val‖)
        (standardCircleConeHomeomorphClosedDisk_apply z)
    _ = (standardCircleConeRadius z : ℝ) :=
      standardConePolarDisk_norm_eq_radius z

/-- The authentic polygon perimeter cone is homeomorphic to the
standard closed disk by composition with the previously constructed
source-exact perimeter-circle cone transport. -/
noncomputable def perimeterConeHomeomorphClosedDisk (k : ℕ) :
    PerimeterCone k ≃ₜ ClosedComplexUnitDisk :=
  (perimeterConeHomeomorphStandardCircleCone k).trans
    standardCircleConeHomeomorphClosedDisk

/-- The exact source-preserving cone transport also preserves the radial
coordinate through the closed-disk polar map, at every genus and radius. -/
theorem perimeterConeHomeomorphClosedDisk_radius
    (k : ℕ) (z : PerimeterCone k) :
    ‖(perimeterConeHomeomorphClosedDisk k z).val‖ =
      (coneRadius k z : ℝ) := by
  calc
    ‖(perimeterConeHomeomorphClosedDisk k z).val‖ =
        ‖(standardCircleConeHomeomorphClosedDisk
          (perimeterConeHomeomorphStandardCircleCone k z)).val‖ := rfl
    _ = (standardCircleConeRadius
          (perimeterConeHomeomorphStandardCircleCone k z) : ℝ) :=
      standardCircleConeHomeomorphClosedDisk_radius _
    _ = (coneRadius k z : ℝ) :=
      congrArg (fun r : unitInterval => (r : ℝ))
        (perimeterConeHomeomorphStandardCircleCone_radius k z)

/-- The original source cone apex maps to the disk origin. -/
theorem perimeterConeHomeomorphClosedDisk_apex (k : ℕ) :
    perimeterConeHomeomorphClosedDisk k (coneApex k) =
      (⟨0, by simp⟩ : ClosedComplexUnitDisk) := by
  rw [perimeterConeHomeomorphClosedDisk]
  rw [perimeterConeHomeomorphStandardCircleCone_apex]
  exact standardConePolarDisk_apex

/-- Source-exact obstruction: the polar disk homeomorphism on the
UNPAIRED perimeter cone cannot descend to any function on the
PAIRED filled polygon quotient along the genuine cone-to-filling map.
This uses the original opposite-side midpoint noninjectivity,
and does NOT assert that the filled polygon has no disk chart or that
its intrinsic topology is not a disk. -/
theorem perimeterConePolar_not_factor_through_filling (k : ℕ) :
    ¬ ∃ f : FilledPolygonQuotient k → ClosedComplexUnitDisk,
        f ∘ coneToFilled k =
          (perimeterConeHomeomorphClosedDisk k :
            PerimeterCone k → ClosedComplexUnitDisk) := by
  rintro ⟨f, hf⟩
  apply coneToFilled_not_injective k
  intro x y hxy
  apply (perimeterConeHomeomorphClosedDisk k).injective
  calc
    perimeterConeHomeomorphClosedDisk k x =
        f (coneToFilled k x) := (congrFun hf x).symm
    _ = f (coneToFilled k y) := congrArg f hxy
    _ = perimeterConeHomeomorphClosedDisk k y := congrFun hf y

/-
Strictly open and independent:
* exact-head elaboration, generated declaration/axiom audit;
* full coneToFilled quotient fibers and disk attaching pushout;
* actual CW manifold and cellular/singular comparison;
* hyperbolic/geodesic/trace-formula and arithmetic applications.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskHomeomorphism
