# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdApplyRfl.Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.Lean.MVarId.liftReflToEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c97d204123e440533a5d14d9c1a4b58c41163b32b9b05376b64a1fce9c7f9e3",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdApplyRfl.Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.Lean.MVarId.liftReflToEq",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--aaba6f9947cf9b001289afe4",
  "source": {
    "blob": "28c185a740da33776ba82fa46b4ec600106123e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant044033a038f7e09f9f4dc21ff6dd9311ee9999e7b07b9ff4229b7ce525a85917.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaba6f9947cf9b001289afe4bc47345961856ba6abaed0e5db83a025beb89b5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant044033a038f7e09f9f4dc21ff6dd9311ee9999e7b07b9ff4229b7ce525a85917.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c97d204123e440533a5d14d9c1a4b58c41163b32b9b05376b64a1fce9c7f9e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdApplyRfl.Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.Lean.MVarId.liftReflToEq (mvarId : MVarId) : MetaM MVarId := do
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant044033a038f7e09f9f4dc21ff6dd9311ee9999e7b07b9ff4229b7ce525a85917.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant044033a038f7e09f9f4dc21ff6dd9311ee9999e7b07b9ff4229b7ce525a85917.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c185a740da33776ba82fa46b4ec600106123e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
