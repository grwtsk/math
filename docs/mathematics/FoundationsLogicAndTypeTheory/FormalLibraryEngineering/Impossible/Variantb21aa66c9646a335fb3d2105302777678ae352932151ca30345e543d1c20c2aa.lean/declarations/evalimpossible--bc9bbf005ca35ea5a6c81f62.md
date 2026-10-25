# evalImpossible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cf594ae5a2714660bb3674343799bc5abb43c0a8f19cb238b643a9e3bc29417",
  "kind": "def",
  "lexical_name": "evalImpossible",
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
  "slug": "evalimpossible--bc9bbf005ca35ea5a6c81f62",
  "source": {
    "blob": "6ba3dceadd1cbaab461bc50a002ef8f5c0190780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Impossible/Variantb21aa66c9646a335fb3d2105302777678ae352932151ca30345e543d1c20c2aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc9bbf005ca35ea5a6c81f622a25e4eb4cf211f523dbca5d8d353e18f2c2ec75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Impossible/Variantb21aa66c9646a335fb3d2105302777678ae352932151ca30345e543d1c20c2aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cf594ae5a2714660bb3674343799bc5abb43c0a8f19cb238b643a9e3bc29417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalImpossible : Tactic := fun stx => do
  let kw := stx[0]
  let cfg ← elabImpossibleConfig stx[1]
  let byTk := stx[2]
  let tacs := stx[3]
  let mainGoal ← getMainGoal
  let goalType ← mainGoal.withContext do instantiateMVars (← mainGoal.getType)
  if goalType.hasLevelMVar then
    throwErrorAt kw "\
      `impossible`: goal contains universe metavariables{indentExpr goalType}"
  let (negType, mvarNames) ← mkImpossibleNegType mainGoal goalType cfg
  -- Admit before running the inner tactic so failures don't get an extra
  -- spurious "unsolved goals" from the outer `by`.
  admitGoal mainGoal
  let restGoals ← getUnsolvedGoals
  let negMVarId :=
    (← mkFreshExprMVarAt {} {} negType (kind := .syntheticOpaque)).mvarId!
  let (_, innerMVarId) ← negMVarId.introN mvarNames.size mvarNames.toList
  try
    setGoals [innerMVarId]
    withTacticInfoContext byTk do
      evalTactic tacs
      done
    -- Hand the proof to the kernel via a private aux decl so kernel errors
    -- surface here rather than being absorbed by the outer `sorry`. Close
    -- over remaining (possibly level) mvars so a parametric counter-example
    -- is accepted.
    let proof ← instantiateMVars (mkMVar negMVarId)
    let r ← Closure.mkValueTypeClosure (← instantiateMVars negType) proof
      (zetaDelta := false)
    let auxName ← mkAuxDeclName (kind := `_impossible)
    withOptions (Elab.async.set · false) do
      addDecl <| .thmDecl
        { name := auxName, levelParams := r.levelParams.toList,
          type := r.type, value := r.value }
  finally
    setGoals restGoals

end Lean.Elab.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Impossible/Variantb21aa66c9646a335fb3d2105302777678ae352932151ca30345e543d1c20c2aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Impossible/Variantb21aa66c9646a335fb3d2105302777678ae352932151ca30345e543d1c20c2aa.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ba3dceadd1cbaab461bc50a002ef8f5c0190780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
