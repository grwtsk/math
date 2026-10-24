# prodCategoryInstance2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db9c78abea8cd846c2b7817688ff7eff91f1be7f0c0b7fe1d5cc6f980a5b07bd",
  "kind": "instance",
  "lexical_name": "prodCategoryInstance2",
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
  "slug": "prodcategoryinstance2--270b7516f1f9c0c409b171a6",
  "source": {
    "blob": "7f514153e7de20fee02d247c0509fe713e853d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 435,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:270b7516f1f9c0c409b171a64cc6ce8119acf680da3f691e24429337c4f350d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db9c78abea8cd846c2b7817688ff7eff91f1be7f0c0b7fe1d5cc6f980a5b07bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance prodCategoryInstance2 : Category (Cᵒᵖ × (Cᵒᵖ ⥤ Type v₁)) :=
  CategoryTheory.prod.{v₁, max u₁ v₁} Cᵒᵖ (Cᵒᵖ ⥤ Type v₁)

open Yoneda

section YonedaLemma

variable {C}

/-- We have a type-level equivalence between natural transformations from the yoneda embedding
and elements of `F.obj X`, without any universe switching.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f514153e7de20fee02d247c0509fe713e853d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
