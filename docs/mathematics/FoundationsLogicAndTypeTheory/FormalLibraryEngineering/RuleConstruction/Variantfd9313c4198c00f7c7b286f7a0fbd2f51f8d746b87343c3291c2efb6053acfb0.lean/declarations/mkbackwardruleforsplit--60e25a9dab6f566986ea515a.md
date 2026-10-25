# mkBackwardRuleForSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c37b838fb5a6357ad6f1ef06ec1cd68fd9fa363e0e935cf2936d545b440aad5",
  "kind": "def",
  "lexical_name": "mkBackwardRuleForSplit",
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
  "slug": "mkbackwardruleforsplit--60e25a9dab6f566986ea515a",
  "source": {
    "blob": "e39485b4727669e40b2752d74a633be14945f721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 368,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60e25a9dab6f566986ea515a70099d2f9d526f8f6f74917552b6fb37dffe3681",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c37b838fb5a6357ad6f1ef06ec1cd68fd9fa363e0e935cf2936d545b440aad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkBackwardRuleForSplit
    (splitInfo : SplitInfo) (info : WPApp) : MetaM BackwardRule := do
  -- The split value type is the goal's, so reuse the goal's program type and `WP` instance directly.
  let a := info.Value
  let ma := info.Prog
  let prf ←
    splitInfo.withAbstract ma fun abstractInfo splitFVars => do
    -- Eta-reduce matcher alts for the backward rule pattern to avoid expensive
    -- higher-order unification. The alts are eta-expanded by `withAbstract` so that
    -- `splitWith`/`matcherApp.transform` can `instantiateLambda` them directly.
    let abstractProg := match abstractInfo with
      | .ite e | .dite e => e
      | .matcher matcherApp =>
        { matcherApp with alts := matcherApp.alts.map Expr.eta }.toExpr
    let excessArgNamesTypes ← info.excessArgs.mapM fun arg =>
      return (`s, ← Meta.inferType arg)
    withLocalDeclsDND excessArgNamesTypes fun ss => do
    withLocalDeclD `Post (← mkArrow a info.Pred) fun post => do
    withLocalDeclD `EPost info.EPred fun epost => do
    let mkWP (prog : Expr) : Expr :=
      let args := info.args.take 7 ++ #[prog, post, epost]
      mkAppN (mkAppN info.head args) ss
    let Pred' ← Meta.inferType (mkWP abstractProg)
    withLocalDeclD `Pre Pred' fun pre => do
    let sampleGoal ← mkAppM ``PartialOrder.rel #[pre, mkWP abstractProg]
    let relArgs := sampleGoal.getAppArgs
    let relHead := mkAppN sampleGoal.getAppFn (relArgs.extract 0 3)
    let mkGoal (prog : Expr) : Expr := mkApp relHead (mkWP prog)
    -- Use synthetic opaque mvars so that `rwIfOrMatcher`'s `assumption` cannot
    -- accidentally assign our subgoal metavariables.
    let subgoals ← splitInfo.altInfos.mapM fun _ =>
      mkFreshExprSyntheticOpaqueMVar (mkSort 0)
    let namedSubgoals := subgoals.mapIdx fun i mv => ((`h).appendIndexAfter (i+1), mv)
    withLocalDeclsDND namedSubgoals fun subgoalHyps => do
    let prf ←
      abstractInfo.splitWith
        (useSplitter := true)
        (mkGoal abstractProg)
        (fun _name bodyType idx altFVars => do
          -- Extract the program from `bodyType` (the substituted alt goal type).
          -- For matchers, `bodyType` has the discriminant replaced by the constructor
          -- pattern (e.g., `Nat.zero` instead of `discr`), which is required for
          -- `rwMatcher` to discharge the equality hypotheses of congr equation theorems.
          -- For ite/dite, `bodyType` equals `mkGoal abstractProg` so this is equivalent.
          let prog := bodyType.getArg! 3 |>.getArg! 7
          let res ← rwIfOrMatcher idx prog
          if res.proof?.isNone then
            throwError "mkBackwardRuleForSplit: rwIfOrMatcher failed for alt {idx}"
          let altParams := altFVars.all
          subgoals[idx]!.mvarId!.assign (← mkForallFVars altParams (mkGoal res.expr))
          let context ← withLocalDecl `x .default ma fun x =>
            mkLambdaFVars #[x] (mkGoal x)
          let eqProof ← mkAppM ``congrArg #[context, res.proof?.get!]
          mkEqMPR eqProof (mkAppN subgoalHyps[idx]! altParams))
    let prf ← instantiateMVars prf
    mkLambdaFVars (splitFVars ++ ss ++ #[post, epost, pre] ++ subgoalHyps) prf
  let prf ← instantiateMVars prf
  let res ← abstractMVars prf
  mkBackwardRuleFromExpr res.expr res.paramNames.toList

/-! ## Frame rules -/

/-- Move the frame variable to the front of a frame rule's subgoals. The frame is the sole subgoal
another subgoal (the pre-VC and the `WP.Frames` condition) depends on, so applying the rule surfaces
it first, ready to be assigned the inferred frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39485b4727669e40b2752d74a633be14945f721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
