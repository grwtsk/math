# getElem_unattach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bea86743-60ac-09f6-462c-3786ce9a46eb",
  "kind": "theorem",
  "lexical_name": "getElem_unattach",
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
  "slug": "getelem-unattach--c4bdcdf662e8d634efa4260e",
  "source": {
    "blob": "3721b0623eae725fe5b43691e22942a10e349c97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 696,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4bdcdf662e8d634efa4260e720ec23d1e1c2036064d214364fd1f0af761e197",
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

Occurrence: `result:bea86743-60ac-09f6-462c-3786ce9a46eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem getElem_unattach
    {p : α → Prop} {l : List { x // p x }} (i : Nat) (h : i < l.unattach.length) :
    l.unattach[i] = (l[i]'(by simpa using h)).1 := by
  simp [unattach]

/-! ### Recognizing higher order functions on subtypes using a function that only depends on the value. -/

/--
This lemma identifies folds over lists of subtypes, where the function only depends on the value, not the proposition,
and simplifies these to the function directly taking the value.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3721b0623eae725fe5b43691e22942a10e349c97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
