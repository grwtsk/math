# suffix_summation_by_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2c4fc6b-0bd6-604f-aeeb-bfdd2e5aba4f",
  "kind": "theorem",
  "lexical_name": "suffix_summation_by_parts",
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
  "slug": "suffix-summation-by-parts--02c22e81c22547f8b8d55096",
  "source": {
    "blob": "cc2b0cfecb38309782d7f0fc1fbf1a7c337a6b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalRecords/Variant15d2ad633116ec252753832e452f85c86a743405f7021d559fad16fae7b9fdda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c22e81c22547f8b8d550965708742f6fb24b9ff13c6fe03f136ef4cce9655f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalRecords/Variant15d2ad633116ec252753832e452f85c86a743405f7021d559fad16fae7b9fdda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2c4fc6b-0bd6-604f-aeeb-bfdd2e5aba4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem suffix_summation_by_parts (B L : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, B k * (L (k + 1) - L k)) =
      B 0 * (L N - L 0) +
        ∑ k ∈ Finset.range N, (B (k + 1) - B k) * (L N - L (k + 1)) := by
  induction N with
  | zero => simp
  | succ N ih =>
      have hs : (∑ k ∈ Finset.range N,
          (B (k + 1) - B k) * (L (N + 1) - L (k + 1))) =
          (∑ k ∈ Finset.range N, (B (k + 1) - B k) * (L N - L (k + 1))) +
          (B N - B 0) * (L (N + 1) - L N) := by
        calc
          _ = ∑ k ∈ Finset.range N,
              ((B (k + 1) - B k) * (L N - L (k + 1)) +
                (B (k + 1) - B k) * (L (N + 1) - L N)) := by
            apply Finset.sum_congr rfl
            intro k _
            ring
          _ = _ := by
            rw [Finset.sum_add_distrib, ← Finset.sum_mul, sum_increments]
      rw [Finset.sum_range_succ, Finset.sum_range_succ, ih]
      simp only [sub_self, mul_zero, add_zero]
      rw [hs]
      ring

/-- The shorter source display is valid after explicit zero-level normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalRecords/Variant15d2ad633116ec252753832e452f85c86a743405f7021d559fad16fae7b9fdda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalRecords/Variant15d2ad633116ec252753832e452f85c86a743405f7021d559fad16fae7b9fdda.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc2b0cfecb38309782d7f0fc1fbf1a7c337a6b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
