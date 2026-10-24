# IndepSets.indep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4aec8554af0fc2c0beb5d13cf6b3045bc4c418e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0aaa610-a1f1-469d-eab2-a986a68de27a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ff5ea2d-cdc0-4e3c-e4c7-a3c7111f4a0d",
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
  "slug": "indepsets-indep--2fa5977573271ee1bb82a299",
  "source": {
    "blob": "d4aec8554af0fc2c0beb5d13cf6b3045bc4c418e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 518,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa5977573271ee1bb82a2991b91a8c996df3af2594a3ad38a5d051335f90c13",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ff5ea2d-cdc0-4e3c-e4c7-a3c7111f4a0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepSets.indep {m1 m2 m : MeasurableSpace Ω} {κ : Kernel α Ω} {μ : Measure α}
    [IsZeroOrMarkovKernel κ] {p1 p2 : Set (Set Ω)} (h1 : m1 ≤ m) (h2 : m2 ≤ m) (hp1 : IsPiSystem p1)
    (hp2 : IsPiSystem p2) (hpm1 : m1 = generateFrom p1) (hpm2 : m2 = generateFrom p2)
    (hyp : IndepSets p1 p2 κ μ) :
    Indep m1 m2 κ μ := by
  rcases eq_zero_or_isMarkovKernel κ with rfl | h
  · simp
  intros t1 t2 ht1 ht2
  induction t1, ht1 using induction_on_inter hpm1 hp1 with
  | empty =>
    simp only [Set.empty_inter, measure_empty, zero_mul, eq_self_iff_true, Filter.eventually_true]
  | basic t ht =>
    refine IndepSets.indep_aux h2 hp2 hpm2 hyp ht (h1 _ ?_) ht2
    rw [hpm1]
    exact measurableSet_generateFrom ht
  | compl t ht iht =>
    filter_upwards [iht] with a ha
    have : tᶜ ∩ t2 = t2 \ (t ∩ t2) := by
      rw [Set.inter_comm t, Set.diff_self_inter, Set.diff_eq_compl_inter]
    rw [this, Set.inter_comm t t2,
      measure_diff Set.inter_subset_left ((h2 _ ht2).inter (h1 _ ht)).nullMeasurableSet
        (measure_ne_top (κ a) _),
      Set.inter_comm, ha, measure_compl (h1 _ ht) (measure_ne_top (κ a) t), measure_univ,
      mul_comm (1 - κ a t), ENNReal.mul_sub (fun _ _ ↦ measure_ne_top (κ a) _), mul_one, mul_comm]
  | iUnion f hf_disj hf_meas h =>
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

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4aec8554af0fc2c0beb5d13cf6b3045bc4c418e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
