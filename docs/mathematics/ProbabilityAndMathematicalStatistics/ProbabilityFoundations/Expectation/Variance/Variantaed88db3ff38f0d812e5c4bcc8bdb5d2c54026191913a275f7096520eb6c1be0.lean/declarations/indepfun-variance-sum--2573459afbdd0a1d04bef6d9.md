# IndepFun.variance_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4f85e63a93fe4e2421cb53371e82f97fb09653f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69e1cecd-f624-7474-fb3b-e28a2259da87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97c5bc08-97d8-7f9a-c58a-317a29ae1fe4",
  "kind": "theorem",
  "lexical_name": "IndepFun.variance_sum",
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
  "slug": "indepfun-variance-sum--2573459afbdd0a1d04bef6d9",
  "source": {
    "blob": "c4f85e63a93fe4e2421cb53371e82f97fb09653f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 352,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2573459afbdd0a1d04bef6d923e5bf76a68e3897e0dc0d7d19fc8dd0086ad220",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c5bc08-97d8-7f9a-c58a-317a29ae1fe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.variance_sum [IsProbabilityMeasure μ] {ι : Type*} {X : ι → Ω → ℝ}
    {s : Finset ι} (hs : ∀ i ∈ s, MemLp (X i) 2 μ)
    (h : Set.Pairwise ↑s fun i j => IndepFun (X i) (X j) μ) :
    variance (∑ i ∈ s, X i) μ = ∑ i ∈ s, variance (X i) μ := by
  classical
  induction s using Finset.induction_on with
  | empty => simp only [Finset.sum_empty, variance_zero]
  | insert k s ks IH =>
  rw [variance_def' (memLp_finset_sum' _ hs), sum_insert ks, sum_insert ks]
  simp only [add_sq']
  calc
    μ[(X k ^ 2 + (∑ i ∈ s, X i) ^ 2 + 2 * X k * ∑ i ∈ s, X i : Ω → ℝ)] - μ[X k + ∑ i ∈ s, X i] ^ 2 =
        μ[X k ^ 2] + μ[(∑ i ∈ s, X i) ^ 2] + μ[2 * X k * ∑ i ∈ s, X i] -
          (μ[X k] + μ[∑ i ∈ s, X i]) ^ 2 := by
      rw [integral_add', integral_add', integral_add']
      · exact MemLp.integrable one_le_two (hs _ (mem_insert_self _ _))
      · apply integrable_finset_sum' _ fun i hi => ?_
        exact MemLp.integrable one_le_two (hs _ (mem_insert_of_mem hi))
      · exact MemLp.integrable_sq (hs _ (mem_insert_self _ _))
      · apply MemLp.integrable_sq
        exact memLp_finset_sum' _ fun i hi => hs _ (mem_insert_of_mem hi)
      · apply Integrable.add
        · exact MemLp.integrable_sq (hs _ (mem_insert_self _ _))
        · apply MemLp.integrable_sq
          exact memLp_finset_sum' _ fun i hi => hs _ (mem_insert_of_mem hi)
      · rw [mul_assoc]
        apply Integrable.const_mul _ (2 : ℝ)
        rw [mul_sum, sum_fn]
        apply integrable_finset_sum _ fun i hi => ?_
        apply IndepFun.integrable_mul _ (MemLp.integrable one_le_two (hs _ (mem_insert_self _ _)))
          (MemLp.integrable one_le_two (hs _ (mem_insert_of_mem hi)))
        apply h (mem_insert_self _ _) (mem_insert_of_mem hi)
        exact fun hki => ks (hki.symm ▸ hi)
    _ = variance (X k) μ + variance (∑ i ∈ s, X i) μ +
        (μ[2 * X k * ∑ i ∈ s, X i] - 2 * μ[X k] * μ[∑ i ∈ s, X i]) := by
      rw [variance_def' (hs _ (mem_insert_self _ _)),
        variance_def' (memLp_finset_sum' _ fun i hi => hs _ (mem_insert_of_mem hi))]
      ring
    _ = variance (X k) μ + variance (∑ i ∈ s, X i) μ := by
      simp_rw [Pi.mul_apply, Pi.ofNat_apply, sum_apply, mul_sum, mul_assoc,
        add_eq_left]
      rw [integral_finset_sum s fun i hi => ?_]; swap
      · apply Integrable.const_mul _ (2 : ℝ)
        apply IndepFun.integrable_mul _ (MemLp.integrable one_le_two (hs _ (mem_insert_self _ _)))
          (MemLp.integrable one_le_two (hs _ (mem_insert_of_mem hi)))
        apply h (mem_insert_self _ _) (mem_insert_of_mem hi)
        exact fun hki => ks (hki.symm ▸ hi)
      rw [integral_finset_sum s fun i hi =>
          MemLp.integrable one_le_two (hs _ (mem_insert_of_mem hi)),
        mul_sum, mul_sum, ← sum_sub_distrib]
      apply Finset.sum_eq_zero fun i hi => ?_
      rw [integral_const_mul, IndepFun.integral_mul', sub_self]
      · apply h (mem_insert_self _ _) (mem_insert_of_mem hi)
        exact fun hki => ks (hki.symm ▸ hi)
      · exact MemLp.aestronglyMeasurable (hs _ (mem_insert_self _ _))
      · exact MemLp.aestronglyMeasurable (hs _ (mem_insert_of_mem hi))
    _ = variance (X k) μ + ∑ i ∈ s, variance (X i) μ := by
      rw [IH (fun i hi => hs i (mem_insert_of_mem hi))
          (h.mono (by simp only [coe_insert, Set.subset_insert]))]

/-- **The Bhatia-Davis inequality on variance**

The variance of a random variable `X` satisfying `a ≤ X ≤ b` almost everywhere is at most
`(b - 𝔼 X) * (𝔼 X - a)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f85e63a93fe4e2421cb53371e82f97fb09653f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
