# nhds_ne_subtype_neBot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ada402f-8195-3e6d-e962-7fc4f0065f26",
  "kind": "theorem",
  "lexical_name": "nhds_ne_subtype_neBot_iff",
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
  "slug": "nhds-ne-subtype-nebot-iff--7302183689a8c028655e73c2",
  "source": {
    "blob": "ad260d583f2d60ca9a6d9b358f550a8ebd6d220b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 230,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7302183689a8c028655e73c2cd26c9eb86e106de043b2103d1fb682ea5cf9a79",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ada402f-8195-3e6d-e962-7fc4f0065f26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_ne_subtype_neBot_iff {S : Set X} {x : S} :
    (𝓝[≠] x).NeBot ↔ (𝓝[≠] (x : X) ⊓ 𝓟 S).NeBot := by
  rw [neBot_iff, neBot_iff, not_iff_not, nhds_ne_subtype_eq_bot_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad260d583f2d60ca9a6d9b358f550a8ebd6d220b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
