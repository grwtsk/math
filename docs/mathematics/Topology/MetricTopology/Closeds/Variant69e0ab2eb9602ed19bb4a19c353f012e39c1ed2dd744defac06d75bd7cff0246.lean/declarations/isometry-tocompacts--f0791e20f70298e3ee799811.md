# isometry_toCompacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e363eaa1-ffba-6cf4-ea6b-01670cf6540a",
  "kind": "theorem",
  "lexical_name": "isometry_toCompacts",
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
  "slug": "isometry-tocompacts--f0791e20f70298e3ee799811",
  "source": {
    "blob": "b00a1bbc19eaf2d0ed47b9ccc882b07ce6277d98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 277,
    "path": "GRWTSK/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0791e20f70298e3ee7998115105046d23196b57b167e3dd02a831308c31ab27",
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

Occurrence: `result:e363eaa1-ffba-6cf4-ea6b-01670cf6540a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isometry_toCompacts : Isometry (NonemptyCompacts.toCompacts (α := α)) :=
  fun _ _ => rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Closeds/Variant69e0ab2eb9602ed19bb4a19c353f012e39c1ed2dd744defac06d75bd7cff0246.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00a1bbc19eaf2d0ed47b9ccc882b07ce6277d98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
