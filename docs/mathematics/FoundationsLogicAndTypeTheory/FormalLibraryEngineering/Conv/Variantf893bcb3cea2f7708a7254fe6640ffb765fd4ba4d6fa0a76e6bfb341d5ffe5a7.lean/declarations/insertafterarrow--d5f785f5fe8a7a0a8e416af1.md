# insertAfterArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:874b295a474bff57d93cb585b8d2abd40f48b53079ae179c59f0eea979301998",
  "kind": "def",
  "lexical_name": "insertAfterArrow",
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
  "slug": "insertafterarrow--d5f785f5fe8a7a0a8e416af1",
  "source": {
    "blob": "97de46c5f778c078a4af38597d8e4947c30a08c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5f785f5fe8a7a0a8e416af1e42e89fd8a4082b99520b8069a1103dbb3716148",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:874b295a474bff57d93cb585b8d2abd40f48b53079ae179c59f0eea979301998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def insertAfterArrow (stx : Syntax) (pathBeforeConvParam : List Nat) (pathAfterConvParam : List Nat) (value : String) (text : FileMap) : InsertReturn := Id.run do
  let mut t := Syntax.Traverser.fromSyntax stx
  let mut pathBeforeConv := pathBeforeConvParam
  while pathBeforeConv.length > 0 do
    t := t.down pathBeforeConv.head!
    pathBeforeConv := pathBeforeConv.tail!
  let mut pathAfterConv := pathAfterConvParam

--move up to find previous whitespace
  let mut pathBeforeConv' := pathBeforeConvParam.reverse
  let mut returnPath := []
  for _ in [:4] do
    t := t.up
    returnPath := pathBeforeConv'.head!::returnPath
    pathBeforeConv' := pathBeforeConv'.tail!
  t := t.up

  --get previous whitespace
  let argNr := pathBeforeConv'.head! - 1
  let prevArg := reprint! t.cur.getArgs[argNr]!
  let mut previousIndentation :=  extractIndentation (prevArg.splitOn "\n").reverse.head!

  -- move back down to `conv`
  t := t.down pathBeforeConv'.head!
  while returnPath.length > 0 do
    t := t.down returnPath.head!
    returnPath := returnPath.tail!

  -- we also need the whitespace fron the `=>` node
  let arrow := reprint! t.cur.getArgs[pathAfterConv.head!]!
  let mut arrowIndentation := extractIndentation (arrow.splitOn "\n").reverse.head!
  let mut newCursorPos := match t.cur.getArgs[pathAfterConv.head!]!.getRange? with
    | some range => text.utf8PosToLspPos range.stop
    | none => text.utf8PosToLspPos 0

  let mut newNode := Syntax.missing
  --if there is an empty conv body, we need to remove the newlines from the `=>`
  if reprint! t.cur.getArgs[pathAfterConv.head! + 1]! == "" || previousIndentation == arrowIndentation then
    let newArrow := Syntax.atom (SourceInfo.original "".toSubstring 0 "".toSubstring 0) "=>\n"
    t := t.setCur (t.cur.setArgs (List.append (t.cur.getArgs.toList.take pathAfterConv.head!) (newArrow::t.cur.getArgs.toList.drop (pathAfterConv.head! + 1))).toArray)
    newNode := Syntax.atom (SourceInfo.original "".toSubstring 0 "".toSubstring 0) ("  " ++ previousIndentation ++ value ++ "\n" ++ arrowIndentation)
    newCursorPos := { line := newCursorPos.line + 1, character := 2 + previousIndentation.length + value.length }
  else
    newNode := Syntax.atom (SourceInfo.original "".toSubstring 0 "".toSubstring 0) (value ++ "\n" ++ arrowIndentation)
    newCursorPos := { line := newCursorPos.line + 1, character := arrowIndentation.length + value.length }

  -- move down to args of `conv`
  t := t.down (pathAfterConv.head! + 1)
  t := t.down 0
  t := t.down 0

  -- add new node to Syntax and move to the very top
  let newArgList := newNode::t.cur.getArgs.toList
  t := t.setCur (t.cur.setArgs newArgList.toArray)
  while t.parents.size > 0 do
    t := t.up

  let newPath := pathBeforeConvParam ++ (pathAfterConv.head! + 1)::0::0::[0]

  return { stx := t.cur, newPath := newPath, newCursorPos }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97de46c5f778c078a4af38597d8e4947c30a08c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
