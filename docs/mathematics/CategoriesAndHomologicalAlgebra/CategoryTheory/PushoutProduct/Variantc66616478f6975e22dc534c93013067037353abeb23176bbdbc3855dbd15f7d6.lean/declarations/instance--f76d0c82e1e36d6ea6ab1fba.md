# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9070ced3c4341fe2c012ae65914680f73fd83e3b76115e829943aedfda8899fd",
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
  "slug": "instance--f76d0c82e1e36d6ea6ab1fba",
  "source": {
    "blob": "5066f71f157e4ccaaa8f96133037f64bdf7bfee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantc66616478f6975e22dc534c93013067037353abeb23176bbdbc3855dbd15f7d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f76d0c82e1e36d6ea6ab1fba47bba3dca0036d0f96de3263519a454f11699460",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantc66616478f6975e22dc534c93013067037353abeb23176bbdbc3855dbd15f7d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9070ced3c4341fe2c012ae65914680f73fd83e3b76115e829943aedfda8899fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CartesianMonoidalCategory C] [Adhesive C] {X Y : Arrow C} [Mono X.hom] [Mono Y.hom] :
    Mono (X □ Y).hom := by
  have : Mono (((curriedTensor C).obj X.right).map Y.hom) := (tensorLeft X.right).map_mono Y.hom
  have : Mono (((curriedTensor C).map X.hom).app Y.right) := (tensorRight Y.right).map_mono X.hom
  refine mono_ι_of_isPullback (ofHasPushout (curriedTensor C) X.hom Y.hom)
    (IsPullback.mk' (whisker_exchange _ _).symm ?_ ?_)
  · intro _ _ _ h₁ h₂
    apply CartesianMonoidalCategory.hom_ext
    · simpa using h₂ =≫ fst _ _
    · simpa using h₁ =≫ snd _ _
  · intro _ a b h
    refine ⟨lift (b ≫ fst _ _) (a ≫ snd _ _), ?_, ?_⟩
    · apply CartesianMonoidalCategory.hom_ext
      · simpa using (h =≫ fst _ _).symm
      · simp
    · apply CartesianMonoidalCategory.hom_ext
      · simp
      · simpa using h =≫ snd _ _

end MonoidalCategory.Arrow.PushoutProduct

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantc66616478f6975e22dc534c93013067037353abeb23176bbdbc3855dbd15f7d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantc66616478f6975e22dc534c93013067037353abeb23176bbdbc3855dbd15f7d6.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5066f71f157e4ccaaa8f96133037f64bdf7bfee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
