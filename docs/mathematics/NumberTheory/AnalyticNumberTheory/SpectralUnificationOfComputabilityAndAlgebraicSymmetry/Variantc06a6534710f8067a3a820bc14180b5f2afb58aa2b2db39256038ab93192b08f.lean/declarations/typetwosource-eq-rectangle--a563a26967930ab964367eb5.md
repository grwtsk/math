# typeTwoSource_eq_rectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1b67b7aad44d81910a75cca43636e9d79411eb9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a00def6-23c9-be3d-ee8b-f8fc924254f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2205b31c-f27e-7448-4154-ffbe81867dc7",
  "kind": "theorem",
  "lexical_name": "typeTwoSource_eq_rectangle",
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
  "slug": "typetwosource-eq-rectangle--a563a26967930ab964367eb5",
  "source": {
    "blob": "f1b67b7aad44d81910a75cca43636e9d79411eb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a563a26967930ab964367eb59838c6bda6b1947f51f419f67f2af0b932405111",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2205b31c-f27e-7448-4154-ffbe81867dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoSource_eq_rectangle (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      vonMangoldt m * ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        beta (vaughanCutoff A) n * sourcePlainWeight A ((m*n : ℕ) : ℝ) := by
  classical
  unfold typeTwoSource
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  have hm0 : (m : ℝ) ≠ 0 := by
    exact_mod_cast (by have := (Finset.mem_Ioc.mp hm).1; omega : m ≠ 0)
  calc
    _ = ∑ n ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
        (fun n ↦ m*n ≤ sourceKernelCutoff A),
        vonMangoldt m * (beta (vaughanCutoff A) n * sourcePlainWeight A ((m*n : ℕ) : ℝ)) := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn0 : (n : ℝ) ≠ 0 := by
        have hnpos : 0 < n := (Nat.zero_le _).trans_lt
          (Finset.mem_Ioc.mp (Finset.mem_filter.mp hn).1).1
        exact_mod_cast hnpos.ne'
      dsimp [sourcePlainWeight]
      rw [Nat.cast_mul, Real.log_mul hm0 hn0]
      ring
    _ = _ := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro n hn hnot
      have hp : sourceKernelCutoff A < m*n := by
        by_contra h
        exact hnot (Finset.mem_filter.mpr ⟨hn, by omega⟩)
      rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m*n) hp, mul_zero, mul_zero]

/-- The original residual as a closed weight sum, including the zero unit atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b67b7aad44d81910a75cca43636e9d79411eb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
