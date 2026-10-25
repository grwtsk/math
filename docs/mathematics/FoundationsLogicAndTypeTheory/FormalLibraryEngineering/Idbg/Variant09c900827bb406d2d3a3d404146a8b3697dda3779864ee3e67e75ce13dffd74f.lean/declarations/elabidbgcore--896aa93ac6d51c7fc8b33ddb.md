# elabIdbgCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39a2ab26ea58b0bb93f82b996bc25a8b1d70513ffd981b99d4b305c7bcc6970d",
  "kind": "def",
  "lexical_name": "elabIdbgCore",
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
  "slug": "elabidbgcore--896aa93ac6d51c7fc8b33ddb",
  "source": {
    "blob": "feb7035623671aa4e28371a157df5f570d59c63e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:896aa93ac6d51c7fc8b33ddb6c3a9ba34af2cbe2f735ae7d3361eb76c7744564",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39a2ab26ea58b0bb93f82b996bc25a8b1d70513ffd981b99d4b305c7bcc6970d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabIdbgCore (e : Syntax) (body : TSyntax `term) (ref : Syntax) (expectedType? : Option Expr) :
    TermElabM Expr := do
  let fileName ← IO.FS.realPath (← getFileName)
  let siteId := toString (hash s!"{fileName}:{ref.getPos?.getD 0}")

  -- Collect ALL non-aux local declarations.
  -- We need all of them (not just those used in the current expression)
  -- because the expression can change on the server side while the
  -- compiled program's apply closure is fixed.
  let lctx ← getLCtx
  let mut localDecls : Array LocalDecl := #[]
  for decl in lctx do
    if decl.isAuxDecl then continue
    localDecls := localDecls.push decl
  let localFVars := localDecls.map (mkFVar ·.fvarId)

  -- Elaborate e, wrap in `toString ∘ repr`.
  -- `synthesizeSyntheticMVarsNoPostponing` forces pending instance resolution
  -- so that `instantiateMVars` can fully resolve all metavariables.
  let eExpr ← Term.elabTerm e none
  Term.synthesizeSyntheticMVarsNoPostponing
  let eExpr ← instantiateMVars eExpr
  let reprExpr ← Meta.mkAppM ``repr #[eExpr]
  let reprStrExpr ← Meta.mkAppM ``toString #[reprExpr]
  Term.synthesizeSyntheticMVarsNoPostponing
  let reprStrExpr ← instantiateMVars reprStrExpr

  -- Abstract over ALL locals as lambdas (not lets).
  -- Do-notation let-bindings have `nondep := false`, so `mkLambdaFVars` would
  -- create `letE` for them. We temporarily set `nondep := true` so that
  -- `generalizeNondepLet` (the default) turns them all into lambdas.
  let lctx' := localDecls.foldl (init := ← getLCtx) fun lctx decl =>
    lctx.modifyLocalDecl decl.fvarId (·.setNondep true)
  let (abstractedValue, abstractedType) ← withLCtx' lctx' do
    let abstractedValue ← Meta.mkLambdaFVars localFVars reprStrExpr
    let abstractedType ← Meta.inferType abstractedValue
    return (← instantiateMVars abstractedValue, ← instantiateMVars abstractedType)

  if abstractedValue.hasMVar then
    throwError "idbg: abstracted value still has metavariables"
  if abstractedType.hasMVar then
    throwError "idbg: abstracted type still has metavariables"

  -- Server mode: serialize and serve in a background snapshot task.
  -- Skip if expression contains sorry (partial input during editing).
  if Elab.inServer.get (← getOptions) && !abstractedValue.hasSorry then
    let json := Json.mkObj [
      ("type", exprToJson abstractedType),
      ("value", exprToJson abstractedValue)
    ]
    let cancelTk ← IO.CancelToken.new
    let act ← Core.wrapAsyncAsSnapshot (cancelTk? := cancelTk) fun () => do
      if let some result ← idbgServer siteId json then
        logInfoAt ref m!"idbg: {result}"
    Core.logSnapshotTask {
      stx? := some ref
      task := (← BaseIO.asTask (act ()))
      cancelTk? := cancelTk
    }

  -- Generate runtime code: `idbgClientLoop siteId imports apply >>= fun _ => body`
  let siteLit := Syntax.mkStrLit siteId
  let applyClosure ← withLocalDecl `f .default abstractedType fun fVar => do
    let appBody := mkAppN fVar localFVars
    Meta.mkLambdaFVars #[fVar] appBody
  let closureStx ← Term.exprToSyntax applyClosure
  -- Include the current module so the client can access same-file declarations.
  -- The `.olean` should exist since the program was compiled from it.
  let imports := (← getEnv).header.imports.push { module := (← getEnv).mainModule }
  let importExprs ← imports.mapM fun imp => do
    let nameExpr := toExpr imp.module
    let importAllExpr := toExpr imp.importAll
    let isExportedExpr := toExpr imp.isExported
    let isMetaExpr := toExpr imp.isMeta
    return mkAppN (.const ``Import.mk []) #[nameExpr, importAllExpr, isExportedExpr, isMetaExpr]
  let importsExpr := mkApp2 (.const ``List.toArray [.zero])
    (.const ``Import [])
    (importExprs.toList.foldr (fun e acc => mkApp3 (.const ``List.cons [.zero]) (.const ``Import []) e acc)
      (mkApp (.const ``List.nil [.zero]) (.const ``Import [])))
  let importsStx ← Term.exprToSyntax importsExpr
  Term.elabTerm (← `(
    Lean.Idbg.idbgClientLoop $siteLit $importsStx $closureStx >>= fun _ => $body
  )) expectedType?

@[builtin_term_elab Lean.Parser.Term.idbg]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feb7035623671aa4e28371a157df5f570d59c63e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
