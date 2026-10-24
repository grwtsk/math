# kfSc_exact

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
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b22970f-c2f1-5d6d-48ca-efacc6a1aa0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4011aee-c958-6910-6107-f03ee6bc8a29",
  "kind": "lemma",
  "lexical_name": "kfSc_exact",
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
  "slug": "kfsc-exact--d083b083d8ed3b59e24c4209",
  "source": {
    "blob": "9d99fce03cf3f4bc73b211b213f2227ae04e8e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 290,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d083b083d8ed3b59e24c4209b89e45ebc9ad403bb16197218c4678e844942564",
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

Occurrence: `result:d4011aee-c958-6910-6107-f03ee6bc8a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma kfSc_exact (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    (kfSc X data r r' hrr' hr pq' pq'' i₀' i₀ i₁ i₂ i₃ hi₀' hi₀ hi₁ hi₂ hi₃
      n₀ n₁ n₂ hn₁' hn₁ hn₂).Exact := by
  by_cases h : (c r).Rel pq' pq''
  · refine ShortComplex.exact_of_iso (Iso.symm ?_)
      (X.dKernelSequence_exact
        (homOfLE (show data.i₀ r pq'' ≤ i₀' by
          simpa only [hi₀', data.i₀_prev r r' _ _ h] using data.le₀₁ r pq''))
        (homOfLE (data.i₀_le' hrr' hr pq' hi₀' hi₀)) (homOfLE (data.le₀₁' r hr pq' hi₀ hi₁))
        (homOfLE (data.le₁₂' pq' hi₁ hi₂)) (homOfLE (data.le₂₃' r hr pq' hi₂ hi₃)) _ rfl
        n₀ n₁ n₂ (n₂ + 1) hn₁ hn₂ rfl)
    refine ShortComplex.isoMk (Iso.refl _)
      (pageXIso X data _ hr _ _ _ _ _ hi₀ hi₁ hi₂ hi₃ _ _ _ hn₁')
      (pageXIso X data _ hr _ _ _ _ _ rfl (by rw [hi₀', data.i₀_prev r r' _ _ h])
      (by rw [hi₀, data.hc₀₂ r _ _ h]) (by rw [hi₁, data.hc₁₃ r _ _ h]) _ _ _
      (by have := data.hc r _ _ h; lia)) ?_ ?_
    · simp
    · dsimp
      rw [pageD_eq X data r hr pq' pq'' h
        (homOfLE (data.le₀₁' r hr pq'' rfl (by simpa [← data.i₀_prev r r' _ _ h])))
        (homOfLE (data.i₀_le' hrr' hr pq' hi₀' hi₀)) (homOfLE (data.le₀₁' r hr pq' hi₀ hi₁))
        (homOfLE (data.le₁₂' pq' hi₁ hi₂)) (homOfLE (data.le₂₃' r hr pq' hi₂ hi₃))
        rfl (by rw [hi₀', data.i₀_prev r r' _ _ h]) hi₀ hi₁ hi₂ hi₃ n₀ n₁ n₂ (n₂ + 1) hn₁',
        Category.assoc, Category.assoc, Iso.inv_hom_id, Category.comp_id]
  · rw [ShortComplex.exact_iff_epi _ ((page X data r hr).shape _ _ h)]
    have := isIso_mapFourδ₁Toδ₀' X data r r' hrr' hr pq' pq'' hpq'
      i₀' i₀ i₁ i₂ i₃ hi₀' hi₀ hi₁ hi₂ hi₃ n₀ n₁ n₂ hn₁' h
    dsimp
    infer_instance

variable [X.HasSpectralSequence data] in
/-- The kernel fork `kf` is a limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d99fce03cf3f4bc73b211b213f2227ae04e8e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
