# monoidalOfHasFiniteCoproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40d9f3fef83900cfca81893efaaed29c3e8673875d665450e76328b4f63f79d9",
  "kind": "def",
  "lexical_name": "monoidalOfHasFiniteCoproducts",
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
  "slug": "monoidalofhasfinitecoproducts--5319973ac3643053c727bf71",
  "source": {
    "blob": "fe812ac402ce4dbb48b56aef46f40657f4256e9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant78e12bb572cb926137736a4a3ce58653b042de35792c37e694732d48bced2758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5319973ac3643053c727bf71cac6522c7c4d1612f53dfb571204467864987c82",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant78e12bb572cb926137736a4a3ce58653b042de35792c37e694732d48bced2758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40d9f3fef83900cfca81893efaaed29c3e8673875d665450e76328b4f63f79d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidalOfHasFiniteCoproducts [HasInitial C] [HasBinaryCoproducts C] : MonoidalCategory C :=
  letI : MonoidalCategoryStruct C := {
    tensorObj := fun X Y ↦ X ⨿ Y
    whiskerLeft := fun _ _ _ g ↦ Limits.coprod.map (𝟙 _) g
    whiskerRight := fun {_ _} f _ ↦ Limits.coprod.map f (𝟙 _)
    tensorHom := fun f g ↦ Limits.coprod.map f g
    tensorUnit := ⊥_ C
    associator := coprod.associator
    leftUnitor := coprod.leftUnitor
    rightUnitor := coprod.rightUnitor
  }
  .ofTensorHom
    (pentagon := coprod.pentagon)
    (triangle := coprod.triangle)
    (associator_naturality := @coprod.associator_naturality _ _ _)
    (id_tensorHom_id := fun _ _ => coprod.map_id_id)
    (tensorHom_comp_tensorHom := coprod.map_map)
    (leftUnitor_naturality := coprod.leftUnitor_naturality)
    (rightUnitor_naturality := coprod.rightUnitor_naturality)

end

namespace monoidalOfHasFiniteCoproducts

variable [HasInitial C] [HasBinaryCoproducts C]

attribute [local instance] monoidalOfHasFiniteCoproducts

open scoped MonoidalCategory

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant78e12bb572cb926137736a4a3ce58653b042de35792c37e694732d48bced2758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant78e12bb572cb926137736a4a3ce58653b042de35792c37e694732d48bced2758.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe812ac402ce4dbb48b56aef46f40657f4256e9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
