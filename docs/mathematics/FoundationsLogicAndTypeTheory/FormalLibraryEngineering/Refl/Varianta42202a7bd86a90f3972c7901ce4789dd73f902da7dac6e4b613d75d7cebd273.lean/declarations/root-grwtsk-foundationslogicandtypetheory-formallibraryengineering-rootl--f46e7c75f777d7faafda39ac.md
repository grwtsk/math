# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.hrefl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7de2a7f5a81157b8c8ef6f9146376891844abb9cb6fb2367df63225904820802",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.hrefl",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--f46e7c75f777d7faafda39ac",
  "source": {
    "blob": "b4c3d75db034abc6418e6e073b3695d2fb060b33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refl/Varianta42202a7bd86a90f3972c7901ce4789dd73f902da7dac6e4b613d75d7cebd273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f46e7c75f777d7faafda39acc05b8bd44a72efcb1ba320b89a276ea2c485a2c2",
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

Occurrence: `declaration:7de2a7f5a81157b8c8ef6f9146376891844abb9cb6fb2367df63225904820802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.hrefl (mvarId : MVarId) : MetaM Unit := do
  mvarId.withContext do
    let some [] ← observing? do mvarId.apply (mkConst ``HEq.refl [← mkFreshLevelMVar])
      | throwTacticEx `hrefl mvarId

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refl/Varianta42202a7bd86a90f3972c7901ce4789dd73f902da7dac6e4b613d75d7cebd273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refl/Varianta42202a7bd86a90f3972c7901ce4789dd73f902da7dac6e4b613d75d7cebd273.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c3d75db034abc6418e6e073b3695d2fb060b33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
