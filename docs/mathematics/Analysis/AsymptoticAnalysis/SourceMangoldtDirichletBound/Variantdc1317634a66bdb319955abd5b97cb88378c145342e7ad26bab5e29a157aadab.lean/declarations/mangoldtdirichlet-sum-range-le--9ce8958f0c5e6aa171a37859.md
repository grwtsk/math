# mangoldtDirichlet_sum_range_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b4757cd-8106-f71c-dbbe-d2b06496ed31",
  "kind": "theorem",
  "lexical_name": "mangoldtDirichlet_sum_range_le",
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
  "slug": "mangoldtdirichlet-sum-range-le--9ce8958f0c5e6aa171a37859",
  "source": {
    "blob": "0a6be7b21517ff5179391855e12078d9659adf2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 164,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ce8958f0c5e6aa171a37859ae208b873dad291232b3e53a9cb7e8a93563fe61",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b4757cd-8106-f71c-dbbe-d2b06496ed31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtDirichlet_sum_range_le {c : ℝ} (hc : 1 < c) (N : ℕ) :
    (∑ n ∈ Finset.range N, mangoldtDirichletTerm c (n + 2)) ≤ dirichletBudget c := by
  calc
    _ ≤ ∑ n ∈ Finset.range N,
        ∫ x in ((n : ℝ) + 1)..((n : ℝ) + 2), cellMajorant c x :=
      Finset.sum_le_sum (fun n _ => mangoldtDirichletTerm_le_cellIntegral hc n)
    _ = ∫ x in (1 : ℝ)..((N : ℝ) + 1), cellMajorant c x := by
      simpa only [Nat.cast_add, Nat.cast_one, Nat.cast_zero, zero_add, add_assoc,
        show (1 : ℝ) + 1 = 2 by norm_num] using
        intervalIntegral.sum_integral_adjacent_intervals
          (a := fun n : ℕ => (n : ℝ) + 1) (n := N)
          (fun n _ => cellMajorant_intervalIntegrable c
            (by positivity : 0 < (n : ℝ) + 1)
            (by simp only [Nat.cast_add, Nat.cast_one]; linarith))
    _ ≤ _ := cellMajorant_integral_le (b := (N : ℝ) + 1) hc (by
      have hN : (0 : ℝ) ≤ N := Nat.cast_nonneg N
      linarith)

/-- Absolute convergence is proved from the bounded nonnegative partial sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a6be7b21517ff5179391855e12078d9659adf2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
