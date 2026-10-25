# rewriteExamples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bfbad8fac90573cf48cef6d7cefdd218aa33514dbdc8c183a1f49753c1e3bcc",
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
  "slug": "rewriteexamples--55533b48abcfdb7bebff7c0d",
  "source": {
    "blob": "7c9b0177802dc5a17d1bdea7d2e8af33cab697ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant02d61ed9c20cf0d0e5f06549a2a9dca4f641a91b7500ccfb26566544b0ebad74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55533b48abcfdb7bebff7c0d24c45d2d5670e78e18cde69c0405e8cd8ebdf61c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant02d61ed9c20cf0d0e5f06549a2a9dca4f641a91b7500ccfb26566544b0ebad74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bfbad8fac90573cf48cef6d7cefdd218aa33514dbdc8c183a1f49753c1e3bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–130.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant02d61ed9c20cf0d0e5f06549a2a9dca4f641a91b7500ccfb26566544b0ebad74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant02d61ed9c20cf0d0e5f06549a2a9dca4f641a91b7500ccfb26566544b0ebad74.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9b0177802dc5a17d1bdea7d2e8af33cab697ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
