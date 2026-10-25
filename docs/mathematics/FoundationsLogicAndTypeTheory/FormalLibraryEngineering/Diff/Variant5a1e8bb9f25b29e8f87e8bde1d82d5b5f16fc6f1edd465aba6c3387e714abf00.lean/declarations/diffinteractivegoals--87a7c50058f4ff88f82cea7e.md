# diffInteractiveGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b61cb8ec0694e77c2a3570ec5d5c87a5ff67e7579baeb821f54256502d75dcc",
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
  "slug": "diffinteractivegoals--87a7c50058f4ff88f82cea7e",
  "source": {
    "blob": "77d4c076f068b4b9892a95cd0698c4fafc59edc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 261,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87a7c50058f4ff88f82cea7eb5375de26481133ee6ad587e00949bf857f579d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b61cb8ec0694e77c2a3570ec5d5c87a5ff67e7579baeb821f54256502d75dcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–287.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d4c076f068b4b9892a95cd0698c4fafc59edc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
