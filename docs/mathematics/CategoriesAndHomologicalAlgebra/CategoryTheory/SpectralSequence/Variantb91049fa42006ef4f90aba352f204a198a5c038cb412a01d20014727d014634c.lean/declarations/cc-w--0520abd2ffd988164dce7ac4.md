# cc_w

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
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9272435-3ccc-953b-7ad4-dbfd21f11113",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a2e3125-a5d7-e919-9b71-0b4cff7e9d23",
  "kind": "lemma",
  "lexical_name": "cc_w",
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
  "slug": "cc-w--0520abd2ffd988164dce7ac4",
  "source": {
    "blob": "9d99fce03cf3f4bc73b211b213f2227ae04e8e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 329,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0520abd2ffd988164dce7ac44d4f89b86310bac6286e4e8c6763a5f1e99114d6",
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

Occurrence: `result:7a2e3125-a5d7-e919-9b71-0b4cff7e9d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cc_w (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    (page X data r hr).d pq pq' ≫
      (pageXIso X data _ hr _ _ _ _ _ hi₀ hi₁ hi₂ hi₃ _ _ _ hn₁').hom ≫
      X.mapFourδ₄Toδ₃' i₀ i₁ i₂ i₃ i₃' _ _ _
        (data.le₃₃' hrr' hr pq' hi₃ hi₃') n₀ n₁ n₂ = 0 := by
  by_cases h : (c r).Rel pq pq'
  · dsimp
    rw [pageD_eq X data r hr pq pq' h (homOfLE (data.le₀₁' r hr pq' hi₀ hi₁))
      (homOfLE (data.le₁₂' pq' hi₁ hi₂)) (homOfLE (data.le₂₃' r hr pq' hi₂ hi₃))
      (homOfLE (data.le₃₃' hrr' hr pq' hi₃ hi₃'))
      (homOfLE (by simpa only [hi₃', data.i₃_next r r' _ _ h] using data.le₂₃ r pq))
      hi₀ hi₁ (by rw [hi₂, data.hc₀₂ r _ _ h])
      (by rw [hi₃, data.hc₁₃ r _ _ h]) (by rw [hi₃', data.i₃_next r r' _ _ h]) rfl
      (n₀ - 1) n₀ n₁ n₂ (by have := data.hc r pq pq' h; lia) (by simp) hn₁ hn₂,
      Category.assoc, Category.assoc, Iso.inv_hom_id_assoc,
      d_map_fourδ₄Toδ₃ .., comp_zero]
    rfl
  · rw [HomologicalComplex.shape _ _ _ h, zero_comp]

/-- A (limit) cokernel cofork of the differential on the `r`th page whose point
identifies to an object `X.E` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d99fce03cf3f4bc73b211b213f2227ae04e8e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
