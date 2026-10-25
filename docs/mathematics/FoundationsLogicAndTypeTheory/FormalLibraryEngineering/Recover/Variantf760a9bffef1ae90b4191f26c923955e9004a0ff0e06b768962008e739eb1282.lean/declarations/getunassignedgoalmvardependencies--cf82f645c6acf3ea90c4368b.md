# getUnassignedGoalMVarDependencies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0516401ac639e825eff6dcd69edbf677713152edcc9164b236e7229dc98358e",
  "kind": "def",
  "lexical_name": "getUnassignedGoalMVarDependencies",
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
  "slug": "getunassignedgoalmvardependencies--cf82f645c6acf3ea90c4368b",
  "source": {
    "blob": "6f745a9a4c7336b4b55b7bc93978db632a1c72f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recover/Variantf760a9bffef1ae90b4191f26c923955e9004a0ff0e06b768962008e739eb1282.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf82f645c6acf3ea90c4368b2aa145178794f25358a941c87ceb42c588dea287",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recover/Variantf760a9bffef1ae90b4191f26c923955e9004a0ff0e06b768962008e739eb1282.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0516401ac639e825eff6dcd69edbf677713152edcc9164b236e7229dc98358e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getUnassignedGoalMVarDependencies (mvarId : MVarId) :
    MetaM (Std.HashSet MVarId) :=
  return (← go mvarId |>.run {}).snd
where
    /-- auxiliary function for `getUnassignedGoalMVarDependencies` -/
    addMVars (e : Expr) : StateRefT (Std.HashSet MVarId) MetaM Unit := do
      let mvars ← getMVars e
      let mut s ← get
      set ({} : Std.HashSet MVarId) -- Ensure that `s` is not shared.
      for mvarId in mvars do
        unless ← mvarId.isDelayedAssigned do
          s := s.insert mvarId
      set s
      mvars.forM go
    /-- auxiliary function for `getUnassignedGoalMVarDependencies` -/
    go (mvarId : MVarId) : StateRefT (Std.HashSet MVarId) MetaM Unit :=
      withIncRecDepth do
        let mdecl ← mvarId.getDecl
        addMVars mdecl.type
        for ldecl in mdecl.lctx do
          addMVars ldecl.type
          if let (some val) := ldecl.value? then
            addMVars val
        if let (some ass) ← getDelayedMVarAssignment? mvarId then
          let pendingMVarId := ass.mvarIdPending
          unless ← pendingMVarId.isAssigned <||> pendingMVarId.isDelayedAssigned do
            modify (·.insert pendingMVarId)
          go pendingMVarId

/-- Modifier `recover` for a tactic (sequence) to debug cases where goals are closed incorrectly.
The tactic `recover tacs` for a tactic (sequence) `tacs` applies the tactics and then adds goals
that are not closed, starting from the original goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recover/Variantf760a9bffef1ae90b4191f26c923955e9004a0ff0e06b768962008e739eb1282.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recover/Variantf760a9bffef1ae90b4191f26c923955e9004a0ff0e06b768962008e739eb1282.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f745a9a4c7336b4b55b7bc93978db632a1c72f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
