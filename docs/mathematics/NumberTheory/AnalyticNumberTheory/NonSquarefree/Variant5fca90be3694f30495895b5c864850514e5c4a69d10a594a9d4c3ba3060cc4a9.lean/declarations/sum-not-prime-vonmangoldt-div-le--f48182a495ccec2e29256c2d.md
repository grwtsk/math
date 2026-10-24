# sum_not_prime_vonMangoldt_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "668f6e396659b6f207692e888320091a765ab18c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa53ddf5-0991-492c-e40c-3fe0ed435dc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:868fbf68-0951-ce88-36b8-2bfb07531aa4",
  "kind": "lemma",
  "lexical_name": "sum_not_prime_vonMangoldt_div_le",
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
  "slug": "sum-not-prime-vonmangoldt-div-le--f48182a495ccec2e29256c2d",
  "source": {
    "blob": "668f6e396659b6f207692e888320091a765ab18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 175,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f48182a495ccec2e29256c2d59f1f98917de14ec43e530d9c9f6e3e8484a09b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:868fbf68-0951-ce88-36b8-2bfb07531aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_not_prime_vonMangoldt_div_le (X : ℕ) :
    ∑ n ∈ (Ioc 0 X).filter (fun n => ¬ n.Prime), Λ n / n ≤ Cdef / Real.log 2 := by
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  rw [le_div_iff₀ hlog2, sum_mul]
  calc ∑ n ∈ (Ioc 0 X).filter (fun n => ¬ n.Prime), Λ n / n * Real.log 2
      ≤ ∑ n ∈ (Ioc 0 X).filter (fun n => ¬ n.Prime), Λ n * (Real.log n - Λ n) / n := by
        refine sum_le_sum fun n hn => ?_
        have hnp : ¬ n.Prime := (mem_filter.mp hn).2
        rcases eq_or_ne (Λ n) 0 with h0 | h0
        · simp [h0]
        · obtain ⟨h1, h2⟩ := vonMangoldt_le_log_sub_of_not_prime h0 hnp
          rw [div_mul_eq_mul_div]
          exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left (h2.trans h1)
            ArithmeticFunction.vonMangoldt_nonneg) (Nat.cast_nonneg n)
    _ ≤ ∑ n ∈ Ioc 0 X, Λ n * (Real.log n - Λ n) / n :=
        sum_le_sum_of_subset_of_nonneg (filter_subset _ _) fun n _ _ => defect_term_nonneg n
    _ ≤ Cdef := by simpa using defect_le (X : ℝ)

/-- Σ_{n ≤ x, n not squarefree} Λ(n)²/n ≤ Cdef. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668f6e396659b6f207692e888320091a765ab18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
