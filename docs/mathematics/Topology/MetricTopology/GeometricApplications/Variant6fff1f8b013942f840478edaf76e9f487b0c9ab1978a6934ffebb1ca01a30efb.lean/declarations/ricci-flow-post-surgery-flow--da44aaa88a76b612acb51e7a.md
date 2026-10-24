# ricci_flow_post_surgery_flow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6689133-442a-56a6-882a-b5487fdc5855",
  "kind": "theorem",
  "lexical_name": "ricci_flow_post_surgery_flow",
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
  "slug": "ricci-flow-post-surgery-flow--da44aaa88a76b612acb51e7a",
  "source": {
    "blob": "d4e296b55239a755d7e3cf2fa59956cfa2c3ba55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 524,
    "path": "GRWTSK/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da44aaa88a76b612acb51e7acfb119874342c84e54a682047adbf0d6fc6312fc",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6689133-442a-56a6-882a-b5487fdc5855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ricci_flow_post_surgery_flow
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.TimeInInterval output.flowInitialTime output.flowInterval ∧
      R.IsRicciFlow output.postSurgeryFlow ∧
      R.flowInitialMetric output.postSurgeryFlow = output.postMetric := by
  let output := ricciFlowSurgery capability input
  exact ⟨output.flowInitialTime_mem, output.postSurgeryFlow_valid,
    output.postSurgeryFlow_initial_metric⟩

/--
All analytic conclusions of the capability are exposed together, without
strengthening them to an unconditional existence or long-time theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e296b55239a755d7e3cf2fa59956cfa2c3ba55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
