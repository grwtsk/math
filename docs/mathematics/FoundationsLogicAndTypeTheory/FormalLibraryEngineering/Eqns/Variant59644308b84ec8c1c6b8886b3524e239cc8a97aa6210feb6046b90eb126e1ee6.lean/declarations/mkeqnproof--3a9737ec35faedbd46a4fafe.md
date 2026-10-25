# mkEqnProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7843cfe0ee2a6608bba9685f4e55d6d02d51b281ec33ac5389f3e01439ccb44d",
  "kind": "def",
  "lexical_name": "mkEqnProof",
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
  "slug": "mkeqnproof--3a9737ec35faedbd46a4fafe",
  "source": {
    "blob": "7a2507e3b5079fdac4a97cedbb2629942a736fbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a9737ec35faedbd46a4fafee0950ca4a402be8936b3c0e888ec90107b165173",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7843cfe0ee2a6608bba9685f4e55d6d02d51b281ec33ac5389f3e01439ccb44d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkEqnProof (declName : Name) (type : Expr) : MetaM Expr := do
  withTraceNode `Elab.definition.eqns (fun _ => return m!"proving:{indentExpr type}") do
  withNewMCtxDepth do
    let main ← mkFreshExprSyntheticOpaqueMVar type
    let (_, mvarId) ← main.mvarId!.intros

    -- Try rfl before deltaLHS to avoid `id` checkpoints in the proof, which would make
    -- the lemma ineligible for dsimp
    if (← tryURefl mvarId) then
      trace[Elab.definition.eqns] "proved directly by rfl"
      return ← instantiateMVars main

    go (← unfoldLHS declName mvarId)
    instantiateMVars main
  where
  /--
  The core loop of proving an equation. Assumes that the function call on the left-hand side has
  already been unfolded, using whatever method applies to the current function definition strategy.

  Currently used for non-recursive functions and partial fixpoints; maybe later well-founded
  recursion and structural recursion can and should use this too.
  -/
  go (mvarId : MVarId) : MetaM Unit := do
    withTraceNode `Elab.definition.eqns (fun _ => return m!"step:\n{MessageData.ofGoal mvarId}") do
    if (← tryURefl mvarId) then
      return ()
    else if (← tryContradiction mvarId) then
      return ()
    else if let some mvarId ← simpMatch? mvarId then
      go mvarId
    else if let some mvarId ← simpIf? mvarId (useNewSemantics := true) then
      go mvarId
    else if let some mvarId ← whnfReducibleLHS? mvarId then
      go mvarId
    else
      let ctx ← Simp.mkContext (config := { dsimp := false })
      match (← simpTargetStar mvarId ctx (simprocs := {})).1 with
      | TacticResultCNM.closed => return ()
      | TacticResultCNM.modified mvarId => go mvarId
      | TacticResultCNM.noChange =>
        if let some mvarIds ← casesOnStuckLHS? mvarId then
          mvarIds.forM go
        else if let some mvarIds ← splitTarget? mvarId (useNewSemantics := true) then
          mvarIds.forM go
        else
          throwError "failed to generate equational theorem for `{.ofConstName declName}`\n{MessageData.ofGoal mvarId}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a2507e3b5079fdac4a97cedbb2629942a736fbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
