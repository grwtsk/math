# IndepFun.variance_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e4ac6bd-dd86-0cac-7cbd-72ed41053cba",
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
  "slug": "indepfun-variance-sum--b856b31f87c7504b0f7253eb",
  "source": {
    "blob": "34a4c6fa3818b09f2413169a1f56da463914c95a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 327,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b856b31f87c7504b0f7253eb747193b141d15624741d201b52e984884168fa3b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e4ac6bd-dd86-0cac-7cbd-72ed41053cba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.variance_sum [@IsProbabilityMeasure Ω _ ℙ] {ι : Type*} {X : ι → Ω → ℝ}
    {s : Finset ι} (hs : ∀ i ∈ s, @Memℒp _ _ _ (_) (X i) 2 ℙ)
    (h : Set.Pairwise ↑s fun i j => @IndepFun _ _ _ (_) _ _ (X i) (X j) ℙ) :
    Var[∑ i in s, X i] = ∑ i in s, Var[X i] := by
  classical
  induction' s using Finset.induction_on with k s ks IH
  · simp only [Finset.sum_empty, variance_zero]
  rw [variance_def' (memℒp_finset_sum' _ hs), sum_insert ks, sum_insert ks]
  simp only [add_sq']
  calc
    𝔼[X k ^ 2 + (∑ i in s, X i) ^ 2 + 2 * X k * ∑ i in s, X i] - 𝔼[X k + ∑ i in s, X i] ^ 2 =
        𝔼[X k ^ 2] + 𝔼[(∑ i in s, X i) ^ 2] + 𝔼[2 * X k * ∑ i in s, X i] -
          (𝔼[X k] + 𝔼[∑ i in s, X i]) ^ 2 := by
      rw [integral_add', integral_add', integral_add']
      · exact Memℒp.integrable one_le_two (hs _ (mem_insert_self _ _))
      · apply integrable_finset_sum' _ fun i hi => ?_
        exact Memℒp.integrable one_le_two (hs _ (mem_insert_of_mem hi))
      · exact Memℒp.integrable_sq (hs _ (mem_insert_self _ _))
      · apply Memℒp.integrable_sq
        exact memℒp_finset_sum' _ fun i hi => hs _ (mem_insert_of_mem hi)
      · apply Integrable.add
        · exact Memℒp.integrable_sq (hs _ (mem_insert_self _ _))
        · apply Memℒp.integrable_sq
          exact memℒp_finset_sum' _ fun i hi => hs _ (mem_insert_of_mem hi)
      · rw [mul_assoc]
        apply Integrable.const_mul _ (2 : ℝ)
        simp only [mul_sum, sum_apply, Pi.mul_apply]
        apply integrable_finset_sum _ fun i hi => ?_
        apply IndepFun.integrable_mul _ (Memℒp.integrable one_le_two (hs _ (mem_insert_self _ _)))
          (Memℒp.integrable one_le_two (hs _ (mem_insert_of_mem hi)))
        apply h (mem_insert_self _ _) (mem_insert_of_mem hi)
        exact fun hki => ks (hki.symm ▸ hi)
    _ = Var[X k] + Var[∑ i in s, X i] +
        (𝔼[2 * X k * ∑ i in s, X i] - 2 * 𝔼[X k] * 𝔼[∑ i in s, X i]) := by
      rw [variance_def' (hs _ (mem_insert_self _ _)),
        variance_def' (memℒp_finset_sum' _ fun i hi => hs _ (mem_insert_of_mem hi))]
      ring
    _ = Var[X k] + Var[∑ i in s, X i] := by
      simp only [mul_assoc, integral_mul_left, Pi.mul_apply, Pi.one_apply, sum_apply,
        add_right_eq_self, mul_sum]
      rw [integral_finset_sum s fun i hi => ?_]; swap
      · apply Integrable.const_mul _ (2 : ℝ)
        apply IndepFun.integrable_mul _ (Memℒp.integrable one_le_two (hs _ (mem_insert_self _ _)))
          (Memℒp.integrable one_le_two (hs _ (mem_insert_of_mem hi)))
        apply h (mem_insert_self _ _) (mem_insert_of_mem hi)
        exact fun hki => ks (hki.symm ▸ hi)
      rw [integral_finset_sum s fun i hi =>
          Memℒp.integrable one_le_two (hs _ (mem_insert_of_mem hi)),
        mul_sum, mul_sum, ← sum_sub_distrib]
      apply Finset.sum_eq_zero fun i hi => ?_
      have : ∀ (a : Ω), @OfNat.ofNat (Ω → ℝ) 2 instOfNat a = (2 : ℝ) := fun a => rfl
      conv_lhs => enter [1, 2, a]; rw [this]
      rw [integral_mul_left, IndepFun.integral_mul', sub_self]
      · apply h (mem_insert_self _ _) (mem_insert_of_mem hi)
        exact fun hki => ks (hki.symm ▸ hi)
      · exact Memℒp.aestronglyMeasurable (hs _ (mem_insert_self _ _))
      · exact Memℒp.aestronglyMeasurable (hs _ (mem_insert_of_mem hi))
    _ = Var[X k] + ∑ i in s, Var[X i] := by
      rw [IH (fun i hi => hs i (mem_insert_of_mem hi))
          (h.mono (by simp only [coe_insert, Set.subset_insert]))]
#align probability_theory.indep_fun.variance_sum ProbabilityTheory.IndepFun.variance_sum

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a4c6fa3818b09f2413169a1f56da463914c95a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
