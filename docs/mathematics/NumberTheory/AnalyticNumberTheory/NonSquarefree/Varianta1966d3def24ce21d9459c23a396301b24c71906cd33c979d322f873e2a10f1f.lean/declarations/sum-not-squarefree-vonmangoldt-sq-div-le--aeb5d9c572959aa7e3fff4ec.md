# sum_not_squarefree_vonMangoldt_sq_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:970f904a-fad3-379f-756a-a3d3ea75f221",
  "kind": "lemma",
  "lexical_name": "sum_not_squarefree_vonMangoldt_sq_div_le",
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
  "slug": "sum-not-squarefree-vonmangoldt-sq-div-le--aeb5d9c572959aa7e3fff4ec",
  "source": {
    "blob": "3f4bca101844d3aaa2a246e1f56cee795701bb2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 202,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeb5d9c572959aa7e3fff4ec28d9a1bbb356ffe15ee8adbda0ee46b5d8165801",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:970f904a-fad3-379f-756a-a3d3ea75f221`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_not_squarefree_vonMangoldt_sq_div_le (X : ℕ) :
    ∑ n ∈ (Ioc 0 X).filter (fun n => ¬ Squarefree n), Λ n ^ 2 / n ≤ Cdef := by
  calc ∑ n ∈ (Ioc 0 X).filter (fun n => ¬ Squarefree n), Λ n ^ 2 / n
      ≤ ∑ n ∈ (Ioc 0 X).filter (fun n => ¬ Squarefree n), Λ n * (Real.log n - Λ n) / n := by
        refine sum_le_sum fun n hn => ?_
        have hns : ¬ Squarefree n := (mem_filter.mp hn).2
        rcases eq_or_ne (Λ n) 0 with h0 | h0
        · simp [h0]
        · have h1 := (vonMangoldt_le_log_sub_of_not_prime h0 (not_prime_of_not_squarefree hns)).1
          rw [sq]
          exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left h1
            ArithmeticFunction.vonMangoldt_nonneg) (Nat.cast_nonneg n)
    _ ≤ ∑ n ∈ Ioc 0 X, Λ n * (Real.log n - Λ n) / n :=
        sum_le_sum_of_subset_of_nonneg (filter_subset _ _) fun n _ _ => defect_term_nonneg n
    _ ≤ Cdef := by simpa using defect_le (X : ℝ)

/-- Σ_{n ≤ x, n not squarefree} Λ(n) log n/n ≤ 2·Cdef. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f4bca101844d3aaa2a246e1f56cee795701bb2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
