# matchGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e27231bee801c8d48f52c4c73f184b7ff5f1fb000e1a005003d5631ffd661f25",
  "kind": "def",
  "lexical_name": "matchGoals",
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
  "slug": "matchgoals--6d62000a62e3828f30fd8d2f",
  "source": {
    "blob": "a207724a4c4cdf9f3b451793aa877b56b14e5711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant37530813aed247285d7a4f58e0406962d329a0ea10f75d2125d8294b6bba97ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d62000a62e3828f30fd8d2f72c302b7224cb190c6f864ec8436aa146160bcb9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant37530813aed247285d7a4f58e0406962d329a0ea10f75d2125d8294b6bba97ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e27231bee801c8d48f52c4c73f184b7ff5f1fb000e1a005003d5631ffd661f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchGoals (postState₁ postState₂ : Meta.SavedState)
    (goals₁ goals₂ : Array MVarId) : MetaM (Option (Std.HashMap MVarId MVarId)) := do
  let goals₁ ← getProperGoals postState₁ goals₁
  let goals₂ ← getProperGoals postState₂ goals₂
  let (equal, s) ←
    tacticStatesEqualUpToIds' none postState₁.meta.mctx
      postState₂.meta.mctx goals₁ goals₂ (allowAssignmentDiff := true)
  if ! equal then
    return none
  else
    return s.equalMVarIds
where
  getProperGoals (state : Meta.SavedState) (goals : Array MVarId) :
      MetaM (Array MVarId) :=
    state.runMetaM' do
      let (properGoals, _) ← partitionGoalsAndMVars id goals
      return properGoals.map (·.fst)

end Aesop.Script
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant37530813aed247285d7a4f58e0406962d329a0ea10f75d2125d8294b6bba97ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant37530813aed247285d7a4f58e0406962d329a0ea10f75d2125d8294b6bba97ee.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a207724a4c4cdf9f3b451793aa877b56b14e5711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
