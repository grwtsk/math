# Complete source: GRWTSK.Topology.GeneralTopology.TopologicalRegistry.Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47cf6cd3571ce8e10ea58c0343ec2ad3653cb4ae` · SHA-256 `16f40bfa4a54d241d4d01317c35b6dae296c2754a2239d78e2d0316d4d2a27a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopologicalSphericalEmbeddingChoice.Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopologicalSphericalEmbeddingChoice.Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalRegistry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalRefinement

/-
One anti-witness-drift registry for the genuinely topological spherical branch.
TG-07--TG-11 are research inputs: the registry supplies them through one exact
choice, one exact graph-realization refinement system, and one exact base-stage identification.
-/


namespace GRWTSK.Topology.GeneralTopology.TopologicalSphericalEmbeddingChoice.Variant097dccee2a9f380b52d40b18f2b4ade6fc7792fb99b0aed9ee13b07926dd7e1a

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane
open FCRS.Topology

/-- A positive choice of one exact quotient-graph embedding branch. -/
inductive TopologicalSphericalEmbeddingChoice
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3}) where
  | sphere2 :
      TopologicalGraphEmbedding G I S2.Point S2.topology →
        TopologicalSphericalEmbeddingChoice G I S2 S3
  | sphere3 :
      TopologicalGraphEmbedding G I S3.Point S3.topology →
        TopologicalSphericalEmbeddingChoice G I S2 S3

/-- Exact boundary compatibility, explicitly conditional on selecting `S²`. -/
def SelectedTopologicalBoundaryCompatibility
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    (V : TopologicalS1VertexPlacement G S1)
    (B : TopologicalSphereBoundary S1 S2) :
    TopologicalSphericalEmbeddingChoice G I S2 S3 → Prop :=
  fun choice => ∀ E, choice = .sphere2 E →
    CircleCompatibleTopologicalEmbedding2 G I S1 S2 V B E

/-- Genuine compactness of exactly the selected sphere topology. -/
def SelectedTopologicalSphereCompact
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}} :
    TopologicalSphericalEmbeddingChoice G I S2 S3 → Prop
  | .sphere2 _ => Compact S2.topology
  | .sphere3 _ => Compact S3.topology

/-- The shared package has selected its positive `S²` embedding constructor. -/
def SelectsTopologicalSphere2
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    (choice : TopologicalSphericalEmbeddingChoice G I S2 S3) : Prop :=
  ∃ E, choice = .sphere2 E

/-- The shared package has selected its positive `S³` embedding constructor. -/
def SelectsTopologicalSphere3
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    (choice : TopologicalSphericalEmbeddingChoice G I S2 S3) : Prop :=
  ∃ E, choice = .sphere3 E

/--
The selected branch's strict refinement coherence.  The match retains the
exact selected embedding rather than permitting a second existential witness.
-/
def SelectedTopologicalRefinementCoherence
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage)
    (baseStage : Stage)
    (baseIdentification :
      Homeomorphism (GraphPoint G I) (R.PointAt baseStage)
        (graphRealizationTopology G I) (R.topologyAt baseStage)) :
    TopologicalSphericalEmbeddingChoice G I S2 S3 → Prop
  | .sphere2 E =>
      Nonempty
        (StrictEmbeddingRefinementCoherent R baseStage
          (graphRealizationTopology G I) baseIdentification
          S2.topology E.embedding)
  | .sphere3 E =>
      Nonempty
        (StrictEmbeddingRefinementCoherent R baseStage
          (graphRealizationTopology G I) baseIdentification
          S3.topology E.embedding)

/--
One coherent package for TG-07--TG-11.  It binds the vertex placement,
boundary, selected `S²`/`S³` embedding, literal stagewise sieve-admitted graph
refinement system, base-stage homeomorphism, and strict
embedding/refinement commutation.  Its
compactness fields are the genuine open-cover predicates of the sphere
topologies.
-/
structure TopologicalGraphWitnessPackage
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (S1 : Sphere1.{u1}) (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3})
    (Stage : Type uStage) where
  vertexPlacement : TopologicalS1VertexPlacement G S1
  boundary : TopologicalSphereBoundary S1 S2
  selectedEmbedding : TopologicalSphericalEmbeddingChoice G I S2 S3
  selectedBoundaryCompatibility :
    SelectedTopologicalBoundaryCompatibility
      vertexPlacement boundary selectedEmbedding

  admittedGraphRefinement :
    ContinuousAdmittedGraphRefinement.{uStage, uPoint, uInterval} Stage I
  baseStage : Stage
  baseIdentification :
    Homeomorphism
      (GraphPoint G I)
      ((admittedGraphRefinement.asContinuousRefinementSystem).PointAt baseStage)
      (graphRealizationTopology G I)
      ((admittedGraphRefinement.asContinuousRefinementSystem).topologyAt baseStage)
  refinementCoherence :
    SelectedTopologicalRefinementCoherence
      admittedGraphRefinement.asContinuousRefinementSystem
      baseStage baseIdentification selectedEmbedding

  sphere1Compact : Compact S1.topology
  selectedSphereCompact :
    SelectedTopologicalSphereCompact selectedEmbedding

/--
The generic refinement view of a package.  Its stage point types unfold to the
literal quotients of the admitted graphs supplied by `admittedGraphRefinement`.
-/
def TopologicalGraphWitnessPackage.refinement
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) :
    ContinuousRefinementSystem.{uStage, max uPoint uInterval} Stage :=
  W.admittedGraphRefinement.asContinuousRefinementSystem

/--
The topological research registry has a single field, so TG-07--TG-11 cannot
be discharged by mutually unrelated witnesses.
-/
structure TopologicalGraphResearchRegistry
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (S1 : Sphere1.{u1}) (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3})
    (Stage : Type uStage) : Prop where
  witnesses :
    Nonempty
      (TopologicalGraphWitnessPackage.{
        uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
        G I S1 S2 S3 Stage)

end FCRS.ControlledSpherical
```
