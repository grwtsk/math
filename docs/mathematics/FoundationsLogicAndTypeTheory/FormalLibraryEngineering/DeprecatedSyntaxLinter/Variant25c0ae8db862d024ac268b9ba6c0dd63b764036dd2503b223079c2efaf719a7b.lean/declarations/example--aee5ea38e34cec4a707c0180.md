# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a045b091500af24e1db0e0898433dac79c28a2508a0951434644d711a6e6e379",
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
  "slug": "example--aee5ea38e34cec4a707c0180",
  "source": {
    "blob": "aa821f6ca06c2253274409bfe625baf3157018d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant25c0ae8db862d024ac268b9ba6c0dd63b764036dd2503b223079c2efaf719a7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aee5ea38e34cec4a707c01803f86e78fedd5b89cc826ba271f14f026dcd8a472",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant25c0ae8db862d024ac268b9ba6c0dd63b764036dd2503b223079c2efaf719a7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a045b091500af24e1db0e0898433dac79c28a2508a0951434644d711a6e6e379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : False := by admit

set_option linter.style.maxHeartbeats true
/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
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
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option synthInstance.maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
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
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
/-- Doc-strings for the following command do not silence the linter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant25c0ae8db862d024ac268b9ba6c0dd63b764036dd2503b223079c2efaf719a7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant25c0ae8db862d024ac268b9ba6c0dd63b764036dd2503b223079c2efaf719a7b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa821f6ca06c2253274409bfe625baf3157018d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
