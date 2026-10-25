# addCommentAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a908e38f31bb6e75e92fb58afb5e68439c68de7c6b1040dd6578a10da6517484",
  "kind": "def",
  "lexical_name": "addCommentAt",
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
  "slug": "addcommentat--92daab5de2782168c9f334f8",
  "source": {
    "blob": "2fd1974234ab66257fd58c77afb7d88adb18106f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant035bdcb38b389d84de0e10a1170073c39f9fbbf4bdb5938ecd5d47b27a416a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92daab5de2782168c9f334f8036922667f75948a218e37cace487790414d74b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant035bdcb38b389d84de0e10a1170073c39f9fbbf4bdb5938ecd5d47b27a416a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a908e38f31bb6e75e92fb58afb5e68439c68de7c6b1040dd6578a10da6517484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addCommentAt (indent : Nat) (line : String) : String := Id.run do
  let s := "".pushn ' ' indent ++ "-- "
  let mut iter := line.startPos
  for _i in *...indent do
    if h : ¬iter.IsAtEnd then
      if iter.get h == ' ' then
        iter := iter.next h
      else
        -- Non-whitespace found *before* the indentation level. This output should be indented
        -- as if it were exactly at the indentation level.
        break
    else
      -- The line was entirely ' ', and was shorter than the indentation level. No `--` added.
      return line
  let remaining := line.sliceFrom iter
  if remaining.all (· == ' ') then
    return line
  else
    return s ++ remaining

/--
Splits a string into lines, preserving newline characters.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant035bdcb38b389d84de0e10a1170073c39f9fbbf4bdb5938ecd5d47b27a416a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant035bdcb38b389d84de0e10a1170073c39f9fbbf4bdb5938ecd5d47b27a416a97.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd1974234ab66257fd58c77afb7d88adb18106f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
