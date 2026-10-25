# normSimpCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4943affd5491e765c3d3fcad5f194fe6669488e620cea2a8086d31e3e31d9168",
  "kind": "def",
  "lexical_name": "normSimpCore",
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
  "slug": "normsimpcore--804f89cfff13a210c409b053",
  "source": {
    "blob": "49aafd0e2479937b27e3e66b03fb9833b4548d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:804f89cfff13a210c409b053a0b63f0ae17a5d88dd62b6ae63f8d2aa5c82d541",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4943affd5491e765c3d3fcad5f194fe6669488e620cea2a8086d31e3e31d9168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normSimpCore (goal : MVarId) (goalMVars : Std.HashSet MVarId) :
    NormM (Option NormRuleResult) := do
  let ctx := (← read).normSimpContext
  goal.withContext do
    let preState ← show MetaM _ from saveState
    let localRules := (← read).ruleSet.localNormSimpRules
    let result ←
      if ctx.useHyps then
        let (ctx, simprocs) ←
          addLocalRules localRules ctx.toContext ctx.simprocs
            (isSimpAll := true)
        Aesop.simpAll goal ctx simprocs
      else
        let (ctx, simprocs) ←
          addLocalRules localRules ctx.toContext ctx.simprocs
            (isSimpAll := false)
        Aesop.simpGoalWithAllHypotheses goal ctx simprocs

    -- It can happen that simp 'solves' the goal but leaves some mvars
    -- unassigned. In this case, we treat the goal as unchanged.
    let result ←
      match result with
      | .solved .. =>
        let anyMVarDropped ← goalMVars.anyM (notM ·.isAssignedOrDelayedAssigned)
        if anyMVarDropped then
          aesop_trace[steps] "Normalisation simp solved the goal but dropped some metavariables. Skipping normalisation simp."
          show MetaM _ from restoreState preState
          pure .unchanged
        else
          pure result
      | .unchanged .. =>
        aesop_trace[steps] "norm simp left the goal unchanged"
        pure result
      | .simplified .. =>
        pure result

    let postState ← show MetaM _ from saveState
    match result with
    | .unchanged => return none
    | .solved usedTheorems => do
      let step ←
        mkNormSimpScriptStep goal none preState postState usedTheorems
      return some $ .proved #[step]
    | .simplified newGoal usedTheorems => do
      let step ←
        mkNormSimpScriptStep goal newGoal preState postState usedTheorems
      applyDiffToForwardState (← diffGoals goal newGoal)
      return some $ .succeeded newGoal #[step]
where
  addLocalRules (localRules : Array LocalNormSimpRule) (ctx : Simp.Context)
      (simprocs : Simp.SimprocsArray) (isSimpAll : Bool) :
      NormM (Simp.Context × Simp.SimprocsArray) :=
    localRules.foldlM (init := (ctx, simprocs)) λ (ctx, simprocs) r =>
      try
        elabRuleTermForSimpMetaM goal r.simpTheorem ctx simprocs isSimpAll
      catch _ =>
        return (ctx, simprocs)

@[inline, always_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49aafd0e2479937b27e3e66b03fb9833b4548d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
