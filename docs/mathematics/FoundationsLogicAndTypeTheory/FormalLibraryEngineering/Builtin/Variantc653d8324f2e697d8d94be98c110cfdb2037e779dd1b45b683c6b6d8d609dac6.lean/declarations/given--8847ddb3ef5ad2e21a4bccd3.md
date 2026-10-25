# given

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce0d0b2b32a91ce1c31557b5c0beb059565bdb59fd466804c230679eeae981a0",
  "kind": "def",
  "lexical_name": "given",
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
  "slug": "given--8847ddb3ef5ad2e21a4bccd3",
  "source": {
    "blob": "128001ebaa848e230bfbb1d7ad55d36ebf90f010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 550,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8847ddb3ef5ad2e21a4bccd3492b6866ac69ebe880d08fd1adf8cf175c6c5f0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce0d0b2b32a91ce1c31557b5c0beb059565bdb59fd466804c230679eeae981a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def given (type : Option StrLit := none) (typeIsMeta : flag false) («show» : flag true) (xs : TSyntaxArray `inline) :
    DocM (Inline ElabInline) := do
  let s ← onlyCode xs

  let stxs ← parseStrLit givenContents s
  let stxs := stxs.getArgs.mapIdx Prod.mk |>.filterMap fun (n, s) =>
    if n % 2 = 0 then some s else none
  let mut lctx ← getLCtx
  for stx in stxs do
    let x := stx[0]
    let ty ← do
      let tyStx := stx[2][1]
      if tyStx.isMissing then
        if let some typeStr := type then
          some <$> parseQuotedStrLit (whitespace >> termParser.fn) typeStr
        else pure none
      else
        if let some s' := type then
          logWarningAt s' m!"Ignoring `type` argument because a type was provided"
        pure tyStx
    let ty' : Expr ←
      if let some stx := ty then
        if typeIsMeta then
          if let `(term|$x:ident) := stx then
            let u ← Meta.mkFreshLevelMVar
            let fv ← mkFreshFVarId
            let uni := mkSort u
            let t : Expr := .fvar fv
            let mv ← Meta.mkFreshExprMVar (type? := some uni) (userName := x.getId)
            lctx := lctx.mkLetDecl fv x.getId uni mv
            addTermInfo' x t (lctx? := some lctx) (isBinder := true) (expectedType? := some uni)
            pure t
          else
            logErrorAt stx m!"Expected identifier because flag `typeIsMeta` is set, but got {stx}"
            Meta.mkFreshExprMVar none
        else
          let ty' ← elabType stx
          registerDocMVar decl_name% ty' x m!"type of variable `{x.getId}`"
          pure ty'
      else
        let m ← Meta.mkFreshExprMVar none
        registerDocMVar decl_name% m x m!"type of variable `{x.getId}`"
        pure m
    let val : Option Expr ← do
      let valStx := stx[1][1]
      if valStx.isMissing then pure none
      else
        let v ← elabExtraTerm valStx (some ty')
        registerDocMVar decl_name% v x m!"value of variable `{x.getId}`"
        pure (some v)
    let fv ← mkFreshFVarId
    lctx :=
      if let some v := val then
        lctx.mkLetDecl fv x.getId ty' v
      else
        lctx.mkLocalDecl fv x.getId ty'
    addTermInfo' x (.fvar fv) (lctx? := some lctx) (isBinder := true) (expectedType? := some ty')
  modify (fun st => { st with lctx })

  if «show» then
    let text ← getFileMap
    let mut outStrs := #[]
    let mut failed := false
    for stx in stxs do
      let thisStr ←
        if let some ⟨b, e⟩ := stx[0].getRange? then
          if let some ⟨b', e'⟩ := stx[2][1].getRange? then
            pure <| s!"{String.Pos.Raw.extract text.source b e} : {String.Pos.Raw.extract text.source b' e'}"
          else pure <| String.Pos.Raw.extract text.source b e
        else
          failed := true
          break
      outStrs := outStrs.push thisStr
    if failed then
      return .code s.getString
    else
      return outStrs.map Inline.code
        |>.toList |>.intersperse (Inline.text ", ") |>.toArray
        |> Inline.concat
  else return .empty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `128001ebaa848e230bfbb1d7ad55d36ebf90f010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
