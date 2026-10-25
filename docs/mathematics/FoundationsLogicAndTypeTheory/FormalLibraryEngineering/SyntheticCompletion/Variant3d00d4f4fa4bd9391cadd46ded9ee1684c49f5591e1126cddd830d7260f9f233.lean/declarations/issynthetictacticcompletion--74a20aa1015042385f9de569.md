# isSyntheticTacticCompletion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6203e6ebb5afe098b20963888ded356cfea9a82486140b3cf9756f91c198a188",
  "kind": "def",
  "lexical_name": "isSyntheticTacticCompletion",
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
  "slug": "issynthetictacticcompletion--74a20aa1015042385f9de569",
  "source": {
    "blob": "9714c7a7a11cb4df44efc50d0811e40487049aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74a20aa1015042385f9de569f51ca8f6b4e440fe71d283fdd9a6047e9d12670d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6203e6ebb5afe098b20963888ded356cfea9a82486140b3cf9756f91c198a188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isSyntheticTacticCompletion
    (fileMap  : FileMap)
    (hoverPos : String.Pos.Raw)
    (cmdStx   : Syntax)
    : Bool := Id.run do
  let hoverFilePos := fileMap.toPosition hoverPos
  go hoverFilePos cmdStx 0 none
where
  go
      (hoverFilePos         : Position)
      (stx                  : Syntax)
      (leadingWs            : Nat)
      (leadingTokenTailPos? : Option String.Pos.Raw)
      : Bool := Id.run do
    match stx.getPos?, stx.getTailPos? with
    | some startPos, some endPos =>
      let isCursorInCompletionRange :=
        startPos.byteIdx - leadingWs <= hoverPos.byteIdx
          && hoverPos.byteIdx <= endPos.byteIdx + stx.getTrailingSize
      if ! isCursorInCompletionRange then
        return false
      let mut wsBeforeArg := leadingWs
      let mut lastArgTailPos? := leadingTokenTailPos?
      for arg in stx.getArgs do
        if go hoverFilePos arg wsBeforeArg lastArgTailPos? then
          return true
        -- We must account for the whitespace before an argument because the syntax nodes we use
        -- to identify tactic blocks only start *after* the whitespace following a `by`, and we
        -- want to provide tactic completions in that whitespace as well.
        -- This method of computing whitespace assumes that there are no syntax nodes without tokens
        -- after `by` and before the first proper tactic syntax.
        wsBeforeArg := arg.getTrailingSize
        -- Track the tail position of the most recent preceding sibling that has a position so
        -- that empty tactic blocks (which lack positions) can locate their opening token (e.g.
        -- the `by` keyword) for indentation checking. The tail position lets us distinguish
        -- cursors before and after the opener on the opener's line.
        lastArgTailPos? := arg.getTailPos? <|> lastArgTailPos?
      return isCompletionInEmptyTacticBlock stx lastArgTailPos?
        || isCompletionAfterSemicolon stx
        || isCompletionOnTacticBlockIndentation hoverFilePos stx
    | _, _ =>
      -- Empty tactic blocks typically lack ranges since they do not contain any tokens.
      -- We do not perform more precise range checking in this case because we assume that empty
      -- tactic blocks always occur within other syntax with ranges that let us narrow down the
      -- search to the degree that we can be sure that the cursor is indeed in this empty tactic
      -- block.
      return isCompletionInEmptyTacticBlock stx leadingTokenTailPos?

  isCompletionOnTacticBlockIndentation
      (hoverFilePos : Position)
      (stx : Syntax)
      : Bool := Id.run do
    let some tacticsNode := getTacticsNode? stx
      | return false
    let some firstTacticPos := tacticsNode.getPos?
      | return false
    let firstTacticColumn := fileMap.toPosition firstTacticPos |>.column
    -- This ensures that we do not accidentally provide tactic completions in a term mode proof -
    -- tactic completions are only provided at the same indentation level as the other tactics in
    -- that tactic block.
    let isCursorInTacticBlock := hoverFilePos.column == firstTacticColumn
    return isCursorInProperWhitespace fileMap hoverPos && isCursorInTacticBlock

  isCompletionAfterSemicolon (stx : Syntax) : Bool := Id.run do
    let some tacticsNode := getTacticsNode? stx
      | return false
    let tactics := tacticsNode.getArgs
    -- We want to provide completions in the case of `skip;<CURSOR>`, so the cursor must only be on
    -- whitespace, not in proper whitespace.
    return isCursorOnWhitespace fileMap hoverPos && tactics.any fun tactic => Id.run do
      let some tailPos := tactic.getTailPos?
        | return false
      let isCursorAfterSemicolon :=
        tactic.isToken ";"
          && tailPos.byteIdx <= hoverPos.byteIdx
          && hoverPos.byteIdx <= tailPos.byteIdx + tactic.getTrailingSize
      return isCursorAfterSemicolon

  getTacticsNode? (stx : Syntax) : Option Syntax :=
    if stx.getKind == ``Parser.Tactic.tacticSeq1Indented then
      some stx[0]
    else if stx.getKind == ``Parser.Tactic.tacticSeqBracketed then
      some stx[1]
    else
      none

  isCompletionInEmptyTacticBlock (stx : Syntax) (leadingTokenTailPos? : Option String.Pos.Raw) : Bool := Id.run do
    if ! isCursorInProperWhitespace fileMap hoverPos then
      return false
    if ! isEmptyTacticBlock stx then
      return false
    -- Bracketed tactic blocks `{ ... }` are delimited by the braces themselves, so tactics
    -- inserted in an empty bracketed block can appear at any column between the braces
    -- (`withoutPosition` disables indentation constraints inside `tacticSeqBracketed`).
    if stx.getKind == ``Parser.Tactic.tacticSeqBracketed then
      let some openEndPos := stx[0].getTailPos?
        | return false
      let some closeStartPos := stx[2].getPos?
        | return false
      return openEndPos.byteIdx <= hoverPos.byteIdx && hoverPos.byteIdx <= closeStartPos.byteIdx
    return isAtExpectedTacticIndentation leadingTokenTailPos?

  -- After an empty tactic opener like `by`, tactics on a subsequent line must be inserted at an
  -- increased indentation level (two spaces past the indentation of the line containing the
  -- opener token). We mirror that here so that tactic completions are not offered in positions
  -- where a tactic could not actually be inserted. On the same line as the opener, completions
  -- are allowed only in the trailing whitespace past the opener — cursors earlier on the line
  -- belong to the surrounding term, not to the tactic block.
  isAtExpectedTacticIndentation (leadingTokenTailPos? : Option String.Pos.Raw) : Bool := Id.run do
    let some tokenTailPos := leadingTokenTailPos?
      | return true
    let hoverFilePos := fileMap.toPosition hoverPos
    let tokenTailFilePos := fileMap.toPosition tokenTailPos
    if hoverFilePos.line == tokenTailFilePos.line then
      return hoverPos.byteIdx >= tokenTailPos.byteIdx
    let expectedColumn := countLeadingSpaces (fileMap.lineStart tokenTailFilePos.line) + 2
    return hoverFilePos.column == expectedColumn

  countLeadingSpaces (pos : String.Pos.Raw) : Nat := Id.run do
    let mut p := pos
    let mut n : Nat := 0
    while ! p.atEnd fileMap.source do
      if p.get fileMap.source != ' ' then
        break
      p := p.next fileMap.source
      n := n + 1
    return n

  isEmptyTacticBlock (stx : Syntax) : Bool :=
    stx.getKind == ``Parser.Tactic.tacticSeq && isEmpty stx
      || stx.getKind == ``Parser.Tactic.tacticSeq1Indented && isEmpty stx
      || stx.getKind == ``Parser.Tactic.tacticSeqBracketed && isEmpty stx[1]

  isEmpty : Syntax → Bool
    | .missing       => true
    | .ident ..      => false
    | .atom ..       => false
    | .node _ _ args => args.all isEmpty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9714c7a7a11cb4df44efc50d0811e40487049aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
