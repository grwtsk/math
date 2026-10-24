# uniformContinuous_infDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6349802-6d99-13ea-60f9-110afd938ddb",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_infDist",
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
  "slug": "uniformcontinuous-infdist--d9a001ffa6ae4ec138e72efe",
  "source": {
    "blob": "b00a1bbc19eaf2d0ed47b9ccc882b07ce6277d98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 321,
    "path": "GRWTSK/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9a001ffa6ae4ec138e72efe8b6b315851e2df0d522c356e275c0c6f5e4d5b3d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6349802-6d99-13ea-60f9-110afd938ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_infDist :
    UniformContinuous fun p : α × NonemptyCompacts α => infDist p.1 p.2 :=
  lipschitz_infDist.uniformContinuous

end TopologicalSpace.NonemptyCompacts

@[deprecated (since := "2026-08-24")]
alias Metric.NonemptyCompacts.dist_eq := NonemptyCompacts.dist_eq

@[deprecated (since := "2026-08-24")]
alias Metric.lipschitz_infDist_set := NonemptyCompacts.lipschitz_infDist_const

@[deprecated (since := "2026-08-24")]
alias Metric.lipschitz_infDist := NonemptyCompacts.lipschitz_infDist

@[deprecated (since := "2026-08-24")]
alias Metric.uniformContinuous_infDist_Hausdorff_dist := NonemptyCompacts.uniformContinuous_infDist
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00a1bbc19eaf2d0ed47b9ccc882b07ce6277d98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
