# elabCoinductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b4629def81754bf41fc6446006dfa38df0263acb655cb67c01054e5c90b1a3d",
  "kind": "def",
  "lexical_name": "elabCoinductive",
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
  "slug": "elabcoinductive--103affecd85f5ef68fddeb51",
  "source": {
    "blob": "c6f982dfdbe8177063e6b8a99757555d1647caeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 436,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:103affecd85f5ef68fddeb5146e65f7bffa8b47fd175524560fa3688f6874af8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b4629def81754bf41fc6446006dfa38df0263acb655cb67c01054e5c90b1a3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def elabCoinductive (coinductiveElabData : Array CoinductiveElabData) : TermElabM Unit := do
  trace[Elab.coinductive] "Elaborating: {coinductiveElabData.map (·.declName)}"
  let infos ← coinductiveElabData.mapM (getConstInfoInduct ·.declName)
  let levelParams := infos[0]!.levelParams.map mkLevelParam
  /-
    We infer original names and types of the predicates.
    To get such names, we need to remove `._functor` postfix. At the same time,
    we need to forget about the parameters for recursive calls, to get the original types.
  -/
  let originalNumParams := infos[0]!.numParams - infos.size
  let namesAndTypes : Array (Name × Expr) ← infos.mapM fun info => do
    let type ← forallTelescope info.type fun args body => do
      mkForallFVars (args[:originalNumParams] ++ args[info.numParams:]) body
    return (removeFunctorPostfix (info.name), type)
  /-
    We make dummy constants that are used in populating PreDefinitions
  -/
  let consts := namesAndTypes.map fun (name, _) => (mkConst name levelParams)
  /-
    We create values of each of PreDefinitions, by taking existential (see `Meta.SumOfProducts`)
    form of the associated flat inductives and applying parameters, as well as recursive calls
    (with their parameters passed).
  -/
  let preDefVals ← forallBoundedTelescope infos[0]!.type originalNumParams fun params _ => do
    infos.mapM fun info => do
      let mut functor := mkConst (info.name ++ `existential) levelParams
      functor ← unfoldDefinition functor
      functor := mkAppN functor <| params ++ consts.map (mkAppN · params)
      mkLambdaFVars params functor
  /-
    Finally, we populate the PreDefinitions
  -/
  let env ← getEnv
  let preDefs : Array PreDefinition := preDefVals.mapIdx fun idx defn =>
    -- The docstring and `afterCompilation` attributes are handled during inductive
    -- postprocessing, where the predicate's constructors exist and the binder syntax
    -- is available.
    let modifiers := { coinductiveElabData[idx]!.modifiers with docString? := none }
    let modifiers := modifiers.filterAttrs fun attr =>
      match getAttributeImpl env attr.name with
      | .ok impl => impl.applicationTime != .afterCompilation
      | .error _ => true
    { ref := coinductiveElabData[idx]!.ref
      binders := coinductiveElabData[idx]!.ref
      kind := .def
      levelParams := infos[0]!.levelParams
      modifiers
      declName := namesAndTypes[idx]!.1
      type := namesAndTypes[idx]!.2
      value := defn
      termination := {
        ref := coinductiveElabData[idx]!.ref
        terminationBy?? := .none
        terminationBy? := .none
        partialFixpoint? := .some {
            ref := coinductiveElabData[idx]!.ref
            term? := .none
            fixpointType := if coinductiveElabData[idx]!.isGreatest then
                              .coinductiveFixpoint else .inductiveFixpoint
        }
        decreasingBy? := .none
        extraParams := 0
      }
    }
  partialFixpoint (← getLCtx, ← getLocalInstances) preDefs
  generateEqLemmas infos
  generateCoinductiveConstructors originalNumParams infos coinductiveElabData
  mkCasesOnCoinductive infos

end Lean.Elab.Command
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6f982dfdbe8177063e6b8a99757555d1647caeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
