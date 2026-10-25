# elabHelpCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a5deb97795edb660674bcb65f319645abaf11c78cb02566c6d4b6cb0b6b7409",
  "kind": "def",
  "lexical_name": "elabHelpCat",
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
  "slug": "elabhelpcat--b4725b58b2483dd030c937c6",
  "source": {
    "blob": "f66040841d732c79c5d325c3581e892d8cc2b90b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4725b58b2483dd030c937c6af858ff0dd1b9600893b84823b9d26c985cabbc4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a5deb97795edb660674bcb65f319645abaf11c78cb02566c6d4b6cb0b6b7409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabHelpCat (more : Option Syntax) (catStx : Ident) (id : Option String) :
    CommandElabM Unit := do
  let mut decls : Std.TreeMap _ _ compare := {}
  let mut rest : Std.TreeMap _ _ compare := {}
  let catName := catStx.getId.eraseMacroScopes
  let categories := (Parser.parserExtension.getState (← getEnv)).categories
  let some cat := categories.find? catName
    | throwErrorAt catStx "{catStx} is not a syntax category"
  liftTermElabM <| Term.addCategoryInfo catStx catName
  let mut declsArray : Array (SyntaxNodeKind × List String × Bool) := {}
  let mut tokenUsage : Std.HashMap String Nat := {}
  for (k, _) in cat.kinds do
    let mut used := false
    try
      let (leading, parser) ← liftCoreM <| Parser.mkParserOfConstant categories k
      let tks := tokensToList parser.info.firstTokens
      let tks := tks.filter (· != "$") -- filter antiquotations
      -- collect the usage of every token regardless of filtering to make sure that the
      -- token detection is independent of a filter
      for tk in tks.eraseDups do
        tokenUsage := tokenUsage.alter tk fun n => some (n.getD 0 + 1)
      if let some id := id then
        unless tks.any (·.startsWith id) do
          continue
      unless tks.isEmpty do
        used := true
        declsArray := declsArray.push (k, tks, leading)
    catch _ =>
      pure ()
    if !used && id.isNone then
      rest := rest.insert (k.toString false) k
  for (kind, tks, leading) in declsArray do
    -- we choose the first, least common token
    let winnerTk := tks.minOn? (tokenUsage[·]!) |>.get!
    decls := decls.alter winnerTk fun arr => some (arr.getD #[] |>.push (kind, leading))
  let mut msg := MessageData.nil
  if decls.isEmpty && rest.isEmpty then
    match id with
    | some id => throwError "no {catName} declarations start with {id}"
    | none => throwError "no {catName} declarations found"
  let env ← getEnv
  let addMsg (k : SyntaxNodeKind) (msg msg1 : MessageData) : CommandElabM MessageData := do
    let mut msg1 := msg1
    if let some doc ← findDocString? env k then
      msg1 := msg1 ++ Format.line ++ doc.trimAscii.copy
    msg1 := .nest 2 msg1
    if more.isSome then
      let addElabs {α} (type : String) (attr : KeyedDeclsAttribute α)
          (msg : MessageData) : CommandElabM MessageData := do
        let mut msg := msg
        for e in attr.getEntries env k do
          let x := e.declName
          msg := msg ++ Format.line ++ m!"+ {type} {mkConst x}"
          if let some doc ← findDocString? env x then
            msg := msg ++ .nest 2 (Format.line ++ doc.trimAscii.copy)
        pure msg
      msg1 ← addElabs "macro" macroAttribute msg1
      match catName with
      | `term => msg1 ← addElabs "term elab" Term.termElabAttribute msg1
      | `command => msg1 ← addElabs "command elab" commandElabAttribute msg1
      | `tactic | `conv => msg1 ← addElabs "tactic elab" tacticElabAttribute msg1
      | _ => pure ()
    return msg ++ msg1 ++ (.line ++ .line : Format)
  for (name, ks) in decls do
    for (k, leading) in ks do
      if leading then
        msg ← addMsg k msg m!"syntax {repr name}... [{mkConst k}]"
      else
        msg ← addMsg k msg m!"syntax ...{repr name}... [{mkConst k}]"
  for (_, k) in rest do
    msg ← addMsg k msg m!"syntax ... [{mkConst k}]"
  logInfo msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f66040841d732c79c5d325c3581e892d8cc2b90b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
