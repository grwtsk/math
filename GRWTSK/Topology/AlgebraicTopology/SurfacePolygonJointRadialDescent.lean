/-
Copyright (c) 2026 R.A. Jacob Martone. Released under MIT license.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue grwtsk/math#955. Parent PR #951 exact head
6d688e18ef047f94cfb7b633e4b8ebb99943eef7.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonUnitCircleAttachment
import Mathlib.Topology.Constructions
import Mathlib.Topology.Maps.Basic

/-!
# Joint radial map: exact product-quotient obligation

Fixed-radius continuity does not establish joint continuity.
The new map is defined on the product of the authentic unpaired
perimeter and Mathlib's real unit interval. Its continuity is
proved conditionally upon the exact product projection being
a quotient map. No product quotient theorem is silently assumed.

The remaining independent supplier is
  IsQuotientMap (fun pr : BoundaryPoint k × unitInterval =>
    (perimeterProjection k pr.1, pr.2)).
-/

set_option autoImplicit false
noncomputable section
open Topology

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonJointRadialDescent

open _root_.Topology
open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonUnitCircleAttachment

/- Reuse the authentic finite-corner topology of the perimeter homeomorphism;
   the unitInterval factor retains its ordinary, nondiscrete topology. -/
local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

/-- The precise product projection whose quotient-map property is still
an independent supplier, not inferred from separate continuity. -/
def perimeterProductProjection (k : ℕ) :
    BoundaryPoint k × unitInterval →
      UnpairedPerimeter k × unitInterval :=
  fun pr => (perimeterProjection k pr.1, pr.2)

/-- A function on the *whole* perimeter-radius product, not one
independently chosen function per fixed radial slice. -/
def perimeterJointRadialMap (k : ℕ) :
    UnpairedPerimeter k × unitInterval → FilledPolygonQuotient k :=
  fun pr => perimeterRadialSlice k pr.2 pr.1

/-- Exact equality on every original radial square sector. -/
@[simp] theorem perimeterJointRadialMap_source (k : ℕ)
    (p : BoundaryPoint k) (r : unitInterval) :
    perimeterJointRadialMap k (perimeterProjection k p, r) =
      radialProjection k (p, r) :=
  perimeterRadialSlice_projection k r p

/-- The composite with the product projection is exactly the original
continuous radial quotient projection, as functions. -/
theorem perimeterJointRadialMap_comp_projection (k : ℕ) :
    perimeterJointRadialMap k ∘ perimeterProductProjection k =
      radialProjection k := by
  funext pr
  rcases pr with ⟨p, r⟩
  exact perimeterJointRadialMap_source k p r

/-- CONDITIONAL joint-continuity theorem: the product-quotient
property is explicitly supplied and has not been proved in this file.
This does not promote fixed-slice continuity to joint continuity. -/
theorem perimeterJointRadialMap_continuous_of_productQuotient (k : ℕ)
    (hq : IsQuotientMap (perimeterProductProjection k)) :
    Continuous (perimeterJointRadialMap k) := by
  exact hq.continuous_iff.mpr (by
    simpa only [perimeterJointRadialMap_comp_projection] using
      radialProjection_continuous k)

/-- The zero radius collapses the whole genuine perimeter to the apex. -/
theorem perimeterJointRadialMap_zero (k : ℕ)
    (x : UnpairedPerimeter k) :
    perimeterJointRadialMap k (x, 0) = apexPoint k :=
  perimeterRadialSlice_zero k x

/-- The outer radius agrees with the original polygon attaching
direction followed by boundary inclusion into the filled quotient. -/
theorem perimeterJointRadialMap_one (k : ℕ)
    (x : UnpairedPerimeter k) :
    perimeterJointRadialMap k (x, 1) = perimeterToFilling k x :=
  perimeterRadialSlice_one k x

/-- The actual radial invariant of the filled quotient is the second
product coordinate everywhere. -/
theorem perimeterJointRadialMap_radius (k : ℕ)
    (x : UnpairedPerimeter k) (r : unitInterval) :
    radialCoordinate k (perimeterJointRadialMap k (x, r)) = r :=
  radialCoordinate_slice k r x

/-- Transport along the proposed perimeter homeomorphism yields a map
on the standard circle-radius product, with no disk claim. -/
def unitCircleJointRadialMap (k : ℕ) :
    UnitAddCircle × unitInterval → FilledPolygonQuotient k :=
  fun pr => perimeterJointRadialMap k
    ((perimeterUnitCircleHomeomorph k).symm pr.1, pr.2)

/-- The transported map is jointly continuous IF the same missing
product quotient supplier is discharged. -/
theorem unitCircleJointRadialMap_continuous_of_productQuotient (k : ℕ)
    (hq : IsQuotientMap (perimeterProductProjection k)) :
    Continuous (unitCircleJointRadialMap k) := by
  exact (perimeterJointRadialMap_continuous_of_productQuotient k hq).comp
    ((perimeterUnitCircleHomeomorph k).symm.continuous.comp continuous_fst
      |>.prodMk continuous_snd)

/-- The unit-circle outer slice factors through the authentic attaching
map; this is not a continuous map from a disk. -/
theorem unitCircleJointRadialMap_one (k : ℕ) (z : UnitAddCircle) :
    unitCircleJointRadialMap k (z, 1) =
      boundaryInclusion k (unitCircleAttachingMap k z) := by
  unfold unitCircleJointRadialMap
  rw [perimeterJointRadialMap_one]
  rfl

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonJointRadialDescent
