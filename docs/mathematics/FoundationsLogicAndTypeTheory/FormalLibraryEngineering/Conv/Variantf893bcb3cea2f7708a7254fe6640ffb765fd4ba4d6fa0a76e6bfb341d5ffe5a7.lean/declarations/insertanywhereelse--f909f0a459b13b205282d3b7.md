# insertAnywhereElse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:867d6f2cb21bc6e3861045b2696e2bd893c6f1e360fee2ea18e0d5b697ed0aaa",
  "kind": "def",
  "lexical_name": "insertAnywhereElse",
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
  "slug": "insertanywhereelse--f909f0a459b13b205282d3b7",
  "source": {
    "blob": "97de46c5f778c078a4af38597d8e4947c30a08c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f909f0a459b13b205282d3b7176c407bc476101251964754baf4ab482f7f80bd",
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

Occurrence: `declaration:867d6f2cb21bc6e3861045b2696e2bd893c6f1e360fee2ea18e0d5b697ed0aaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def insertAnywhereElse (stx : Syntax) (pathBeforeConvParam : List Nat) (pathAfterConvParam : List Nat) (value : String) (text : FileMap): InsertReturn := Id.run do
  let mut t := Syntax.Traverser.fromSyntax stx
  let mut pathBeforeConv := pathBeforeConvParam
  while pathBeforeConv.length > 0 do
    t := t.down pathBeforeConv.head!
    pathBeforeConv := pathBeforeConv.tail!
  let mut pathAfterConv := pathAfterConvParam

--check if other tactics follow after the `conv` block
  let nothingAfterConv := t.up.cur.getArgs.size - 1 == pathBeforeConvParam.reverse.head!

  -- move down to args of `conv`
  for _ in [:3] do
    t := t.down pathAfterConv.head!
    pathAfterConv := pathAfterConv.tail!

  -- check if it's an enter and if yes, merge them
  let argAsString := reprint! t.cur.getArgs[pathAfterConv.head!]!
  let mut newval := value
  let mut entersMerged := false
  if toString t.cur.getArgs[pathAfterConv.head!]!.getKind == "Lean.Parser.Tactic.Conv.«convEnter[__]»" then
    let mut additionalArgs := (argAsString.splitOn "\n").head!
    additionalArgs := (additionalArgs.drop "enter [".length).dropRight 1

    let left := value.take "enter [".length
    let right := value.drop "enter [".length
    newval := left ++ additionalArgs ++ ", " ++ right
    entersMerged := true

  --get end position of previous node
  let mut newCursorPos := match t.cur.getArgs[pathAfterConv.head!]!.getRange? with
    | some range => text.utf8PosToLspPos range.stop
    | none => text.utf8PosToLspPos 0

  --get whitespace from previous tactic and make new node
  let mut argNr := pathAfterConv.head!
  let mut indentation := ""
  if argNr == 0 then
    -- in this case, we need to grab the whitespace from `=>`
    indentation := extractIndentation ((reprint! t.up.up.up.cur).splitOn "\n").tail!.head!
  else
    argNr := argNr - 2
    let mut prevArg := reprint! t.cur.getArgs[argNr]!
    let mut split := prevArg.splitOn "\n"
    -- if there is no `\n`, we take the whitespace from the following node instead
    while split.length == 1 do
      argNr := argNr + 2
      prevArg := reprint! t.cur.getArgs[argNr]!
      split := prevArg.splitOn "\n"

    let mut indentationLine := split.reverse.head!
    indentation := extractIndentation indentationLine

  newCursorPos := match entersMerged with
    | true => { line := newCursorPos.line, character := indentation.length + newval.length }
    | false => { line := newCursorPos.line + 1, character := indentation.length + newval.length }

  -- if we are inserting after the last element of the conv block, we need to add additional indentation in front of our tactic,
  -- and remove some at the end.
  let mut frontIndentation := ""
  if pathAfterConv.head! == t.cur.getArgs.size - 1 then
    let lastArg := reprint! t.cur.getArgs[ t.cur.getArgs.size - 1]!
    let mut lastArgIndentation := extractIndentation (lastArg.splitOn "\n").reverse.head!
    let numOfWhitespace := indentation.length - lastArgIndentation.length
    for _ in [:numOfWhitespace] do
      frontIndentation := frontIndentation ++ " "
    indentation := indentation.drop numOfWhitespace

    -- add new node to syntax and move to the very top
  let mut argList := []
  --if there are no tactics after the conv block, we need to remove all but one `\n` from the last tactic
  if nothingAfterConv then
    let mut adjustedLastLine := reprint! t.cur.getArgs[t.cur.getArgs.size - 1]!
    while adjustedLastLine.takeRight 1 == "\n" do
      adjustedLastLine := adjustedLastLine.dropRight 1
    adjustedLastLine := adjustedLastLine ++ "\n"
    let adjustedLastNode := Syntax.atom (SourceInfo.original "".toSubstring 0 "".toSubstring 0) adjustedLastLine
    argList := (adjustedLastNode::t.cur.getArgs.toList.reverse.tail!).reverse
  else
    argList := t.cur.getArgs.toList

  let newNode := match entersMerged with
    | true => Syntax.atom (SourceInfo.original "".toSubstring 0 "".toSubstring 0) (newval ++ "\n" ++ indentation)
    | false => Syntax.atom (SourceInfo.original "".toSubstring 0 "".toSubstring 0) (frontIndentation ++ newval ++ "\n" ++ indentation)
  let newArgList := match entersMerged with
    | true => List.append (argList.take (pathAfterConv.head!) ) (newNode::(argList.drop (pathAfterConv.head! + 1)))
    | false => List.append (argList.take (pathAfterConv.head! + 1) ) (newNode::(argList.drop (pathAfterConv.head! + 1)))
  let newPath := match entersMerged with
    | true => pathBeforeConvParam ++ (pathAfterConvParam.take 4)
    | false => pathBeforeConvParam ++ (pathAfterConvParam.take 3) ++ [(pathAfterConvParam.get! 3) + 2]

  t := t.setCur (t.cur.setArgs newArgList.toArray)
  while t.parents.size > 0 do
    t := t.up

  return { stx := t.cur, newPath := newPath, newCursorPos := newCursorPos }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97de46c5f778c078a4af38597d8e4947c30a08c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
