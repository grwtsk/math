# generateCoinductiveConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff929de917bf86cd7bf954262c9bc5b6bff873a168bb4e7d7ed06b87264b8820",
  "kind": "def",
  "lexical_name": "generateCoinductiveConstructor",
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
  "slug": "generatecoinductiveconstructor--4e75b17e6fbf58511624d226",
  "source": {
    "blob": "ea9fa4f4041b570e5990dfd26fa95cb772c0de14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e75b17e6fbf58511624d226fa101a49d036c0902d4cb5702b7218a2ac44b45f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff929de917bf86cd7bf954262c9bc5b6bff873a168bb4e7d7ed06b87264b8820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def generateCoinductiveConstructor (infos : Array InductiveVal) (ctorSyntax : Syntax)
    (numParams : Nat) (name : Name) (ctor : ConstructorVal) : TermElabM Unit := do
  trace[Elab.coinductive] "Generating constructor: {removeFunctorPostfixInCtor ctor.name}"
  let numPreds := infos.size
  let predNames := infos.map fun val => removeFunctorPostfix val.name
  let levelParams := infos[0]!.levelParams.map mkLevelParam
  /-
    We start by looking at the type of the constructor of the flat inductive and then by introducing
    all its parameters to the scope.
  -/
  forallBoundedTelescope ctor.type (numParams + numPreds) fun args body => do
    /-
      The first `numParams` many items of `args` are parameters from the original definition,
      while the remaining ones are free variables that correspond to recursive calls.
    -/
    let params := args.take numParams
    let predFVars := args[numParams:]
    /-
      We will fill recursive calls in the body with the just defined (co)inductive predicates.
    -/
    let mut predicates : Array Expr := predNames.map (mkConst · levelParams)
    predicates := predicates.map (mkAppN · params)
    let body := body.replaceFVars predFVars predicates
    /-
      Now, we look at the rest of the constructor.
      We start by collecting its non-parameter premises, as well as inspecting its conclusion.
    -/
    let res ← forallTelescope body fun fields bodyExpr => do
      /-
        First, we look at conclusion and pick out all arguments that are non-parameters.
      -/
      let bodyAppArgs := bodyExpr.getAppArgs[numParams + infos.size:]
      /-
        The goal (i.e. right hands side of a constructor) that we are trying to make is just
        the coinductive predicate with parameters and non-parameter arguments applied.
      -/
      let goalType := mkConst (removeFunctorPostfix name) levelParams
      let mut goalType := mkAppN goalType params
      goalType := mkAppN goalType bodyAppArgs
      trace[Elab.coinductive] "The conclusion of the constructor {ctor.name} is {goalType}"

      -- We start by making the metavariable for it, that we will fill
      let goal ← mkFreshExprMVar <| .some goalType
      let hole := Expr.mvarId! goal
      let unfoldEq := mkConst ((removeFunctorPostfix name) ++ `functor_unfold) levelParams
      let unfoldEq := mkAppN unfoldEq params

      let rewriteResult ← hole.rewrite (←hole.getType) unfoldEq

      let newHole ← hole.replaceTargetEq rewriteResult.eNew rewriteResult.eqProof

      /-
        Now, all it suffices is to call an appropriate constructor of the flat inductive.
      -/
      let constructor := mkConst ctor.name levelParams
      let constructor := mkAppN constructor params
      let constructor := mkAppN constructor predicates
      let constructor := mkAppN constructor fields
      newHole.assign constructor
      let conclusion ← instantiateMVars goal
      let conclusion ← mkLambdaFVars fields conclusion
      mkLambdaFVars params conclusion
    let type ← inferType res
    trace[Elab.coinductive] "The elaborated constructor is of the type: {type}"
    /-
      We finish by registering the appropriate declaration
    -/
    addDecl <|
      .defnDecl <|
        ←mkDefinitionValInferringUnsafe
          (name := removeFunctorPostfixInCtor ctor.name)
          (levelParams := ctor.levelParams)
          (type := type)
          (value := res)
          (hints:= .opaque)
    Term.addTermInfo' ctorSyntax res (isBinder := true)

/--
  Given the number of parameters and the `InductiveVal` containing flat inductives
  (see `mkFlatInductive`) and `CoinductiveElabData` associated with the mutual coinductive
  predicates, generates their constructors that correspond to the
  constructors given in the original syntax.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea9fa4f4041b570e5990dfd26fa95cb772c0de14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
