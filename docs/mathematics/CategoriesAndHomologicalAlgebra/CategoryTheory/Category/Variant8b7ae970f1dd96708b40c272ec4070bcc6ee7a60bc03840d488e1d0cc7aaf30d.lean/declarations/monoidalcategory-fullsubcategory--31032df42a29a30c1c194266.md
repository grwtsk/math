# MonoidalCategory.fullSubcategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c69c94e55975754acab45db30db953a8557d05f8a425be4e4853f8cdd14b8561",
  "kind": "abbrev",
  "lexical_name": "MonoidalCategory.fullSubcategory",
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
  "slug": "monoidalcategory-fullsubcategory--31032df42a29a30c1c194266",
  "source": {
    "blob": "e86d4cb8485c5f11439983bc0b98fc9aec0192b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1021,
    "line": 1004,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8b7ae970f1dd96708b40c272ec4070bcc6ee7a60bc03840d488e1d0cc7aaf30d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31032df42a29a30c1c194266d929f162b2f69b35d0c96c684909b4ff87f064c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8b7ae970f1dd96708b40c272ec4070bcc6ee7a60bc03840d488e1d0cc7aaf30d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c69c94e55975754acab45db30db953a8557d05f8a425be4e4853f8cdd14b8561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1004–1021.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev MonoidalCategory.fullSubcategory
    {C : Type u} [Category.{v} C] [MonoidalCategory C] (P : ObjectProperty C)
    (tensorUnit : P (𝟙_ C))
    (tensorObj : ∀ X Y, P X → P Y → P (X ⊗ Y)) :
    MonoidalCategory P.FullSubcategory where
  tensorObj X Y := ⟨X.1 ⊗ Y.1, tensorObj X.1 Y.1 X.2 Y.2⟩
  whiskerLeft X _ _ f := homMk (X.obj ◁ f.hom)
  whiskerRight f X := homMk (f.hom ▷ X.obj)
  tensorHom f g := homMk (f.hom ⊗ₘ g.hom)
  tensorUnit := ⟨𝟙_ C, tensorUnit⟩
  associator X Y Z := P.fullyFaithfulι.preimageIso (α_ X.1 Y.1 Z.1)
  leftUnitor X := P.fullyFaithfulι.preimageIso (λ_ X.1)
  rightUnitor X := P.fullyFaithfulι.preimageIso (ρ_ X.1)
  tensorHom_def _ _ := by ext; apply tensorHom_def

end ObjectProperty

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8b7ae970f1dd96708b40c272ec4070bcc6ee7a60bc03840d488e1d0cc7aaf30d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8b7ae970f1dd96708b40c272ec4070bcc6ee7a60bc03840d488e1d0cc7aaf30d.lean#L1004).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e86d4cb8485c5f11439983bc0b98fc9aec0192b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
