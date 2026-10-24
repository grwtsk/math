# IndepSets.indep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb720a5629710180fcd3c206acbe3275cdb76d94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95fdd909-61c1-31b5-5acb-e94ff0307c90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b850d026-e52c-0140-9bac-0d8204c82d80",
  "kind": "theorem",
  "lexical_name": "IndepSets.indep",
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
  "slug": "indepsets-indep--9cf004c8d6f3c2cae59708f6",
  "source": {
    "blob": "bb720a5629710180fcd3c206acbe3275cdb76d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 353,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cf004c8d6f3c2cae59708f69e0d09778627001f84c066508ed2d2f8a46aff94",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b850d026-e52c-0140-9bac-0d8204c82d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepSets.indep {m1 m2 m : MeasurableSpace Ω} {κ : kernel α Ω} {μ : Measure α}
    [IsMarkovKernel κ] {p1 p2 : Set (Set Ω)} (h1 : m1 ≤ m) (h2 : m2 ≤ m) (hp1 : IsPiSystem p1)
    (hp2 : IsPiSystem p2) (hpm1 : m1 = generateFrom p1) (hpm2 : m2 = generateFrom p2)
    (hyp : IndepSets p1 p2 κ μ) :
    Indep m1 m2 κ μ := by
  intros t1 t2 ht1 ht2
  refine @induction_on_inter _ (fun t ↦ ∀ᵐ (a : α) ∂μ, κ a (t ∩ t2) = κ a t * κ a t2) _ m1 hpm1 hp1
    ?_ ?_ ?_ ?_ _ ht1
  · simp only [Set.empty_inter, measure_empty, zero_mul, eq_self_iff_true,
      Filter.eventually_true]
  · intros t ht_mem_p1
    have ht1 : MeasurableSet[m] t := by
      refine h1 _ ?_
      rw [hpm1]
      exact measurableSet_generateFrom ht_mem_p1
    exact IndepSets.indep_aux h2 hp2 hpm2 hyp ht_mem_p1 ht1 ht2
  · intros t ht h
    filter_upwards [h] with a ha
    have : tᶜ ∩ t2 = t2 \ (t ∩ t2) := by
      rw [Set.inter_comm t, Set.diff_self_inter, Set.diff_eq_compl_inter]
    rw [this, Set.inter_comm t t2,
      measure_diff (Set.inter_subset_left _ _) ((h2 _ ht2).inter (h1 _ ht))
        (measure_ne_top (κ a) _),
      Set.inter_comm, ha, measure_compl (h1 _ ht) (measure_ne_top (κ a) t), measure_univ,
      mul_comm (1 - κ a t), ENNReal.mul_sub (fun _ _ ↦ measure_ne_top (κ a) _), mul_one, mul_comm]
  · intros f hf_disj hf_meas h
    rw [← ae_all_iff] at h
    filter_upwards [h] with a ha
    rw [Set.inter_comm, Set.inter_iUnion, measure_iUnion]
    · rw [measure_iUnion hf_disj (fun i ↦ h1 _ (hf_meas i))]
      rw [← ENNReal.tsum_mul_right]
      congr 1 with i
      rw [Set.inter_comm t2, ha i]
    · intros i j hij
      rw [Function.onFun, Set.inter_comm t2, Set.inter_comm t2]
      exact Disjoint.inter_left _ (Disjoint.inter_right _ (hf_disj hij))
    · exact fun i ↦ (h2 _ ht2).inter (h1 _ (hf_meas i))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb720a5629710180fcd3c206acbe3275cdb76d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
