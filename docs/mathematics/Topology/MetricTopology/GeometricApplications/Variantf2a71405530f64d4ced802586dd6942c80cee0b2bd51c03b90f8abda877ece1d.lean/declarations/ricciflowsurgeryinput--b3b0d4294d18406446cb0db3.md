# RicciFlowSurgeryInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd1427fee60a3e7652527b772e11382981ac62faed466f0fc33bb44a2be22832",
  "kind": "structure",
  "lexical_name": "RicciFlowSurgeryInput",
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
  "slug": "ricciflowsurgeryinput--b3b0d4294d18406446cb0db3",
  "source": {
    "blob": "3029a94bb57199032f687505b76b628a053abf58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 352,
    "path": "GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3b0d4294d18406446cb0db3f01c1fcebadc6b685bcd4291f1090baf3e959851",
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

Occurrence: `declaration:dd1427fee60a3e7652527b772e11382981ac62faed466f0fc33bb44a2be22832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RicciFlowSurgeryInput
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T)
    (R : RicciFlowSurgerySemantics T)
    (M : T.Manifold) (count : Nat) where
  topology : RicciNeckSurgeryTopology T G M count
  preMetric : R.Metric M
  delta : ℝ
  delta_pos : 0 < delta
  kappa : ℝ
  kappa_pos : 0 < kappa
  strongNecks :
    ∀ i, R.StrongDeltaNeck preMetric delta (topology.family.embedding i)
  canonicalNeighborhood : R.CanonicalNeighborhoodHypothesis preMetric
  pinched : R.CurvaturePinched preMetric
  noncollapsed : R.KappaNoncollapsed preMetric kappa
  capConstruction :
    R.CapConstructionHypothesis topology.family preMetric
  continuationAdmissible : R.ContinuationHypothesis preMetric

/--
Output of a certified Ricci-flow surgery step.  Local neck surgery first gives
the simultaneous topological result.  The selected components and a proof of
their eligibility for deletion are retained explicitly, and `postManifold` is
compared with that deletion by a relative-boundary diffeomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3029a94bb57199032f687505b76b628a053abf58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
