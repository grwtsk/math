/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison

/-!
# Joint continuity of the exact radial-to-adjunction map

The map is an actual quotient lift from the original radial squares.
It is continuous because the source has the product topology, the
perimeter projection is continuous, cone projection is continuous,
and the checked cone-to-disk and disk-adjunction maps are continuous.
No invented disk comparison or CW hypothesis is used.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionContinuity

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison

local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

/-- Continuous original source sector coordinates into the product
of the unpaired perimeter and the actual radius interval. -/
theorem perimeterRadiusSource_continuous (k : ℕ) :
    Continuous (fun pr : RadialSource k =>
      (perimeterProjection k pr.1, pr.2)) :=
  ((perimeterProjection_continuous k).comp continuous_fst).prodMk
    continuous_snd

/-- The actual cone projection composed with original source
coordinates is jointly continuous. -/
theorem sourceCone_continuous (k : ℕ) :
    Continuous (fun pr : RadialSource k =>
      CircleCone.coneMk (perimeterProjection k pr.1) pr.2) := by
  have hmk :
      Continuous (fun pr : UnpairedPerimeter k × unitInterval =>
        CircleCone.coneMk pr.1 pr.2) := by
    change Continuous
      (Quotient.mk' : (UnpairedPerimeter k × unitInterval) →
        CircleCone.Cone (UnpairedPerimeter k))
    exact continuous_quotient_mk'
  exact hmk.comp (perimeterRadiusSource_continuous k)

/-- The unquotiented comparison to the authentic disk adjunction is
continuous in BOTH tangential and radial variables. -/
theorem radialSourceToAdjunction_continuous (k : ℕ) :
    Continuous (radialSourceToAdjunction k) := by
  unfold radialSourceToAdjunction
  exact (originalDiskMap_continuous k).comp
    ((perimeterConeDiskHomeomorph k).continuous.comp
      (sourceCone_continuous k))

/-- The forward comparison descends to a genuinely continuous map
between the two existing topological quotients. -/
theorem radialFillingToAdjunction_continuous (k : ℕ) :
    Continuous (radialFillingToAdjunction k) := by
  apply Continuous.quotient_lift (radialSourceToAdjunction_continuous k)

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionContinuity
