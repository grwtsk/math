-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.GraphPrimitive.Variant4e4a2b71ea94cc6ac122ac0c92e9c76237f6dea494f7732d889e539582b97f13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e4a2b71ea94cc6ac122ac0c92e9c76237f6dea494f7732d889e539582b97f13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.GraphPrimitive.Variant4e4a2b71ea94cc6ac122ac0c92e9c76237f6dea494f7732d889e539582b97f13","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4e4a2b71ea94cc6ac122ac0c92e9c76237f6dea494f7732d889e539582b97f13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Foundations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Categorical
import FCRS.Foundations

/-
Core-only signatures for controlled planar observations.

The structures in this file deliberately package distinct sorts.  In
particular, none of the graph, coordinate, control, or carrier-point sorts is
identified with a categorical object or morphism.
-/


namespace GRWTSK.Topology.GeneralTopology.GraphPrimitive.Variant4e4a2b71ea94cc6ac122ac0c92e9c76237f6dea494f7732d889e539582b97f13

universe uVertex uEdge uRaw uPoint uObj uHom

namespace FCRS.ControlledPlane

/-- Signature-level sort of graph primitives. -/
structure GraphPrimitive where
  index : Type uRaw

/-- Signature-level sort of graph edges, distinct from graph primitives. -/
structure GraphEdge where
  index : Type uRaw

/-- Signature-level sort of factorizations, distinct from edges. -/
structure Factorization where
  index : Type uRaw

/-- Abstract closed-coordinate sort; this is not `Spec` or `MaxSpec`. -/
structure ClosedCoordinate where
  index : Type uRaw

/-- Signature-level control-state sort. -/
structure ControlState where
  index : Type uRaw

/-- Signature-level 2D carrier-point sort. -/
structure CarrierPoint2D where
  index : Type uPoint

/-- Signature-level refinement-stage sort. -/
structure RefinementStage where
  index : Type uRaw

/-- A directed graph whose vertices and edges remain independent types. -/
structure DirectedGraph
    (Vertex : Type uVertex) (Edge : Type uEdge) where
  source : Edge → Vertex
  target : Edge → Vertex

/-- A map of directed graphs, independent of `CategoryLike` morphisms. -/
structure GraphMap
    {VertexG : Type uVertex} {EdgeG : Type uEdge}
    {VertexH : Type uVertex} {EdgeH : Type uEdge}
    (G : DirectedGraph VertexG EdgeG)
    (H : DirectedGraph VertexH EdgeH) where
  onVertex : VertexG → VertexH
  onEdge : EdgeG → EdgeH
  source_comm :
    ∀ e, onVertex (G.source e) = H.source (onEdge e)
  target_comm :
    ∀ e, onVertex (G.target e) = H.target (onEdge e)

/--
The algebraic closed-coordinate regime exposed by CT-01.

This records only the two abstract predicates already present in
`RealizationSystem`; it does not construct prime ideals or spectra.
-/
structure ClosedCoordinateRegime
    (S : RealizationSystem.{uObj, uHom}) : Prop where
  algebraicJacobson : S.P.algebraicJacobson
  algebraicClosedResiduesFinite :
    S.P.algebraicClosedResiduesFinite

/-- The separate affinoid route exposed by CT-04. -/
structure AffinoidClosedCoordinateRegime
    (S : RealizationSystem.{uObj, uHom}) : Prop where
  affinoidJacobson : S.P.affinoidJacobson
  affinoidClosedResiduesFinite :
    S.P.affinoidClosedResiduesFinite

/-- CT-01 yields the algebraic regime only after its finite-type premise. -/
theorem closedCoordinateRegime_of_ct01
    {S : RealizationSystem.{uObj, uHom}}
    (ct01 : CT01Claim S)
    (hFiniteType : S.P.algebraicFiniteType) :
    ClosedCoordinateRegime S := by
  have h := ct01 hFiniteType
  exact {
    algebraicJacobson := h.1
    algebraicClosedResiduesFinite := h.2
  }

/-- CT-04 provides the distinct affinoid closed-coordinate route. -/
theorem affinoidClosedCoordinateRegime_of_ct04
    {S : RealizationSystem.{uObj, uHom}}
    (ct04 : CT04Claim S)
    (hFiniteType : S.P.affinoidTopologicallyFiniteType) :
    AffinoidClosedCoordinateRegime S := by
  have h := ct04 hFiniteType
  exact {
    affinoidJacobson := h.1
    affinoidClosedResiduesFinite := h.2
  }

/--
An opaque geometric carrier.  `compactnessAssertion` names a proposition; a
proof of it remains an external obligation.
-/
structure Carrier2D where
  Point : Type uPoint
  compactnessAssertion : Prop

/-- Signature-level compactness, with no topology silently introduced. -/
def CompactCarrier (P : Carrier2D) : Prop :=
  P.compactnessAssertion

/-- A designated binary operation on a typed carrier. -/
structure BinaryOperation (α : Type uRaw) where
  op : α → α → α

end FCRS.ControlledPlane
