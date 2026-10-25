# diffInteractiveGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a76bad1a0869d4f24216e432e0807fe5c4e15a8dd463c960328b0c218f6b629",
  "kind": "def",
  "lexical_name": "diffInteractiveGoals",
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
  "slug": "diffinteractivegoals--053b295d42a9d12346549a41",
  "source": {
    "blob": "7dc9585794b26242251ac692596b6a6e6f5e96fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:053b295d42a9d12346549a41eade5ea9604790c2f0cd7bc7f1f4e4bfd168d67c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a76bad1a0869d4f24216e432e0807fe5c4e15a8dd463c960328b0c218f6b629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def diffInteractiveGoals (useAfter : Bool) (info : Elab.TacticInfo) (igs₁ : InteractiveGoals) : MetaM InteractiveGoals := do
    if ! showTacticDiff.get (← getOptions) then return igs₁ else
    let goals₀ := if useAfter then info.goalsBefore else info.goalsAfter
    let parentMap : MVarIdMap MVarIdSet ← info.goalsBefore.foldlM (init := ∅) (fun s g => do
      let ms ← Expr.mvar g |> Lean.Meta.getMVars
      let ms := MVarIdSet.ofArray ms
      return s.insert g ms
    )
    let isParent (before after : MVarId) : Bool :=
       match parentMap.get? before with
       | some xs => xs.contains after
       | none => false
    let goals ← igs₁.goals.mapM (fun ig₁ => do
      let g₁ := ig₁.mvarId
      withGoalCtx (g₁ : MVarId) (fun _lctx₁ _md₁ => do
        -- if the goal is present on the previous version then continue
        if goals₀.any (fun g₀ => g₀ == g₁) then
          return {ig₁ with isInserted? := none}
        let some g₀ := goals₀.find? (fun g₀ => if useAfter then isParent g₀ g₁ else isParent g₁ g₀)
          | return if useAfter then {ig₁ with isInserted? := true } else {ig₁ with isRemoved? := true}
        let ig₁ ← diffInteractiveGoal useAfter g₀ ig₁
        return ig₁
      )
    )
    return {igs₁ with goals := goals}

end Lean.Widget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dc9585794b26242251ac692596b6a6e6f5e96fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
