# paths_dist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac0d84a5-d2f2-a9e7-9367-96b6eaf844a5",
  "kind": "theorem",
  "lexical_name": "paths_dist_le",
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
  "slug": "paths-dist-le--22efdc0a6dc1a54f8173992e",
  "source": {
    "blob": "cf7d5e22b44410fe59822acee7d759c4eccecf0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 94,
    "path": "GRWTSK/Topology/MetricTopology/AnalyticSquare/Variant5f8298c9ab5f1243d1d86e143d1d4922c68c3073c599ebca8ff8290aab659b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22efdc0a6dc1a54f8173992e9f972cea1c703d766d04ea04e1ce8c229238bd30",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/AnalyticSquare/Variant5f8298c9ab5f1243d1d86e143d1d4922c68c3073c599ebca8ff8290aab659b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac0d84a5-d2f2-a9e7-9367-96b6eaf844a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paths_dist_le (square : MetricBoundedSquare A B A' B') (x : A) :
    dist (square.toDiagramSquare.topRight x)
        (square.toDiagramSquare.leftBottom x) ≤ square.bound :=
  square.commutationBound x

/-- A zero numerical bound yields zero path distance.  Exact equality is not
claimed for a pseudometric space. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AnalyticSquare/Variant5f8298c9ab5f1243d1d86e143d1d4922c68c3073c599ebca8ff8290aab659b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AnalyticSquare/Variant5f8298c9ab5f1243d1d86e143d1d4922c68c3073c599ebca8ff8290aab659b0f.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf7d5e22b44410fe59822acee7d759c4eccecf0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
