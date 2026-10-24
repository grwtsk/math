# HoCat.resolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2a474c405c912d2acbd04a65d9f3fbf74e054207a0e42165a905c98189d1d11",
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
  "slug": "hocat-resolution--b189d1208bd435780c160ae9",
  "source": {
    "blob": "05f592babf10fa5fafa7113555e42ecdd9071a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Varianta590b7688db2f8a84ffecd1255f46986fdfed1c5a779770a3ff7210081952124.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b189d1208bd435780c160ae9ef3b9d4c4468c6d37d71e0ad4b6437deb44ad979",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Varianta590b7688db2f8a84ffecd1255f46986fdfed1c5a779770a3ff7210081952124.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2a474c405c912d2acbd04a65d9f3fbf74e054207a0e42165a905c98189d1d11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–214.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Varianta590b7688db2f8a84ffecd1255f46986fdfed1c5a779770a3ff7210081952124.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Varianta590b7688db2f8a84ffecd1255f46986fdfed1c5a779770a3ff7210081952124.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05f592babf10fa5fafa7113555e42ecdd9071a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
