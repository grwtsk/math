-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RealizationFixationSourceData.Varianta67d79afbb331f4f0f65cc0c8bfa9834b663416c838bea7c592a0592dac43a08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a67d79afbb331f4f0f65cc0c8bfa9834b663416c838bea7c592a0592dac43a08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RealizationFixationSourceData.Varianta67d79afbb331f4f0f65cc0c8bfa9834b663416c838bea7c592a0592dac43a08","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a67d79afbb331f4f0f65cc0c8bfa9834b663416c838bea7c592a0592dac43a08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Refinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.SphericalRealization


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RealizationFixationSourceData.Varianta67d79afbb331f4f0f65cc0c8bfa9834b663416c838bea7c592a0592dac43a08

universe uObj uHom vObj vHom uCoord uVertex uEdge uEntity uGraph uSphere uStage u1 u2 u3

namespace FCRS.ControlledSpherical

open FCRS
open FCRS.ControlledPlane

/--
Source-side maps used to compare graph realization with the existing
coordinate-fixation functors.  One source record is shared by both geometric
branches.
-/
structure RealizationFixationSourceData
    (Global : CategoryLike.{uObj, uHom})
    (Fixed : CategoryLike.{vObj, vHom})
    (Coord : Type uCoord)
    (Vertex : Type uVertex)
    (GraphPoint : Type uGraph) where
  globalObjectAt : GraphPoint → Global.Obj
  fixedObjectAt : Coord → GraphPoint → Fixed.Obj
  vertexFix : Coord → Vertex → Vertex
  graphFix : Coord → GraphPoint → GraphPoint

/-- Target-side fixation map for one supplied sphere-carrier role. -/
structure SphereFixationData
    (Coord : Type uCoord) (SpherePoint : Type uSphere) where
  sphereFix : Coord → SpherePoint → SpherePoint

/--
Fixation compatibility is additional data: functoriality alone proves none of
these object, vertex, or realization commuting equations.
-/
structure RealizationFixationCoherent
    {Global : CategoryLike.{uObj, uHom}}
    {Fixed : CategoryLike.{vObj, vHom}}
    {Coord : Type uCoord}
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {SpherePoint : Type uSphere}
    (L : CoordinateFixationLayer Global Fixed Coord)
    (E : InjectiveMapWitness R.Point SpherePoint)
    (source :
      RealizationFixationSourceData Global Fixed Coord Vertex R.Point)
    (target : SphereFixationData Coord SpherePoint) : Prop where
  objectCommutes :
    ∀ c x,
      source.fixedObjectAt c x =
        (L.fix c).obj (source.globalObjectAt x)
  vertexCommutes :
    ∀ c v,
      source.graphFix c (R.vertexPoint v) =
        R.vertexPoint (source.vertexFix c v)
  realizationCommutes :
    ∀ c x,
      E.map (source.graphFix c x) =
        target.sphereFix c (E.map x)

/--
One shared source refinement for entities, vertices, and realization points.
The first equation references the existing controlled-plane entity
restriction; the second connects vertices to the graph realization.
-/
structure GraphRealizationRefinementData
    (Stage : Type uStage)
    (Entity : Type uEntity)
    (Vertex : Type uVertex)
    (GraphPoint : Type uGraph)
    (refines : Stage → Stage → Prop)
    (restrictEntity : Stage → Stage → Entity → Entity)
    (entityVertex : Entity → Vertex)
    (vertexPoint : Vertex → GraphPoint) where
  restrictVertex : Stage → Stage → Vertex → Vertex
  restrictGraph : Stage → Stage → GraphPoint → GraphPoint
  entityCommutes :
    ∀ {next prev}, refines next prev → ∀ x,
      restrictVertex next prev (entityVertex x) =
        entityVertex (restrictEntity next prev x)
  realizationCommutes :
    ∀ {next prev}, refines next prev → ∀ v,
      restrictGraph next prev (vertexPoint v) =
        vertexPoint (restrictVertex next prev v)

/-- Target-side restriction map for one sphere-carrier role. -/
structure SphereRefinementData
    (Stage : Type uStage) (SpherePoint : Type uSphere) where
  restrictSphere : Stage → Stage → SpherePoint → SpherePoint

/-- Strict coherence of the supplied `S¹` vertex placement. -/
structure VertexPlacementRefinementCoherent
    {Stage : Type uStage}
    {Entity : Type uEntity}
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {GraphPoint : Type uGraph}
    {G : DirectedGraph Vertex Edge}
    {S1 : Sphere1Carrier.{u1}}
    {refines : Stage → Stage → Prop}
    {restrictEntity : Stage → Stage → Entity → Entity}
    {entityVertex : Entity → Vertex}
    {vertexPoint : Vertex → GraphPoint}
    (V : InjectiveS1VertexPlacement G S1)
    (source :
      GraphRealizationRefinementData
        Stage Entity Vertex GraphPoint refines restrictEntity
        entityVertex vertexPoint)
    (target : SphereRefinementData Stage S1.Point) : Prop where
  commutes :
    ∀ {next prev}, refines next prev → ∀ v,
      V.injection.map (source.restrictVertex next prev v) =
        target.restrictSphere next prev (V.injection.map v)

/-- Strict coherence of a supplied signature-level point realization. -/
structure InjectiveRealizationRefinementCoherent
    {Stage : Type uStage}
    {Entity : Type uEntity}
    {Vertex : Type uVertex}
    {GraphPoint : Type uGraph} {SpherePoint : Type uSphere}
    {refines : Stage → Stage → Prop}
    {restrictEntity : Stage → Stage → Entity → Entity}
    {entityVertex : Entity → Vertex}
    {vertexPoint : Vertex → GraphPoint}
    (E : InjectiveMapWitness GraphPoint SpherePoint)
    (source :
      GraphRealizationRefinementData
        Stage Entity Vertex GraphPoint refines restrictEntity
        entityVertex vertexPoint)
    (target : SphereRefinementData Stage SpherePoint) : Prop where
  commutes :
    ∀ {next prev}, refines next prev → ∀ x,
      E.map (source.restrictGraph next prev x) =
        target.restrictSphere next prev (E.map x)

/-- Branch-indexed fixation coherence for the selected supplied witness. -/
def SphericalRealizationFixationCoherent
    {Global : CategoryLike.{uObj, uHom}}
    {Fixed : CategoryLike.{vObj, vHom}}
    {Coord : Type uCoord}
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}}
    (L : CoordinateFixationLayer Global Fixed Coord)
    (choice : SphericalRealizationChoice R S2 S3)
    (source :
      RealizationFixationSourceData Global Fixed Coord Vertex R.Point)
    (target2 : SphereFixationData Coord S2.Point)
    (target3 : SphereFixationData Coord S3.Point) : Prop :=
  match choice with
  | .sphere2 E => RealizationFixationCoherent L E.injection source target2
  | .sphere3 E => RealizationFixationCoherent L E.injection source target3

/-- Branch-indexed signature-level realization refinement coherence. -/
def SphericalRealizationRefinementCoherent
    {Stage : Type uStage}
    {Entity : Type uEntity}
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}}
    {refines : Stage → Stage → Prop}
    {restrictEntity : Stage → Stage → Entity → Entity}
    {entityVertex : Entity → Vertex}
    (choice : SphericalRealizationChoice R S2 S3)
    (source :
      GraphRealizationRefinementData
        Stage Entity Vertex R.Point refines restrictEntity
        entityVertex R.vertexPoint)
    (target2 : SphereRefinementData Stage S2.Point)
    (target3 : SphereRefinementData Stage S3.Point) : Prop :=
  match choice with
  | .sphere2 E =>
      InjectiveRealizationRefinementCoherent E.injection source target2
  | .sphere3 E =>
      InjectiveRealizationRefinementCoherent E.injection source target3

/-- Joint vertex placement and selected realization refinement coherence. -/
structure SelectedRealizationRefinementCoherent
    {Stage : Type uStage}
    {Entity : Type uEntity}
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S1 : Sphere1Carrier.{u1}}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}}
    {refines : Stage → Stage → Prop}
    {restrictEntity : Stage → Stage → Entity → Entity}
    {entityVertex : Entity → Vertex}
    (V : InjectiveS1VertexPlacement G S1)
    (choice : SphericalRealizationChoice R S2 S3)
    (source :
      GraphRealizationRefinementData
        Stage Entity Vertex R.Point refines restrictEntity
        entityVertex R.vertexPoint)
    (boundaryTarget : SphereRefinementData Stage S1.Point)
    (target2 : SphereRefinementData Stage S2.Point)
    (target3 : SphereRefinementData Stage S3.Point) : Prop where
  vertex : VertexPlacementRefinementCoherent V source boundaryTarget
  graph :
    SphericalRealizationRefinementCoherent choice source target2 target3

end FCRS.ControlledSpherical
