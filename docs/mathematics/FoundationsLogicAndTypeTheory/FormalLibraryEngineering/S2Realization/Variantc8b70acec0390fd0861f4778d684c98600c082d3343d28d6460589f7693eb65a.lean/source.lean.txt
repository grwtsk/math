-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InjectiveS2Realization.Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.InjectiveS2Realization.Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec","mathematical_subject":"Foundations.Unclassified","original_sha256":"d06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/S2Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.VertexPlacement


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InjectiveS2Realization.Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec

universe uVertex uEdge uGraph u1 u2

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/--
An injective map from an opaque graph-realization point sort into the opaque
`S²` point sort.  It is not a graph-topological embedding theorem.
-/
structure InjectiveS2Realization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S2 : Sphere2Carrier.{u2}) where
  injection : InjectiveMapWitness R.Point S2.Point

def HasInjectiveS2RealizationWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S2 : Sphere2Carrier.{u2}) : Prop :=
  Nonempty (InjectiveS2Realization R S2)

/--
The selected `S²` injection agrees on vertex points with one supplied `S¹`
vertex placement and one supplied `S¹`-to-`S²` point placement.  No edge
interior, cyclic-order, boundary-topology, or intersection law is asserted.
-/
structure VertexCompatibleS2Realization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S1 : Sphere1Carrier.{u1})
    (S2 : Sphere2Carrier.{u2})
    (V : InjectiveS1VertexPlacement G S1)
    (B : InjectiveS1ToS2Placement S1 S2)
    (E : InjectiveS2Realization R S2) : Prop where
  vertexCompatibility :
    ∀ v,
      E.injection.map (R.vertexPoint v) =
        B.injection.map (V.injection.map v)

def HasVertexCompatibleS2RealizationWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S1 : Sphere1Carrier.{u1})
    (S2 : Sphere2Carrier.{u2})
    (V : InjectiveS1VertexPlacement G S1)
    (B : InjectiveS1ToS2Placement S1 S2) : Prop :=
  ∃ E : InjectiveS2Realization R S2,
    VertexCompatibleS2Realization R S1 S2 V B E

/-- Forget vertex compatibility while retaining the exact `S²` injection. -/
theorem hasInjectiveS2RealizationWitness_of_vertexCompatible
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S1 : Sphere1Carrier.{u1}} {S2 : Sphere2Carrier.{u2}}
    {V : InjectiveS1VertexPlacement G S1}
    {B : InjectiveS1ToS2Placement S1 S2}
    {E : InjectiveS2Realization R S2}
    (_h : VertexCompatibleS2Realization R S1 S2 V B E) :
    HasInjectiveS2RealizationWitness R S2 :=
  ⟨E⟩

end FCRS.ControlledSpherical
