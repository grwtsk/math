# fromCostructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:663139440db10de54d30d21856ac0efce149a7ab03a1b476eb100c3bf84e21d0",
  "kind": "def",
  "lexical_name": "fromCostructuredArrow",
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
  "slug": "fromcostructuredarrow--c166cc384447d036466cc535",
  "source": {
    "blob": "ecaa6180251ebf3c0e2fcabdd9d8d3fe4924c5e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c166cc384447d036466cc535208718deabe0f2f47ae89961ff1bfc3f224a38ff",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:663139440db10de54d30d21856ac0efce149a7ab03a1b476eb100c3bf84e21d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromCostructuredArrow (F : Cᵒᵖ ⥤ Type v) : (CostructuredArrow yoneda F)ᵒᵖ ⥤ F.Elements where
  obj X := ⟨op (unop X).1, yonedaEquiv.1 (unop X).3⟩
  map {X Y} f :=
    ⟨f.unop.1.op, by
      convert (congr_fun ((unop X).hom.naturality f.unop.left.op) (𝟙 _)).symm
      simp only [Equiv.toFun_as_coe, Quiver.Hom.unop_op, yonedaEquiv_apply, types_comp_apply,
        Category.comp_id, yoneda_obj_map]
      have : yoneda.map f.unop.left ≫ (unop X).hom = (unop Y).hom := by
        convert f.unop.3
      erw [← this]
      simp only [yoneda_map_app, FunctorToTypes.comp]
      erw [Category.id_comp]⟩
#align category_theory.category_of_elements.from_costructured_arrow CategoryTheory.CategoryOfElements.fromCostructuredArrow

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant700bb80fe560c5797d71143ad0b2f9bb7d028647b1502b4c4a9715daccff09ed.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecaa6180251ebf3c0e2fcabdd9d8d3fe4924c5e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
