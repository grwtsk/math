# _root_.Lean.MVarId.wlog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44fc6cf344ebdd3fa391ff4f6f658527e82248bfb57dc798a3b822ba50ffaf5e",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.wlog",
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
  "slug": "root-lean-mvarid-wlog--66104aa61080f8ba1bea2184",
  "source": {
    "blob": "5236d56a817226548d3e4671f2a1f214c4f96879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant80d170e7a750ab2a3c51e591f780b6f9cddcd9a6594ce2ab7f77832dbc150504.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66104aa61080f8ba1bea218445380a5436f7448d463fcbed71dc58b72d31aca7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant80d170e7a750ab2a3c51e591f780b6f9cddcd9a6594ce2ab7f77832dbc150504.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44fc6cf344ebdd3fa391ff4f6f658527e82248bfb57dc798a3b822ba50ffaf5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.wlog (goal : MVarId) (h : Option Name) (P : Expr)
    (xs : Option (TSyntaxArray `ident) := none) (H : Option Name := none) :
    TacticM WLOGResult := goal.withContext do
  goal.checkNotAssigned `wlog
  let H := H.getD `this
  let inaccessible := h.isNone
  let h := h.getD `h
  /- Compute the type for H and keep track of the FVarId's reverted in doing so. (Do not modify the
  tactic state.) -/
  let HSuffix := Expr.forallE h P (← goal.getType) .default
  let fvars ← getFVarIdsAt goal xs
  let fvars := fvars.map Expr.fvar
  let lctx := (← goal.getDecl).lctx
  let (revertedFVars, HType) ← liftMkBindingM <| fun ctx => (do
    let f ← collectForwardDeps lctx fvars
    let revertedFVars := filterOutImplementationDetails lctx (f.map Expr.fvarId!)
    let HType ← withFreshCache do mkAuxMVarType lctx (revertedFVars.map Expr.fvar) .natural HSuffix
    return (revertedFVars, HType))
      { preserveOrder := false, mainModule := ctx.mainModule }
  /- Set up the goal which will suppose `h`; this begins as a goal with type H (hence HExpr), and h
  is obtained through `introNP` -/
  let HExpr ← mkFreshExprSyntheticOpaqueMVar HType
  let hGoal := HExpr.mvarId!
  /- Begin the "reduction goal" which will contain hypotheses `H` and `¬h`. For now, it only
  contains `H`. Keep track of that hypothesis' FVarId. -/
  let (HFVarId, reductionGoal) ← goal.assertHypotheses #[⟨H, HType, HExpr⟩]
  let HFVarId := HFVarId[0]!
  /- Clear the reverted fvars from the branch that will contain `h` as a hypothesis. -/
  let hGoal ← hGoal.tryClearMany revertedFVars
  /- Introduce all of the reverted fvars to the context in order to restore the original target as
  well as finally introduce the hypothesis `h`. -/
  let (_, hGoal) ← hGoal.introNP revertedFVars.size
  -- keep track of the hypothesis' FVarId
  let (hFVar, hGoal) ← if inaccessible then hGoal.intro1 else hGoal.intro1P
  /- Split the reduction goal by cases on `h`. Keep the one with `¬h` as the reduction goal,
  and prove the easy goal by applying `H` to all its premises, which are fvars in the context. -/
  let (⟨easyGoal, hyp⟩, ⟨reductionGoal, negHyp⟩) ←
    reductionGoal.byCases P <| if inaccessible then `_ else h
  easyGoal.withContext do
    -- Exclude ldecls from the `mkAppN` arguments
    let HArgFVarIds ← revertedFVars.filterM (notM ·.isLetVar)
    let HApp ← instantiateMVars <|
      mkAppN (.fvar HFVarId) (HArgFVarIds.map .fvar) |>.app (.fvar hyp)
    ensureHasNoMVars HApp
    easyGoal.assign HApp
  return ⟨reductionGoal, (HFVarId, negHyp), hGoal, hFVar, revertedFVars⟩

/-- `wlog h : P` will add an assumption `h : P` to the main goal, and add a side goal that requires
showing that the case `h : ¬ P` can be reduced to the case where `P` holds (typically by symmetry).

The side goal will be at the top of the stack. In this side goal, there will be two additional
assumptions:
- `h : ¬ P`: the assumption that `P` does not hold
- `this`: which is the statement that in the old context `P` suffices to prove the goal.
  By default, the name `this` is used, but the idiom `with H` can be added to specify the name:
  `wlog h : P with H`.

Typically, it is useful to use the variant `wlog h : P generalizing x y`,
to revert certain parts of the context before creating the new goal.
In this way, the wlog-claim `this` can be applied to `x` and `y` in different orders
(exploiting symmetry, which is the typical use case).

By default, the entire context is reverted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant80d170e7a750ab2a3c51e591f780b6f9cddcd9a6594ce2ab7f77832dbc150504.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant80d170e7a750ab2a3c51e591f780b6f9cddcd9a6594ce2ab7f77832dbc150504.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5236d56a817226548d3e4671f2a1f214c4f96879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
