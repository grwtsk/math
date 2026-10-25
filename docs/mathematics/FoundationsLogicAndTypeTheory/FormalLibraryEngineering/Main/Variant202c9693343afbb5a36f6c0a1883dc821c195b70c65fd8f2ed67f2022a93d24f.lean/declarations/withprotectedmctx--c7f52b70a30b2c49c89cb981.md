# withProtectedMCtx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ea5be2c70f5630e18a4509e1698bbcfa0d654921c5acf99fc3dbaaac33a7fe4",
  "kind": "def",
  "lexical_name": "withProtectedMCtx",
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
  "slug": "withprotectedmctx--c7f52b70a30b2c49c89cb981",
  "source": {
    "blob": "40b37f115f24c3808213a11fef1c721a999bb885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 459,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7f52b70a30b2c49c89cb9815685c9ed661456731a6ae87a93f8ab272dcfe1fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ea5be2c70f5630e18a4509e1698bbcfa0d654921c5acf99fc3dbaaac33a7fe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withProtectedMCtx [Monad m] [MonadControlT MetaM m] [MonadLiftT MetaM m]
    [MonadExcept Exception m] [MonadRuntimeException m]
    (config : Grind.Config) (mvarId : MVarId) (k : MVarId → m α) : m α := do
  /-
  **Note**: `instantiateGoalMVars` here also instantiates mvars occurring in hypotheses.
  This is particularly important when using `grind -revert`.
  -/
  let mut mvarId ← mvarId.instantiateGoalMVars
  if config.revert then
    /-
    **Note**: We now skip implementation details at `addHypotheses`
    -/
    mvarId ← mvarId.clearImplDetails
  tryCatchRuntimeEx (main mvarId) fun ex => do
    mvarId.admit
    throw ex
where
  main (mvarId : MVarId) : m α := mvarId.withContext do
    let type ← mvarId.getType
    let (a, val) ← withNewMCtxDepth do
      let mvar' ← mkFreshExprSyntheticOpaqueMVar type
      let a ← k mvar'.mvarId!
      let val ← instantiateMVarsProfiling mvar'
      let val ← resolveDelayedMVarAssignments val
      return (a, val)
    let val ← finalize val
    (mvarId.assign val : MetaM _)
    return a

  finalize (val : Expr) : MetaM Expr := do
    trace[grind.debug.proof] "{val}"
    let type ← inferType val
    -- `grind` proofs are often big, if `abstractProof` is true, we create an auxiliary theorem.
    let val ← if !config.abstractProof then
      pure val
    else if (← isProp type) then
      mkAuxTheorem type val (zetaDelta := true)
    else
      let auxName ← mkAuxDeclName `grind
      mkAuxDefinition auxName type val (zetaDelta := true)
    return val

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b37f115f24c3808213a11fef1c721a999bb885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
