# IsBaseChange.of_right_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c15313cb2a2c394741b58adc6ed4cef3d94a604",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ac937a6-28dd-e2a6-d690-6a4930d7500e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a321e6ac-383a-438f-54c2-e1ae510de4da",
  "kind": "lemma",
  "lexical_name": "IsBaseChange.of_right_exact",
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
  "slug": "isbasechange-of-right-exact--6f124756c07cd04da41676b2",
  "source": {
    "blob": "8c15313cb2a2c394741b58adc6ed4cef3d94a604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeRightExact/Variantff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f124756c07cd04da41676b2b5d3657b0840ccdf8fb187ff1642bdc6f80fdd66",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsBaseChangeRightExact/Variantff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a321e6ac-383a-438f-54c2-e1ae510de4da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBaseChange.of_right_exact (comm₁ : h₂.comp f = (f'.restrictScalars R).comp h₁)
    (comm₂ : h₃.comp g = (g'.restrictScalars R).comp h₂) (isb₁ : IsBaseChange S h₁)
    (isb₂ : IsBaseChange S h₂) (exact₁ : Function.Exact f g) (surj₁ : Function.Surjective g)
    (exact₂ : Function.Exact f' g') (surj₂ : Function.Surjective g') : IsBaseChange S h₃ := by
  simp only [IsBaseChange, IsTensorProduct] at isb₁ isb₂ ⊢
  refine LinearMap.bijective_of_surjective_of_bijective_of_right_exact
    ((f.baseChange S).restrictScalars R) ((g.baseChange S).restrictScalars R)
    (f'.restrictScalars R) (g'.restrictScalars R) _ _ _ ?_ ?_ ?_ exact₂ isb₁.2 isb₂ ?_ surj₂
  · ext s m
    simpa using congr(s • ($comm₁ m)).symm
  · ext s m
    simpa using congr(s • ($comm₂ m)).symm
  · exact lTensor_exact S exact₁ surj₁
  · exact LinearMap.lTensor_surjective S surj₁
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsBaseChangeRightExact/Variantff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsBaseChangeRightExact/Variantff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c15313cb2a2c394741b58adc6ed4cef3d94a604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
