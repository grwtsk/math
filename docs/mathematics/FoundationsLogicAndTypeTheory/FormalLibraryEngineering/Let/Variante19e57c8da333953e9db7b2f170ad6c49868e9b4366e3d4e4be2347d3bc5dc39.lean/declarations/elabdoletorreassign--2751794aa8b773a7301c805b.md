# elabDoLetOrReassign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6b41af3093f9e36f5e55b0eb4c7ef4959b6939ac945ecf56381fa70b475c966",
  "kind": "def",
  "lexical_name": "elabDoLetOrReassign",
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
  "slug": "elabdoletorreassign--2751794aa8b773a7301c805b",
  "source": {
    "blob": "25c53116c1ba748743253f8a5568092c1708ab83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2751794aa8b773a7301c805bd2aa08f476d7c81cde05ef17c29d3a3fc550cdc1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6b41af3093f9e36f5e55b0eb4c7ef4959b6939ac945ecf56381fa70b475c966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def elabDoLetOrReassign (config : Term.LetConfig) (letOrReassign : LetOrReassign) (decl : TSyntax ``letDecl)
    (tk : Syntax) (dec : DoElemCont) : DoElabM Expr := do
  checkLetConfigInDo config
  let vars ← getLetDeclVars decl
  letOrReassign.checkMutVars vars
  let dec ← dec.ensureUnitAt tk
  -- Some decl preprocessing on the patterns and expected types:
  let decl ← pushTypeIntoReassignment letOrReassign decl
  let mγ ← mkMonadApp (← read).doBlockResultType
  match decl with
  | `(letDecl| $decl:letEqnsDecl) =>
    let declNew ← `(letDecl| $(⟨← liftMacroM <| Term.expandLetEqnsDecl decl⟩):letIdDecl)
    return ← Term.withMacroExpansion decl declNew <| elabDoLetOrReassign config letOrReassign declNew tk dec
  | `(letDecl| $pattern:term $[: $xType?]? := $rhs) =>
    let rhs ← match xType? with | some xType => `(($rhs : $xType)) | none => pure rhs
    let contElab : DoElabM Expr := elabWithReassignments letOrReassign vars dec.continueWithUnit
    doElabToSyntax m!"let body of {pattern}" contElab fun body => do
    -- The infamous MVar postponement trick below popularized by `if` is necessary in Lake.CLI.Main.
    -- We need it because we specify a constant motive, otherwise the `match` elaborator would have postponed.
    let mvar ← Lean.withRef rhs `(?m)
    let term ← if let some h := config.eq? then
      `(let_mvar% ?m := $rhs;
        wait_if_type_mvar% ?m;
        match $h:ident : $mvar:term with
        | $pattern:term => $body)
    else
      `(let_mvar% ?m := $rhs;
        wait_if_type_mvar% ?m;
        match (motive := ∀_, $(← Term.exprToSyntax mγ)) $mvar:term with
        | $pattern:term => $body)
    Term.withMacroExpansion (← getRef) term do Term.elabTermEnsuringType term (some mγ)
  | `(letDecl| $decl:letIdDecl) =>
    let { id, binders, type, value } := Term.mkLetIdDeclView decl
    let id ← if id.isIdent then pure id else Term.mkFreshIdent id (canonical := true)
    let nondep := config.nondep || letOrReassign matches .have
    -- Only non-`mut` lets will be elaborated as `let`s; `let mut` and reassigns behave as `have`s.
    -- See `elabLetDeclAux` for rationale.
    let (type, val) ← Term.elabBindersEx binders fun xs => do
      let fvars := xs.map (·.2) -- discard binders
      let ty ← Term.withSynthesize (postpone := .partial) <| Term.elabType type
      let letMsg := if nondep then "have" else "let"
      Term.registerCustomErrorIfMVar ty type m!"failed to infer `{letMsg}` declaration type"
      Term.registerLevelMVarErrorExprInfo ty type m!"failed to infer universe levels in `{letMsg}` declaration type"
      let lctx' := fvars.foldl (init := ← getLCtx) fun lctx fvar =>
        lctx.modifyLocalDecl fvar.fvarId! (fun decl => decl.setType decl.type.cleanupAnnotations)
      let val ← withLCtx' lctx' do
        let val ← Term.elabTermEnsuringType value ty
        mkLambdaFVars fvars val (usedLetOnly := false)
      let ty ← mkForallFVars fvars ty
      pure (ty, val)
    let kind := .ofBinderName id.getId
    trace[Elab.let.decl] "{id.getId} : {type} := {val}"
    withLetDecl id.getId (kind := kind) type val (nondep := nondep) fun x => do
      Term.addLocalVarInfo id x
      elabWithReassignments letOrReassign vars do
      match config.eq? with
      | none =>
        let body ← dec.continueWithUnit
        if config.zeta then
          pure <| (← body.abstractM #[x]).instantiate1 val
        else
          mkLetFVars #[x] body (usedLetOnly := config.usedOnly) (generalizeNondepLet := false)
      | some h =>
        let hTy ← mkEq x val
        withLetDecl h.getId hTy (← mkEqRefl x) (nondep := true) fun h' => do
          Term.addLocalVarInfo h h'
          let body ← dec.continueWithUnit
          if config.zeta then
            pure <| (← body.abstractM #[x, h']).instantiateRev #[val, ← mkEqRefl val]
          else if nondep then
            let f ← mkLambdaFVars #[x, h'] body
            return mkApp2 f val (← mkEqRefl val)
          else
            mkLetFVars #[x, h'] body (usedLetOnly := config.usedOnly) (generalizeNondepLet := false)
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25c53116c1ba748743253f8a5568092c1708ab83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
