# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TopologicalClaims.Variant0a6184e2b4d67cad9a09606ec1857c48394b58d0ebb34ad8476866e8972fa2e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69d7eed587aca7847ced7081697fecb4a15096fe` · SHA-256 `93d97201a751cfa3a9c8e39cb98583e83e0f2156ac955be517c24da93ab16bee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TG01Claim.Variantcdb8d29a7fb669637954e9f46394cb31a711005652603dbe717739672fefc89d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cdb8d29a7fb669637954e9f46394cb31a711005652603dbe717739672fefc89d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.TG01Claim.Variantcdb8d29a7fb669637954e9f46394cb31a711005652603dbe717739672fefc89d","mathematical_subject":"Logic.Foundations","original_sha256":"cdb8d29a7fb669637954e9f46394cb31a711005652603dbe717739672fefc89d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalClaims.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalRegistry

/-
TG-01--TG-12 are deliberately separate from CS-01--CS-12.  The TG family
speaks about the quotient topology of an admitted directed graph.  It neither
mentions a controlled observation nor equips a control sort with a topology.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TG01Claim.Variantcdb8d29a7fb669637954e9f46394cb31a711005652603dbe717739672fefc89d

universe uVertex uEdge uMorph uFactor uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane
open FCRS.Topology

/-- TG-01: the sieve-selected edge subtype retains the source graph incidence. -/
structure TG01Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) : Prop where
  everyEdgeAdmissible :
    ∀ e : AdmittedEdgeType sieve occurs,
      AdmissibleEdge sieve occurs e.1
  sourceInherited :
    ∀ e : AdmittedEdgeType sieve occurs,
      (AdmittedGraph G sieve occurs).source e = G.source e.1
  targetInherited :
    ∀ e : AdmittedEdgeType sieve occurs,
      (AdmittedGraph G sieve occurs).target e = G.target e.1
  sourceEdgeNotDuplicated :
    Function.Injective
      (fun e : AdmittedEdgeType sieve occurs => e.1)

/-- TG-02: quotient equality is exactly endpoint-generated equivalence. -/
structure TG02Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop where
  quotientExact :
    ∀ x y : GraphPrePoint Vertex Edge I.Point,
      quotientMap G I x = quotientMap G I y ↔
        GraphEndpointEqv G I x y
  verticesRemainDistinct : Function.Injective (vertexPoint G I)

/-- TG-03: every edge interval is attached at its declared source and target. -/
structure TG03Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop where
  zeroEndpoint :
    ∀ e, edgePath G I e I.zero = vertexPoint G I (G.source e)
  oneEndpoint :
    ∀ e, edgePath G I e I.one = vertexPoint G I (G.target e)

/-- TG-04: one edge path is injective on the declared interval interior. -/
def TG04Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop :=
  ∀ (e : Edge) {t u : I.Point},
    t ∈ I.interior → u ∈ I.interior →
      edgePath G I e t = edgePath G I e u → t = u

/-- TG-05: distinct edge interiors are disjoint and every interior avoids vertices. -/
structure TG05Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop where
  distinctInteriors :
    ∀ {e f : Edge}, e ≠ f → ∀ {x : GraphPoint G I},
      EdgeInteriorPoint G I e x → EdgeInteriorPoint G I f x → False
  interiorsAvoidVertices :
    ∀ {e : Edge} {x : GraphPoint G I},
      EdgeInteriorPoint G I e x → ∀ {v : Vertex},
        vertexPoint G I v = x → False

/-- TG-06: the realization carries the actual final topology and canonical maps. -/
structure TG06Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop where
  topologyIsQuotient :
    graphRealizationTopology G I =
      quotientTopology (graphPreTopology G I) (quotientMap G I)
  quotientContinuous :
    Continuous (graphPreTopology G I) (graphRealizationTopology G I)
      (quotientMap G I)
  edgePathsContinuous :
    ∀ e, Continuous I.topology (graphRealizationTopology G I)
      (edgePath G I e)

/-- TG-07: selecting the package's `S²` branch exposes its positive witness. -/
def TG07Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop :=
  SelectsTopologicalSphere2 W.selectedEmbedding →
    HasTopologicalPlanarWitness G I S2

/-- TG-08: selecting the package's `S³` branch exposes its positive witness. -/
def TG08Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop :=
  SelectsTopologicalSphere3 W.selectedEmbedding →
    HasTopologicalSpatialWitness G I S3

/-- TG-09: a selected `S²` embedding has the package's exact boundary law. -/
def TG09Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop :=
  ∀ E, W.selectedEmbedding = .sphere2 E →
    CircleCompatibleTopologicalEmbedding2
      G I S1 S2 W.vertexPlacement W.boundary E

/-- TG-10: every declared graph-realization restriction map is continuous. -/
def TG10Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop :=
  ∀ {next prev}, W.refinement.refines next prev →
    Continuous
      (W.refinement.topologyAt next)
      (W.refinement.topologyAt prev)
      (W.refinement.restrict next prev)

/--
TG-11: identity/composition and strict embedding commutation come from the
same selected branch and the same dependent refinement system.
-/
structure TG11Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop where
  refinesReflexive : ∀ s, W.refinement.refines s s
  refinesTransitive :
    ∀ {later middle earlier},
      W.refinement.refines later middle →
      W.refinement.refines middle earlier →
      W.refinement.refines later earlier
  restrictionIdentity :
    ∀ s x, W.refinement.restrict s s x = x
  restrictionComposition :
    ∀ {later middle earlier}
      (_hlm : W.refinement.refines later middle)
      (_hme : W.refinement.refines middle earlier)
      (x : W.refinement.PointAt later),
      W.refinement.restrict middle earlier
          (W.refinement.restrict later middle x) =
        W.refinement.restrict later earlier x
  embeddingCoherence :
    SelectedTopologicalRefinementCoherence
      W.refinement W.baseStage W.baseIdentification W.selectedEmbedding

/--
TG-12: the compatible-family carrier has the dependent-product subspace
topology, continuous stage projections, and the defining restriction laws.
No inverse-limit universal property is included.
-/
structure TG12Claim
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage) : Prop where
  topologyIsSubspace :
    topologicalCompatibleFamilyTopology R =
      subspaceTopology (piTopology R.topologyAt) (refinementCompatibleSet R)
  projectionsContinuous :
    ∀ s,
      Continuous (topologicalCompatibleFamilyTopology R) (R.topologyAt s)
        (topologicalCompatibleFamilyProjection R s)
  projectionsCommute :
    ∀ (x : TopologicalCompatibleFamily R) {next prev},
      R.refines next prev →
      R.restrict next prev
          (topologicalCompatibleFamilyProjection R next x) =
        topologicalCompatibleFamilyProjection R prev x

end FCRS.ControlledSpherical
```
