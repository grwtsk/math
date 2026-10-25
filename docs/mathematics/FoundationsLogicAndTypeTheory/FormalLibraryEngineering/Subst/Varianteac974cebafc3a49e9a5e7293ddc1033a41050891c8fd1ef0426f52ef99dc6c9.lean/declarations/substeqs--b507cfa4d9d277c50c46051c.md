# substEqs?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f16c3921a300bda20fcf8532d05ceb53d36adcad7d7f34245f099966a03b57a",
  "kind": "def",
  "lexical_name": "substEqs?",
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
  "slug": "substeqs--b507cfa4d9d277c50c46051c",
  "source": {
    "blob": "d983aaee0a29d03c0c7c8cc2fab6d9cfe03a3b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Varianteac974cebafc3a49e9a5e7293ddc1033a41050891c8fd1ef0426f52ef99dc6c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b507cfa4d9d277c50c46051cdc67219610518a79878db7eb03b3994e854c8eaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Varianteac974cebafc3a49e9a5e7293ddc1033a41050891c8fd1ef0426f52ef99dc6c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f16c3921a300bda20fcf8532d05ceb53d36adcad7d7f34245f099966a03b57a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def substEqs? (goal : MVarId) (fvarIds : Array FVarId) :
    ScriptM (Option MVarId) := do
  let preGoal := goal
  let preState ← show MetaM _ from saveState
  let userNames ← goal.withContext do fvarIds.mapM (·.getUserName)
  let mut goal := goal
  let mut substitutedUserNames := Array.mkEmpty userNames.size
  for userName in userNames do
    let ldecl ← goal.withContext $ getLocalDeclFromUserName userName
    if let some goal' ← subst? goal ldecl.fvarId then
      goal := goal'
      substitutedUserNames := substitutedUserNames.push userName
  if goal == preGoal then
    return none
  goal ← hideForwardImplDetailHyps goal -- HACK
  let postState ← show MetaM _ from saveState
  recordScriptStep {
    postGoals := #[goal]
    tacticBuilders := #[TacticBuilder.substFVars' substitutedUserNames]
    preGoal, preState, postState
  }
  return goal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Varianteac974cebafc3a49e9a5e7293ddc1033a41050891c8fd1ef0426f52ef99dc6c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Varianteac974cebafc3a49e9a5e7293ddc1033a41050891c8fd1ef0426f52ef99dc6c9.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d983aaee0a29d03c0c7c8cc2fab6d9cfe03a3b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
