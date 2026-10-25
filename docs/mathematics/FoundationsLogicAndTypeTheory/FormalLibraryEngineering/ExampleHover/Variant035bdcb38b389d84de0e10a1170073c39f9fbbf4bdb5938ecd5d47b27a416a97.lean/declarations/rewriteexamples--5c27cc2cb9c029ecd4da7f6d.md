# rewriteExamples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59c6f116a5ac66ad36b70b98908a468263aedacd945f08b770989ac72967eb2c",
  "kind": "def",
  "lexical_name": "rewriteExamples",
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
  "slug": "rewriteexamples--5c27cc2cb9c029ecd4da7f6d",
  "source": {
    "blob": "2fd1974234ab66257fd58c77afb7d88adb18106f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant035bdcb38b389d84de0e10a1170073c39f9fbbf4bdb5938ecd5d47b27a416a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c27cc2cb9c029ecd4da7f6d8f6bb38f1f4c3c86f75c8c003f5a87f9e00f820e",
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

Occurrence: `declaration:59c6f116a5ac66ad36b70b98908a468263aedacd945f08b770989ac72967eb2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def rewriteExamples (docstring : String) : String := Id.run do
  let lines := lines docstring
  let mut result : String := ""
  -- The current state, which tracks the context of the line being processed
  let mut inOutput : RWState := .normal
  for l in lines do
    let indent := l.takeWhile (· == ' ') |>.utf8ByteSize -- this makes sense because we know the slice consists only of spaces
    let mut l' := l.trimAsciiStart
    -- Is this a code block fence?
    if l'.startsWith "```" then
      let count := l'.takeWhile (· == '`') |>.utf8ByteSize -- this makes sense because we know the slice consists only of ticks
      l' := l'.dropWhile (· == '`')
      l' := l'.dropWhile (· == ' ')
      match inOutput with
      | .normal =>
        if l'.startsWith "output" then
          inOutput := .output indent count
        else
          inOutput := .nonOutput count
        result := result ++ l
      | .output i c =>
        if c == count then
          inOutput := .normal
          result := result ++ l
        else
          result := result ++ addCommentAt i l
      | .nonOutput c =>
        if c == count then
          inOutput := .normal
        result := result ++ l
    else -- Current line is not a fence ("```")
      match inOutput with
      | .output i _c =>
        -- append whitespace and comment marker
        result := result ++ addCommentAt i l
      | _ => -- Not in an output code block
        result := result ++ l
  return result
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant035bdcb38b389d84de0e10a1170073c39f9fbbf4bdb5938ecd5d47b27a416a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant035bdcb38b389d84de0e10a1170073c39f9fbbf4bdb5938ecd5d47b27a416a97.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd1974234ab66257fd58c77afb7d88adb18106f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
