# injectionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f833e6514d1baf128a82b01281195ee6d327cdfee935c63970863ea6320c867",
  "kind": "def",
  "lexical_name": "injectionCore",
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
  "slug": "injectioncore--9e57e9c78149e528c1b34124",
  "source": {
    "blob": "a8c7fdae66248fdbb4a1a210d58ba81161dca3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Varianteaa79f41ec3f2174947f7b71fbf0df19ee6aa58cc3458bfb38d572743930a279.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e57e9c78149e528c1b3412447c9fc89180edd6919dbd4685b8313fd4aa0b35e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Varianteaa79f41ec3f2174947f7b71fbf0df19ee6aa58cc3458bfb38d572743930a279.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f833e6514d1baf128a82b01281195ee6d327cdfee935c63970863ea6320c867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def injectionCore (mvarId : MVarId) (fvarId : FVarId) : MetaM InjectionResultCore :=
  mvarId.withContext do
    mvarId.checkNotAssigned `injection
    let decl ← fvarId.getDecl
    let type ← whnf decl.type
    let go (type prf : Expr) : MetaM InjectionResultCore := do
      match type.eq? with
      | none           => throwTacticEx `injection mvarId "equality expected"
      | some (_, a, b) =>
        let target ← mvarId.getType
        match (← isConstructorApp'? a), (← isConstructorApp'? b) with
        | some aCtor, some bCtor =>
          -- We use the default transparency because `a` and `b` may be builtin literals.
          trace[Meta.Tactic.injection] "applying noConfusion to {← inferType prf} at\n{mvarId}"
          let val ← withTransparency .default <| mkNoConfusion target prf
          trace[Meta.Tactic.injection] "got no-confusion principle{indentExpr val}\nof type{indentExpr (← inferType val)}"
          if aCtor.name != bCtor.name then
            mvarId.assign val
            return InjectionResultCore.solved
          else
            let valType ← inferType val
            -- We use the default transparency setting here because `a` and `b` may be builtin literals
            -- that need to expanded into constructors.
            let valType ← whnfD valType
            match valType with
            | Expr.forallE _ newTarget _ _ =>
              let newTarget := newTarget.headBeta
              let tag ← mvarId.getTag
              let newMVar ← mkFreshExprSyntheticOpaqueMVar newTarget tag
              mvarId.assign (mkApp val newMVar)
              let mvarId ← newMVar.mvarId!.tryClear fvarId
              /- Recall that `noConfusion` does not include equalities for
                 propositions since they are trivial due to proof irrelevance. -/
              let numPropFields ← getCtorNumPropFields aCtor
              let numNonPropFields := aCtor.numFields - numPropFields
              trace[Meta.Tactic.injection] "subgoal with {numNonPropFields} fields:\n{mvarId}"
              return InjectionResultCore.subgoal mvarId numNonPropFields
            | _ =>
              trace[Meta.Tactic.injection] "ill-formed noConfusion auxiliary construction with type:{indentExpr valType}"
              throwTacticEx `injection mvarId "ill-formed noConfusion auxiliary construction"
        | _, _ => throwTacticEx `injection mvarId "equality of constructor applications expected"
    let prf := mkFVar fvarId
    if let some (α, a, β, b) := type.heq? then
      if (← isDefEq α β) then
        go (← mkEq a b) (← mkEqOfHEq prf)
      else
        go type prf
    else
      go type prf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Varianteaa79f41ec3f2174947f7b71fbf0df19ee6aa58cc3458bfb38d572743930a279.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Varianteaa79f41ec3f2174947f7b71fbf0df19ee6aa58cc3458bfb38d572743930a279.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8c7fdae66248fdbb4a1a210d58ba81161dca3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
