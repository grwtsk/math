# BinaryProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fae7f9e7b56b2159bb12230a7f6fbd3ccc89d39848f64d97271ac92d450cc895",
  "kind": "structure",
  "lexical_name": "BinaryProduct",
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
  "slug": "binaryproduct--a011238833140acccdd2d1dd",
  "source": {
    "blob": "a885d9698cd453ff393de3bbd4cf072e513c84ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 23,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantcbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a011238833140acccdd2d1dd88b519be98247bfaf79f56ee82c28b5538ad6376",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantcbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fae7f9e7b56b2159bb12230a7f6fbd3ccc89d39848f64d97271ac92d450cc895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinaryProduct
    (C : Type u) [CategoryTheory.Category.{v} C]
    (A B : C) where
  obj : C
  fst : obj ⟶ A
  snd : obj ⟶ B
  lift : {X : C} → (X ⟶ A) → (X ⟶ B) → (X ⟶ obj)
  lift_fst : {X : C} → (f : X ⟶ A) → (g : X ⟶ B) → lift f g ≫ fst = f
  lift_snd : {X : C} → (f : X ⟶ A) → (g : X ⟶ B) → lift f g ≫ snd = g
  lift_unique :
    {X : C} → (h : X ⟶ obj) → (f : X ⟶ A) → (g : X ⟶ B) →
      h ≫ fst = f →
      h ≫ snd = g →
      h = lift f g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantcbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantcbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a885d9698cd453ff393de3bbd4cf072e513c84ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
