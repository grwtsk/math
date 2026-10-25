# BlockCtxt.forDocString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bd57e3a156e9757280395299f73b2b86f9b0313f78ae99144cd19f18433f278",
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
  "slug": "blockctxt-fordocstring--81d6924ed6f7be58f54f7ba9",
  "source": {
    "blob": "e96aa080a442e3fe1fcd2ab25984f971a52f1574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 988,
    "line": 961,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81d6924ed6f7be58f54f7ba96b370698afc10ced86e29f219b6d14c4d7bff9de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4bd57e3a156e9757280395299f73b2b86f9b0313f78ae99144cd19f18433f278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–988.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e96aa080a442e3fe1fcd2ab25984f971a52f1574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
