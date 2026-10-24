# RicciFlowSurgerySemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bad27632c15843effc5d8d74900c8a3a518eab96baae19c89101b6b10311707e",
  "kind": "structure",
  "lexical_name": "RicciFlowSurgerySemantics",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "ricciflowsurgerysemantics--6239c70dc74634a4f6492563",
  "source": {
    "blob": "3029a94bb57199032f687505b76b628a053abf58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 291,
    "path": "GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6239c70dc74634a4f64925637569affe079b60af55c6fd0b8ec48d70c7116ab7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bad27632c15843effc5d8d74900c8a3a518eab96baae19c89101b6b10311707e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RicciFlowSurgerySemantics
    (T : SmoothFramedSurgeryTheory) where
  Metric : T.Manifold → Type uGeometricData
  Time : Type uGeometricData
  FlowInterval : Type uGeometricData
  TimeInInterval : Time → FlowInterval → Prop
  PostSurgeryFlow : (M : T.Manifold) → FlowInterval → Type uGeometricData
  flowInitialMetric :
    {M : T.Manifold} → {interval : FlowInterval} →
      PostSurgeryFlow M interval → Metric M
  IsRicciFlow :
    {M : T.Manifold} → {interval : FlowInterval} →
      PostSurgeryFlow M interval → Prop
  StrongDeltaNeck :
    {p q : Nat} → {M : T.Manifold} →
      Metric M → ℝ → T.FramedEmbedding p q M → Prop
  CanonicalNeighborhoodHypothesis :
    {M : T.Manifold} → Metric M → Prop
  CurvaturePinched :
    {M : T.Manifold} → Metric M → Prop
  KappaNoncollapsed :
    {M : T.Manifold} → Metric M → ℝ → Prop
  CapConstructionHypothesis :
    {M : T.Manifold} → {count : Nat} →
      FiniteDisjointFramedFamily T M count → Metric M → Prop
  ContinuationHypothesis :
    {M : T.Manifold} → Metric M → Prop
  DeletedComponents : T.Manifold → Type uGeometricData
  DeletionEligible :
    {X : T.Manifold} → DeletedComponents X → Prop
  RetainedUnion :
    {X : T.Manifold} → DeletedComponents X → Type uGeometricData
  retainedManifold :
    {X : T.Manifold} → {deleted : DeletedComponents X} →
      RetainedUnion deleted → T.Manifold
  IsRetainedUnion :
    {X : T.Manifold} → {deleted : DeletedComponents X} →
      (retained : RetainedUnion deleted) → Prop
  deleteComponents :
    (X : T.Manifold) → DeletedComponents X → T.Manifold
  PreDeletionSurgerySlice :
    {M N : T.Manifold} → {count : Nat} →
      FiniteDisjointFramedFamily T M count →
      Metric M → Metric N → Prop
  PostMetricOnRetainedUnion :
    {X : T.Manifold} → {deleted : DeletedComponents X} →
      (retained : RetainedUnion deleted) →
      Metric X → Metric (retainedManifold retained) → Prop
  MetricsCorrespondAcrossRelBoundaryDiffeomorphism :
    {X Y : T.Manifold} → Metric X → Metric Y → Prop
  StandardCapsInserted :
    {M N : T.Manifold} → {count : Nat} →
      FiniteDisjointFramedFamily T M count → Metric M → Metric N → Prop
  ContinuesAfterSurgery :
    {M N : T.Manifold} → Metric M → Metric N → Prop

/--
The independently stated hypotheses for one finite Ricci-flow surgery event.
Positivity of `delta` and `kappa` is explicit, as are the analytic assumptions
at the pre-surgery metric.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3029a94bb57199032f687505b76b628a053abf58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
