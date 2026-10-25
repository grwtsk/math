# evalSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28d413b545066681fa1cc8d617e6b6e55001162c023d8a2dc8d2f05418a7ef37",
  "kind": "def",
  "lexical_name": "evalSplit",
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
  "slug": "evalsplit--01b3c428a058becd2eee377b",
  "source": {
    "blob": "a90684a27278a4da19566dbff53d92281f251c8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant01e45a7c699b854dad76fa35453a7b63ffbf27afb21a43de2fdca1190d355ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01b3c428a058becd2eee377b856a58c3be155ee3dfbbe29f512f3ed4ee089c0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant01e45a7c699b854dad76fa35453a7b63ffbf27afb21a43de2fdca1190d355ba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28d413b545066681fa1cc8d617e6b6e55001162c023d8a2dc8d2f05418a7ef37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.split] def evalSplit : Tactic := fun stx => do
  if let `(tactic|split $t:term $[at $loc]?) := stx then
    throwTermUnsupported t loc
  let loc := expandOptLocation stx[2]
  match loc with
  | Location.targets hyps simplifyTarget =>
    if (hyps.size > 0 && simplifyTarget) || hyps.size > 1 then
      throwMultipleLocationsAt stx[2] simplifyTarget hyps
    if simplifyTarget then
      liftMetaTactic fun mvarId => do
       let some mvarIds ← splitTarget? mvarId | throwCouldNotSplitGoal mvarId
        return mvarIds
    else
      let fvarId ← getFVarId hyps[0]!
      liftMetaTactic fun mvarId => do
        let some mvarIds ← splitLocalDecl? mvarId fvarId | throwCouldNotSplitHyp fvarId mvarId
        return mvarIds
  | Location.wildcard =>
    liftMetaTactic fun mvarId => do
      let fvarIds ← mvarId.getNondepPropHyps
      for fvarId in fvarIds do
        if let some mvarIds ← splitLocalDecl? mvarId fvarId then
          return mvarIds
      let some mvarIds ← splitTarget? mvarId
        | throwCouldNotSplitWildcard fvarIds mvarId
      return mvarIds
where
  traceHint : MessageData := .ofLazyM do
    if ! (← getBoolOption `trace.split.failure) then
      return .hint' m!"Use `set_option trace.split.failure true` to display additional diagnostic information"
    else return .nil

  throwTermUnsupported (t : Term) (loc : Option Syntax) := do
    withMainContext do
      let mut error := m!"Tactic `split` failed: Specifying a term to split is not supported yet"
      if t.raw.isIdent then
        let name := t.raw.getId
        let lctx ← getLCtx
        if name.isStr && loc.isNone then
          if let some decl := lctx.findFromUserName? name then
            let e := decl.toExpr
            let hint ← MessageData.hint
              m!"To apply `split` at the hypothesis `{e}`, use `split at {e}`:"
              #[{ suggestion := (← `(tactic|split at $(mkIdent name):ident)) }]
            error := error ++ hint
      throwErrorAt t error

  throwMultipleLocationsAt (stx : Syntax) (simplifyTarget : Bool) (hyps : Array Syntax) {α} : MetaM α := do
    let goalStr := if simplifyTarget then "the goal and " else ""
    let hypsStr :=
      (if hyps.size == 1 then m!"hypothesis" else m!"hypotheses") ++
      MessageData.andList (hyps.toList.map (m!"`{·}`"))
    throwErrorAt stx m!"Tactic `split` failed: Specifying multiple targets ({goalStr ++ hypsStr}) is not supported"
      ++ .hint' m!"Specify a single target to split, or use `split at *` to split the first target that can be automatically split"

  throwCouldNotSplitGoal (mvarId : MVarId) := do
    Meta.throwTacticEx `split mvarId <| m!"Could not split an `if` or `match` expression in the goal"
      ++ (← mkCasesHint <$> mvarId.getType) ++ traceHint

  throwCouldNotSplitHyp (fvarId : FVarId) (mvarId: MVarId) := do
    let fvarType ← fvarId.getType
    Meta.throwTacticEx `split mvarId <| m!"Could not split an `if` or `match` expression in \
      the type{inlineExpr fvarType}of `{Expr.fvar fvarId}`" ++ mkCasesHint fvarType ++ traceHint

  throwCouldNotSplitWildcard {α} (fvarIds : Array FVarId) (mvarId : MVarId) : MetaM α := do
    let note := .note "`split at *` does not attempt to split at non-propositional hypotheses \
      or those on which other hypotheses depend. It may still be possible to manually split a \
      hypothesis using `split at`"
    if fvarIds.size > 0 then
      let fvarMsgs := fvarIds.toList.map (m!"`{Expr.fvar ·}`")
      let fvarMsgs := MessageData.joinSep fvarMsgs ", "
      Meta.throwTacticEx `split mvarId <|
        m!"Could not split the goal or any of the following hypotheses: {fvarMsgs}" ++ note ++ traceHint
    else
      Meta.throwTacticEx `split mvarId <|
        m!"Could not split the goal, and no hypotheses that could be automatically split were found" ++ note ++ traceHint

  mkCasesHint (type : Expr) : MessageData := MessageData.ofLazyM do
    let isFnStructureConst (t : Expr) : MetaM Bool := do
      if let .const c _ := t.getAppFn then
        let env ← getEnv
        return isStructure env c && (getStructureFields env c).size > 0
      else
        return false
    let kind? ←
      if type.isAppOf ``And then pure <| some "conjunction"
      else if type.isAppOf ``Prod then pure <| some "pair"
      else if (← isFnStructureConst type.getAppFn) then pure <| some "structure"
      else pure <| none
    if let some kind := kind? then
      return .hint' m!"If you meant to destruct this {kind}, use the `cases` tactic instead"
    else
      return .nil

end Lean.Elab.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant01e45a7c699b854dad76fa35453a7b63ffbf27afb21a43de2fdca1190d355ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant01e45a7c699b854dad76fa35453a7b63ffbf27afb21a43de2fdca1190d355ba9.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90684a27278a4da19566dbff53d92281f251c8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
