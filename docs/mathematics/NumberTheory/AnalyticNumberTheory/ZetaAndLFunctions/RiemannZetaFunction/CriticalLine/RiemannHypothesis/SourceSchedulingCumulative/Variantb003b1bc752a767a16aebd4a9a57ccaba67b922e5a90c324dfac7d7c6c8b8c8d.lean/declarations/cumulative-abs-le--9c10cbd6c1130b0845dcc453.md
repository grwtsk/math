# cumulative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98f125e4-904f-0a6e-0b26-4eb664ab7a10",
  "kind": "theorem",
  "lexical_name": "cumulative_abs_le",
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
  "slug": "cumulative-abs-le--9c10cbd6c1130b0845dcc453",
  "source": {
    "blob": "be21e0557849952854467d8f5db7ee74bf447b78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variantb003b1bc752a767a16aebd4a9a57ccaba67b922e5a90c324dfac7d7c6c8b8c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c10cbd6c1130b0845dcc4538e31822fa1c428822a679cf4777ab5a77c8a3ad4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variantb003b1bc752a767a16aebd4a9a57ccaba67b922e5a90c324dfac7d7c6c8b8c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98f125e4-904f-0a6e-0b26-4eb664ab7a10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_abs_le (c r : ℕ → ℝ) (g : ℝ → ℝ) (n : ℕ) (L : ℝ)
    (hzero : schedulePrefix r (n + 1) = 0)
    (_hgap : ∀ k < n, 0 ≤ c (k + 1) - c k)
    (hg : ∀ k < n, |g (c k) - g (c (k + 1))| ≤ L * (c (k + 1) - c k)) :
    |∑ i ∈ Finset.range (n + 1), r i * g (c i)| ≤ L * cumulativeCost c r n := by
  rw [cumulative_abel_identity c r g n hzero]
  calc
    _ ≤ ∑ k ∈ Finset.range n,
        |(g (c k) - g (c (k + 1))) * schedulePrefix r (k + 1)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.range n,
        L * (|schedulePrefix r (k + 1)| * (c (k + 1) - c k)) := by
      apply Finset.sum_le_sum
      intro k hk
      rw [abs_mul, mul_comm]
      calc
        _ ≤ |schedulePrefix r (k + 1)| * (L * (c (k + 1) - c k)) :=
          mul_le_mul_of_nonneg_left (hg k (Finset.mem_range.mp hk)) (abs_nonneg _)
        _ = _ := by ring
    _ = _ := by rw [cumulativeCost, Finset.mul_sum]

/-- A complete `Fin (n+1)` inventory has the same ordered cumulative certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variantb003b1bc752a767a16aebd4a9a57ccaba67b922e5a90c324dfac7d7c6c8b8c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variantb003b1bc752a767a16aebd4a9a57ccaba67b922e5a90c324dfac7d7c6c8b8c8d.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be21e0557849952854467d8f5db7ee74bf447b78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
