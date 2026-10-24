# premetricOptimalGHDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb73212a2eb05ac0131fe78372c9bd8fedc3c982325793e4ad59aa2be001df11",
  "kind": "def",
  "lexical_name": "premetricOptimalGHDist",
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
  "slug": "premetricoptimalghdist--f76987581d6ace0d5d033e08",
  "source": {
    "blob": "79d6fc85f20103763d3f5f2db3629e393cbf6505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 471,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f76987581d6ace0d5d033e0865d045b5753c51a8ed6030b9c0cd706b5c8e7d31",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb73212a2eb05ac0131fe78372c9bd8fedc3c982325793e4ad59aa2be001df11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def premetricOptimalGHDist : PseudoMetricSpace (X ⊕ Y) where
  dist p q := optimalGHDist X Y (p, q)
  dist_self _ := candidates_refl (optimalGHDist_mem_candidatesB X Y)
  dist_comm _ _ := candidates_symm (optimalGHDist_mem_candidatesB X Y)
  dist_triangle _ _ _ := candidates_triangle (optimalGHDist_mem_candidatesB X Y)

attribute [local instance] premetricOptimalGHDist

/-- A metric space which realizes the optimal coupling between `X` and `Y` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d6fc85f20103763d3f5f2db3629e393cbf6505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
