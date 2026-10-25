# instantiateExtTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c00adbb693785e28d52adaa1b4343719b97cf7503306e318268ff92062ac426",
  "kind": "def",
  "lexical_name": "instantiateExtTheorem",
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
  "slug": "instantiateexttheorem--04a574d7ff36856a62779f6b",
  "source": {
    "blob": "9fef8237f9303a602e9e87730bff2507a4762891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Varianta9a53963b8c92a3ca36744e0bebd1ffa854c206077df0faf21061b3e66e3640a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04a574d7ff36856a62779f6b5cd97e328a5150fe6f0a19676188f79d02c1cb7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Varianta9a53963b8c92a3ca36744e0bebd1ffa854c206077df0faf21061b3e66e3640a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c00adbb693785e28d52adaa1b4343719b97cf7503306e318268ff92062ac426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def instantiateExtTheorem (thm : Ext.ExtTheorem) (e : Expr) : GoalM Unit := withNewMCtxDepth do
  unless (← getGeneration e) < (← getMaxGeneration) do return ()
  let_expr Eq α lhs rhs := e | return ()
  let c ← mkConstWithFreshMVarLevels thm.declName
  let (mvars, bis, type) ← withDefault <| forallMetaTelescopeReducing (← inferType c)
  let_expr Eq α' lhs' rhs' := type | return ()
  let matchTerm (p : Expr) (e : Expr) : GoalM Bool := do
    if p.isMVar then
      p.mvarId!.assign e
      return true
    else
      isDefEq p e
  let matchEqs : GoalM Bool := do
    isDefEq α α' <&&> matchTerm lhs' lhs <&&> matchTerm rhs' rhs
  unless (← matchEqs) do
    reportIssue! "failed to apply extensionality theorem `{thm.declName}` for {indentExpr e}\nis not definitionally equal to{indentExpr type}"
    return ()
  -- Instantiate type class instances
  for mvar in mvars, bi in bis do
    if bi.isInstImplicit && !(← mvar.mvarId!.isAssigned) then
      let type ← inferType mvar
      unless (← synthInstanceAndAssign mvar type) do
        reportIssue! "failed to synthesize instance when instantiating extensionality theorem `{thm.declName}` for {indentExpr e}"
        return ()
  -- Remark: `proof c mvars` has type `e`
  let proof ← instantiateMVars (mkAppN c mvars)
  -- `e` is equal to `False`
  let eEqFalse ← mkEqFalseProof e
  -- So, we use `Eq.mp` to build a `proof` of `False`
  let proof := mkApp4 (mkConst ``Eq.mp [Level.zero]) e (← getFalseExpr) eEqFalse proof
  let mvars ← mvars.filterM fun mvar => return !(← mvar.mvarId!.isAssigned)
  let proof' ← instantiateMVars (← mkLambdaFVars mvars proof)
  let prop' ← inferType proof'
  if proof'.hasMVar || prop'.hasMVar then
    reportIssue! "failed to apply extensionality theorem `{thm.declName}` for {indentExpr e}\nresulting terms contain metavariables"
    return ()
  trace[grind.ext] "{thm.declName}: {prop'}"
  addNewRawFact proof' prop' ((← getGeneration e) + 1) (.ext thm.declName) .other

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Varianta9a53963b8c92a3ca36744e0bebd1ffa854c206077df0faf21061b3e66e3640a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Varianta9a53963b8c92a3ca36744e0bebd1ffa854c206077df0faf21061b3e66e3640a.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fef8237f9303a602e9e87730bff2507a4762891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
