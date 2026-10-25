# checkUnusedActivations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55843c4d4b7d496b2640fb00d4bdd75b0ad7bbd2996c7b79a105c0471dd9557f",
  "kind": "def",
  "lexical_name": "checkUnusedActivations",
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
  "slug": "checkunusedactivations--442bbf2edc986e456bd83d8c",
  "source": {
    "blob": "40b37f115f24c3808213a11fef1c721a999bb885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 297,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:442bbf2edc986e456bd83d8c3345416569fbdea872d30e982f6e36486a2a0c3d",
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

Occurrence: `declaration:55843c4d4b7d496b2640fb00d4bdd75b0ad7bbd2996c7b79a105c0471dd9557f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkUnusedActivations (mvarId : MVarId) (counters : Counters) : GrindM Unit := do
  let threshold := grind.unusedLemmaThreshold.get (← getOptions)
  if threshold == 0 then return ()
  let proof ← instantiateMVars (mkMVar mvarId)
  let map := (← get).instanceMap
  let usedOrigins := collectUsedOrigins proof map
  let mut unused : Array (Name × Nat) := #[]
  for (origin, count) in counters.thm do
    if count < threshold then continue
    match origin with
    | .decl declName =>
      unless usedOrigins.contains origin do
        unused := unused.push (declName, count)
    | _ => pure ()
  unless unused.isEmpty do
    let sorted := unused.qsort fun (_, c₁) (_, c₂) => c₁ > c₂
    let data ← sorted.mapM fun (declName, counter) =>
      return .trace { cls := `thm } m!"{declName} ↦ {counter}" #[]
    logWarning <| .trace { cls := `grind } "grind: activated but unused E-matching lemmas" data

/--
When `Config.revert := false`, we preprocess the hypotheses, and add them to the `grind` state.
It starts at `goal.nextDeclIdx`. If `num?` is `some num`, then at most `num` local declarations are processed.
Otherwise, all remaining local declarations are processed.

Remark: this function assumes the local context does not contains holes with `none` in `decls`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b37f115f24c3808213a11fef1c721a999bb885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
