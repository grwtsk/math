# _root_.Lean.MVarId.liftReflToEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3881169da68b177fad03530507eda2c0cd20b67ca4b9679120e3120f4e53f92",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.liftReflToEq",
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
  "slug": "root-lean-mvarid-liftrefltoeq--d49d9b56575c601c5093d439",
  "source": {
    "blob": "3204c5a627e78d6937885b914e954d3382978ca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d49d9b56575c601c5093d439742cd1326329cff2e541e55d5b74d58c68809393",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3881169da68b177fad03530507eda2c0cd20b67ca4b9679120e3120f4e53f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.liftReflToEq (mvarId : MVarId) : MetaM MVarId := do
  mvarId.checkNotAssigned `liftReflToEq
  let .app (.app rel _) _ ← withReducible mvarId.getType' | return mvarId
  if rel.isAppOf `Eq then
    -- No need to lift Eq to Eq
    return mvarId
  for lem in ← (reflExt.getState (← getEnv)).getMatch rel do
    let res ← observing? do
      -- First create an equality relating the LHS and RHS
      -- and reduce the goal to proving that LHS is related to LHS.
      let [mvarIdEq, mvarIdR] ← mvarId.apply (← mkConstWithFreshMVarLevels ``rel_of_eq_and_refl)
        | failure
      -- Then fill in the proof of the latter by reflexivity.
      let [] ← mvarIdR.apply (← mkConstWithFreshMVarLevels lem) | failure
      return mvarIdEq
    if let some mvarIdEq := res then
      return mvarIdEq
  return mvarId

end Lean.Meta.Rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3204c5a627e78d6937885b914e954d3382978ca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
