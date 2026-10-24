# t4Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8287fca-36a6-81d0-ac6d-84b9ec7d057e",
  "kind": "theorem",
  "lexical_name": "t4Space",
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
  "slug": "t4space--fae2e2f7d49fbfc1fa6f09fa",
  "source": {
    "blob": "28fa40c4e1e9a95a9333cef857cd52850170d1b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant24f830c9930d5d5720c556d57b7df3bdde00dc4595c2f4219c9e2a8a43a0c090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fae2e2f7d49fbfc1fa6f09fa7f0865e8f63dc4d1948b08e9dcb1e1ecb26c8d78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Paracompact/Variant24f830c9930d5d5720c556d57b7df3bdde00dc4595c2f4219c9e2a8a43a0c090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8287fca-36a6-81d0-ac6d-84b9ec7d057e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem t4Space [EMetricSpace α] : T4Space α := inferInstance

end EMetric
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Paracompact/Variant24f830c9930d5d5720c556d57b7df3bdde00dc4595c2f4219c9e2a8a43a0c090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Paracompact/Variant24f830c9930d5d5720c556d57b7df3bdde00dc4595c2f4219c9e2a8a43a0c090.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28fa40c4e1e9a95a9333cef857cd52850170d1b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
