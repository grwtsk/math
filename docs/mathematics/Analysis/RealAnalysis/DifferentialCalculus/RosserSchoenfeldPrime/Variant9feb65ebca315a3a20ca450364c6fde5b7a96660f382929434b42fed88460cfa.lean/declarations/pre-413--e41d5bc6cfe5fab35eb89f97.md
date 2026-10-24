# pre_413

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9055ac071fb1dff52c5bdf94a6cceb862831b174",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f60a38cc-6dae-f4bc-a982-16b37e73d9b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22c90c58-3638-4a3a-ccb2-4cbbcbd3b037",
  "kind": "theorem",
  "lexical_name": "pre_413",
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
  "slug": "pre-413--e41d5bc6cfe5fab35eb89f97",
  "source": {
    "blob": "9055ac071fb1dff52c5bdf94a6cceb862831b174",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 349,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e41d5bc6cfe5fab35eb89f974174c3cba8b7ba26f1f285ff5c1bcbbffa86d96d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22c90c58-3638-4a3a-ccb2-4cbbcbd3b037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pre_413 {f : ℝ → ℝ} {x : ℝ} (hf : ContinuousOn f (Set.Icc 2 (x + 1))) (hx : 2 ≤ x) :
    ∑ p ∈ filter Prime (Iic ⌊x⌋₊), f p =
      ∫ y in Set.Icc 2 x, f y / log y ∂θ.Stieltjes.measure := by
  rw [← (MeasureTheory.Integrable.hasSum_intervalIntegral _ 0).tsum_eq]
  · rw [tsum_of_nat_of_neg_add_one]
    · conv =>
        rhs
        rhs
        arg 1
        intro n
        rw [intervalIntegral.integral_of_le (by simp)]
        rw [MeasureTheory.setIntegral_measure_zero]
        . skip
        . tactic =>
            rw [Measure.restrict_apply]
            apply MeasureTheory.measure_inter_null_of_null_left
            simp only [«θ».Stieltjes, neg_add_rev, Int.reduceNeg, Int.cast_add, Int.cast_neg,
              Int.cast_one, Int.cast_natCast, zero_add, neg_add_cancel_comm,
              StieltjesFunction.measure_Ioc, theta, ENNReal.ofReal_eq_zero, tsub_le_iff_right]
            rw [Finset.Ioc_eq_empty_of_le]
            · rw [Finset.Ioc_eq_empty_of_le]
              simp
              linarith
            · simp
              linarith
            · simp
      simp only [Int.cast_natCast, zero_add, tsum_zero, add_zero]
      rw [tsum_eq_sum' (s := Finset.Ico 1 ⌊x⌋₊)]
      · conv =>
          rhs
          arg 2
          intro k
          rw [intervalIntegral.integral_congr_ae_restrict (g := fun _ => (f (k + 1)) / (Real.log (k + 1))) (by
            rw [Set.uIoc_of_le (by simp)]
            conv =>
              pattern Set.Ioc _ _
              equals (Set.Ioo ↑k ↑(k + 1)) ∪ {↑(k + 1)} => simp
            rw [MeasureTheory.ae_restrict_union_eq]
            unfold Filter.EventuallyEq
            rw [Filter.eventually_sup, ← Filter.EventuallyEq]
            refine ⟨?_, ?_⟩
            · unfold Filter.EventuallyEq
              rw [MeasureTheory.ae_iff, MeasureTheory.Measure.restrict_apply', Set.inter_comm]
              apply MeasureTheory.measure_inter_null_of_null_left
              · rw [MeasureTheory.Measure.restrict_apply']
                · apply MeasureTheory.measure_inter_null_of_null_left
                  simp [«θ».Stieltjes, leftLim_theta_succ]
                · simp
              · simp
            · rw [Measure.restrict_restrict (by simp)]
              by_cases k_succ_mem: ↑k + (1: ℝ) ∈ Set.Icc (2: ℝ) x
              · simp only [cast_add, cast_one, Set.singleton_inter_of_mem k_succ_mem,
                  Measure.restrict_singleton, StieltjesFunction.measure_singleton, «θ».Stieltjes, leftLim_theta_succ, theta_succ_sub]
                split_ifs
                · rename_i k_prime
                  rw [MeasureTheory.Measure.ae_ennreal_smul_measure_iff]
                  · simp
                  · have := k_prime.two_le
                    simp_rw [ne_eq, ENNReal.ofReal_eq_zero, not_le]
                    apply Real.log_pos
                    simp
                    grind
                · simp
              · rw [Set.singleton_inter_of_notMem]
                · simp
                · simp
                  simp at k_succ_mem
                  grind
          )]
        simp_rw [intervalIntegral.integral_const']
        simp only [measurableSet_Ioc, measureReal_restrict_apply, add_lt_iff_neg_left, not_lt,
          zero_le_one, Set.Ioc_eq_empty, measureReal_empty, sub_zero, smul_eq_mul]
        nth_rw 2 [← Finset.sum_coe_sort]
        simp_rw [pre_413_measure_inter hx]
        simp only [ite_mul, zero_mul]
        have log_succ (y: Finset.Ico 1 ⌊x⌋₊) : Real.log (y + 1) ≠ 0 := by
          have foo := y.property
          simp
          norm_cast
          grind
        field_simp [log_succ]
        rw [Finset.sum_coe_sort (f := fun y => (if Nat.Prime (y + 1) then (f (↑y + 1)) else 0)),
            Finset.sum_Ico_eq_sum_range]
        norm_cast
        ring_nf
        conv =>
          rhs
          arg 1
          arg 1
          equals ⌊x⌋₊ + 1 - 2 => simp
        rw [← Finset.sum_Ico_eq_sum_range (m := 2) (f := fun x => if Nat.Prime (x) then f ↑(x) else 0)]
        conv =>
          rhs
          arg 1
          equals Finset.Icc 2 ⌊x⌋₊ =>
            ext a
            simp
        rw [Finset.sum_filter, Finset.Iic_eq_Icc]
        rw [← Finset.sum_subset (s₁ := Finset.Icc 2 ⌊x⌋₊)]
        · intro a ha
          simp at ha
          simp
          omega
        · intro a ha a_not
          simp at a_not
          simp at ha
          have a_lt: a < 2 := by omega
          have not_prime : ¬ Nat.Prime a := by
            by_cases a_eq: a = 0
            · simp [a_eq, Nat.not_prime_zero]
            · by_cases a_eq: a = 1
              · simp [a_eq, Nat.not_prime_one]
              · omega
          simp [not_prime]
      · apply support_pre413 hx
    · simp only [Int.cast_natCast, zero_add]
      apply summable_pre413 (by exact Metric.isBounded_Icc 2 x) (by exact
        measurableSet_Icc)
    · rw [summable_congr (g := 0)]
      · apply summable_zero
      · intro n
        rw [intervalIntegral.integral_of_le (by simp)]
        have inter_empty: Set.Ioc (-1 + -(n: ℝ)) (-↑n) ∩ Set.Icc 2 x = ∅ := by
          ext a
          simp only [Set.mem_inter_iff, Set.mem_Ioc, add_neg_lt_iff_lt_add, Set.mem_Icc,
            Set.mem_empty_iff_false, iff_false, not_and, not_le, and_imp]
          intros
          linarith
        simp [inter_empty]
  · apply ContinuousOn.integrableOn_Icc
    intro a ha
    have a_ne: a ≠ 0 := by grind
    apply ContinuousWithinAt.div
    · apply hf.mono (t := Set.Icc _ _)
      · intro a ha
        simp
        simp at ha
        grind
      · simpa using ha
    · apply ContinuousAt.continuousWithinAt
      fun_prop (disch := assumption)
    · simp
      grind

@[blueprint
  "rs-413"
  (title := "RS equation (4.13)")
  (statement := /-- $\sum_{p \leq x} f(p) = \frac{f(x) \vartheta(x)}{\log x} - \int_2^x \vartheta(y) \frac{d}{dy}( \frac{f(y)}{\log y} )\ dy.$ -/)
  (proof := /-- Follows from Sublemma \ref{rs-pre-413} and integration by parts. -/)
  (latexEnv := "sublemma")
  (discussion := 650)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9055ac071fb1dff52c5bdf94a6cceb862831b174` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
