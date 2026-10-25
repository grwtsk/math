# generateEqLemmas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97e7decf5b090036233bd36287bd9c3e99129479267208f92b527b527f013e42",
  "kind": "def",
  "lexical_name": "generateEqLemmas",
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
  "slug": "generateeqlemmas--545c3a13c8e7a21c32891d5a",
  "source": {
    "blob": "c6f982dfdbe8177063e6b8a99757555d1647caeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:545c3a13c8e7a21c32891d5a4db6ab98b8a1a6c8d34aa7a00a3b8b38987e10b4",
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

Occurrence: `declaration:97e7decf5b090036233bd36287bd9c3e99129479267208f92b527b527f013e42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def generateEqLemmas (infos : Array InductiveVal) : MetaM Unit := do
  let levels := infos[0]!.levelParams.map mkLevelParam
  for info in infos do
    let res ← forallTelescopeReducing info.type fun args _ => do
      let params := args[:info.numParams - infos.size]
      let args := args[info.numParams:]

      let lhs := mkConst (removeFunctorPostfix info.name) levels
      let lhs := mkAppN lhs params
      let lhs := mkAppN lhs args

      let calls := infos.map fun info => mkAppN (mkConst (removeFunctorPostfix info.name) levels) params
      let rhs := mkConst info.name levels
      let rhs := mkAppN rhs (params ++ calls ++ args)

      let goalType ← mkEq lhs rhs
      let goal ← mkFreshExprMVar goalType

      let goalMVarId := goal.mvarId!

      let .some #[fixEq] ←  getEqnsFor? (removeFunctorPostfix info.name) | throwError "did not generate unfolding theorem"
      let existentialEquiv := mkConst (info.name ++ `existential_equiv) levels

      let mut fixEq := mkConst fixEq levels
      fixEq := mkAppN fixEq params
      for arg in args do
        fixEq ← mkCongrFun fixEq arg

      let newGoal ← rewriteGoalUsingEq goalMVarId existentialEquiv
      newGoal.assign fixEq

      let goal ← instantiateMVars goal
      mkLambdaFVars (params ++ args) goal
    trace[Elab.coinductive] "res: {res}"
    addDecl <|
      .defnDecl <|
        ←mkDefinitionValInferringUnsafe
          (name := (removeFunctorPostfix info.name) ++ `functor_unfold)
          (levelParams := info.levelParams)
          (type := (←inferType res))
          (value := res)
          (hints := .opaque)

/--
  Generates a constructor for a coinductive predicate that corresponds to constructors
  in the original `InductiveView`.

  The process:
  1. Takes the flat inductive constructor type
  2. Fills recursive call parameters with the actual coinductive predicates
  3. Converts to existential form using the equivalence lemma
  4. Applies the unfolding rule to get the final constructor form
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6f982dfdbe8177063e6b8a99757555d1647caeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
