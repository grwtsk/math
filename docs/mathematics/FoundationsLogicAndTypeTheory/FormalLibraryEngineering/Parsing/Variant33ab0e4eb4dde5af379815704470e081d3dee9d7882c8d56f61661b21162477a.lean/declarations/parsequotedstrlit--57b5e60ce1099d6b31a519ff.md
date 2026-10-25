# parseQuotedStrLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d4d83664324e18ff90c1f152d661d1e2f4697a6a8613a2196a2bf8ddf72c321",
  "kind": "def",
  "lexical_name": "parseQuotedStrLit",
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
  "slug": "parsequotedstrlit--57b5e60ce1099d6b31a519ff",
  "source": {
    "blob": "10eef4ebd60c87041212cd92bd504bc5eb9a4de5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57b5e60ce1099d6b31a519ff315ff82f0cde0c12745f74089a63b5c96a9300c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d4d83664324e18ff90c1f152d661d1e2f4697a6a8613a2196a2bf8ddf72c321`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseQuotedStrLit (p : ParserFn) (strLit : StrLit) : m Syntax := do
  if (strLit.raw.getPos? (canonicalOnly := true)).isNone then
    return ← parseFromContents p strLit.getString
  let text ← getFileMap
  let env ← getEnv
  let ⟨pos, _⟩ ← strLitRange strLit
  let pos ← do
    let mut pos := pos
    if pos.get text.source == 'r' then
      pos := pos.next text.source
      while pos.get text.source == '#' do
        pos := pos.next text.source
    if pos.get text.source == '"' then
      pure <| pos.next text.source
    else
      throwErrorAt strLit "Not a quoted string literal"
  let str := strLit.getString
  let ictx := mkInputContext str (← getFileName)
  let s := mkParserState str
  let s := p.run ictx { env, options := ← getOptions } (getTokenTable env) s

  if !s.allErrors.isEmpty then
    let s := { s with
        pos := reposition text pos str s.pos
        recoveredErrors := s.recoveredErrors.map fun
        | (ePos, stk, err) => (reposition text pos str ePos, stk, err)
        errorMsg := s.errorMsg.map fun (e : Error) =>
          { e with unexpectedTk := repositionSyntax text pos str e.unexpectedTk }
      }
    throwError (s.toErrorMsg ictx)
  else if ictx.atEnd s.pos then
    pure <| repositionSyntax text pos str s.stxStack.back
  else
    throwError ((s.mkError "end of input").toErrorMsg ictx)
where
  reposition (text : FileMap) (posOfStr : String.Pos.Raw) (str : String) (posInStr : String.Pos.Raw) : String.Pos.Raw :=
    nextn text.source (posIndex str posInStr) posOfStr
  repositionSyntax (text : FileMap) (posOfStr : String.Pos.Raw) (str : String) : Syntax → Syntax
    | .node info k args => .node (repositionInfo text posOfStr str info) k (args.map (repositionSyntax text posOfStr str))
    | .ident info sub x pre => .ident (repositionInfo text posOfStr str info) sub x pre
    | .atom info s => .atom (repositionInfo text posOfStr str info) s
    | .missing => .missing
  repositionInfo (text : FileMap) (posOfStr : String.Pos.Raw) (str : String) : SourceInfo → SourceInfo
    | .original _ pos _ endPos =>
      .synthetic (reposition text posOfStr str pos) (reposition text posOfStr str endPos) true
    | .synthetic pos endPos c =>
      .synthetic (reposition text posOfStr str pos) (reposition text posOfStr str endPos) c
    | .none => .none

  nextn (str : String) (n : Nat) (p : String.Pos.Raw) : String.Pos.Raw :=
    n.fold (init := p) fun _ _ _ => p.next str
  posIndex (str : String) (p : String.Pos.Raw) : Nat := Id.run do
    let mut p := p
    let mut n := 0
    while p > 0 do
      p := p.prev str
      n := n + 1
    return n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10eef4ebd60c87041212cd92bd504bc5eb9a4de5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
