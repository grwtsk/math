# compileParserExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48214bb046750795e17f3d861938baca21466aae3161b3785c583de91cf95242",
  "kind": "def",
  "lexical_name": "compileParserExpr",
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
  "slug": "compileparserexpr--4a04e80a3be74ce4cef4ef71",
  "source": {
    "blob": "468bd8aa0f202d4227220ab93afaac0cd7abe3d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a04e80a3be74ce4cef4ef71a350dce5d2c1f7df86549f65cae1b899f19777da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48214bb046750795e17f3d861938baca21466aae3161b3785c583de91cf95242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def compileParserExpr (e : Expr) : MetaM Expr := do
  let e ← whnfCore e
  match e with
  | .lam .. | .letE .. => mapLambdaLetTelescope (preserveNondepLet := false) e fun _ b => compileParserExpr b
  | .fvar .. => return e
  | _ => do
    let fn := e.getAppFn
    let .const c .. := fn | throwError "call of unknown parser at `{e}`"
    -- call the translated `p` with (a prefix of) the arguments of `e`, recursing for arguments
    -- of type `ty` (i.e. formerly `Parser`)
    let mkCall (p : Name) := do
      let ty ← inferType (mkConst p)
      forallTelescope ty fun params _ => do
        let mut p := mkConst p
        let args  := e.getAppArgs
        for i in *...(Nat.min params.size args.size) do
          let param := params[i]!
          let arg   := args[i]!
          let paramTy ← inferType param
          let resultTy ← forallTelescope paramTy fun _ b => pure b
          let arg ← if resultTy.isConstOf ctx.tyName then compileParserExpr arg else pure arg
          p := mkApp p arg
        return p
    let env ← getEnv
    match ctx.combinatorAttr.getDeclFor? env c with
    | some p => mkCall p
    | none   =>
      let c' := c ++ ctx.varName
      let cinfo ← getConstInfo c
      let resultTy ← forallTelescope cinfo.type fun _ b => pure b
      if resultTy.isConstOf ``Lean.Parser.TrailingParser || resultTy.isConstOf ``Lean.Parser.Parser then do
        -- synthesize a new `[combinatorAttr c]`
        let some value ← pure cinfo.value?
          | throwError "don't know how to generate {ctx.varName} for non-definition `{e}`"
        unless (env.getModuleIdxFor? c).isNone || force do
          throwError "refusing to generate code for imported parser declaration `{c}`; use `@[run_parser_attribute_hooks]` on its definition instead."
        let value ← compileParserExpr <| replaceParserTy ctx value
        let ty ← forallTelescope cinfo.type fun params _ =>
          params.foldrM (init := mkConst ctx.tyName) fun param ty => do
            let paramTy ← replaceParserTy ctx <$> inferType param
            return mkForall `_ BinderInfo.default paramTy ty
        let decl := Declaration.defnDecl {
          name := c', levelParams := []
          type := ty, value := value, hints := ReducibilityHints.opaque, safety := DefinitionSafety.safe
        }
        -- usually `meta` is inferred during compilation for auxiliary definitions, but as
        -- `ctx.combinatorAttr` may enforce correct use of the modifier, infer now.
        addAndCompile decl (markMeta := isMarkedMeta (← getEnv) c)
        modifyEnv (ctx.combinatorAttr.setDeclFor · c c')
        if cinfo.type.isConst then
          if let some kind ← parserNodeKind? cinfo.value! then
            -- If the parser is parameter-less and produces a node of kind `kind`,
            -- then tag the compiled definition as `[(builtin)Parenthesizer kind]`
            -- (or `[(builtin)Formatter kind]`, resp.)
            let attrName := if builtin then ctx.categoryAttr.defn.builtinName else ctx.categoryAttr.defn.name
            -- Create syntax node for a simple attribute of the form
            -- `def simple := leading_parser ident >> optional (ident <|> priorityParser)`
            let stx := mkNode `Lean.Parser.Attr.simple #[mkIdent attrName, mkNullNode #[mkIdent kind]]
            Attribute.add c' attrName stx
        mkCall c'
      else
        -- if this is a generic function, e.g. `AndThen.andthen`, it's easier to just unfold it until we are
        -- back to parser combinators
        let some e' ← unfoldDefinition? e
          | throwError "don't know how to generate {ctx.varName} for non-parser combinator `{e}`"
        compileParserExpr e'
end

variable {α} (ctx : Context α) (builtin : Bool) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `468bd8aa0f202d4227220ab93afaac0cd7abe3d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
