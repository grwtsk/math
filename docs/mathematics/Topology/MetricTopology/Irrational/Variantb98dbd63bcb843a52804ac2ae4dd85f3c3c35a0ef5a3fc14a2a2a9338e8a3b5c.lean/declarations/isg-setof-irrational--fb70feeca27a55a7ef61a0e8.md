# IsGδ.setOf_irrational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21ed8991-8662-491c-be28-65e17fff3163",
  "kind": "theorem",
  "lexical_name": "IsGδ.setOf_irrational",
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
  "slug": "isg-setof-irrational--fb70feeca27a55a7ef61a0e8",
  "source": {
    "blob": "75c8f7f539f9b49e69c1b1affac2c5d0b1ed3756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 45,
    "path": "GRWTSK/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb70feeca27a55a7ef61a0e844bb493ec84a9f92e3d61a8e9e3154bf7c9fdd59",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21ed8991-8662-491c-be28-65e17fff3163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsGδ.setOf_irrational : IsGδ { x | Irrational x } :=
  (countable_range _).isGδ_compl


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75c8f7f539f9b49e69c1b1affac2c5d0b1ed3756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
