# applyMatchSplitter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cbf0faeede951f08613dda6e847c46474a10205d5fb0c12bcec026b80dd211e",
  "kind": "def",
  "lexical_name": "applyMatchSplitter",
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
  "slug": "applymatchsplitter--4b8929eb52ef70d79d07a0a4",
  "source": {
    "blob": "58a23e2bf9d941430528ccb8251751f3f5565078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b8929eb52ef70d79d07a0a4d2ae6ec0c82e9f7a792fac8d99a56f821af15336",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cbf0faeede951f08613dda6e847c46474a10205d5fb0c12bcec026b80dd211e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyMatchSplitter (mvarId : MVarId) (matcherDeclName : Name) (us : Array Level) (params : Array Expr) (discrs : Array Expr) : MetaM (List MVarId) := do
  let some info ← getMatcherInfo? matcherDeclName | throwInternalMisuseError m!"Internal error in `split` tactic: `{matcherDeclName}` is not an auxiliary declaration used to encode `match`-expressions"
  let matchEqns ← Match.getEquationsFor matcherDeclName
  -- splitterPre does not have the correct universe elimination level, but this is fine, we only use it to compute the `motiveType`,
  -- and we only care about the `motiveType` arguments, and not the resulting `Sort u`.
  let splitterPre := mkAppN (mkConst matchEqns.splitterName us.toList) params
  let motiveType := (← whnfForall (← inferType splitterPre)).bindingDomain!
  trace[split.debug] "applyMatchSplitter\n{mvarId}"
  let (discrs, mvarId) ← generalizeMatchPropDiscrs mvarId discrs
  trace[split.debug] "after generalizeMatchPropDiscrs\n{mvarId}"
  let (discrFVarIds, discrEqs, mvarId) ← generalizeMatchDiscrs mvarId matcherDeclName motiveType discrs
  trace[split.debug] "after generalizeMatchDiscrs\n{mvarId}"
  let mvarId ← generalizeTargetsEq mvarId motiveType (discrFVarIds.map mkFVar)
  mvarId.withContext do trace[split.debug] "discrEqs after generalizeTargetsEq: {discrEqs.map mkFVar}"
  trace[split.debug] "after generalize\n{mvarId}"
  let numEqs := discrs.size
  let (discrFVarIdsNew, mvarId) ← mvarId.introN discrs.size
  trace[split.debug] "after introN\n{mvarId}"
  let discrsNew := discrFVarIdsNew.map mkFVar
  let mvarType ← mvarId.getType
  let elimUniv ← mvarId.withContext <| getLevel mvarType
  let us ← if let some uElimPos := info.uElimPos? then
    pure <| us.set! uElimPos elimUniv
  else
    unless elimUniv.isZero do
      throwError "`split` tactic failed to split a match-expression: The splitter auxiliary theorem \
        `{.ofConstName matchEqns.splitterName}` can only eliminate into `Prop`"
    pure us
  let splitter := mkAppN (mkConst matchEqns.splitterName us.toList) params
  mvarId.withContext do
    let motive ← mkLambdaFVars discrsNew mvarType
    let splitter := mkAppN (mkApp splitter motive) discrsNew
    check splitter
    trace[split.debug] "after check splitter"
    let mvarIds ← mvarId.applyN splitter matchEqns.size
    let (_, mvarIds) ← mvarIds.foldlM (init := (0, [])) fun (i, mvarIds) mvarId => do
      let altInfo := matchEqns.splitterMatchInfo.altInfos[i]!
      let mvarId ←
        if altInfo.hasUnitThunk then
          trace[split.debug] "introducing unit param for alt {(i : Nat)}"
          let (unitFvarId, mvarId) ← mvarId.intro1
          mvarId.tryClear unitFvarId
        else
          let (_, mvarId) ← mvarId.introN (altInfo.numFields + altInfo.numOverlaps)
          pure mvarId
      trace[split.debug] "before unifyEqs\n{mvarId}"
      match (← Cases.unifyEqs? (info.getNumDiscrEqs + numEqs) mvarId {}) with
      | none   => return (i+1, mvarIds) -- case was solved
      | some (mvarId, fvarSubst) =>
        trace[split.debug] "after unifyEqs\n{mvarId}"
        let mvarId ← substDiscrEqs mvarId fvarSubst discrEqs
        return (i+1, mvarId::mvarIds)
    return mvarIds.reverse

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a23e2bf9d941430528ccb8251751f3f5565078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
