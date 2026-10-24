# mapFourδ₁Toδ₀'_mapFourδ₃Toδ₃'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7795abec893b9237b26c8b09478128c919e7fc21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/035b16152ec2e3cb1bc8c652fe024930dc4f1c41e611dfc79ab6ac29d38a9b51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:742f3c2f-0147-eb61-40e6-94dc80104544",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:440c5b9e-f960-84f5-06e0-3ad12c425409",
  "kind": "lemma",
  "lexical_name": "mapFourδ₁Toδ₀'_mapFourδ₃Toδ₃'",
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
  "slug": "mapfour-to-mapfour-to--fc3bf67cc79a0ce8c8f49ae5",
  "source": {
    "blob": "7795abec893b9237b26c8b09478128c919e7fc21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant035b16152ec2e3cb1bc8c652fe024930dc4f1c41e611dfc79ab6ac29d38a9b51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc3bf67cc79a0ce8c8f49ae5510796cc4e2c0ed792e0d60e4a3bc3aaa22a5969",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant035b16152ec2e3cb1bc8c652fe024930dc4f1c41e611dfc79ab6ac29d38a9b51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:440c5b9e-f960-84f5-06e0-3ad12c425409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapFourδ₁Toδ₀'_mapFourδ₃Toδ₃' (n₀ n₁ n₂ : ℤ)
    (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    X'.mapFourδ₁Toδ₀' i₀ i₁ i₂ i₃ i₄ hi₀₁ hi₁₂ hi₂₃ hi₃₄ n₀ n₁ n₂ hn₁ hn₂ ≫
      X'.mapFourδ₄Toδ₃' i₁ i₂ i₃ i₄ i₅ hi₁₂ hi₂₃ hi₃₄ hi₄₅ n₀ n₁ n₂ hn₁ hn₂ =
    X'.mapFourδ₄Toδ₃' i₀ i₂ i₃ i₄ i₅ _ _ _ hi₄₅ n₀ n₁ n₂ hn₁ hn₂ ≫
      X'.mapFourδ₁Toδ₀' i₀ i₁ i₂ i₃ i₅ hi₀₁ _ _ _ n₀ n₁ n₂ hn₁ hn₂ := by
  rw [← map_comp .., ← map_comp ..]
  rfl

section

variable (n₀ n₁ n₂ : ℤ) (h : IsZero ((X'.H n₂).obj (mk₁ (homOfLE hi₀₁))))

include h in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant035b16152ec2e3cb1bc8c652fe024930dc4f1c41e611dfc79ab6ac29d38a9b51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant035b16152ec2e3cb1bc8c652fe024930dc4f1c41e611dfc79ab6ac29d38a9b51.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7795abec893b9237b26c8b09478128c919e7fc21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
