# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GRewriteResult.Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.Lean.MVarId.grewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07f56a32ad4fee90bd5546ed6f6e234e308cb7f6b6828d22a75f0b84a8ab9b9b",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GRewriteResult.Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.Lean.MVarId.grewrite",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-grewr--96ce5dfbabd24275865787f2",
  "source": {
    "blob": "1381b2ca2184bed11453f20c7d7cb89b37aeec71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 368,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9a3c2ee0ec91b2b14f029d108f715f781ea35e0be7d67dbd857adb260702d724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96ce5dfbabd24275865787f2b96871a7982590a8ca862c31854b254c33a75f8e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9a3c2ee0ec91b2b14f029d108f715f781ea35e0be7d67dbd857adb260702d724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07f56a32ad4fee90bd5546ed6f6e234e308cb7f6b6828d22a75f0b84a8ab9b9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GRewriteResult.Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.Lean.MVarId.grewrite (goal : MVarId) (e : Expr) (hrel : Expr)
    (mvarIds : Array (MVarId × Array LocalDecl)) (forwardImp symm : Bool)
    (config : GRewrite.Config) : MetaM GRewriteResult :=
  goal.withContext do
    goal.checkNotAssigned `grewrite
    let hrelType ← instantiateMVars (← inferType hrel)
    let maxMVars? ←
      if config.implicationHyp then
        if let arity + 1 := hrelType.getForallArity then
          pure (some arity)
        else
          throwTacticEx `apply_rw goal m!"invalid implication {hrelType}"
      else
        pure none
    let (newMVars, binderInfos, hrelType) ←
      withReducible <| forallMetaTelescopeReducing hrelType maxMVars?
    /- We don't reduce `hrelType` because if it is `a > b`, turning it into `b < a` would
    reverse the direction of the rewrite. However, we do need to clear metadata annotations. -/
    let hrelType := hrelType.cleanupAnnotations

    -- If we can use the normal `rewrite` tactic, we default to using that.
    if (hrelType.isAppOfArity ``Iff 2 || hrelType.isAppOfArity ``Eq 3) && config.useRewrite then
      let { eNew, eqProof, mvarIds } ← goal.rewrite e hrel symm config.toConfig
      let mp := if forwardImp then ``Eq.mp else ``Eq.mpr
      let impProof ← mkAppOptM mp #[e, eNew, eqProof]
      return { eNew, impProof, mvarIds, lctx? := none }

    let hrelIn := hrel
    -- check that `hrel` proves a relation
    let hrel := mkAppN hrel newMVars
    let some (_, lhs, rhs) := GCongr.getRel hrelType |
      throwTacticEx `grewrite goal m!"{hrelType} is not a relation"
    let (pattern, replacement) := if symm then (rhs, lhs) else (lhs, rhs)
    if pattern.getAppFn.isMVar then
      throwTacticEx `grewrite goal
        m!"pattern is a metavariable{indentExpr pattern}\nfrom relation{indentExpr hrelType}"
    -- abstract the occurrences of `lhs` from `e` to get `eAbst`
    let e ← instantiateMVars e
    let (lctx?, eNew, impProof, sideGoals) ←
      if config.useKAbstract then
        (none, ·) <$> grewriteUsingKAbstract goal e hrel pattern replacement forwardImp config
      else
      withReducible do
      let some (_, lhs', rhs') := GCongr.getRel (← whnf hrelType) |
        throwTacticEx `grewrite goal m!"{hrelType} is not a valid relation"
      -- Support relations that flip their arguments when reduced, such as `≥`.
      let symm' ←
        if lhs' == lhs && rhs' == rhs then pure symm
        else if lhs' == rhs && rhs' == lhs then pure !symm
        else throwTacticEx `grewrite goal m!"{hrelType} is not a valid relation"
      let index := (pattern.toHeadIndex, pattern.headNumArgs)
      let mvarIds := mvarIds ++ newMVars.map (·.mvarId!, #[])
      if let ((some (eNew, impProof), { progress, ..}), s) ←
        grewriteCore `_Implies none e (forward := forwardImp) config |>.run
          { symm := symm', proof := hrel, type := hrelType, index, mvarIds }
          |>.run {} |>.run then
        let lctx? := match progress with
          | .matchedOutOfScope lctx => some lctx
          | _ => none
        pure (lctx?, eNew, impProof, s.newGoals)
      else
        withLocalDeclD `_ (← inferType replacement) fun replacement' ↦ do
          let hrelType := updateRel hrelType replacement' symm
          throwTacticEx `grewrite goal
            m!"Did not find a rewrite with{indentExpr hrelType}\n\
            in the target expression{indentExpr e}\n\n\
            Use the command `set_option trace.Meta.grewrite true` to inspect this."
    -- post-process the metavariables
    postprocessAppMVars `grewrite goal newMVars binderInfos
      (synthAssignedInstances := !tactic.skipAssignedInstances.get (← getOptions))
    let newMVarIds ← (sideGoals ++ newMVars.map Expr.mvarId!).filterM (not <$> ·.isAssigned)
    let otherMVarIds ← getMVarsNoDelayed hrelIn
    let otherMVarIds := otherMVarIds.filter (!newMVarIds.contains ·)
    let newMVarIds := newMVarIds ++ otherMVarIds
    pure { eNew, impProof, mvarIds := newMVarIds.toList, lctx? }

end Mathlib.Tactic.GRewrite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9a3c2ee0ec91b2b14f029d108f715f781ea35e0be7d67dbd857adb260702d724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9a3c2ee0ec91b2b14f029d108f715f781ea35e0be7d67dbd857adb260702d724.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1381b2ca2184bed11453f20c7d7cb89b37aeec71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
