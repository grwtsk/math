# prefixes_nonpositive_iff_causal_tests

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67e23b03-b876-e956-74f5-a035a9e196fc",
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
  "slug": "prefixes-nonpositive-iff-causal-tests--e9abe9fdfc6d3b477da857ae",
  "source": {
    "blob": "9ee10da167e835b166c2f6405bc65cd20de254fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variant167d27c98d2aec11be75247690e1149e5fa69a2a625d0d0b631b741cb3364856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9abe9fdfc6d3b477da857aecadeb650ce39a5837fe31b0cf72fa3f77a9224f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variant167d27c98d2aec11be75247690e1149e5fa69a2a625d0d0b631b741cb3364856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67e23b03-b876-e956-74f5-a035a9e196fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–98.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variant167d27c98d2aec11be75247690e1149e5fa69a2a625d0d0b631b741cb3364856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalDuality/Variant167d27c98d2aec11be75247690e1149e5fa69a2a625d0d0b631b741cb3364856.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ee10da167e835b166c2f6405bc65cd20de254fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
