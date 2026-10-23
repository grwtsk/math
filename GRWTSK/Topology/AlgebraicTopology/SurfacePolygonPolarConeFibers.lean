/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1007 exact head dad6c7c95cb113e6a578a67e81ffdce356958923.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel
import Mathlib.Tactic

/-!
# Exact polar cone fibers and injectivity

The zero-radius cone fiber consists of every angular point at the
apex. At strictly positive radius, equality of polar disk values
forces equal radii and equal actual UnitAddCircle classes.
Consequently equality of disk values agrees with equality of
StandardCircleCone classes, using the inherited exact cone relation.

No surjectivity or homeomorphism is asserted.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarConeFibers

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarUnitCircleLift
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarRadiusFibers

/-- Equal joint polar disk values force equal radial coordinates. -/
theorem jointPolar_radius_eq
    (p q : StandardCircleConeCylinder)
    (h : standardConePolarDisk (standardCircleConeProjection p) =
      standardConePolarDisk (standardCircleConeProjection q)) :
    p.2 = q.2 := by
  rcases p with ⟨z, r⟩
  rcases q with ⟨w, s⟩
  refine Quotient.inductionOn₂ z w ?_
  intro θ φ
  apply Subtype.ext
  apply diskPolar_radius_eq θ φ r s
  simpa [standardConePolarDisk_projection,
    GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity.unitCircleJointPolar,
    unitCirclePolarDisk_coe] using h

/-- At a nonzero radius, equality of disk values implies equality of
the original angular circle coordinates. -/
theorem jointPolar_angle_eq_of_ne_zero
    (p q : StandardCircleConeCylinder)
    (hr : p.2 ≠ 0)
    (h : standardConePolarDisk (standardCircleConeProjection p) =
      standardConePolarDisk (standardCircleConeProjection q)) :
    p.1 = q.1 := by
  rcases p with ⟨z, r⟩
  rcases q with ⟨w, s⟩
  have hrs := jointPolar_radius_eq (z, r) (w, s) h
  subst s
  refine Quotient.inductionOn₂ z w ?_
  intro θ φ
  have hreal : realAnglePolar θ r = realAnglePolar φ r := by
    have hh := congrArg Subtype.val h
    simpa [standardConePolarDisk_projection,
      GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity.unitCircleJointPolar,
      unitCirclePolarDisk_coe, realAnglePolarDisk] using hh
  have hpos : 0 < (r : ℝ) := lt_of_le_of_ne r.property.1 (Ne.symm (by exact_mod_cast hr))
  exact polar_eq_implies_unitAddCircle_eq hpos hpos hreal

/-- The polar disk map's kernel is exactly the genuine cone
equivalence relation, including the apex case. -/
theorem standardConePolarDisk_eq_iff_connected
    (p q : StandardCircleConeCylinder) :
    standardConePolarDisk (standardCircleConeProjection p) =
      standardConePolarDisk (standardCircleConeProjection q) ↔
        StandardCircleConeConnected p q := by
  constructor
  · intro h
    have hr := jointPolar_radius_eq p q h
    by_cases hz : p.2 = 0
    · apply (standardCircleConeConnected_iff p q).mpr
      exact Or.inr ⟨hz, hr ▸ hz⟩
    · have ha := jointPolar_angle_eq_of_ne_zero p q hz h
      apply (standardCircleConeConnected_iff p q).mpr
      left
      exact Prod.ext ha hr
  · intro h
    exact congrArg standardConePolarDisk (Quotient.sound h)

/-- The quotient-descended polar disk map is injective, by the exact
source fiber criterion rather than by a dimension argument. -/
theorem standardConePolarDisk_injective :
    Function.Injective standardConePolarDisk := by
  intro x y h
  refine Quotient.inductionOn₂ x y ?_ h
  intro p q hpq
  exact Quotient.sound
    ((standardConePolarDisk_eq_iff_connected p q).mp hpq)

/-
Remaining:
* exact-head Lean elaboration of this and all imported candidates;
* complex polar decomposition and disk surjectivity;
* compact-to-Hausdorff homeomorphism;
* authentic perimeter cone-to-disk transport.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarConeFibers
