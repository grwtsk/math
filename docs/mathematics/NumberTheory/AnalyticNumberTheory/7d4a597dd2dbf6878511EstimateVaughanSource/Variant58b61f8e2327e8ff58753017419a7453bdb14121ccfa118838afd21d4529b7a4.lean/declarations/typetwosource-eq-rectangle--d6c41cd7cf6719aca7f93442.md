# typeTwoSource_eq_rectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5ad8183-0227-e3c9-fac7-cfc83bb3b547",
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
  "slug": "typetwosource-eq-rectangle--d6c41cd7cf6719aca7f93442",
  "source": {
    "blob": "074c1e20ebe60583948f1c113c4365f9d309eefe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 123,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6c41cd7cf6719aca7f934420770d58bace6a3dc4c3d202c5f460f52bca53787",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5ad8183-0227-e3c9-fac7-cfc83bb3b547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–155.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074c1e20ebe60583948f1c113c4365f9d309eefe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
