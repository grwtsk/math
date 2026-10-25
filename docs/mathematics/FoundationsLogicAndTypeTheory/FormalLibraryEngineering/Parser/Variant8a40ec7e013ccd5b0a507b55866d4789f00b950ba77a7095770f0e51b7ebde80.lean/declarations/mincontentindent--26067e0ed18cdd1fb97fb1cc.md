# minContentIndent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc7240d691ae996c826e8f6ca64149a4bee1c8f6b5286c94587b8a3d4b3dc06a",
  "kind": "def",
  "lexical_name": "minContentIndent",
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
  "slug": "mincontentindent--26067e0ed18cdd1fb97fb1cc",
  "source": {
    "blob": "0cf1563ca9d8d784ca8987c898c0154b34802a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 952,
    "line": 923,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26067e0ed18cdd1fb97fb1cc331c2575305cb0c011fc993617f7ef69069d281c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc7240d691ae996c826e8f6ca64149a4bee1c8f6b5286c94587b8a3d4b3dc06a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 923–952.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def minContentIndent (text : FileMap) (startPos endPos : String.Pos.Raw)
    (init : Nat) : Nat := Id.run do
  let mut result := init
  let mut thisLineCol := 0
  if h : endPos ≤ text.source.rawEndPos then
    let endPos := text.source.posGE endPos h
    if h : startPos ≤ text.source.rawEndPos then
      let mut i := text.source.posGE startPos h
      let mut afterNewline := false
      while h : i ≠ text.source.endPos do
        let c := i.get h
        i := i.next h
        if i > endPos then break
        if c == '\n' then
          afterNewline := true
          thisLineCol := 0
        else if afterNewline && c != ' ' then
          result := min result thisLineCol
          afterNewline := false
        else thisLineCol:= thisLineCol + 1
  return result

/--
Computes the `BlockCtxt` for parsing a docstring that starts at `startPos` in the given file map.
`endPos` is the position of the `-` in the closing delimiter. When the docstring content starts
mid-line (e.g. `/-! # Header -/`), the `docStartPosition` is set to the position after any leading
spaces so that headers on the first line are recognized. For indented docstrings, `baseColumn` is
computed as the minimum column among the opening delimiter, closing delimiter, and the least-indented
non-empty content line.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean#L923).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cf1563ca9d8d784ca8987c898c0154b34802a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
