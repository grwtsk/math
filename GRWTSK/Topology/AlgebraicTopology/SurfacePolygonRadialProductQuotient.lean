/-
Copyright (c) 2026 R.A. Jacob Martone. Released under MIT license.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner grwtsk/math#961. Parent PR #959 exact head:
2cd7e77d11c65ac582e1467f935942655f0d3a32.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonJointRadialDescent
import Mathlib.Topology.Separation.Hausdorff

/-!
# The perimeter product projection is a quotient map

Use the compact-to-Hausdorff quotient-map theorem on the actual source
of finitely many topological unit-interval copies, not a claimed
general product-of-quotient-map rule.

Its codomain is Hausdorff because the source-specific perimeter
angle map is continuous and injective into the true additive circle.
The final result discharges #955's explicit product-quotient premise.

No standard disk or topological CW pushout is constructed here.
-/

set_option autoImplicit false
noncomputable section
open Topology

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialProductQuotient

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonUnitCircleAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonJointRadialDescent

local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

/-- Source compactness comes from a finite side index and a compact
real unit interval; both source parameters remain real intervals. -/
private theorem boundaryPointCompact (k : ℕ) : CompactSpace (BoundaryPoint k) := by
  infer_instance

/-- The actual unpaired polygon perimeter has Hausdorff topology:
the angular map is a continuous injection into the genuine AddCircle. -/
private theorem perimeterT2 (k : ℕ) : T2Space (UnpairedPerimeter k) := by
  letI : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  exact T2Space.of_injective_continuous
    (perimeterAngle_injective k)
    (perimeterAngle_continuous k)

/-- Product source compactness follows from compactness of the same
exact finite family of interval copies and the radial unit interval. -/
private theorem radialProductCompact (k : ℕ) :
    CompactSpace (BoundaryPoint k × unitInterval) := by
  let : CompactSpace (BoundaryPoint k) := boundaryPointCompact k
  infer_instance

/-- The literal perimeter quotient product with the identity map on
the radial coordinate is continuous. -/
theorem perimeterProductProjection_continuous (k : ℕ) :
    Continuous (perimeterProductProjection k) := by
  unfold perimeterProductProjection
  exact ((perimeterProjection_continuous k).comp continuous_fst).prodMk
    continuous_snd

/-- Product projection surjectivity follows from surjectivity of
the actual original perimeter quotient projection; radius is unchanged. -/
theorem perimeterProductProjection_surjective (k : ℕ) :
    Function.Surjective (perimeterProductProjection k) := by
  rintro ⟨x, r⟩
  obtain ⟨p, hp⟩ := perimeterProjection_surjective k x
  exact ⟨(p, r), by
    simp [perimeterProductProjection, hp]⟩

/-- The missing #955 product-quotient supplier is obtained by the
compact-source/Hausdorff-target criterion, NOT by treating all
quotient maps as stable under arbitrary products. -/
theorem perimeterProductProjection_isQuotientMap (k : ℕ) :
    IsQuotientMap (perimeterProductProjection k) := by
  let : CompactSpace (BoundaryPoint k × unitInterval) :=
    radialProductCompact k
  let : T2Space (UnpairedPerimeter k) := perimeterT2 k
  exact Topology.IsQuotientMap.of_surjective_continuous
    (perimeterProductProjection_surjective k)
    (perimeterProductProjection_continuous k)

/-- Joint continuity of the original source-exact perimeter/radius map:
the formerly explicit premise is now supplied by a separate theorem. -/
theorem perimeterJointRadialMap_continuous (k : ℕ) :
    Continuous (perimeterJointRadialMap k) :=
  perimeterJointRadialMap_continuous_of_productQuotient k
    (perimeterProductProjection_isQuotientMap k)

/-- Genuine continuous cylinder map from the standard additive circle
times radius into the already constructed filled quotient. -/
theorem unitCircleJointRadialMap_continuous (k : ℕ) :
    Continuous (unitCircleJointRadialMap k) :=
  unitCircleJointRadialMap_continuous_of_productQuotient k
    (perimeterProductProjection_isQuotientMap k)

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialProductQuotient
