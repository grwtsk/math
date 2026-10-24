# HoCat.resolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0cd443116d4c3fd1c4b65aa62e5d35024ebed3dad44c5c9cfe77c24dbc6bfb5",
  "kind": "def",
  "lexical_name": "HoCat.resolution",
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
  "slug": "hocat-resolution--19f4f68801fe7fca8bf69d9c",
  "source": {
    "blob": "5bd190755f8047ef5bd51664ecbc0c76343170c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19f4f68801fe7fca8bf69d9c07596b846bc642c1bd4baed5b993dbf592f53f81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0cd443116d4c3fd1c4b65aa62e5d35024ebed3dad44c5c9cfe77c24dbc6bfb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def HoCat.resolution : C ⥤ CofibrantObject.HoCat C where
  obj X := toHoCat.obj (mk (resolutionObj X))
  map f := toHoCat.map (homMk (resolutionMap f))
  map_id X := by
    rw [← toHoCat.map_id]
    exact resolutionObj_hom_ext (by simpa using .refl _)
  map_comp {X₁ X₂ X₃} f g := by
    rw [← toHoCat.map_comp]
    exact resolutionObj_hom_ext (by simpa using .refl _)

variable (C) in
/-- The cofibrant resolution functor `HoCat.resolution`, as a localizer morphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd190755f8047ef5bd51664ecbc0c76343170c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
