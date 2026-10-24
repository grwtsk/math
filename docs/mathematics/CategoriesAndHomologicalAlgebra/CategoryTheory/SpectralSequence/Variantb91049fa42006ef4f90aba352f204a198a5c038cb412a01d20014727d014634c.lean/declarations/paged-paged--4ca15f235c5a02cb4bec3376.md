# pageD_pageD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d99fce03cf3f4bc73b211b213f2227ae04e8e94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73aca71c-c17e-ac8a-8d55-4d92252debf4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb53be27-a7c1-14c5-fe87-27904458a4b8",
  "kind": "lemma",
  "lexical_name": "pageD_pageD",
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
  "slug": "paged-paged--4ca15f235c5a02cb4bec3376",
  "source": {
    "blob": "9d99fce03cf3f4bc73b211b213f2227ae04e8e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ca15f235c5a02cb4bec33761dc15b59c8ded8ef321c9e1624c7e089bc8bb79a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb53be27-a7c1-14c5-fe87-27904458a4b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pageD_pageD (r : ℤ) (hr : r₀ ≤ r) (pq pq' pq'' : κ) :
    pageD X data r pq pq' hr ≫ pageD X data r pq' pq'' hr = 0 := by
  by_cases hpq : (c r).Rel pq pq'
  · by_cases hpq' : (c r).Rel pq' pq''
    · rw [pageD_eq X data r hr pq pq' hpq (homOfLE (data.le₂₃ r pq''))
          (homOfLE (data.le₁₂' pq' (data.hc₁₃ r pq' pq'' hpq').symm
          (data.hc₀₂ r pq pq' hpq))) (homOfLE (data.le₀₁ r pq)) (homOfLE (data.le₁₂ pq))
          (homOfLE (data.le₂₃ r pq))
          (data.hc₀₂ r pq' pq'' hpq').symm (data.hc₁₃ r pq' pq'' hpq').symm rfl rfl rfl rfl
          (data.deg pq - 1) (data.deg pq) (data.deg pq + 1) (data.deg pq + 2) rfl,
        pageD_eq X data r hr pq' pq'' hpq' (homOfLE (data.le₀₁ r pq''))
          (homOfLE (data.le₁₂ pq'')) (homOfLE (data.le₂₃ r pq''))
          (homOfLE (data.le₁₂' pq' (data.hc₁₃ r pq' pq'' hpq').symm (data.hc₀₂ r pq pq' hpq)))
          (homOfLE (data.le₀₁ r pq)) rfl rfl
          (data.hc₀₂ r pq' pq'' hpq').symm (data.hc₁₃ r pq' pq'' hpq').symm
          (data.hc₀₂ r pq pq' hpq) (data.hc₁₃ r pq pq' hpq)
          _ _ (data.deg pq + 2) _ (data.hc r pq pq' hpq) rfl (by lia) rfl,
        Category.assoc, Category.assoc, Iso.inv_hom_id_assoc,
        d_d_assoc .., zero_comp, comp_zero]
    · dsimp only [pageD]
      rw [dite_eq_right hpq', comp_zero]
  · dsimp only [pageD]
    rw [dite_eq_right hpq, zero_comp]

/-- The `r`th page of the spectral sequence. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d99fce03cf3f4bc73b211b213f2227ae04e8e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
