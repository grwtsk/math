# BlockCtxt.forDocString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be3a31d86704287b4571eaccfb4345605ce5b2225dbed023cc5b775e45f62ada",
  "kind": "def",
  "lexical_name": "BlockCtxt.forDocString",
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
  "slug": "blockctxt-fordocstring--438636e3a93f4731a9d88b0b",
  "source": {
    "blob": "0cf1563ca9d8d784ca8987c898c0154b34802a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 980,
    "line": 953,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:438636e3a93f4731a9d88b0bab1f641ca76c2ab4b8eb5288a84fbf4600d53895",
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

Occurrence: `declaration:be3a31d86704287b4571eaccfb4345605ce5b2225dbed023cc5b775e45f62ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 953–980.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def BlockCtxt.forDocString (text : FileMap)
    (startPos : String.Pos.Raw) (endPos : String.Pos.Raw) : BlockCtxt :=
  -- Compute baseColumn from the opening `/--` or `/-!` delimiter, the closing `-/` delimiter,
  -- and the least-indented non-empty content line.
  -- `startPos` points to just after `/--`, so subtract 3 to get the column of `/`.
  -- Both `/--` and `/-!` are 3 ASCII bytes.
  let openCol := (text.toPosition (startPos.decreaseBy 3)).column
  let closeCol := (text.toPosition endPos).column
  let baseColumn := min openCol closeCol
  -- Scan content lines to find the minimum indentation of any non-empty line.
  -- We look for non-whitespace characters that appear after a newline and check their column.
  let baseColumn := minContentIndent text startPos endPos baseColumn
  let position := text.toPosition startPos
  if position.column ≤ baseColumn then { baseColumn }
  else
    -- Skip leading spaces to find where content actually starts
    let pos := Id.run do
      if h : startPos ≤ text.source.rawEndPos then
        let mut pos := text.source.posGE startPos h
        while h : pos ≠ text.source.endPos do
          if pos.get h == ' ' then
            pos := pos.next h
          else
            break
        return pos.offset
      else text.source.rawEndPos
    { docStartPosition := text.toPosition pos, baseColumn }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean#L953).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cf1563ca9d8d784ca8987c898c0154b34802a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
