# head_attach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:274219f7-7a11-b440-44c5-7b8f814ebaba",
  "kind": "theorem",
  "lexical_name": "head_attach",
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
  "slug": "head-attach--85ad4cf21a2e8821e10bd9a6",
  "source": {
    "blob": "3721b0623eae725fe5b43691e22942a10e349c97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 333,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85ad4cf21a2e8821e10bd9a625e00cd2ffae0101244729ab4836c99f54e40c09",
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

Occurrence: `result:274219f7-7a11-b440-44c5-7b8f814ebaba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem head_attach {xs : List α} (h) :
    xs.attach.head h = ⟨xs.head (by simpa using h), head_mem (by simpa using h)⟩ := by
  cases xs with
  | nil => simp at h
  | cons x xs => simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3721b0623eae725fe5b43691e22942a10e349c97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
