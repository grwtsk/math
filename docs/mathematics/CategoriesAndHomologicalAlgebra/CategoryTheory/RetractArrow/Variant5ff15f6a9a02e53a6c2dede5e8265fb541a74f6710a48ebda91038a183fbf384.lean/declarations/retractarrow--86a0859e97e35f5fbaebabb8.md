# RetractArrow₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01114d39d2fe14e03b0b1dd233df7dbca03951824dd4799490541d79b60f3d2e",
  "kind": "structure",
  "lexical_name": "RetractArrow₁",
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
  "slug": "retractarrow--86a0859e97e35f5fbaebabb8",
  "source": {
    "blob": "96d0beb2279d327b104bcd172c4e595e19d4fbe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86a0859e97e35f5fbaebabb85b7c5613a9dddb72407a7a649be675ec1c29c852",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01114d39d2fe14e03b0b1dd233df7dbca03951824dd4799490541d79b60f3d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RetractArrow₁ (f' : X' ⟶ Y') (f : X ⟶ Y) where
  /-- the inclusion of the source object -/
  i₁ : X' ⟶ X
  /-- the retraction to the source object -/
  r₁ : X ⟶ X'
  /-- the inclusion of the target object -/
  i₂ : Y' ⟶ Y
  /-- the retraction to the target object -/
  r₂ : Y ⟶ Y'
  /-- the source of `f'` is a retract of the source of `f` -/
  id₁ : i₁ ≫ r₁ ≅ 𝟙 X'
  /-- the target of `f'` is a retract of the target of `f` -/
  id₂ : i₂ ≫ r₂ ≅ 𝟙 Y'
  /-- compatibility of the inclusions -/
  commi : f' ≫ i₂ ≅ i₁ ≫ f
  /-- compatibility of the retractions -/
  commr : f ≫ r₂ ≅ r₁ ≫ f'
  comm : commi.hom ▷ r₂ ≫ (α_ _ _ _).hom ≫ i₁ ◁ commr.hom =
    (α_ _ _ _).hom ≫ f' ◁ id₂.hom ≫ (ρ_ _).hom ≫ (λ_ _).inv ≫
      id₁.inv ▷ f' ≫ (α_ _ _ _).hom := by cat_disch

namespace RetractArrow₁

attribute [reassoc] comm

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d0beb2279d327b104bcd172c4e595e19d4fbe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
