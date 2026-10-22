/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Quotient topology, unit intervals and equivalence-closure API: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#859. Pinned parent PR #852 head:
5144a80402288e780107e2432748bc4c12744f28.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
import Mathlib.Topology.Constructions
import Mathlib.Topology.UnitInterval

/-!
# A genuine radial polygon filling with source-matched outer boundary

For every k : ℕ, g=k+2, the previous source #845 constructs a
TRUE topological quotient B_k of 4g copies of the unit interval.
The source IDs, signed edge directions and cyclic seams are identical
to the original oriented polygon word from #745.

Here each source edge interval is extended to a closed *radial square*
  (side index, tangential t ∈ [0,1], radial r ∈ [0,1]).
We impose EXACTLY seven source-labelled identification families:
  * at ALL radii r, join adjacent side endpoints in polygon order;
  * at radius ZERO, collapse the entire perimeter to one apex;
  * at radius ONE ONLY, identify same-source opposite a/b sides
    with the genuine Mathlib reflection t ↦ 1-t.

Relation.EqvGen and the true topological Quotient produce a
TWO-DIMENSIONAL RADIAL FILLING QUOTIENT with continuous projection
and continuous sector characteristic maps [0,1]² → quotient.

The outer boundary is NOT merely asserted to be B_k: every primitive
#845 boundary equivalence is proved respected at radius ONE, and a
continuous map B_k → filling is obtained from the quotient universal
property. It has an exact pointwise commuting equation on source
edge intervals.

A source-preserving quotient radial coordinate map to [0,1] is
continuous, because EVERY primitive identification preserves radius.
It separates apex at r=0, true sector interior r=1/2, and outer
boundary at r=1. In particular the new space is not the one-point
quotient or a 1-dimensional boundary-only relabeling.

This is a GENUINE topological quotient of radial square sectors. It
is NOT YET a proof of a homeomorphism to a closed 2-disk with polygon
sides paired, a CW surface/manifold structure, or an identification
of actual cellular chains with the earlier categorical H1. The
perimeter-circle-to-disk/cone equivalence and attaching-map/CW
universal property remain independent topological suppliers.
No van Kampen, Hurewicz, compact hyperbolic surface, geodesic
length, Selberg/Weil-Petersson, GUE, Chowla, or RH theorem.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology

/-- Retain the exact discrete topology on original directed edge IDs,
with two real unit-interval coordinates (tangential and radial). -/
local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

/-- Source copies of the REAL closed unit square for every one of the
same directed polygon sides used by PR #852.
The first interval is tangential t; the second is radial r. -/
abbrev RadialSource (k : ℕ) : Type :=
  BoundaryPoint k × unitInterval

/-- Selected true source point at radius zero. All other r=0 source
points will be identified with this apex ONLY through a generating
relation, never by redefining RadialSource as PUnit. -/
def apexSource (k : ℕ) : RadialSource k :=
  (originalCornerPoint k (firstHandle k, 0), 0)

/-- Exact seven families of radial source identification.
The first four sew the polygon perimeter's consecutive side endpoints
at EVERY radius, including the last-to-first cyclic seam.
The apex family identifies ONLY radius-zero points.
The final two families glue opposite same-source a/b sides ONLY at
the outer radius r=1, NOT in the interior of the cone. -/
inductive RadialGluingStep (k : ℕ) :
    RadialSource k → RadialSource k → Prop where
  | seam01 (h : Handle k) (r : unitInterval) :
      RadialGluingStep k
        (((h, 0), 1), r) (((h, 1), 0), r)
  | seam12 (h : Handle k) (r : unitInterval) :
      RadialGluingStep k
        (((h, 1), 1), r) (((h, 2), 0), r)
  | seam23 (h : Handle k) (r : unitInterval) :
      RadialGluingStep k
        (((h, 2), 1), r) (((h, 3), 0), r)
  | seamNext (h : Handle k) (r : unitInterval) :
      RadialGluingStep k
        (((h, 3), 1), r) (((nextHandle k h, 0), 0), r)
  | apex (p : BoundaryPoint k) :
      RadialGluingStep k (p, 0) (apexSource k)
  | outerA (h : Handle k) (t : unitInterval) :
      RadialGluingStep k
        (((h, 0), t), 1)
        (((h, 2), unitInterval.symm t), 1)
  | outerB (h : Handle k) (t : unitInterval) :
      RadialGluingStep k
        (((h, 1), t), 1)
        (((h, 3), unitInterval.symm t), 1)

/-- Genuine equivalence closure of ONLY the seven declared radial
gluing families; the relation is not an everywhere-true oracle. -/
def RadialConnected (k : ℕ) :
    RadialSource k → RadialSource k → Prop :=
  Relation.EqvGen (RadialGluingStep k)

/-- Setoid used by the actual two-dimensional radial quotient. -/
def radialSetoid (k : ℕ) : Setoid (RadialSource k) where
  r := RadialConnected k
  iseqv := Relation.EqvGen.is_equivalence _

/-- Topological quotient of real radial squares under exact original
boundary seams, radius-zero apex, and outer-radius reversed side
pairs. The usual Mathlib coinduced Quotient topology is inherited. -/
def FilledPolygonQuotient (k : ℕ) : Type :=
  Quotient (radialSetoid k)

/-- The topology is the actual quotient topology coinduced by the
projection from the disjoint radial square sectors. -/
theorem radialQuotientTopology_is_coinduced (k : ℕ) :
    (inferInstance : TopologicalSpace (FilledPolygonQuotient k)) =
      TopologicalSpace.coinduced
        (Quotient.mk' : RadialSource k → FilledPolygonQuotient k)
        (inferInstance : TopologicalSpace (RadialSource k)) :=
  rfl

/-- Genuine quotient projection of the radial sector source. -/
def radialProjection (k : ℕ) :
    RadialSource k → FilledPolygonQuotient k :=
  Quotient.mk (radialSetoid k)

theorem radialProjection_continuous (k : ℕ) :
    Continuous (radialProjection k) := by
  change Continuous
    (Quotient.mk' : RadialSource k → FilledPolygonQuotient k)
  exact continuous_quotient_mk'

theorem radialProjection_isQuotientMap (k : ℕ) :
    IsQuotientMap (radialProjection k) := by
  change IsQuotientMap
    (Quotient.mk' : RadialSource k → FilledPolygonQuotient k)
  exact isQuotientMap_quotient_mk'

/-- Each true radial square sector has its own source-ID-preserving
continuous parameterization into the filled topological quotient. -/
def sectorMap (k : ℕ) (h : Handle k) (i : Fin 4) :
    unitInterval × unitInterval → FilledPolygonQuotient k :=
  fun tr => radialProjection k (((h, i), tr.1), tr.2)

theorem sectorMap_continuous (k : ℕ) (h : Handle k)
    (i : Fin 4) :
    Continuous (sectorMap k h i) := by
  unfold sectorMap
  exact (radialProjection_continuous k).comp
    ((continuous_const.prodMk continuous_fst).prodMk continuous_snd)

/-- Strictly source-derived equality of quotient points from one
real radial gluing generator. -/
theorem radialProjection_eq_of_step (k : ℕ)
    {p q : RadialSource k} (h : RadialGluingStep k p q) :
    radialProjection k p = radialProjection k q :=
  Quotient.sound (Relation.EqvGen.rel _ _ h)

/-- All source perimeter points at r=0 are identified with the
explicit apex point, including those from distinct handle IDs. -/
theorem radius_zero_is_apex (k : ℕ) (p : BoundaryPoint k) :
    radialProjection k (p, 0) =
      radialProjection k (apexSource k) :=
  radialProjection_eq_of_step k (RadialGluingStep.apex p)

/-- Actual source map from one original boundary interval point
to the filled quotient's OUTER (r=1) point. -/
def outerSource (k : ℕ) (p : BoundaryPoint k) :
    RadialSource k := (p, 1)

def outerProjection (k : ℕ) :
    BoundaryPoint k → FilledPolygonQuotient k :=
  fun p => radialProjection k (outerSource k p)

theorem outerProjection_continuous (k : ℕ) :
    Continuous (outerProjection k) := by
  unfold outerProjection outerSource
  exact (radialProjection_continuous k).comp
    (continuous_id.prodMk continuous_const)

/-- The exact parent #845 boundary gluing generators hold at radius
ONE because the filled gluing relation adds precisely those outer
side pairs and has the original cyclic endpoint seams. -/
theorem parentBoundaryStep_respected (k : ℕ)
    {p q : BoundaryPoint k} (h : BoundaryGluingStep k p q) :
    RadialConnected k (outerSource k p) (outerSource k q) := by
  cases h with
  | pairA h t =>
      exact Relation.EqvGen.rel _ _ (RadialGluingStep.outerA h t)
  | pairB h t =>
      exact Relation.EqvGen.rel _ _ (RadialGluingStep.outerB h t)
  | seam01 h =>
      exact Relation.EqvGen.rel _ _
        (RadialGluingStep.seam01 h (1 : unitInterval))
  | seam12 h =>
      exact Relation.EqvGen.rel _ _
        (RadialGluingStep.seam12 h (1 : unitInterval))
  | seam23 h =>
      exact Relation.EqvGen.rel _ _
        (RadialGluingStep.seam23 h (1 : unitInterval))
  | seamNext h =>
      exact Relation.EqvGen.rel _ _
        (RadialGluingStep.seamNext h (1 : unitInterval))

/-- Transport of the FULL inherited boundary EqvGen, including
all reflexive/symmetric/transitive consequences of the original
same-source opposite-side and endpoint gluing relations. -/
theorem parentBoundaryConnected_respected (k : ℕ)
    {p q : BoundaryPoint k} (h : BoundaryConnected k p q) :
    RadialConnected k (outerSource k p) (outerSource k q) := by
  induction h with
  | rel p q hpq => exact parentBoundaryStep_respected k hpq
  | refl p => exact Relation.EqvGen.refl _
  | symm p q _ ih => exact ih.symm
  | trans p q r _ _ ih1 ih2 => exact ih1.trans ih2

/-- The original #845 quotient boundary maps INTO the new filled
space by the real Mathlib Quotient universal property. This is a
boundary inclusion map, NOT yet a disk-boundary attaching map. -/
def boundaryInclusion (k : ℕ) :
    PolygonBoundaryOneSkeleton k → FilledPolygonQuotient k :=
  Quotient.lift (outerProjection k) (by
    intro p q h
    exact Quotient.sound (parentBoundaryConnected_respected k h))

/-- Boundary inclusion is a genuinely continuous function between
actual topological quotients, not merely a set-theoretic lift. -/
theorem boundaryInclusion_continuous (k : ℕ) :
    Continuous (boundaryInclusion k) := by
  apply Continuous.quotient_lift (outerProjection_continuous k)
  intro p q h
  exact Quotient.sound (parentBoundaryConnected_respected k h)

/-- The exact source-preserving commuting pointwise relation:
each original signed polygon boundary point maps to the very same
radial sector point at radius 1 in the filled quotient. -/
theorem boundaryInclusion_projection (k : ℕ) (p : BoundaryPoint k) :
    boundaryInclusion k (boundaryProjection k p) =
      radialProjection k (outerSource k p) :=
  rfl

/-- All inherited original finite polygon corners still map to ONE
OUTER vertex in the two-dimensional filled quotient. This is a
consequence of the prior verified source-to-boundary transition,
not an arbitrary all-corners equality introduced here. -/
theorem all_original_corners_same_outer_vertex (k : ℕ)
    (u v : PolygonCorner k) :
    boundaryInclusion k
        (boundaryProjection k (originalCornerPoint k u)) =
      boundaryInclusion k
        (boundaryProjection k (originalCornerPoint k v)) :=
  congrArg (boundaryInclusion k)
    (all_original_corners_same_topological_vertex k u v)

/-- Every primitive radial gluing step preserves the original real
radial parameter. In particular no outer boundary identification is
silently imposed at any smaller r. -/
theorem step_preserves_radius (k : ℕ)
    {p q : RadialSource k} (h : RadialGluingStep k p q) :
    p.2 = q.2 := by
  cases h <;> rfl

/-- The full EqvGen quotient relation preserves radial position;
this is an exact source invariant, not a topology-agnostic heuristic. -/
theorem connected_preserves_radius (k : ℕ)
    {p q : RadialSource k} (h : RadialConnected k p q) :
    p.2 = q.2 := by
  induction h with
  | rel p q hpq => exact step_preserves_radius k hpq
  | refl p => rfl
  | symm p q _ ih => exact ih.symm
  | trans p q r _ _ ih1 ih2 => exact ih1.trans ih2

/-- The radial coordinate is a well-defined REAL [0,1]-valued
function on the true quotient, since every generator/closure
identifies points only at the SAME radial parameter. -/
def radialCoordinate (k : ℕ) :
    FilledPolygonQuotient k → unitInterval :=
  Quotient.lift (fun p : RadialSource k => p.2) (by
    intro p q h
    exact connected_preserves_radius k h)

@[simp] theorem radialCoordinate_projection (k : ℕ)
    (p : RadialSource k) :
    radialCoordinate k (radialProjection k p) = p.2 :=
  rfl

theorem radialCoordinate_continuous (k : ℕ) :
    Continuous (radialCoordinate k) := by
  apply Continuous.quotient_lift continuous_snd
  intro p q h
  exact connected_preserves_radius k h

/-- Every point in the SAME relation class must have the SAME radial
coordinate, so two points at different real radii cannot collapse. -/
theorem projection_ne_of_radius_ne (k : ℕ)
    (p q : RadialSource k) (h : p.2 ≠ q.2) :
    radialProjection k p ≠ radialProjection k q := by
  intro heq
  have hv := congrArg (radialCoordinate k) heq
  simp only [radialCoordinate_projection] at hv
  exact h hv

/-- The actual quotient apex is the image of the selected radius-zero
source; the whole radius-zero perimeter collapses to this point. -/
def apexPoint (k : ℕ) : FilledPolygonQuotient k :=
  radialProjection k (apexSource k)

/-- A chosen true outer vertex at radial parameter 1. -/
def outerVertex (k : ℕ) : FilledPolygonQuotient k :=
  outerProjection k (originalCornerPoint k (firstHandle k, 0))

/-- A concrete source square midpoint at radial 1/2 and tangential
1/2, strictly between apex and outer boundary. -/
def radialInteriorPoint (k : ℕ) : FilledPolygonQuotient k :=
  radialProjection k
    (((firstHandle k, (0 : Fin 4)), midpoint), midpoint)

/-- Apex has real radial coordinate zero, and the outer source
vertex has real radial coordinate one. -/
@[simp] theorem radialCoordinate_apex (k : ℕ) :
    radialCoordinate k (apexPoint k) = 0 := rfl

@[simp] theorem radialCoordinate_outerVertex (k : ℕ) :
    radialCoordinate k (outerVertex k) = 1 := rfl

@[simp] theorem radialCoordinate_interior (k : ℕ) :
    radialCoordinate k (radialInteriorPoint k) = midpoint := rfl

/-- The REAL midpoint inherited from #845 is not zero: its
non-endpoint theorem prevents all-radii collapse. -/
theorem midpoint_ne_zero : (midpoint : unitInterval) ≠ 0 := by
  intro h
  exact midpoint_not_endpoint (Or.inl h)

/-- It is also not one, distinguishing sector interiors from the
entire outer boundary quotient. -/
theorem midpoint_ne_one : (midpoint : unitInterval) ≠ 1 := by
  intro h
  exact midpoint_not_endpoint (Or.inr h)

/-- Outer boundary is strictly distinct from cone apex, by the
proved radial parameter invariant. -/
theorem apex_ne_outerVertex (k : ℕ) :
    apexPoint k ≠ outerVertex k := by
  intro h
  have hr := congrArg (radialCoordinate k) h
  simpa using (show (0 : unitInterval) ≠ 1 from zero_ne_one)

/-- A real sector interior point differs from the cone apex. -/
theorem interior_ne_apex (k : ℕ) :
    radialInteriorPoint k ≠ apexPoint k := by
  intro h
  have hr := congrArg (radialCoordinate k) h
  exact midpoint_ne_zero (by simpa using hr)

/-- A real sector interior point differs from the outer boundary
vertex, and indeed from EVERY point with radial coordinate one. -/
theorem interior_ne_outerVertex (k : ℕ) :
    radialInteriorPoint k ≠ outerVertex k := by
  intro h
  have hr := congrArg (radialCoordinate k) h
  exact midpoint_ne_one (by simpa using hr)

/-- Three source-identical radial strata survive in the quotient:
the apex, an honest interior point and the outer polygon vertex. -/
theorem three_radial_strata_distinct (k : ℕ) :
    apexPoint k ≠ radialInteriorPoint k ∧
      radialInteriorPoint k ≠ outerVertex k ∧
      outerVertex k ≠ apexPoint k :=
  ⟨(interior_ne_apex k).symm, interior_ne_outerVertex k,
    (apex_ne_outerVertex k).symm⟩

/-- In particular, the quotient is nontrivial, genuinely extending
the previous one-skeleton by radius-separated interior points. -/
theorem filledPolygon_nontrivial (k : ℕ) :
    Nontrivial (FilledPolygonQuotient k) := by
  refine ⟨⟨apexPoint k, outerVertex k, ?_⟩⟩
  exact apex_ne_outerVertex k

/-- Genus two: two initial handles have an actual radial filling
quotient with three distinct radial strata. -/
theorem genusTwo_radial_strata :
    apexPoint 0 ≠ radialInteriorPoint 0 ∧
      radialInteriorPoint 0 ≠ outerVertex 0 ∧
      outerVertex 0 ≠ apexPoint 0 :=
  three_radial_strata_distinct 0

/-- Genus three: a genuine extra handle remains in the source and
the filled topology does not collapse its radial coordinate. -/
theorem genusThree_radial_strata :
    apexPoint 1 ≠ radialInteriorPoint 1 ∧
      radialInteriorPoint 1 ≠ outerVertex 1 ∧
      outerVertex 1 ≠ apexPoint 1 :=
  three_radial_strata_distinct 1

/-- The exact underlying 2g source-labelled one-cells from #745 are
not deleted by this construction of 4g radial sector copies. -/
theorem original_one_cell_source_count (k : ℕ) :
    Fintype.card (GenusLetter k) = 2 * (k + 2) :=
  unchanged_edge_generator_count k

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
