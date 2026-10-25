# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9e63f2613e5c68bf3e3eff6db436dfd705a299681ea8413d35588ccc3d03729",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--8440a4558528a9f313cf9baf",
  "source": {
    "blob": "29b2d4d6fe50f8df398c8c1dc56232eba762f18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8440a4558528a9f313cf9baf7ef8918a24d2522c20b365da5112bc7099417f8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9e63f2613e5c68bf3e3eff6db436dfd705a299681ea8413d35588ccc3d03729`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| setm $origPat:term $[using $usingArg]? $[$loc:location]?) =>
  /- We don't use `withNewMCtxDepth` because it also resets the whole metavariable context and this
  tactic creates new metavariables. -/
  withMainContext <| commitIfNoExPreservingInfoAndMessages do
    let origGoal ← getMainGoal
    let (pat, { goal, holes, newMVars }) ← (replaceWithLDecls origPat).run { goal := origGoal }
    goal.withContext do
      let (pat, newPatMVars) ← collectFreshMVars <| Tactic.elabTerm pat none (mayPostpone := true)
      if let some usingArg := usingArg then
        withRef (mkNullNode #[origPat, usingArg]) do
          let loc := (← getLocalDeclFromUserName usingArg.getId).fvarId
          defeqOrError origGoal pat (← loc.getType)
          replaceMainGoal [← goal.changeLocalDecl loc pat (checkDefEq := false)]
      else
        withRef origPat do
          defeqOrError origGoal pat (← goal.getType)
          replaceMainGoal [← goal.replaceTargetDefEq pat]
      if let some loc := loc then
        for fvar in holes.values do
          let some expr ← fvar.getValue? | continue
          let rewrite (loc : Option FVarId) :=
            -- TODO: this kabstract rewriting could possibly be made into a reusable API
            liftMetaTactic fun goal ↦ do
              let tgt ← loc.elim goal.getType (·.getType)
              let tgt ← withReducible (kabstract (← instantiateMVars tgt) (← instantiateMVars expr))
              if tgt.hasLooseBVars then
                let tgt := tgt.instantiate1 (.fvar fvar)
                if let some loc := loc then
                  return [← goal.changeLocalDecl loc tgt (checkDefEq := false)]
                else
                  return [← goal.replaceTargetDefEq tgt]
              else
                return [goal]
          withRef loc <| withLocation (expandLocation loc) (rewrite ∘ some) (rewrite none)
            (fun goal ↦ throwTacticEx `setm goal "Rewriting failed")
      let unassignedMVars ← (newMVars ++ newPatMVars).filterM (notM ·.isAssigned)
      logUnassignedAndAbort unassignedMVars
      if newMVars.isEmpty then
        logWarningAt origPat m!"No holes (`?n`, `?_`) were present in the `setm` pattern. \
          This means `setm` has no effect."

end Mathlib.Tactic.SetM
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29b2d4d6fe50f8df398c8c1dc56232eba762f18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
