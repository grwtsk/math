# monoidalOfHasFiniteCoproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eec1651d3bf3c88b7ee132361380bd02e5e3c9cc22e3185681bb12317d3b9246",
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
  "slug": "monoidalofhasfinitecoproducts--e36b7687eac4c247904bc890",
  "source": {
    "blob": "43d6e918ce39a3383491b2775ab4c7f1c8a8a182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e36b7687eac4c247904bc89071d29ba20c28f0a9d37e39ea8f91154edb7b08e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eec1651d3bf3c88b7ee132361380bd02e5e3c9cc22e3185681bb12317d3b9246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidalOfHasFiniteCoproducts [HasInitial C] [HasBinaryCoproducts C] : MonoidalCategory C :=
  .ofTensorHom
    (tensorUnit' := ⊥_ C)
    (tensorObj := fun X Y ↦ X ⨿ Y)
    (tensorHom := fun f g ↦ Limits.coprod.map f g)
    (associator := coprod.associator)
    (leftUnitor := coprod.leftUnitor)
    (rightUnitor := coprod.rightUnitor)
    (pentagon := coprod.pentagon)
    (triangle := coprod.triangle)
    (associator_naturality := @coprod.associator_naturality _ _ _)
#align category_theory.monoidal_of_has_finite_coproducts CategoryTheory.monoidalOfHasFiniteCoproducts

end

namespace monoidalOfHasFiniteCoproducts

variable [HasInitial C] [HasBinaryCoproducts C]

attribute [local instance] monoidalOfHasFiniteCoproducts

open scoped MonoidalCategory

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43d6e918ce39a3383491b2775ab4c7f1c8a8a182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
