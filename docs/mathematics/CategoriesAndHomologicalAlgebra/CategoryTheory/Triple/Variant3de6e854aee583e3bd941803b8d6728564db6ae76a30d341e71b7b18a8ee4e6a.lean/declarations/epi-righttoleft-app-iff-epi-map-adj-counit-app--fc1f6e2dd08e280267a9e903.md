# epi_rightToLeft_app_iff_epi_map_adj₂_counit_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:554ad81e-1e48-5109-8138-553174e4a3b7",
  "kind": "lemma",
  "lexical_name": "epi_rightToLeft_app_iff_epi_map_adj₂_counit_app",
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
  "slug": "epi-righttoleft-app-iff-epi-map-adj-counit-app--fc1f6e2dd08e280267a9e903",
  "source": {
    "blob": "590068e8d75e42a0846ad2cd59d59393cf2d2fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant3de6e854aee583e3bd941803b8d6728564db6ae76a30d341e71b7b18a8ee4e6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc1f6e2dd08e280267a9e903cba45949e7a5c9c26d80e08400491356e772412a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant3de6e854aee583e3bd941803b8d6728564db6ae76a30d341e71b7b18a8ee4e6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:554ad81e-1e48-5109-8138-553174e4a3b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_rightToLeft_app_iff_epi_map_adj₂_counit_app {X : C} :
    Epi (t.rightToLeft.app X) ↔ Epi (F.map (t.adj₂.counit.app X)) := by
  rw [← epi_comp_iff_of_epi (t.adj₁.counit.app (H.obj X)), adj₁_counit_app_rightToLeft_app]

/-- For an adjoint triple `F ⊣ G ⊣ H` where `G` is fully faithful and `H` preserves epimorphisms
(which is for example the case if `H` has a further right adjoint), the components of the natural
transformation `H ⟶ F` are epic iff the respective components of the natural transformation
`H ⋙ G ⟶ F ⋙ G` obtained from the units and counits of the adjunctions are. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant3de6e854aee583e3bd941803b8d6728564db6ae76a30d341e71b7b18a8ee4e6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant3de6e854aee583e3bd941803b8d6728564db6ae76a30d341e71b7b18a8ee4e6a.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590068e8d75e42a0846ad2cd59d59393cf2d2fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
