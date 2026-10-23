/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1042 exact head 753a46203fd2a45c199d5403898b3d1e46e03e85.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWEdgeInterior
import Mathlib.Topology.Maps.Basic

/-!
# Saturated openness and open embedding of strict positive polygon edges

For an open subset of one authentic strict positive a/b interval, its
full source saturation consists of that positive-side subset together
with its reversed subset on the paired negative side. The saturation is
open in the finite disjoint union of real interval copies. The genuine
boundary quotient map therefore sends it to an open subset.

This supplies a source candidate that each `positiveOpenEdge` is an
open topological embedding. It does not establish closure-finiteness,
the CW weak topology, a CW-complex instance, or a surface manifold.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWEdgeOpen

open Set
open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorOrbit
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWOrbitClosure
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWEdgeInterior

/-- Reinstall the same discrete topology on the inherited finite side
index while reasoning about open source subsets in this isolated child. -/
local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

local instance cornerDiscreteSpace (k : ℕ) :
    DiscreteTopology (PolygonCorner k) := ⟨rfl⟩

/-- The carrier of the authentic strict unit-interval subtype. -/
def strictUnitInteriorCarrier : Set unitInterval :=
  {t | ¬ IsEndpoint t}

/-- Removing the two endpoints from the real unit interval gives an
open subset in its inherited subspace topology. -/
theorem strictUnitInteriorCarrier_isOpen :
    IsOpen strictUnitInteriorCarrier := by
  have h0 : IsOpen (({0} : Set unitInterval)ᶜ) :=
    (isClosed_singleton : IsClosed ({0} : Set unitInterval)).isOpen_compl
  have h1 : IsOpen (({1} : Set unitInterval)ᶜ) :=
    (isClosed_singleton : IsClosed ({1} : Set unitInterval)).isOpen_compl
  simpa [strictUnitInteriorCarrier, IsEndpoint, not_or] using h0.inter h1

/-- An open subset of `StrictUnitInterior` has open image in the
ambient real unit interval because the whole strict carrier is open. -/
theorem subtypeVal_image_isOpen
    {U : Set StrictUnitInterior} (hU : IsOpen U) :
    IsOpen (Subtype.val '' U : Set unitInterval) := by
  simpa [StrictUnitInterior, strictUnitInteriorCarrier] using
    strictUnitInteriorCarrier_isOpen.isOpenMap_subtype_val U hU

/-- The original directed positive source point underlying one strict
positive edge parameter. -/
def positiveOpenEdgeSourcePoint (k : ℕ)
    (h : Handle k) (i : Fin 2) (t : unitInterval) : BoundaryPoint k :=
  ((h, (i : Fin 4)), t)

/-- Exact source formula for the restricted positive characteristic. -/
@[simp] theorem positiveOpenEdge_eq_projection (k : ℕ)
    (h : Handle k) (i : Fin 2) (t : StrictUnitInterior) :
    positiveOpenEdge k h i t =
      boundaryProjection k (positiveOpenEdgeSourcePoint k h i t.1) := by
  fin_cases i <;> rfl

/-- The same quotient point is represented by the authentic reversed
negative-side source. -/
theorem positiveOpenEdge_eq_opposite_projection (k : ℕ)
    (h : Handle k) (i : Fin 2) (t : StrictUnitInterior) :
    positiveOpenEdge k h i t =
      boundaryProjection k
        (oppositeBoundaryPoint k
          (positiveOpenEdgeSourcePoint k h i t.1)) := by
  fin_cases i
  · simpa [positiveOpenEdge, positiveOneCell,
      positiveOpenEdgeSourcePoint, oppositeBoundaryPoint] using
      opposite_a_edge_maps_agree k h t.1
  · simpa [positiveOpenEdge, positiveOneCell,
      positiveOpenEdgeSourcePoint, oppositeBoundaryPoint] using
      opposite_b_edge_maps_agree k h t.1

/-- Full source saturation of an arbitrary subset of one strict
positive edge. It has exactly the positive copy and its reversed
negative copy, and no endpoint seams. -/
def positiveOpenEdgeSaturation (k : ℕ)
    (h : Handle k) (i : Fin 2) (U : Set StrictUnitInterior) :
    Set (BoundaryPoint k) :=
  ({(h, (i : Fin 4))} ×ˢ (Subtype.val '' U)) ∪
    ({(h, (i : Fin 4) + 2)} ×ˢ
      (unitInterval.symm '' (Subtype.val '' U)))

/-- The explicit two-copy saturation is open whenever the original
strict-edge subset is open. -/
theorem positiveOpenEdgeSaturation_isOpen (k : ℕ)
    (h : Handle k) (i : Fin 2)
    {U : Set StrictUnitInterior} (hU : IsOpen U) :
    IsOpen (positiveOpenEdgeSaturation k h i U) := by
  have hpos : IsOpen (Subtype.val '' U : Set unitInterval) :=
    subtypeVal_image_isOpen hU
  have hneg : IsOpen
      (unitInterval.symm '' (Subtype.val '' U) : Set unitInterval) := by
    simpa using unitInterval.symmHomeomorph.isOpen_image.mpr hpos
  exact
    ((isOpen_discrete _).prod hpos).union
      ((isOpen_discrete _).prod hneg)

/-- The quotient preimage of an edge image is exactly the explicit
positive/negative saturation. This is the source-exact topology gate. -/
theorem boundaryProjection_preimage_positiveOpenEdge_image (k : ℕ)
    (h : Handle k) (i : Fin 2) (U : Set StrictUnitInterior) :
    boundaryProjection k ⁻¹' (positiveOpenEdge k h i '' U) =
      positiveOpenEdgeSaturation k h i U := by
  ext p
  rcases p with ⟨c, u⟩
  constructor
  · rintro ⟨t, htU, heq⟩
    have heq' :
        boundaryProjection k (positiveOpenEdgeSourcePoint k h i t.1) =
          boundaryProjection k (c, u) := by
      simpa using heq
    have horbit := interior_projection_eq_orbit k t.property heq'
    rcases horbit with hsame | hopp
    · rw [hsame]
      exact Or.inl ⟨rfl, ⟨t, htU, rfl⟩⟩
    · rw [hopp]
      exact Or.inr ⟨rfl, ⟨t.1, ⟨t, htU, rfl⟩, rfl⟩⟩
  · intro hp
    rcases hp with hp | hp
    · rcases hp with ⟨hc, ⟨t, htU, hu⟩⟩
      subst c
      subst u
      exact ⟨t, htU, positiveOpenEdge_eq_projection k h i t⟩
    · rcases hp with ⟨hc, ⟨v, ⟨t, htU, hv⟩, hu⟩⟩
      subst c
      subst v
      subst u
      exact ⟨t, htU,
        positiveOpenEdge_eq_opposite_projection k h i t⟩

/-- Every open subset of one strict positive edge has open image in
the genuine quotient. -/
theorem positiveOpenEdge_image_isOpen (k : ℕ)
    (h : Handle k) (i : Fin 2)
    {U : Set StrictUnitInterior} (hU : IsOpen U) :
    IsOpen (positiveOpenEdge k h i '' U) := by
  rw [← (boundaryProjection_isQuotientMap k).isOpen_preimage]
  rw [boundaryProjection_preimage_positiveOpenEdge_image]
  exact positiveOpenEdgeSaturation_isOpen k h i hU

/-- The strict positive characteristic is an open map. -/
theorem positiveOpenEdge_isOpenMap (k : ℕ)
    (h : Handle k) (i : Fin 2) :
    IsOpenMap (positiveOpenEdge k h i) :=
  fun U hU => positiveOpenEdge_image_isOpen k h i hU

/-- The authentic strict positive edge is an open topological
embedding into the genuine paired polygon one-skeleton. -/
theorem positiveOpenEdge_isOpenEmbedding (k : ℕ)
    (h : Handle k) (i : Fin 2) :
    IsOpenEmbedding (positiveOpenEdge k h i) :=
  .of_continuous_injective_isOpenMap
    (positiveOpenEdge_continuous k h i)
    (positiveOpenEdge_injective k h i)
    (positiveOpenEdge_isOpenMap k h i)

/-- In particular, each selected strict positive edge is a genuine
topological embedding, not merely a continuous injection. -/
theorem positiveOpenEdge_isEmbedding (k : ℕ)
    (h : Handle k) (i : Fin 2) :
    IsEmbedding (positiveOpenEdge k h i) :=
  (positiveOpenEdge_isOpenEmbedding k h i).isEmbedding

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWEdgeOpen
