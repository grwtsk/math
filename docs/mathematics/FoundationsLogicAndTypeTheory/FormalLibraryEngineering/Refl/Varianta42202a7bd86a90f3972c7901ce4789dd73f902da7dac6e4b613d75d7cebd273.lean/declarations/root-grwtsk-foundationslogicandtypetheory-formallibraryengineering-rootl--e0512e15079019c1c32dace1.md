# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.heqOfEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a0e7ab295970dea7e57ea40dad7e26c2b2bc3ba5ca5cfeb3d50df99cd413d84",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.heqOfEq",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--e0512e15079019c1c32dace1",
  "source": {
    "blob": "b4c3d75db034abc6418e6e073b3695d2fb060b33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refl/Varianta42202a7bd86a90f3972c7901ce4789dd73f902da7dac6e4b613d75d7cebd273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0512e15079019c1c32dace179078e75d562ba5e84fcda9be3fba8f4113d178b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refl/Varianta42202a7bd86a90f3972c7901ce4789dd73f902da7dac6e4b613d75d7cebd273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a0e7ab295970dea7e57ea40dad7e26c2b2bc3ba5ca5cfeb3d50df99cd413d84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.heqOfEq (mvarId : MVarId) : MetaM MVarId :=
  mvarId.withContext do
    let some [mvarId] ← observing? do mvarId.apply (mkConst ``heq_of_eq [← mkFreshLevelMVar]) | return mvarId
    return mvarId

/--
Try to apply `eq_of_heq`. If successful, then return new goal, otherwise return `mvarId`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refl/Varianta42202a7bd86a90f3972c7901ce4789dd73f902da7dac6e4b613d75d7cebd273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refl/Varianta42202a7bd86a90f3972c7901ce4789dd73f902da7dac6e4b613d75d7cebd273.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c3d75db034abc6418e6e073b3695d2fb060b33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
