# collectInvariantHints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:686044957b8578f5a12f4613fe370d4aefbb17ceb9d1ad27b299047c56cf553b",
  "kind": "def",
  "lexical_name": "collectInvariantHints",
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
  "slug": "collectinvarianthints--1c404e1d79d54c267a6e50c0",
  "source": {
    "blob": "1a9f71310b5b8aa8cddc2ce4000cba3b2c13583a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c404e1d79d54c267a6e50c0690dd6caa4781418c771cdd0d097378f74b05e01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:686044957b8578f5a12f4613fe370d4aefbb17ceb9d1ad27b299047c56cf553b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectInvariantHints (vcs : Array MVarId) (inv : MVarId) (xs : Expr) (letMuts : Expr) : MetaM (Option (SuccessPoint × SuccessPoint × FailureCondHints)) := do
  let lctx ← getLCtx -- this is the local context of `inv` extended by `xs` and `letMuts`
  let mut prefixPoint? : Option SuccessPoint := none
  let mut suffixPoint? : Option SuccessPoint := none
  let mut failureConds : FailureCondHints := {}
  for vc in vcs do
    -- logWarning m!"Looking at {vc}."
    let target ← Expr.consumeMData <$> instantiateMVars (← vc.getType)
    if let some (lvl, spredHyps, spredTarget) ← vc.withContext <| getSPredGoalHypsAndTarget target then
      let mkPure p := SPred.mkPure lvl (TypeList.mkNil lvl) p
      -- vc.withContext <| logWarning m!"collectPoint: {spredHyps} ⊢ₛ {spredTarget}"
      if let .success invariantUse := classifyInvariantUse spredTarget inv then
        -- This is the `xs.prefix = []` case.
        -- vc.withContext <| logWarning m!"Invariant use: {invariantUse.letMutsTuple}"
        if invariantUse.conditionIdx != 0 then continue -- concerns the success conditions
        if invariantUse.cursorPrefix.isAppOf ``List.nil then
          -- eqNil := `(xs.prefix = [])
          let xsPrefix ← mkProjection xs `prefix
          let eqNil ← mkEq xsPrefix invariantUse.cursorPrefix
          -- eqLetMuts := `(letMuts = $(invariantUse.letMutsTuple))
          let eqLetMuts ← mkPure <$> mkEq letMuts invariantUse.letMutsTuple
          -- logWarning m!"Found prefix point: {eqLetMuts}"
          prefixPoint? := some { lvl, cursorPred := mkPure eqNil, letMutsPred := eqLetMuts }
      if let .success invariantUse := classifyInvariantUse spredHyps inv then
        -- This is a `xs.suffix = []` case.
        -- vc.withContext <| logWarning m!"Found spredHyp: {spredHyps}"
        if invariantUse.conditionIdx != 0 then continue -- concerns the success conditions
        if invariantUse.cursorSuffix.isAppOf ``List.nil && invariantUse.letMutsTuple.isFVar then
          let xsPrefix ← mkProjection xs `suffix
          let eqNil ← mkEq xsPrefix invariantUse.cursorSuffix
          let dontRevert fvarId := fvarId == invariantUse.letMutsTuple.fvarId! || lctx.contains fvarId
          let eqLetMuts ← vc.withContext <| revertFVarsInTypeExcept spredTarget dontRevert
          let eqLetMuts := eqLetMuts.replaceFVar invariantUse.letMutsTuple letMuts
          -- logWarning m!"Reverted to {eqLetMuts}"
          if let some suffixPoint := suffixPoint? then
            suffixPoint? := some { suffixPoint with letMutsPred := SPredNil.mkAnd lvl suffixPoint.letMutsPred eqLetMuts }
          else
            suffixPoint? := some { lvl, cursorPred := mkPure eqNil, letMutsPred := eqLetMuts }
    if let some (_ps, lhs, rhs) := target.app3? ``ExceptConds.entails then
      -- This is a exception condition case.
      -- logWarning m!"Found ExceptConds.entails: {lhs}, {rhs}"
      -- We are targeting `Prod.snd ?inv ⊢ₑ blah` specifically
      unless lhs.isAppOfArity ``Prod.snd 3 && lhs.getArg! 2 == mkMVar inv do continue
      let mut n := 0
      let mut conds := rhs
      let mut points := #[]
      while conds.isAppOfArity ``Prod.mk 4 do
        points := points.push (conds.getArg! 2)
        n := n + 1
        conds := conds.getArg! 3
      if points.size > failureConds.points.size then
        -- Just overwrite the existing entry. Computing a join here is overkill for the few cases
        -- where this is going to be used.
        failureConds := { failureConds with points := points }
        if conds.isConstOf ``PUnit.unit then
          failureConds := { failureConds with default := .punit }
        else if conds.isAppOfArity ``ExceptConds.false 1 then
          failureConds := { failureConds with default := .false }
        else if conds.isAppOfArity ``ExceptConds.true 1 then
          failureConds := { failureConds with default := .true }
        else
          failureConds := { failureConds with default := .other conds }
      -- vc.withContext <| logWarning m!"Found failure conds: {failureConds.points.toList}"
  return (·, ·, ·) <$> prefixPoint? <*> suffixPoint? <*> pure failureConds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a9f71310b5b8aa8cddc2ce4000cba3b2c13583a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
