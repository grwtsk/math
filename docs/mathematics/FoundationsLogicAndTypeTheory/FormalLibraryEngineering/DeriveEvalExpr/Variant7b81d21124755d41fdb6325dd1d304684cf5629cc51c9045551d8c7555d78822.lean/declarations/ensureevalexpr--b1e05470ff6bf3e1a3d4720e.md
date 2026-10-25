# ensureEvalExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da002dc4952a6e444b1afab04f06a3b43f29d1e25b5d667c5feaa1a9ffccca2e",
  "kind": "def",
  "lexical_name": "ensureEvalExpr",
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
  "slug": "ensureevalexpr--b1e05470ff6bf3e1a3d4720e",
  "source": {
    "blob": "0ea325d9df659423eed2e379c80f0ba2906805b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1e05470ff6bf3e1a3d4720e3dd915e1f42fd7da29c6753af606fecbb83fc4a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da002dc4952a6e444b1afab04f06a3b43f29d1e25b5d667c5feaa1a9ffccca2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ensureEvalExpr
    (vis? : Option (TSyntax `Lean.Parser.Command.visibility))
    (kind : TSyntax `Lean.Parser.Term.attrKind)
    (cmdRef typeRef : Syntax) (type : Expr) : CommandElabM Unit := do
  withClassInstDeps ``EvalExpr type extraDeps fun type' => withRef cmdRef do
    let ival ← getIndType type'
    let indTypeIdent := mkCIdentFrom typeRef ival.name
    let instName ← NameGen.mkBaseNameWithSuffix' "inst" #[] <| ← ``(EvalExpr $indTypeIdent)
    let evalExprDef := mkIdent (instName ++ Name.mkSimple "evalExpr")
    let mut exprCases : Array (String × Term) := #[]
    for ctorName in ival.ctors do
      if useCtor ival ctorName then
        let (xs, _, _) ← forallMetaTelescopeReducing (← inferType (mkConst ctorName))
        let .str _ ctorName' := ctorName | unreachable!
        let vs ← xs.mapM fun _ => mkIdent <$> Core.mkFreshUserName `v
        let val ← `(pure ($(mkCIdent ctorName) $vs*))
        let recArgs ← xs.mapM fun x => return (← instantiateMVars (← inferType x)) == type'
        let val ← (((Array.range xs.size).zip recArgs).zip vs).foldrM (init := val) fun ((idx, recArg), v) val =>
          if recArg then
            `($evalExprDef args[$(quote idx)]! >>= fun $v => $val)
          else
            `(EvalExpr.evalExpr args[$(quote idx)]! >>= fun $v => $val)
        let val ← `(guard (args.size == $(quote xs.size)) *> $val)
        exprCases := exprCases.push (ctorName', val)
    let exprMatcher ← makeStringMatcher (← `(ident| ctor)) exprCases (← `(throwUnsupportedExpr))
    `($[$vis?:visibility]? partial def $evalExprDef : Expr → MetaM $indTypeIdent :=
        withSimpleEvalExpr $(quote ival.name) fun ctor args => $exprMatcher
      $[$vis?:visibility]? $kind:attrKind instance%$cmdRef $(mkIdentFrom cmdRef instName (canonical := type == type')):ident : EvalExpr $indTypeIdent where
        evalExpr := $evalExprDef
        expectedType? := some (Expr.const $(quote ival.name) []))
where
  getIndType (type : Expr) : TermElabM InductiveVal := withRef typeRef do
    let some indTypeName := (← whnfR type).constName?
      | throwError "`{type}` is not a constant"
    let .inductInfo ival ← getConstInfo indTypeName
      | throwError "`{.ofConstName indTypeName}` is not an inductive type"
    unless ival.levelParams.isEmpty && ival.numParams == 0 && ival.numIndices == 0 do
      throwError "`{.ofConstName indTypeName}` has universe parameters, parameters, or indices"
    if ival.isNested || ival.isReflexive then
      throwError "`{.ofConstName indTypeName}` has unsupported recursion"
    return ival
  useCtor (ival : InductiveVal) (ctorName : Name) : Bool :=
    ctorName.isStr && !ctorName.hasMacroScopes && !isPrivateName ctorName && ctorName.getPrefix == ival.name
  extraDeps (type : Expr) : TermElabM (Array Expr) := withRef typeRef do
    let ival ← getIndType type
    let mut deps := #[]
    for ctorName in ival.ctors do
      if useCtor ival ctorName then
        let (xs, bis, _) ← forallMetaTelescopeReducing (← inferType (mkConst ctorName))
        unless bis.all (·.isExplicit) do
          throwError "Every field of `{.ofConstName ctorName}` must be explicit"
        for x in xs do
          let xTy ← inferType x
          if xTy.hasMVar then
            throwError "Field `{x}` of `{.ofConstName ctorName}` is dependent"
          if xTy == type then
            continue
          deps := deps.push xTy
    return deps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ea325d9df659423eed2e379c80f0ba2906805b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
