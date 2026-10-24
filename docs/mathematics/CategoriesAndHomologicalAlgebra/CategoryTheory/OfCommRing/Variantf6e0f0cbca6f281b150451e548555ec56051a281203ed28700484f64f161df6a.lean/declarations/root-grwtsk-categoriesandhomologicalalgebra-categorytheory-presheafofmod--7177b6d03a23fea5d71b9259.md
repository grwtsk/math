# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafOfModulesOfCommRing.Variant3dcf65c44d43e8316da5eca4c4c04a1629185ab9c9989517035021c6115b74f5.PresheafOfModules.Hom.app'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a324bc8aa02e786c13e66a33fe7719bb4b85778f96204fb7c6912029910dabf",
  "kind": "abbrev",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafOfModulesOfCommRing.Variant3dcf65c44d43e8316da5eca4c4c04a1629185ab9c9989517035021c6115b74f5.PresheafOfModules.Hom.app'",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-presheafofmod--7177b6d03a23fea5d71b9259",
  "source": {
    "blob": "73d181cabc70157501a7fe93fc7bcaec4340a0ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfCommRing/Variantf6e0f0cbca6f281b150451e548555ec56051a281203ed28700484f64f161df6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7177b6d03a23fea5d71b9259e453a3310f09c1e8c32f7795edaefa2f1cc1313f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfCommRing/Variantf6e0f0cbca6f281b150451e548555ec56051a281203ed28700484f64f161df6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a324bc8aa02e786c13e66a33fe7719bb4b85778f96204fb7c6912029910dabf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafOfModulesOfCommRing.Variant3dcf65c44d43e8316da5eca4c4c04a1629185ab9c9989517035021c6115b74f5.PresheafOfModules.Hom.app' {M₁ M₂ : PresheafOfModulesOfCommRing.{v} R}
    (f : M₁ ⟶ M₂) (X : Cᵒᵖ) : M₁.obj X ⟶ M₂.obj X := f.app X

/-- The free presheaf of modules of rank one over a presheaf of commutative rings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfCommRing/Variantf6e0f0cbca6f281b150451e548555ec56051a281203ed28700484f64f161df6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfCommRing/Variantf6e0f0cbca6f281b150451e548555ec56051a281203ed28700484f64f161df6a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d181cabc70157501a7fe93fc7bcaec4340a0ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
