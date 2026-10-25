# authorsLineChecks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c64656eae1a1cd330b0756255dbbd5145eafee59b11540a02f40f645fdf71ded",
  "kind": "def",
  "lexical_name": "authorsLineChecks",
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
  "slug": "authorslinechecks--31824ee1d6de007955a8ea35",
  "source": {
    "blob": "01ad90dea8e75b614ed32388d6964b7620163a27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31824ee1d6de007955a8ea3501d7405d35672f52024738ae531aa235524c7275",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c64656eae1a1cd330b0756255dbbd5145eafee59b11540a02f40f645fdf71ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def authorsLineChecks (line : String) (offset : String.Pos) : Array (Syntax × String) :=
  Id.run do
  -- We cannot reasonably validate the author names, so we look only for a few common mistakes:
  -- the line starting wrongly, double spaces, using ' and ' between names,
  -- and ending the line with a period.
  let mut stxs := #[]
  if !line.startsWith "Authors: " then
    stxs := stxs.push
      (toSyntax line (line.take "Authors: ".length) offset,
       s!"The authors line should begin with 'Authors: '")
  if (line.splitOn "  ").length != 1 then
    stxs := stxs.push (toSyntax line "  " offset, s!"Double spaces are not allowed.")
  if (line.splitOn " and ").length != 1 then
    stxs := stxs.push (toSyntax line " and " offset, s!"Please, do not use 'and'; use ',' instead.")
  if line.back == '.' then
    stxs := stxs.push
      (toSyntax line "." offset,
       s!"Please, do not end the authors' line with a period.")
  return stxs

/-- The main function to validate the copyright string.
The input is the copyright string, the output is an array of `Syntax × String` encoding:
* the `Syntax` factors are atoms whose ranges are "best guesses" for where the changes should
  take place; the embedded string is the current text that the linter flagged;
* the `String` factor is the linter message.

The linter checks that
* the first and last line of the copyright are a `("/-", "-/")` pair, each on its own line;
* the first line is begins with `Copyright (c) 20` and ends with `. All rights reserved.`;
* the second line is `Released under Apache 2.0 license as described in the file LICENSE.`;
* the remainder of the string begins with `Authors: `, does not end with `.` and
  contains no ` and ` nor a double space, except possibly after a line break.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01ad90dea8e75b614ed32388d6964b7620163a27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
