# endpointPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:308737c840c55c1a6d30336db49823828c3b54c2b0e23c4c0c7505f822a8457f",
  "kind": "def",
  "lexical_name": "endpointPrimitive",
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
  "slug": "endpointprimitive--cfc90f108017328576e4f3a1",
  "source": {
    "blob": "6508f1bd0e449e7df47fa5d931a47843f96b3441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfc90f108017328576e4f3a10877a2d269a35a32013578b116d1c45aea2e78e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:308737c840c55c1a6d30336db49823828c3b54c2b0e23c4c0c7505f822a8457f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def endpointPrimitive (z w : ℂ) : ℂ :=
  (w ^ 8 - 4 * w ^ 6 + 6 * w ^ 4 - 4 * w ^ 2 + 1) / z -
    (8 * w ^ 7 - 24 * w ^ 5 + 24 * w ^ 3 - 8 * w) / z ^ 2 +
    (56 * w ^ 6 - 120 * w ^ 4 + 72 * w ^ 2 - 8) / z ^ 3 -
    (336 * w ^ 5 - 480 * w ^ 3 + 144 * w) / z ^ 4 +
    (1680 * w ^ 4 - 1440 * w ^ 2 + 144) / z ^ 5 -
    (6720 * w ^ 3 - 2880 * w) / z ^ 6 +
    (20160 * w ^ 2 - 2880) / z ^ 7 -
    40320 * w / z ^ 8 + 40320 / z ^ 9

set_option maxHeartbeats 800000 in
-- The nine polynomial jets in the exact antiderivative require additional ring normalization.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6508f1bd0e449e7df47fa5d931a47843f96b3441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
