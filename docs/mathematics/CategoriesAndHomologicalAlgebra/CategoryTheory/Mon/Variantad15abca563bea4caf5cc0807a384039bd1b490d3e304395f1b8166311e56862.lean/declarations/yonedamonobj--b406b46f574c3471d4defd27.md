# yonedaMonObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:655ec5261304781b24c59024c7a79f17094dca495dbca4d550821af64c9b1635",
  "kind": "def",
  "lexical_name": "yonedaMonObj",
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
  "slug": "yonedamonobj--b406b46f574c3471d4defd27",
  "source": {
    "blob": "8cc58e70bab9a39c2db198d3e0faca06feafee14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b406b46f574c3471d4defd27490541cb35f38bf45caad8bcda918eed94a0b782",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:655ec5261304781b24c59024c7a79f17094dca495dbca4d550821af64c9b1635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def yonedaMonObj : Cᵒᵖ ⥤ MonCat.{v} where
  obj X := MonCat.of (unop X ⟶ M)
  map {X Y₂} φ := MonCat.ofHom
    { toFun := (φ.unop ≫ ·)
      map_one' := by
        show φ.unop ≫ toUnit _ ≫ η = toUnit _ ≫ η
        rw [← Category.assoc, toUnit_unique (φ.unop ≫ toUnit _)]
      map_mul' f₁ f₂ := by
        show φ.unop ≫ lift f₁ f₂ ≫ μ = lift (φ.unop ≫ f₁) (φ.unop ≫ f₂) ≫ μ
        rw [← Category.assoc]
        aesop_cat }
  map_id _ := MonCat.hom_ext (MonoidHom.ext Category.id_comp)
  map_comp _ _ := MonCat.hom_ext (MonoidHom.ext (Category.assoc _ _))

variable (X) in
/-- If `X` represents a presheaf of monoids `F`, then `Hom(-, X)` is isomorphic to `F` as
a presheaf of monoids. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cc58e70bab9a39c2db198d3e0faca06feafee14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
