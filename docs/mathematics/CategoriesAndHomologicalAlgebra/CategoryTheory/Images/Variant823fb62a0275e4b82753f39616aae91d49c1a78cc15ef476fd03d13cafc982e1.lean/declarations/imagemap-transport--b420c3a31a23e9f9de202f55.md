# ImageMap.transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17759f762539046c961b873f5c635c983061c6c7e8c3170137db28f68fa7049f",
  "kind": "def",
  "lexical_name": "ImageMap.transport",
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
  "slug": "imagemap-transport--b420c3a31a23e9f9de202f55",
  "source": {
    "blob": "e9eb35a6ce94bd3c53eebd289e9b1cb48e42a036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 711,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b420c3a31a23e9f9de202f553ac3a00e442774d54b3b690283acbb95d0592584",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17759f762539046c961b873f5c635c983061c6c7e8c3170137db28f68fa7049f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ImageMap.transport {f g : Arrow C} [HasImage f.hom] [HasImage g.hom] (sq : f ⟶ g)
    (F : MonoFactorisation f.hom) {F' : MonoFactorisation g.hom} (hF' : IsImage F')
    {map : F.I ⟶ F'.I} (map_ι : map ≫ F'.m = F.m ≫ sq.right) : ImageMap sq where
  map := image.lift F ≫ map ≫ hF'.lift (Image.monoFactorisation g.hom)
  map_ι := by simp [map_ι]

/-- `HasImageMap sq` means that there is an `ImageMap` for the square `sq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9eb35a6ce94bd3c53eebd289e9b1cb48e42a036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
