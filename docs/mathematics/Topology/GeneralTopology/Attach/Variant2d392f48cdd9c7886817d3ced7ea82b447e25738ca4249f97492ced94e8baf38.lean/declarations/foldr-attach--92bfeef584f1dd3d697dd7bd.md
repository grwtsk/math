# foldr_attach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3721b0623eae725fe5b43691e22942a10e349c97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4fdeba5-5599-2436-1cfe-8d5b12f55dbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f8b478e-2f9b-dcc6-fb3f-e33b2db86c7b",
  "kind": "theorem",
  "lexical_name": "foldr_attach",
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
  "slug": "foldr-attach--92bfeef584f1dd3d697dd7bd",
  "source": {
    "blob": "3721b0623eae725fe5b43691e22942a10e349c97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 403,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92bfeef584f1dd3d697dd7bd2c2e8ff363318daae4ac341175e735390729dbad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f8b478e-2f9b-dcc6-fb3f-e33b2db86c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldr_attach {l : List α} {f : α → β → β} {b : β} :
    l.attach.foldr (fun t acc => f t.1 acc) b = l.foldr f b := by
  induction l generalizing b with
  | nil => simp
  | cons a l ih => rw [foldr_cons, attach_cons, foldr_cons, foldr_map, ih]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3721b0623eae725fe5b43691e22942a10e349c97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
