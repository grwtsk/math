# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1990a3a540a80de6d6f4e75bda22f9ce888ba18abf1200b4b2adbb948ec3e811",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a3856e97985fe006a7fddf28",
  "source": {
    "blob": "0333bc3c055d2e400c1b275f5c4aec9a2609c7ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 104,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3856e97985fe006a7fddf2890f4f8c4e548df2d224ae9a01d7240865c014604",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1990a3a540a80de6d6f4e75bda22f9ce888ba18abf1200b4b2adbb948ec3e811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [HasExt.{w} C] (X Y : C) (a b : ℤ) [HasDerivedCategory.{w'} C] :
    Small.{w} ((singleFunctor C a).obj X ⟶ (singleFunctor C b).obj Y) := by
  have (a b : ℤ) :
      Small.{w} (((singleFunctor C 0).obj X)⟦a⟧ ⟶ ((singleFunctor C 0).obj Y)⟦b⟧) :=
    (hasSmallLocalizedShiftedHom_iff.{w}
      (W := (HomologicalComplex.quasiIso C (ComplexShape.up ℤ))) (M := ℤ)
      (X := (CochainComplex.singleFunctor C 0).obj X)
      (Y := (CochainComplex.singleFunctor C 0).obj Y) Q).1 inferInstance a b
  exact small_of_injective
    (β := ((singleFunctor C 0).obj X)⟦-a⟧ ⟶ ((singleFunctor C 0).obj Y)⟦-b⟧)
    (f := fun φ ↦
      ((singleFunctors C).shiftIso (-a) a 0 (by simp)).hom.app X ≫ φ ≫
        ((singleFunctors C).shiftIso (-b) b 0 (by simp)).inv.app Y)
    (fun φ₁ φ₂ h ↦ by simpa using h)

variable {C}

variable [HasExt.{w} C]

namespace Abelian

/-- An Ext-group in an abelian category `C`, defined as a `Type w` when `[HasExt.{w} C]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52f9d3b5e546fe4cecdbfd716fbe6fe54ca0c44c82f11ac139ec1fc0f40e4d7c.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0333bc3c055d2e400c1b275f5c4aec9a2609c7ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
