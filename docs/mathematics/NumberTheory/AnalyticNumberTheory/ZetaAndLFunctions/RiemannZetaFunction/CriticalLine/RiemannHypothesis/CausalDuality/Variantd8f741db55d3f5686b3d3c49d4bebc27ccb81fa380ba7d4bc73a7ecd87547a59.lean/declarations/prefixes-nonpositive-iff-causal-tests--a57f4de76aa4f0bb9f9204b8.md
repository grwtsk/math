# prefixes_nonpositive_iff_causal_tests

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d3f5bf6-6f2f-63a8-8cd0-0360b8c3eb06",
  "kind": "theorem",
  "lexical_name": "prefixes_nonpositive_iff_causal_tests",
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
  "slug": "prefixes-nonpositive-iff-causal-tests--a57f4de76aa4f0bb9f9204b8",
  "source": {
    "blob": "d985fa1c075bb5187426a9844a8494c47620157c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variantd8f741db55d3f5686b3d3c49d4bebc27ccb81fa380ba7d4bc73a7ecd87547a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a57f4de76aa4f0bb9f9204b8876fbdd2cced500b0feb5526fd9e21cb44e0037f",
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

Occurrence: `result:4d3f5bf6-6f2f-63a8-8cd0-0360b8c3eb06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefixes_nonpositive_iff_causal_tests (a : ℕ → ℝ) (N : ℕ) :
    (∀ K ≤ N, prefixSum a K ≤ 0) ↔
      (∀ weight : ℕ → ℝ, 0 ≤ weight N → (∀ k < N, weight (k + 1) ≤ weight k) → weight 0 ≤ 1 →
        (∑ k ∈ Finset.range N, weight k * a k) ≤ 0) := by
  constructor
  · intro hp weight hweight hm hu
    exact causal_weight_bound (by norm_num) hp hweight hm hu
  · intro ht K hK
    let weight : ℕ → ℝ := fun k => if k < K then 1 else 0
    have hweight : 0 ≤ weight N := by simp [weight, Nat.not_lt.mpr hK]
    have hm : ∀ k < N, weight (k + 1) ≤ weight k := by
      intro k _
      by_cases hk1 : k + 1 < K
      · have hk : k < K := by omega
        simp [weight, hk1, hk]
      · by_cases hk : k < K <;> simp [weight, hk1, hk]
    have hu : weight 0 ≤ 1 := by dsimp [weight]; split_ifs <;> norm_num
    have h := ht weight hweight hm hu
    rw [prefix_indicator_sum a N K hK] at h
    exact h

end GRWTSK.RiemannHypothesis.Conversation.CausalDuality
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variantd8f741db55d3f5686b3d3c49d4bebc27ccb81fa380ba7d4bc73a7ecd87547a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variantd8f741db55d3f5686b3d3c49d4bebc27ccb81fa380ba7d4bc73a7ecd87547a59.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d985fa1c075bb5187426a9844a8494c47620157c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
