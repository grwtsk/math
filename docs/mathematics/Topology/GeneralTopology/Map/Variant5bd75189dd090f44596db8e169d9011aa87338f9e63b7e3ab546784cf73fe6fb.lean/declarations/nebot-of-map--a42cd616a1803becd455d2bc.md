# NeBot.of_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d21f70f-30bf-e3c5-f3c9-cc8eed97fb8e",
  "kind": "theorem",
  "lexical_name": "NeBot.of_map",
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
  "slug": "nebot-of-map--a42cd616a1803becd455d2bc",
  "source": {
    "blob": "af8a6c44dc584bfe68e692a6bc0f2dc3d3238f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 642,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a42cd616a1803becd455d2bcf8e372c8db891d99e761bfa6e386c7181bbf6101",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d21f70f-30bf-e3c5-f3c9-cc8eed97fb8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NeBot.of_map : NeBot (f.map m) → NeBot f :=
  (map_neBot_iff m).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af8a6c44dc584bfe68e692a6bc0f2dc3d3238f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
