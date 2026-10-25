# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08a21e77351d50cb9d71d3da7796916f02ac1d49229eedc975eeb879e5580522",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--ba2d8b712a2c25bfda5dbf24",
  "source": {
    "blob": "c666a68ec9e754bba32c4ae861108adff8e9b12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant0f38cd9f02f25094c87159222f00b663da3e70c93d17433b00a27605d5b6e732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba2d8b712a2c25bfda5dbf24f0c72b66775f83c523bf138bf5ce0f8c5eb798d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant0f38cd9f02f25094c87159222f00b663da3e70c93d17433b00a27605d5b6e732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08a21e77351d50cb9d71d3da7796916f02ac1d49229eedc975eeb879e5580522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : 1 + 1 = 2 := by decide (config := { native := true, kernel := false })

set_option linter.style.native false

set_option linter.style.maxHeartbeats true
/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...

Note: This linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...

Note: This linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
set_option maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option synthInstance.maxHeartbeats 10 in
-- reason for change
...

Note: This linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option synthInstance.maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...

Note: This linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
set_option synthInstance.maxHeartbeats 10 in
/- The comment here is not enough to silence the linter:
the *first* `maxHeartbeats` option should have a comment. -/
section

#guard_msgs in
set_option maxHeartbeats 10 in
/- The comment here is enough to silence the linter:
the *first* `maxHeartbeats` has a comment, to remaining ones are free to be commentless. -/
set_option synthInstance.maxHeartbeats 10 in
section

#guard_msgs in
set_option maxHeartbeats 10 in
-- no reason, but has a comment
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...

Note: This linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
/-- Doc-strings for the following command do not silence the linter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant0f38cd9f02f25094c87159222f00b663da3e70c93d17433b00a27605d5b6e732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant0f38cd9f02f25094c87159222f00b663da3e70c93d17433b00a27605d5b6e732.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c666a68ec9e754bba32c4ae861108adff8e9b12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
