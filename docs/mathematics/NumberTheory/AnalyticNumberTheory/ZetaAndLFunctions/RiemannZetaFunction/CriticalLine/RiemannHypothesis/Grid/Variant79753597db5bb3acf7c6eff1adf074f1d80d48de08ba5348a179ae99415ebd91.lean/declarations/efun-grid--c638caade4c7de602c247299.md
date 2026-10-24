# Efun_grid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55d2d470-6f8e-f0c4-ef7e-05909ed35b0d",
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
  "slug": "efun-grid--c638caade4c7de602c247299",
  "source": {
    "blob": "4155527568f0c57aada6bad9a1a3100c02d0ac13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant79753597db5bb3acf7c6eff1adf074f1d80d48de08ba5348a179ae99415ebd91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c638caade4c7de602c247299f8ad5443efadc199daab53e37d2cade881040b33",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant79753597db5bb3acf7c6eff1adf074f1d80d48de08ba5348a179ae99415ebd91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d2d470-6f8e-f0c4-ef7e-05909ed35b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant79753597db5bb3acf7c6eff1adf074f1d80d48de08ba5348a179ae99415ebd91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant79753597db5bb3acf7c6eff1adf074f1d80d48de08ba5348a179ae99415ebd91.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4155527568f0c57aada6bad9a1a3100c02d0ac13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
