# length_filterMap_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0689503a-f4b7-42a8-8296-8ce90cf514ae",
  "kind": "theorem",
  "lexical_name": "length_filterMap_le",
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
  "slug": "length-filtermap-le--9162d27b5edd1ff0f72b8d90",
  "source": {
    "blob": "320cb9b319d549895b9ccbc5cc2f5256e84577ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1472,
    "line": 1465,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9162d27b5edd1ff0f72b8d90333ddc32b87fc04855dc15709cebdc399c4a2cce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0689503a-f4b7-42a8-8296-8ce90cf514ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1465–1472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_filterMap_le (f : α → Option β) (l : List α) :
    (filterMap f l).length ≤ l.length := by
  rw [← length_map some, map_filterMap_some_eq_filter_map_isSome, ← length_map f]
  apply length_filter_le

grind_pattern List.length_filterMap_le => (List.filterMap f l).length

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean#L1465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320cb9b319d549895b9ccbc5cc2f5256e84577ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
