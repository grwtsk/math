# hasAssignableLevelMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e5c9426bbf72637f853cf2910c84d8882fa62135eae9d1df676d40c1e54774c",
  "kind": "def",
  "lexical_name": "hasAssignableLevelMVar",
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
  "slug": "hasassignablelevelmvar--1c229ea11cb6518603715ecc",
  "source": {
    "blob": "7f89ce72600d6d01cc0d5144a465ad6f111ab84d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasAssignableMVar/Variantf087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c229ea11cb6518603715ecc6bc9af2147c998de88671c3b8f49f5f9de7c5ef0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasAssignableMVar/Variantf087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e5c9426bbf72637f853cf2910c84d8882fa62135eae9d1df676d40c1e54774c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasAssignableLevelMVar : Level → MetaM Bool
  | .succ lvl       => pure lvl.hasMVar <&&> hasAssignableLevelMVar lvl
  | .max lvl₁ lvl₂  => (pure lvl₁.hasMVar <&&> hasAssignableLevelMVar lvl₁) <||> (pure lvl₂.hasMVar <&&> hasAssignableLevelMVar lvl₂)
  | .imax lvl₁ lvl₂ => (pure lvl₁.hasMVar <&&> hasAssignableLevelMVar lvl₁) <||> (pure lvl₂.hasMVar <&&> hasAssignableLevelMVar lvl₂)
  | .mvar mvarId    => isLevelMVarAssignable mvarId
  | .zero           => return false
  | .param _        => return false

/-- Return `true` iff expression contains a metavariable that can be assigned. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasAssignableMVar/Variantf087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasAssignableMVar/Variantf087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f89ce72600d6d01cc0d5144a465ad6f111ab84d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
