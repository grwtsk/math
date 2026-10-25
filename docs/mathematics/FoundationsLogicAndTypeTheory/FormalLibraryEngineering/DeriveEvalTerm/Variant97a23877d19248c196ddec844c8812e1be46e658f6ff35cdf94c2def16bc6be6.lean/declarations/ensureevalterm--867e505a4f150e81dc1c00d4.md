# ensureEvalTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c553339a62d38cd532639c8334435f6bc5f0fd1ba9259bc2fe9e7c4637d0c47",
  "kind": "def",
  "lexical_name": "ensureEvalTerm",
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
  "slug": "ensureevalterm--867e505a4f150e81dc1c00d4",
  "source": {
    "blob": "caeb88378d14a3c57039860e0aae6789aeef9c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:867e505a4f150e81dc1c00d4ef2fbbd8da4baff14953635a308b79c6df3e71b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c553339a62d38cd532639c8334435f6bc5f0fd1ba9259bc2fe9e7c4637d0c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ensureEvalTerm
    (vis? : Option (TSyntax `Lean.Parser.Command.visibility))
    (kind : TSyntax `Lean.Parser.Term.attrKind)
    (cmdRef typeRef : Syntax) (type : Expr) : CommandElabM Unit := do
  withClassInstDeps ``EvalTerm type extraDeps fun type' => withRef cmdRef do
    let ival ← getIndType type'
    let indTypeIdent := mkCIdentFrom typeRef ival.name
    let instName ← NameGen.mkBaseNameWithSuffix' "inst" #[] <| ← ``(EvalTerm $indTypeIdent)
    let evalTermDef := mkIdent (instName ++ Name.mkSimple "evalTerm")
    let mut stxCases : Array (String × Term) := #[]
    for ctorName in ival.ctors do
      if useCtor ival ctorName then
        let (xs, _, _) ← forallMetaTelescopeReducing (← inferType (mkConst ctorName))
        let .str _ ctorName' := ctorName | unreachable!
        let vs ← xs.mapM fun _ => mkIdent <$> Core.mkFreshUserName `v
        let es ← xs.mapM fun _ => mkIdent <$> Core.mkFreshUserName `e
        let expr ← `(Expr.const $(quote ctorName) [])
        let expr ← es.foldlM (init := expr) fun expr e => `(Expr.app $expr $e)
        let val ← `(pure ($(mkCIdent ctorName) $vs*, $expr))
        let recArgs ← xs.mapM fun x => return (← instantiateMVars (← inferType x)) == type'
        let val ← (((Array.range xs.size).zip recArgs).zip (vs.zip es)).foldrM (init := val) fun ((idx, recArg), v, e) val =>
          if recArg then
            `($evalTermDef args[$(quote idx)]! >>= fun ($v, $e) => $val)
          else
            `(EvalTerm.evalTerm args[$(quote idx)]! >>= fun ($v, $e) => $val)
        let val ← `(checkExpectedNumberOfArguments $(quote ctorName) $(quote xs.size) args *> $val)
        stxCases := stxCases.push (ctorName', val)
    let stxMatcher ← makeStringMatcher (← `(ident| ctor)) stxCases (← `(throwUnsupportedSyntax))
    `($[$vis?:visibility]? partial def $evalTermDef : Term → TermElabM ($indTypeIdent × Expr) :=
        withSimpleEvalStx $(quote ival.name) fun ctor args => $stxMatcher
      $[$vis?:visibility]? $kind:attrKind instance%$cmdRef $(mkIdentFrom cmdRef instName (canonical := type == type')):ident : EvalTerm $indTypeIdent where
        evalTerm := $evalTermDef
        typeExpr := Expr.const $(quote ival.name) [])
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

end Lean.Elab.ConfigEval
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caeb88378d14a3c57039860e0aae6789aeef9c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
