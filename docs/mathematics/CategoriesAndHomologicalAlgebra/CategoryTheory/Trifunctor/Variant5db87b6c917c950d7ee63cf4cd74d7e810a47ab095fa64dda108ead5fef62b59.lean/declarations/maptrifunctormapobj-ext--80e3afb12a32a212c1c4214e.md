# mapTrifunctorMapObj_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a46bf95c469160735713e970381cf9bae9a12514",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21881f7f-5bee-3c75-8bbe-e2d02ce2c44d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8a7feec-daba-0d72-ff0a-8c37ffdebd1e",
  "kind": "lemma",
  "lexical_name": "mapTrifunctorMapObj_ext",
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
  "slug": "maptrifunctormapobj-ext--80e3afb12a32a212c1c4214e",
  "source": {
    "blob": "a46bf95c469160735713e970381cf9bae9a12514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80e3afb12a32a212c1c4214e6594529f96d96047a6e9c83ea8485957b2462faf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8a7feec-daba-0d72-ff0a-8c37ffdebd1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapTrifunctorMapObj_ext {X₁ : GradedObject I₁ C₁} {X₂ : GradedObject I₂ C₂}
    {X₃ : GradedObject I₃ C₃} {Y : C₄} (j : J)
    [HasMap ((((mapTrifunctor F I₁ I₂ I₃).obj X₁).obj X₂).obj X₃) p]
    {φ φ' : mapTrifunctorMapObj F p X₁ X₂ X₃ j ⟶ Y}
    (h : ∀ (i₁ : I₁) (i₂ : I₂) (i₃ : I₃) (h : p ⟨i₁, i₂, i₃⟩ = j),
      ιMapTrifunctorMapObj F p X₁ X₂ X₃ i₁ i₂ i₃ j h ≫ φ =
        ιMapTrifunctorMapObj F p X₁ X₂ X₃ i₁ i₂ i₃ j h ≫ φ') : φ = φ' := by
  apply mapObj_ext
  rintro ⟨i₁, i₂, i₃⟩ hi
  apply h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a46bf95c469160735713e970381cf9bae9a12514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
