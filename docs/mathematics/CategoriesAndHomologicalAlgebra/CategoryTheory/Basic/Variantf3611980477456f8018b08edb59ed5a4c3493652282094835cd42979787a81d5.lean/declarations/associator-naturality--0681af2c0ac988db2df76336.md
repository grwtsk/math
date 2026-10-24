# associator_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4685874b6eb674fb7b13dcbb8a0da7052d1be69c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b76bb3e5-f807-5a87-557f-f64cb5deb3fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75b19060-9d63-8804-62c1-0969dd84155e",
  "kind": "lemma",
  "lexical_name": "associator_naturality",
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
  "slug": "associator-naturality--0681af2c0ac988db2df76336",
  "source": {
    "blob": "4685874b6eb674fb7b13dcbb8a0da7052d1be69c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0681af2c0ac988db2df763364154776b2fe99adfc007a4d3827454b69199abc7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75b19060-9d63-8804-62c1-0969dd84155e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma associator_naturality (f₁ : X₁ ⟶ Y₁) (f₂ : X₂ ⟶ Y₂) (f₃ : X₃ ⟶ Y₃) :
    tensorHom ℬ (tensorHom ℬ f₁ f₂) f₃ ≫ (BinaryFan.associatorOfLimitCone ℬ Y₁ Y₂ Y₃).hom =
      (BinaryFan.associatorOfLimitCone ℬ X₁ X₂ X₃).hom ≫ tensorHom ℬ f₁ (tensorHom ℬ f₂ f₃) := by
  dsimp [tensorHom]
  apply (ℬ _ _).isLimit.hom_ext
  rintro ⟨_ | _⟩
  · simp
  apply (ℬ _ _).isLimit.hom_ext
  rintro ⟨_ | _⟩ <;> simp

end ofChosenFiniteProducts

open ofChosenFiniteProducts

/-- Construct an instance of `CartesianMonoidalCategory C` given a terminal object and limit cones
over arbitrary pairs of objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4685874b6eb674fb7b13dcbb8a0da7052d1be69c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
