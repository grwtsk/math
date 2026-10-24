# ricci_flow_surgery_deletion_eligible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3029a94bb57199032f687505b76b628a053abf58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 449,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7981149-0ea1-0568-430d-75e634fb95cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90778778-0233-6e39-ffa1-aac4b1518fb1",
  "kind": "theorem",
  "lexical_name": "ricci_flow_surgery_deletion_eligible",
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
  "slug": "ricci-flow-surgery-deletion-eligible--cf9e9685362d61a1822a11f5",
  "source": {
    "blob": "3029a94bb57199032f687505b76b628a053abf58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 449,
    "path": "GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf9e9685362d61a1822a11f59cf7a530d2d5244983bd5250f7781d68b972421d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90778778-0233-6e39-ffa1-aac4b1518fb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ricci_flow_surgery_deletion_eligible
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.DeletionEligible output.deletedComponents :=
  (ricciFlowSurgery capability input).deletionEligible

/--
The post-surgery manifold is relative-boundary diffeomorphic to the simultaneous
finite neck surgery after the explicitly selected components are deleted.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3029a94bb57199032f687505b76b628a053abf58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
