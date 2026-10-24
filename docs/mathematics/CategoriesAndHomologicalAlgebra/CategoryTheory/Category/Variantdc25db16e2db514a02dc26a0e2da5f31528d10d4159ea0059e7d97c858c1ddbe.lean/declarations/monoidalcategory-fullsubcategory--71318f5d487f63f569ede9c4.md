# MonoidalCategory.fullSubcategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1df13cec1651645ac53d2687c84f5e60f9bd7cc7e298f299a78d4fa263db820",
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
  "slug": "monoidalcategory-fullsubcategory--71318f5d487f63f569ede9c4",
  "source": {
    "blob": "b160d5bd73637a9be6086f84521a1acee436c141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1043,
    "line": 1017,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71318f5d487f63f569ede9c4b03b925df322cff6ba9c1a163d4c41a68670fefd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1df13cec1651645ac53d2687c84f5e60f9bd7cc7e298f299a78d4fa263db820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1017–1043.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev MonoidalCategory.fullSubcategory
    {C : Type u} [Category.{v} C] [MonoidalCategory C] (P : ObjectProperty C)
    (tensorUnit : P (𝟙_ C))
    (tensorObj : ∀ X Y, P X → P Y → P (X ⊗ Y)) :
    MonoidalCategory P.FullSubcategory where
  tensorObj X Y := ⟨X.1 ⊗ Y.1, tensorObj X.1 Y.1 X.2 Y.2⟩
  whiskerLeft X _ _ f := X.1 ◁ f
  whiskerRight f X := MonoidalCategoryStruct.whiskerRight (C := C) f X.1
  tensorHom f g := MonoidalCategoryStruct.tensorHom (C := C) f g
  tensorUnit := ⟨𝟙_ C, tensorUnit⟩
  associator X Y Z := P.fullyFaithfulι.preimageIso (α_ X.1 Y.1 Z.1)
  leftUnitor X := P.fullyFaithfulι.preimageIso (λ_ X.1)
  rightUnitor X := P.fullyFaithfulι.preimageIso (ρ_ X.1)
  tensorHom_def := tensorHom_def (C := C)
  tensor_id X Y := tensor_id X.1 Y.1
  tensor_comp := tensor_comp (C := C)
  whiskerLeft_id X Y := MonoidalCategory.whiskerLeft_id X.1 Y.1
  id_whiskerRight X Y := MonoidalCategory.id_whiskerRight X.1 Y.1
  associator_naturality := associator_naturality (C := C)
  leftUnitor_naturality := leftUnitor_naturality (C := C)
  rightUnitor_naturality := rightUnitor_naturality (C := C)
  pentagon W X Y Z := pentagon W.1 X.1 Y.1 Z.1
  triangle X Y := triangle X.1 Y.1

end ObjectProperty

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean#L1017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b160d5bd73637a9be6086f84521a1acee436c141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
