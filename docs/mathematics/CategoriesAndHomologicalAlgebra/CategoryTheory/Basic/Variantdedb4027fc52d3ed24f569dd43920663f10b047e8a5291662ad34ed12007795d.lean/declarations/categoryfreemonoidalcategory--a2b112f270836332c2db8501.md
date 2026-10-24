# categoryFreeMonoidalCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be7369c0a2bce6d50e625a97ef008c8342264aaa4ea813ea7bb9664cf988aa0d",
  "kind": "instance",
  "lexical_name": "categoryFreeMonoidalCategory",
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
  "slug": "categoryfreemonoidalcategory--a2b112f270836332c2db8501",
  "source": {
    "blob": "a5cf2907343ea0bfd65e5f99eb7a4b7ae53066bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2b112f270836332c2db8501af226e5518779c343a5cc56f571ffc7df4db759c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be7369c0a2bce6d50e625a97ef008c8342264aaa4ea813ea7bb9664cf988aa0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance categoryFreeMonoidalCategory : Category.{u} (F C) where
  Hom X Y := Quotient (FreeMonoidalCategory.setoidHom X Y)
  id X := ⟦FreeMonoidalCategory.Hom.id _⟧
  comp := @fun X Y Z f g =>
    Quotient.map₂ Hom.comp
      (by
        intro f f' hf g g' hg
        exact comp hf hg)
      f g
  id_comp := by
    rintro X Y ⟨f⟩
    exact Quotient.sound (id_comp f)
  comp_id := by
    rintro X Y ⟨f⟩
    exact Quotient.sound (comp_id f)
  assoc := by
    rintro W X Y Z ⟨f⟩ ⟨g⟩ ⟨h⟩
    exact Quotient.sound (assoc f g h)
#align category_theory.free_monoidal_category.category_free_monoidal_category CategoryTheory.FreeMonoidalCategory.categoryFreeMonoidalCategory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5cf2907343ea0bfd65e5f99eb7a4b7ae53066bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
