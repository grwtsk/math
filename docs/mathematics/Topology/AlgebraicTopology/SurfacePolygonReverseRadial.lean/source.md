# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b07a01e4ed5d1235da0eb74ffc23270ff7833b47` · SHA-256 `d48c29a767ffe5ae6834b949ca74205176434273ade35fa4ae80381bedfe5763`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionContinuity
import Mathlib.Topology.Separation.Hausdorff

/-! # Exact quotient-product supplier for reverse radial descent.
The original perimeter product projection is quotient by compact
source, Hausdorff target, continuity and surjectivity. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

def productProjection (k : ℕ) :
    RadialSource k → UnpairedPerimeter k × unitInterval :=
  fun pr => (perimeterProjection k pr.1, pr.2)

def perimeterCylinderToFilling (k : ℕ) :
    UnpairedPerimeter k × unitInterval → FilledPolygonQuotient k :=
  fun pr => perimeterRadialSlice k pr.2 pr.1

@[simp] theorem perimeterCylinderToFilling_source (k : ℕ)
    (p : BoundaryPoint k) (r : unitInterval) :
    perimeterCylinderToFilling k (perimeterProjection k p, r) =
      radialProjection k (p, r) :=
  perimeterRadialSlice_projection k r p

theorem perimeterCylinderToFilling_comp (k : ℕ) :
    perimeterCylinderToFilling k ∘ productProjection k =
      radialProjection k := by
  funext ⟨p, r⟩
  exact perimeterCylinderToFilling_source k p r

theorem productProjection_continuous (k : ℕ) :
    Continuous (productProjection k) :=
  ((perimeterProjection_continuous k).comp continuous_fst).prodMk continuous_snd

theorem productProjection_surjective (k : ℕ) :
    Function.Surjective (productProjection k) := by
  rintro ⟨x, r⟩
  refine Quotient.inductionOn x ?_
  intro p
  exact ⟨(p, r), rfl⟩

private theorem perimeterT2 (k : ℕ) : T2Space (UnpairedPerimeter k) :=
  (perimeterUnitCircleHomeomorph k).symm.t2Space

private theorem radialSourceCompact (k : ℕ) :
    CompactSpace (RadialSource k) := by
  infer_instance

theorem productProjection_isQuotientMap (k : ℕ) :
    Topology.IsQuotientMap (productProjection k) := by
  let : CompactSpace (RadialSource k) := radialSourceCompact k
  let : T2Space (UnpairedPerimeter k) := perimeterT2 k
  exact Topology.IsQuotientMap.of_surjective_continuous
    (productProjection_surjective k)
    (productProjection_continuous k)

theorem perimeterCylinderToFilling_continuous (k : ℕ) :
    Continuous (perimeterCylinderToFilling k) := by
  apply (productProjection_isQuotientMap k).continuous_iff.mpr
  rw [perimeterCylinderToFilling_comp]
  exact radialProjection_continuous k

theorem perimeterCylinderToFilling_zero (k : ℕ)
    (x : UnpairedPerimeter k) :
    perimeterCylinderToFilling k (x, 0) = apexPoint k :=
  perimeterRadialSlice_zero k x

theorem perimeterCylinderToFilling_one (k : ℕ)
    (x : UnpairedPerimeter k) :
    perimeterCylinderToFilling k (x, 1) = perimeterToFilling k x :=
  perimeterRadialSlice_one k x
end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial
```
