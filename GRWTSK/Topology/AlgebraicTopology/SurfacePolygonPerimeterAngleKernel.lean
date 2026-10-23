/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Exact parent PR #946: 5aa55f9366e1d02ebc0b764b691dece299b4697a.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence

/-!
# Exact angular kernel on the original unpaired perimeter

This module packages the original source relation as precisely the kernel
of the inherited canonical additive-circle coordinate. It does not change
the parent bijectivity proof or assume a new equivalence relation.
-/

set_option autoImplicit false

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence

/-- Equality of angular coordinates on ORIGINAL source points is exactly
equality of their classes in the genuine unpaired perimeter quotient. -/
theorem source_angle_eq_iff_perimeter_projection_eq (k : ℕ)
    (p q : BoundaryPoint k) :
    sourceAngularAddress k p = sourceAngularAddress k q ↔
      perimeterProjection k p = perimeterProjection k q := by
  rw [← perimeterAngle_projection k p, ← perimeterAngle_projection k q]
  exact (perimeterAngle_injective k).eq_iff

/-- The same classification, expressed using the inherited genuine
source EqvGen closure, not a newly declared quotient relation. -/
theorem source_angle_eq_iff_connected (k : ℕ)
    (p q : BoundaryPoint k) :
    sourceAngularAddress k p = sourceAngularAddress k q ↔
      PerimeterConnected k p q := by
  rw [source_angle_eq_iff_perimeter_projection_eq]
  change (Quotient.mk (perimeterSetoid k) p =
      Quotient.mk (perimeterSetoid k) q) ↔
    (perimeterSetoid k).r p q
  exact Quotient.eq


/-- Distinct original perimeter classes have distinct angular addresses;
this is the contrapositive of the source-exact kernel characterization. -/
theorem source_angle_ne_iff_projection_ne (k : ℕ)
    (p q : BoundaryPoint k) :
    sourceAngularAddress k p ≠ sourceAngularAddress k q ↔
      perimeterProjection k p ≠ perimeterProjection k q := by
  exact not_congr (source_angle_eq_iff_perimeter_projection_eq k p q)

/-- The angular coordinate has exactly the inherited cyclic seam
EqvGen fibers, and no additional identifications. -/
theorem source_angle_ne_iff_not_connected (k : ℕ)
    (p q : BoundaryPoint k) :
    sourceAngularAddress k p ≠ sourceAngularAddress k q ↔
      ¬ PerimeterConnected k p q := by
  exact not_congr (source_angle_eq_iff_connected k p q)

/-- The quotient angular coordinate separates any two perimeter classes. -/
theorem perimeter_angle_eq_iff (k : ℕ)
    (x y : UnpairedPerimeter k) :
    perimeterAngle k x = perimeterAngle k y ↔ x = y :=
  (perimeterAngle_injective k).eq_iff

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel
