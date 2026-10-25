# additivePathAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8379f22130d70c5632d4bb9e1cbc46b9914cf2d53166af829da000c9ab156f3d",
  "kind": "def",
  "lexical_name": "additivePathAction",
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
  "slug": "additivepathaction--1038ffccba246c275f37a65f",
  "source": {
    "blob": "4424751695c8b52be4b63611c911eb1b6c66d808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropertyTransportModels/Variantf3f3d55e02acfe77cbebd182dfc8175e62adf89ed8569d82518ddf3df4fa8b39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1038ffccba246c275f37a65fa5f8581f53a244fb3243d9f63f626b79f10e2214",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropertyTransportModels/Variantf3f3d55e02acfe77cbebd182dfc8175e62adf89ed8569d82518ddf3df4fa8b39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8379f22130d70c5632d4bb9e1cbc46b9914cf2d53166af829da000c9ab156f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def additivePathAction :
    PathAction Unit (fun _ ↦ Nat) where
  Path := fun _ _ ↦ Nat
  refl := fun _ ↦ 0
  comp := fun first second ↦ first + second
  map := fun path value ↦ value + path
  map_refl := by
    intro _ value
    omega
  map_comp := by
    intro _ _ _ first second value
    omega

/-- The path translating by one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropertyTransportModels/Variantf3f3d55e02acfe77cbebd182dfc8175e62adf89ed8569d82518ddf3df4fa8b39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropertyTransportModels/Variantf3f3d55e02acfe77cbebd182dfc8175e62adf89ed8569d82518ddf3df4fa8b39.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4424751695c8b52be4b63611c911eb1b6c66d808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
