# homCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9744d6813d73095ec3395ef8de1b8a93c69d421a8027cba87629c305d860f66",
  "kind": "def",
  "lexical_name": "homCongr",
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
  "slug": "homcongr--8eeee5abebcf3737d2efbbb3",
  "source": {
    "blob": "f2619de2c30f1794e3c19b64c53696e2ccc4dd4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8eeee5abebcf3737d2efbbb385b3405acd842c7240c74a992562ec1ac0279d7e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9744d6813d73095ec3395ef8de1b8a93c69d421a8027cba87629c305d860f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homCongr {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) : (X ⟶ Y) ≃ (X₁ ⟶ Y₁) where
  toFun f := α.inv ≫ f ≫ β.hom
  invFun f := α.hom ≫ f ≫ β.inv
  left_inv f :=
    show α.hom ≫ (α.inv ≫ f ≫ β.hom) ≫ β.inv = f by
      rw [Category.assoc, Category.assoc, β.hom_inv_id, α.hom_inv_id_assoc, Category.comp_id]
  right_inv f :=
    show α.inv ≫ (α.hom ≫ f ≫ β.inv) ≫ β.hom = f by
      rw [Category.assoc, Category.assoc, β.inv_hom_id, α.inv_hom_id_assoc, Category.comp_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2619de2c30f1794e3c19b64c53696e2ccc4dd4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
