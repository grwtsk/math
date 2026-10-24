# causal_weight_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ee8ce56-33ec-08a8-b5a2-2e973577cfce",
  "kind": "theorem",
  "lexical_name": "causal_weight_bound",
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
  "slug": "causal-weight-bound--fa3f48d2501f3076df71d24d",
  "source": {
    "blob": "d985fa1c075bb5187426a9844a8494c47620157c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variantd8f741db55d3f5686b3d3c49d4bebc27ccb81fa380ba7d4bc73a7ecd87547a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa3f48d2501f3076df71d24d25a71f536e69eafbd6536260f46b53623f2c0bf1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variantd8f741db55d3f5686b3d3c49d4bebc27ccb81fa380ba7d4bc73a7ecd87547a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ee8ce56-33ec-08a8-b5a2-2e973577cfce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causal_weight_bound {a weight : ℕ → ℝ} {N : ℕ} {R : ℝ}
    (hR : 0 ≤ R) (hprefix : ∀ k ≤ N, prefixSum a k ≤ R)
    (hweight : 0 ≤ weight N) (hmono : ∀ k < N, weight (k + 1) ≤ weight k) (hunit : weight 0 ≤ 1) :
    (∑ k ∈ Finset.range N, weight k * a k) ≤ R := by
  rw [weighted_prefix_identity]
  have hs : (∑ k ∈ Finset.range N, (weight k - weight (k + 1))) = weight 0 - weight N := by
    have h := CausalRecords.sum_increments weight N
    have heq : (∑ k ∈ Finset.range N, (weight k - weight (k + 1))) =
        -(∑ k ∈ Finset.range N, (weight (k + 1) - weight k)) := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro k _
      ring
    rw [heq, h]
    ring
  calc
    _ ≤ weight N * R + ∑ k ∈ Finset.range N, (weight k - weight (k + 1)) * R :=
      add_le_add (mul_le_mul_of_nonneg_left (hprefix N le_rfl) hweight)
        (Finset.sum_le_sum (fun k hk =>
          mul_le_mul_of_nonneg_left (hprefix (k + 1) (by
            have := Finset.mem_range.mp hk
            omega)) (sub_nonneg.mpr (hmono k (Finset.mem_range.mp hk)))))
    _ = weight 0 * R := by rw [← Finset.sum_mul, hs]; ring
    _ ≤ R := by simpa only [one_mul] using mul_le_mul_of_nonneg_right hunit hR

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variantd8f741db55d3f5686b3d3c49d4bebc27ccb81fa380ba7d4bc73a7ecd87547a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variantd8f741db55d3f5686b3d3c49d4bebc27ccb81fa380ba7d4bc73a7ecd87547a59.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d985fa1c075bb5187426a9844a8494c47620157c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
