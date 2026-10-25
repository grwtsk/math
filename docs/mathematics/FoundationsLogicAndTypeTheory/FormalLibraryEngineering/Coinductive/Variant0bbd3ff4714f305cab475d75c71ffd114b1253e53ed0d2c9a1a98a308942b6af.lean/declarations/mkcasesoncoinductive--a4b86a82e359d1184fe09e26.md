# mkCasesOnCoinductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1306e3d10736f6a0533c6beb5918f9649f6861fd3a23b7b4f0e3e079192d2d43",
  "kind": "def",
  "lexical_name": "mkCasesOnCoinductive",
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
  "slug": "mkcasesoncoinductive--a4b86a82e359d1184fe09e26",
  "source": {
    "blob": "ea9fa4f4041b570e5990dfd26fa95cb772c0de14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 296,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4b86a82e359d1184fe09e267f44648bbfd067e5ad1d532ca9a675cfd9c27923",
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

Occurrence: `declaration:1306e3d10736f6a0533c6beb5918f9649f6861fd3a23b7b4f0e3e079192d2d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkCasesOnCoinductive (infos : Array InductiveVal) : MetaM Unit := do
  let levels := infos[0]!.levelParams.map mkLevelParam
  let allCtors := infos.flatMap (·.ctors.toArray)

  forallBoundedTelescope infos[0]!.type (infos[0]!.numParams - infos.size) fun params _ => do
  let predicates := infos.map fun info => mkConst (removeFunctorPostfix info.name) levels
  let predicates := predicates.map (mkAppN · params)
  for info in infos do
    let casesOnName := Lean.mkCasesOnName info.name
    let casesOnInfo ← getConstInfo casesOnName
    let originalCasesOn ← mkConstWithLevelParams casesOnName
    let originalCasesOn := mkAppN originalCasesOn (params ++ predicates)

    let goalTypeWithParamsApplied ← inferType originalCasesOn
    /-
      We replace the mentions of the flat inductive with a coinductive predicate
      and replace all constructors of the original type.
    -/
    let goalTypeWithParamsApplied := goalTypeWithParamsApplied.replace (fun e =>
      if e.isApp then
        let bodyArgs := e.getAppArgs[info.numParams:]
        if e.isAppOf info.name then
          mkAppN (mkConst (removeFunctorPostfix info.name) levels) <| params ++ bodyArgs
        else
          if allCtors.any e.isAppOf then
            let bodyArgs := e.getAppArgs[info.numParams:]
            mkAppN (mkConst (removeFunctorPostfixInCtor (e.getAppFn.constName)) levels)
              <| params ++ bodyArgs
          else none
      else
        none
    )
    -- The type of `casesOn` of the flat inductive, upon having the parameters applied
    let originalType ← inferType originalCasesOn
    -- The equivalence proof, that will be used in the subsequent rewrites
    let eqProof := mkConst ((removeFunctorPostfix info.name) ++ `functor_unfold) levels
    /-
      First, we look at the motive. We construct a free variable `motive`
      of the type of motive, as it appears in the `goalTypeWithParamsApplied`
    -/
    forallBoundedTelescope goalTypeWithParamsApplied (.some 1) fun args goalType => do
      let #[motive] := args
        | throwError "Expected one argument"
      /-
        Similarly, we pull of the type of the motive, as it appears in the `casesOn`
        of the flat inductive. We then make an mvar of this type and try to
        fill it using `motive` fvar.
      -/
      let (Expr.forallE _ type _ _) := originalType
        | throwError "expected to be quantifier"
      let motiveMVar ← mkFreshExprMVar type
      /-
        We intro all the indices and the occurrence of the coinductive predicate
      -/
      let (fvars, subgoal) ← motiveMVar.mvarId!.introN (info.numIndices + 1)
      subgoal.withContext do
        let lastAssumption := fvars[fvars.size -1]!

        -- We perform the rewrite at the hypothesis
        let rewriteTarget := (←getLCtx).get! lastAssumption
        let rewriteTarget := rewriteTarget.type
        let rewriteResult ← subgoal.rewrite rewriteTarget eqProof (symm := true)
        let replacementResult ← subgoal.replaceLocalDecl lastAssumption
              rewriteResult.eNew rewriteResult.eqProof

        let newFVars := fvars.modify (fvars.size - 1) fun _ => replacementResult.fvarId
        let (_, afterReplacing) ← replacementResult.mvarId.revert newFVars
        -- Now it is in the form that we can assign the `motive` fvar to the goal
        afterReplacing.assign motive
        -- Then we apply the metavariable to the `casesOn` of the flat inductive
        let originalCasesOn := mkApp originalCasesOn motiveMVar

        -- The next arguments of the `casesOn` are type indices
        forallBoundedTelescope goalType info.numIndices fun indices goalType => do
          /-
            The types do not change, so we just make free variables for them
            and apply them to the `casesOn` of the flat inductive
          -/
          let originalCasesOn := mkAppN originalCasesOn indices
          /-
            The next argument is the occurrence of the coinductive predicate.
            The original `casesOn` of the flat inductive mentions it in
            unrolled form, so we need to rewrite it.
          -/
          forallBoundedTelescope goalType (.some 1) fun targetArgs _ => do
            /-
              We again make a free variable of the type as it appears in the desired
              type of `casesOn` for the coinductive predicate.
            -/
            let #[target] := targetArgs | throwError "Expected one argument"
            /-
              Then, we fish out the type as it appears in the `casesOn` of the flat
              inductive, then making a metavariable for it.
            -/
            let (Expr.forallE _ type _ _) ← inferType originalCasesOn
              | throwError "expected to be quantifier"
            let targetMVar ← mkFreshExprMVar type
            let targetMVarSubgoal ← rewriteGoalUsingEq targetMVar.mvarId! eqProof (symm := true)
            targetMVarSubgoal.assign target
            -- Upon performing the rewrite, we apply the mvar to the flat inductive `casesOn`
            let originalCasesOn := mkApp originalCasesOn targetMVar

            let originalCasesOn ←
              mkLambdaFVars (params ++ args ++ indices ++ targetArgs) originalCasesOn
            let originalCasesOn ← instantiateMVars originalCasesOn

            let levelParams := casesOnInfo.levelParams
            let casesOnName := mkCasesOnName (removeFunctorPostfix info.name)
            let casesOnType ← mkForallFVars params goalTypeWithParamsApplied
            addDecl <|
              .defnDecl <|
                ← mkDefinitionValInferringUnsafe
                    (name := casesOnName)
                    (levelParams := levelParams)
                    (type := casesOnType)
                    (value := originalCasesOn)
                    (hints := .opaque)
            -- We apply the attribute so that the `cases` tactic can pick it up
            Term.TermElabM.run' <| Term.applyAttributes
              casesOnName #[{name := `cases_eliminator}, {name := `elab_as_elim}]

/--
  Main entry point for elaborating mutual coinductive predicates. This function is called after
  generating a flat inductive and adding it to the environment.

  We look at corresponding existential form of the flat inductive (see `Meta.MkIffOfInductiveProp`),
  use it to populate `PreDefinition`s that correspond to the predicates, and then we call
  the `PartialFixpoint` machinery to register them as (co)inductive predicates.

  Finally, we generate constructors for each of the predicates, that correspond to the constructors
  that were given by the user.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea9fa4f4041b570e5990dfd26fa95cb772c0de14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
