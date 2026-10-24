# Efun_grid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56a88165815718a2b4fae75a5150097103446bbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:012ede75-e65b-a8d0-5256-f0506de5f5ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9850d50d-1aa9-2de2-a52c-3231080aeb07",
  "kind": "theorem",
  "lexical_name": "Efun_grid",
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
  "slug": "efun-grid--8ba47a1aba58929ec96de848",
  "source": {
    "blob": "56a88165815718a2b4fae75a5150097103446bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ba47a1aba58929ec96de8480282d5fea5e93341b27735626a82b5f07a50da3b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9850d50d-1aa9-2de2-a52c-3231080aeb07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Efun_grid (hN : 0 < N) {m : ℕ} (hm : m ≤ N) :
    Efun s N ((m:ℝ)/N) = ∑ i ∈ Finset.range m, (Csum s i / N - ((((i:ℝ)+1)/N) ^ 3 - ((i:ℝ)/N) ^ 3) / 6) := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  unfold Efun
  have hint : ∀ k < m, IntervalIntegrable (Dfun s N) volume ((fun i : ℕ => (i:ℝ)/N) k) ((fun i : ℕ => (i:ℝ)/N) (k+1)) := by
    intro k hk
    have hk' : k < N := lt_of_lt_of_le hk hm
    refine (intervalIntegrable_Dfun (s := s) hN).mono_set ?_
    rw [uIcc_of_le zero_le_one]
    simpa [Nat.cast_succ] using cell_subset hN hk'
  have key := intervalIntegral.sum_integral_adjacent_intervals hint
  simp only [Nat.cast_zero, zero_div] at key
  rw [← key]
  refine Finset.sum_congr rfl fun i hi => ?_
  have hi' : i < N := lt_of_lt_of_le (Finset.mem_range.mp hi) hm
  simpa [Nat.cast_succ] using integral_Dfun_cell (s := s) hN hi'

/-- D at the grid points (right value): D(m/N) = C_m − (m/N)²/2, m ≤ N. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56a88165815718a2b4fae75a5150097103446bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
