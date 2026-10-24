# category

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90655439902479aefb346ed6a8a8177dfa4efc26b86f65c9718ad62ac92d9f98",
  "kind": "instance",
  "lexical_name": "category",
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
  "slug": "category--1c8b1ca60f98c43c8608c67a",
  "source": {
    "blob": "dc9ba82883b9927aef8ccb1209825a53b4a1a76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c8b1ca60f98c43c8608c67ab1a9c25cc8eb448098936aaf8e45b41be394f84c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90655439902479aefb346ed6a8a8177dfa4efc26b86f65c9718ad62ac92d9f98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance category : Category (Bundled c) := by
  refine' { Hom := fun X Y => @hom X Y X.str Y.str
            id := fun X => @BundledHom.id c hom 𝒞 X X.str
            comp := @fun X Y Z f g => @BundledHom.comp c hom 𝒞 X Y Z X.str Y.str Z.str g f
            comp_id := _
            id_comp := _
            assoc := _ } <;> intros <;> apply 𝒞.hom_ext <;>
    aesop_cat
#align category_theory.bundled_hom.category CategoryTheory.BundledHom.category

/-- A category given by `BundledHom` is a concrete category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc9ba82883b9927aef8ccb1209825a53b4a1a76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
