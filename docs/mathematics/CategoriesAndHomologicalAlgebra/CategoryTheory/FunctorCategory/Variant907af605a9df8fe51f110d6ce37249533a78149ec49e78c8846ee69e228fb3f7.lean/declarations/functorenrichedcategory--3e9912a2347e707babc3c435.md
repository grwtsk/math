# functorEnrichedCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6265a1ef117e797ee3002a420d725f165698a394299da79c721744e734d5c4e",
  "kind": "def",
  "lexical_name": "functorEnrichedCategory",
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
  "slug": "functorenrichedcategory--3e9912a2347e707babc3c435",
  "source": {
    "blob": "165ac5846ec0e13586049ccc1cf6c19f81d3e17c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 427,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e9912a2347e707babc3c4352f6e8499e959c690ee3fa5eeec9076c67750627f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6265a1ef117e797ee3002a420d725f165698a394299da79c721744e734d5c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functorEnrichedCategory
    [∀ (F₁ F₂ : J ⥤ C), HasFunctorEnrichedHom V F₁ F₂] :
    EnrichedCategory (J ⥤ V) (J ⥤ C) where
  Hom F₁ F₂ := functorEnrichedHom V F₁ F₂
  id F := functorEnrichedId V F
  comp F₁ F₂ F₃ := functorEnrichedComp V F₁ F₂ F₃
  assoc F₁ F₂ F₃ F₄ := functorEnriched_assoc V F₁ F₂ F₃ F₄

variable {F₁ F₂} in
/-- Given functors `F₁` and `F₂` in `J ⥤ C`, where `C` is a `V`-enriched ordinary category,
this is the bijection `(F₁ ⟶ F₂) ≃ (𝟙_ (J ⥤ V) ⟶ functorEnrichedHom V F₁ F₂)`. -/
@[simps! apply_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `165ac5846ec0e13586049ccc1cf6c19f81d3e17c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
