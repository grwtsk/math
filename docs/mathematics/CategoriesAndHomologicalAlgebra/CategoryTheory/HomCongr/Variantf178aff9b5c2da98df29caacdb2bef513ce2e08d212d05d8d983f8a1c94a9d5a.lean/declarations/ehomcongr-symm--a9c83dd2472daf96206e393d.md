# eHomCongr_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de4c9636-f8e7-8536-bf23-8dbcbc2cf9ea",
  "kind": "lemma",
  "lexical_name": "eHomCongr_symm",
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
  "slug": "ehomcongr-symm--a9c83dd2472daf96206e393d",
  "source": {
    "blob": "8ed643711e8deba2c5c513d1d5224a77c4992fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9c83dd2472daf96206e393def33674b62cf7920d5cc91d63082fd714c702295",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de4c9636-f8e7-8536-bf23-8dbcbc2cf9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eHomCongr_symm {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) :
    (eHomCongr V α β).symm = eHomCongr V α.symm β.symm := rfl

/-- `eHomCongr` respects composition of morphisms. Recall that for any
composable pair of arrows `f : X ⟶ Y` and `g : Y ⟶ Z` in `C`, the composite
`f ≫ g` in `C` defines a morphism `𝟙_ V ⟶ (X ⟶[V] Z)` in `V`. Composing with
the isomorphism `eHomCongr V α γ` yields a morphism in `V` that can be factored
through the enriched composition map as shown:
`𝟙_ V ⟶ 𝟙_ V ⊗ 𝟙_ V ⟶ (X₁ ⟶[V] Y₁) ⊗ (Y₁ ⟶[V] Z₁) ⟶ (X₁ ⟶[V] Z₁)`. -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ed643711e8deba2c5c513d1d5224a77c4992fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
