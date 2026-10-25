# genWrapper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d75e4eaac533bdc754c6baf42f678327400980a1400b55cd5f0dd4b2423f3871",
  "kind": "def",
  "lexical_name": "genWrapper",
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
  "slug": "genwrapper--ad2580ffeb6718c4e7b80887",
  "source": {
    "blob": "014689ae16d0f21928edb8900d54e926c7b9471b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 697,
    "line": 609,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad2580ffeb6718c4e7b808877afb5e4875f35adc44bfb7c0726094c1a8bd491b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d75e4eaac533bdc754c6baf42f678327400980a1400b55cd5f0dd4b2423f3871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–697.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def genWrapper (declName : Name) (argType : Option Expr) (retType : Expr) : TermElabM Name := do
  if let some c := (← getEnv).constants.find? declName then
    let argSpec ← forallTelescope c.type fun args ret => do
      let mut argSpec : Array ArgSpec := #[]

      for arg in (if argType.isSome then (args[:args.size-1] : Array _) else args) do
        let localDecl ← arg.fvarId!.getDecl
        let name := localDecl.userName
        let argType := localDecl.type
        if argType.isAppOfArity' ``optParam 2 then
          argSpec := argSpec.push (.named name (argType.getArg! 0) (argType.getArg! 1))
        else if argType.isAppOfArity' ``many 1 then
          argSpec := argSpec.push (.many name (argType.getArg!' 0))
        else if argType.isAppOfArity' ``flag 1 then
          let e ← whnf (argType.getArg!' 0)
          match_expr e with
          | true => argSpec := argSpec.push (.flag name true)
          | false => argSpec := argSpec.push (.flag name false)
          | _ => throwError m!"Couldn't determine default flag value from {e}"
        else
          argSpec := argSpec.push (.positional name argType)
      if h : args.size < 1 then
        throwError "Expected at least one parameter to `{.ofConstName declName}`"
      else
        if let some expected := argType then
          let final := args[args.size-1]
          let localDecl ← final.fvarId!.getDecl
          unless ← isDefEq localDecl.type expected do
            throwError "Expected type of last parameter to `{.ofConstName declName}` to be `{.ofExpr expected}` but got `{.ofExpr localDecl.type}`"

        let expected ← mkAppM ``DocM #[retType]
        unless ← isDefEq ret expected do
          throwError "Expected return type of `{.ofConstName declName}` to be `{.ofExpr expected}` but got `{.ofExpr ret}`"

      pure argSpec
    let inls ← mkAppM ``TSyntaxArray #[← mkListLit (.const ``SyntaxNodeKind []) [toExpr `inline]]
    let parser ←
      if let some argType := argType then
        withLocalDecl (← mkFreshBinderName) .default argType fun i => do
          mkLambdaFVars #[i] (← build 0 argSpec #[] (some i))
      else build 0 argSpec #[] none
    let parserTy ← inferType parser
    let name ← mkFreshUserName (declName ++ `getArgs)
    let name := declName ++ `getArgs
    let isMeta := isMarkedMeta (← getEnv) declName
    addAndCompile (markMeta := isMeta) <| .defnDecl {
      name
      levelParams := []
      type := parserTy
      value := parser
      hints := .regular 0
      safety := .safe
    }
    return name
  else
    throwError m!"`{MessageData.ofConstName declName}` not found"
where
  build (i : Nat) (argSpec : Array ArgSpec) (args : Array Expr) (body : Option Expr): MetaM Expr := do
    if h : i < argSpec.size then
      match argSpec[i] with
      | .positional name type =>
        let arg ← mkAppOptM ``Lean.Doc.getPositional #[type, none, toExpr name]
        let k ← withLocalDecl name .default type fun v => do
            mkLambdaFVars #[v] (← build (i + 1) argSpec (args.push v) body)
        mkAppM ``Bind.bind #[arg, k]
      | .named name type default =>
        let arg ← mkAppOptM ``Lean.Doc.getNamed #[type, none, toExpr name, default]
        let k ← withLocalDecl name .default type fun v => do
            mkLambdaFVars #[v] (← build (i + 1) argSpec (args.push v) body)
        mkAppM ``Bind.bind #[arg, k]
      | .many name type =>
        let arg ← mkAppOptM ``Lean.Doc.getMany #[type, none, toExpr name]
        let k ← withLocalDecl name .default (← mkAppM ``Array #[type]) fun v => do
            mkLambdaFVars #[v] (← build (i + 1) argSpec (args.push v) body)
        mkAppM ``Bind.bind #[arg, k]
      | .flag name default =>
        let arg ← mkAppM ``Lean.Doc.getFlag #[toExpr name, toExpr default]
        let k ← withLocalDecl name .default (.const ``Bool []) fun v => do
            mkLambdaFVars #[v] (← build (i + 1) argSpec (args.push v) body)
        mkAppM ``Bind.bind #[arg, k]
    else
      let last ← mkAppM ``Lean.Doc.done #[]
      let m ← mkAppM ``StateT #[← mkAppM ``Array #[← mkAppM ``TSyntax #[← mkListLit (.const ``SyntaxNodeKind []) [toExpr `doc_arg]]], ← mkAppM ``DocM #[]]
      let k ← withLocalDecl (← mkFreshBinderName) .default (.const ``Unit []) fun u => do
        let args := body.map (args.push ·) |>.getD args
        mkLambdaFVars #[u] (← mkAppOptM ``liftM #[none, some m, none, none, (← mkAppM declName args)])
      mkAppM ``Bind.bind #[last, k]

/-- Environment extension for code suggestions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `014689ae16d0f21928edb8900d54e926c7b9471b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
