# weighted_abel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36bb7851-091b-aa39-09f2-fa4c5aa6a7d8",
  "kind": "theorem",
  "lexical_name": "weighted_abel_abs_le",
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
  "slug": "weighted-abel-abs-le--1337c97ad58d096699f02422",
  "source": {
    "blob": "df1f82b19ed6865c65f5fefd4c8dfde1a4a33af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1337c97ad58d096699f0242234fd4db938f3524cc32ef154db498a9265829474",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36bb7851-091b-aa39-09f2-fa4c5aa6a7d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_abel_abs_le (a v : ℕ → E) (n : ℕ) (B : ℝ) (_hB : 0 ≤ B)
    (hp : ∀ k ≤ n + 1, ‖schedulePrefix v k‖ ≤ B) :
    |∑ i ∈ Finset.range (n + 1), inner ℝ (a i) (v i)| ≤
      B * (‖a n‖ + ∑ k ∈ Finset.range n, ‖a k - a (k + 1)‖) := by
  rw [weighted_abel]
  calc
    _ ≤ |inner ℝ (a n) (schedulePrefix v (n + 1))| +
        |∑ k ∈ Finset.range n,
          inner ℝ (a k - a (k + 1)) (schedulePrefix v (k + 1))| := abs_add_le _ _
    _ ≤ ‖a n‖ * B + ∑ k ∈ Finset.range n, ‖a k - a (k + 1)‖ * B := by
      apply add_le_add
      · exact (abs_real_inner_le_norm _ _).trans
          (mul_le_mul_of_nonneg_left (hp _ (le_refl _)) (norm_nonneg _))
      · apply (Finset.abs_sum_le_sum_abs _ _).trans
        apply Finset.sum_le_sum
        intro k hk
        exact (abs_real_inner_le_norm _ _).trans
          (mul_le_mul_of_nonneg_left (hp _ (by
            have := Finset.mem_range.mp hk
            omega)) (norm_nonneg _))
    _ = _ := by rw [← Finset.sum_mul]; ring

variable [CompleteSpace E]

/-- Inverse-adjoint emphasis reconstructs the original pairing exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1f82b19ed6865c65f5fefd4c8dfde1a4a33af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
