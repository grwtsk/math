# FamilyOfElements.singletonEquiv_symm_apply_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9db661a-3421-9573-e1ed-2381b248b8a7",
  "kind": "lemma",
  "lexical_name": "FamilyOfElements.singletonEquiv_symm_apply_self",
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
  "slug": "familyofelements-singletonequiv-symm-apply-self--bdad5ceab806d5a4af927ba0",
  "source": {
    "blob": "8485a07ed9e2e94ce5dc8de624236eeef4406f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdad5ceab806d5a4af927ba06f1f8e204dbb5cc536d67e06ed1b30afbbe7e4e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9db661a-3421-9573-e1ed-2381b248b8a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FamilyOfElements.singletonEquiv_symm_apply_self {X Y : C} (f : X ⟶ Y) (x : P.obj (op X)) :
    (singletonEquiv P f).symm x f ⟨⟩ = x := by
  simp [singletonEquiv_symm_apply]

/-- A family of elements for the arrow set `R` is *compatible* if for any `f₁ : Y₁ ⟶ X` and
`f₂ : Y₂ ⟶ X` in `R`, and any `g₁ : Z ⟶ Y₁` and `g₂ : Z ⟶ Y₂`, if the square `g₁ ≫ f₁ = g₂ ≫ f₂`
commutes then the elements of `P Z` obtained by restricting the element of `P Y₁` along `g₁` and
restricting the element of `P Y₂` along `g₂` are the same.

In special cases, this condition can be simplified, see `pullbackCompatible_iff` and
`compatible_iff_sieveCompatible`.

This is referred to as a "compatible family" in Definition C2.1.2 of [Elephant], and on nlab:
https://ncatlab.org/nlab/show/sheaf#GeneralDefinitionInComponents

For a more explicit version in the case where `R` is of the form `Presieve.ofArrows`, see
`CategoryTheory.Presieve.Arrows.Compatible`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8485a07ed9e2e94ce5dc8de624236eeef4406f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
