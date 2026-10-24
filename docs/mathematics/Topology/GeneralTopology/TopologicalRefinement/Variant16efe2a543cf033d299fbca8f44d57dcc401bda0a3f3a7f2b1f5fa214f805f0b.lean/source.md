# Complete source: GRWTSK.Topology.GeneralTopology.TopologicalRefinement.Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `078381dae255ddfeac58e5df88f6224fff89ad1f` · SHA-256 `dbc21121657225cbd0fbf18b9cf64f80094b8f0b79a186b89d9825f0ca4bbcb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousRefinementSystem.Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousRefinementSystem.Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalEmbedding

/-
Continuous stage refinement and its compatible-family subspace.  This module
constructs a topological compatible-family object; it does not claim a
categorical inverse-limit universal property.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousRefinementSystem.Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1

universe uStage uPoint uBase uTarget uInterval

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane
open FCRS.Topology

/--
A dependent family of topological stage realizations with continuous
restriction maps and explicit refinement identity/composition laws.
-/
structure ContinuousRefinementSystem (Stage : Type uStage) where
  PointAt : Stage → Type uPoint
  topologyAt : ∀ s, TopologicalSpaceLike (PointAt s)
  refines : Stage → Stage → Prop
  restrict : ∀ next prev, PointAt next → PointAt prev
  refines_refl : ∀ s, refines s s
  refines_trans :
    ∀ {later middle earlier},
      refines later middle → refines middle earlier →
        refines later earlier
  restrictContinuous :
    ∀ {next prev}, refines next prev →
      Continuous (topologyAt next) (topologyAt prev)
        (restrict next prev)
  restrict_identity :
    ∀ s x, restrict s s x = x
  restrict_composition :
    ∀ {later middle earlier}
      (_hlm : refines later middle)
      (_hme : refines middle earlier) (x : PointAt later),
      restrict middle earlier (restrict later middle x) =
        restrict later earlier x

/--
A refinement system whose stage spaces are literally quotient realizations of
directed graphs.  Stage vertex and edge sorts remain distinct, while one
closed interval supplies every edge parameter space.  The restriction maps
therefore have the intended types `|G_next| → |G_prev|`, not merely maps
between unrelated opaque carriers.
-/
structure ContinuousGraphRealizationRefinement
    (Stage : Type uStage) (I : ClosedInterval.{uInterval}) where
  VertexAt : Stage → Type uPoint
  EdgeAt : Stage → Type uPoint
  graphAt : ∀ s, DirectedGraph (VertexAt s) (EdgeAt s)
  refines : Stage → Stage → Prop
  restrict :
    ∀ next prev,
      GraphPoint (graphAt next) I → GraphPoint (graphAt prev) I
  refines_refl : ∀ s, refines s s
  refines_trans :
    ∀ {later middle earlier},
      refines later middle → refines middle earlier →
        refines later earlier
  restrictContinuous :
    ∀ {next prev}, refines next prev →
      Continuous
        (graphRealizationTopology (graphAt next) I)
        (graphRealizationTopology (graphAt prev) I)
        (restrict next prev)
  restrict_identity : ∀ s x, restrict s s x = x
  restrict_composition :
    ∀ {later middle earlier}
      (_hlm : refines later middle)
      (_hme : refines middle earlier)
      (x : GraphPoint (graphAt later) I),
      restrict middle earlier (restrict later middle x) =
        restrict later earlier x

/--
A refinement system whose stage graph is constructed, at every stage, from
that stage's factoring sieve and occurrence relation.  Thus the displayed
restriction maps have the literal types
`|AdmittedGraph G_next sieve_next occurs_next| →
 |AdmittedGraph G_prev sieve_prev occurs_prev|`.

The maps and their laws remain supplied research data; this structure does
not manufacture them from a graph map or from sieve transport.
-/
structure ContinuousAdmittedGraphRefinement
    (Stage : Type uStage) (I : ClosedInterval.{uInterval}) where
  VertexAt : Stage → Type uPoint
  SourceEdgeAt : Stage → Type uPoint
  MorphAt : Stage → Type uPoint
  FactorizationAt : Stage → Type uPoint
  sourceGraphAt :
    ∀ s, DirectedGraph (VertexAt s) (SourceEdgeAt s)
  sieveAt :
    ∀ s, FactoringSieve (MorphAt s) (FactorizationAt s)
  occursAt :
    ∀ s, SourceEdgeAt s → FactorizationAt s → Prop
  refines : Stage → Stage → Prop
  restrict :
    ∀ next prev,
      GraphPoint
          (AdmittedGraph (sourceGraphAt next) (sieveAt next) (occursAt next)) I →
        GraphPoint
          (AdmittedGraph (sourceGraphAt prev) (sieveAt prev) (occursAt prev)) I
  refines_refl : ∀ s, refines s s
  refines_trans :
    ∀ {later middle earlier},
      refines later middle → refines middle earlier →
        refines later earlier
  restrictContinuous :
    ∀ {next prev}, refines next prev →
      Continuous
        (graphRealizationTopology
          (AdmittedGraph
            (sourceGraphAt next) (sieveAt next) (occursAt next)) I)
        (graphRealizationTopology
          (AdmittedGraph
            (sourceGraphAt prev) (sieveAt prev) (occursAt prev)) I)
        (restrict next prev)
  restrict_identity : ∀ s x, restrict s s x = x
  restrict_composition :
    ∀ {later middle earlier}
      (_hlm : refines later middle)
      (_hme : refines middle earlier)
      (x : GraphPoint
        (AdmittedGraph
          (sourceGraphAt later) (sieveAt later) (occursAt later)) I),
      restrict middle earlier (restrict later middle x) =
        restrict later earlier x

/-- Retain the quotient-graph view while forgetting the stage sieve data. -/
def ContinuousAdmittedGraphRefinement.asGraphRealizationRefinement
    {Stage : Type uStage} {I : ClosedInterval.{uInterval}}
    (R : ContinuousAdmittedGraphRefinement.{uStage, uPoint, uInterval}
      Stage I) :
    ContinuousGraphRealizationRefinement.{uStage, uPoint, uInterval}
      Stage I where
  VertexAt := R.VertexAt
  EdgeAt s := AdmittedEdgeType (R.sieveAt s) (R.occursAt s)
  graphAt s :=
    AdmittedGraph (R.sourceGraphAt s) (R.sieveAt s) (R.occursAt s)
  refines := R.refines
  restrict := R.restrict
  refines_refl := R.refines_refl
  refines_trans := R.refines_trans
  restrictContinuous := R.restrictContinuous
  restrict_identity := R.restrict_identity
  restrict_composition := R.restrict_composition

/-- Forget the stage graph and sieve presentation, retaining only topology. -/
def ContinuousAdmittedGraphRefinement.asContinuousRefinementSystem
    {Stage : Type uStage} {I : ClosedInterval.{uInterval}}
    (R : ContinuousAdmittedGraphRefinement.{uStage, uPoint, uInterval}
      Stage I) :
    ContinuousRefinementSystem.{uStage, max uPoint uInterval} Stage where
  PointAt s := GraphPoint
    (AdmittedGraph (R.sourceGraphAt s) (R.sieveAt s) (R.occursAt s)) I
  topologyAt s := graphRealizationTopology
    (AdmittedGraph (R.sourceGraphAt s) (R.sieveAt s) (R.occursAt s)) I
  refines := R.refines
  restrict := R.restrict
  refines_refl := R.refines_refl
  refines_trans := R.refines_trans
  restrictContinuous := R.restrictContinuous
  restrict_identity := R.restrict_identity
  restrict_composition := R.restrict_composition

/-- Forget only that each stage was presented by a graph quotient. -/
def ContinuousGraphRealizationRefinement.asContinuousRefinementSystem
    {Stage : Type uStage} {I : ClosedInterval.{uInterval}}
    (R : ContinuousGraphRealizationRefinement.{uStage, uPoint, uInterval}
      Stage I) :
    ContinuousRefinementSystem.{uStage, max uPoint uInterval} Stage where
  PointAt s := GraphPoint (R.graphAt s) I
  topologyAt s := graphRealizationTopology (R.graphAt s) I
  refines := R.refines
  restrict := R.restrict
  refines_refl := R.refines_refl
  refines_trans := R.refines_trans
  restrictContinuous := R.restrictContinuous
  restrict_identity := R.restrict_identity
  restrict_composition := R.restrict_composition

/-- Target-side continuous maps indexed by the exact same refinement relation. -/
structure ContinuousTargetRefinement
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage)
    (Y : Type uTarget) (TY : TopologicalSpaceLike Y) where
  restrictTarget : Stage → Stage → Y → Y
  restrictContinuous :
    ∀ {next prev}, R.refines next prev →
      Continuous TY TY (restrictTarget next prev)
  restrict_identity : ∀ s y, restrictTarget s s y = y
  restrict_composition :
    ∀ {later middle earlier}
      (_hlm : R.refines later middle)
      (_hme : R.refines middle earlier) (y : Y),
      restrictTarget middle earlier (restrictTarget later middle y) =
        restrictTarget later earlier y

/--
Strict coherence of stage embeddings.  `baseIdentification` ties the supplied
quotient graph realization homeomorphically to the designated stage, while
`baseCompatibility` ties the selected graph embedding to the same family.
-/
structure StrictEmbeddingRefinementCoherent
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage)
    (baseStage : Stage)
    {BasePoint : Type uBase}
    (TBase : TopologicalSpaceLike BasePoint)
    (baseIdentification :
      Homeomorphism BasePoint (R.PointAt baseStage)
        TBase (R.topologyAt baseStage))
    {Y : Type uTarget} (TY : TopologicalSpaceLike Y)
    (baseEmbedding :
      FCRS.Topology.TopologicalEmbedding BasePoint Y TBase TY) where
  targetRefinement : ContinuousTargetRefinement R Y TY
  embeddingAt :
    ∀ s,
      FCRS.Topology.TopologicalEmbedding
        (R.PointAt s) Y (R.topologyAt s) TY
  baseCompatibility :
    ∀ x,
      (embeddingAt baseStage).toFun (baseIdentification.toFun x) =
        baseEmbedding.toFun x
  commutes :
    ∀ {next prev}, R.refines next prev → ∀ x,
      (embeddingAt prev).toFun (R.restrict next prev x) =
        targetRefinement.restrictTarget next prev
          ((embeddingAt next).toFun x)

/-- A raw stage family satisfies all declared restriction equations. -/
def RefinementCompatible
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage)
    (x : ∀ s, R.PointAt s) : Prop :=
  ∀ {next prev}, R.refines next prev →
    R.restrict next prev (x next) = x prev

/-- The compatible raw families, regarded as a subset of the dependent product. -/
def refinementCompatibleSet
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage) :
    Set (∀ s, R.PointAt s) :=
  fun x => RefinementCompatible R x

/-- The actual subtype of compatible stage families. -/
def TopologicalCompatibleFamily
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage) :=
  {x : (∀ s, R.PointAt s) // x ∈ refinementCompatibleSet R}

/--
The compatible-family topology is the subspace topology inherited from the
dependent product of the stage topologies.
-/
def topologicalCompatibleFamilyTopology
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage) :
    TopologicalSpaceLike (TopologicalCompatibleFamily R) :=
  subspaceTopology (piTopology R.topologyAt) (refinementCompatibleSet R)

/-- Canonical evaluation at one refinement stage. -/
def topologicalCompatibleFamilyProjection
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage)
    (s : Stage) : TopologicalCompatibleFamily R → R.PointAt s :=
  fun x => x.1 s

/-- Every canonical stage projection is continuous. -/
theorem continuous_topologicalCompatibleFamilyProjection
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage)
    (s : Stage) :
    Continuous (topologicalCompatibleFamilyTopology R) (R.topologyAt s)
      (topologicalCompatibleFamilyProjection R s) := by
  exact continuous_subspace_pi_projection
    R.topologyAt (refinementCompatibleSet R) s

/-- Projection of a compatible family satisfies every restriction equation. -/
theorem topologicalCompatibleFamily_projection_commutes
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage)
    (x : TopologicalCompatibleFamily R)
    {next prev : Stage} (h : R.refines next prev) :
    R.restrict next prev
        (topologicalCompatibleFamilyProjection R next x) =
      topologicalCompatibleFamilyProjection R prev x :=
  x.2 h

end FCRS.ControlledSpherical
```
