# integral_one_div_log_sq_le_of_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3075,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:334f524a-d69b-8d6e-546e-9cc4ae933731",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1181010-932c-6ee2-8261-a5e8cc5052d7",
  "kind": "lemma",
  "lexical_name": "integral_one_div_log_sq_le_of_ge",
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
  "slug": "integral-one-div-log-sq-le-of-ge--c8ddbb087fe2ffc44447fc9e",
  "source": {
    "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3127,
    "line": 3075,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8ddbb087fe2ffc44447fc9e4bfa3b7d7c6ed0fdd95a999868c970c49507fde9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1181010-932c-6ee2-8261-a5e8cc5052d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3075–3127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_one_div_log_sq_le_of_ge {x₁ : ℝ} (hx₁ : 14 ≤ x₁) {y : ℝ} (hy : x₁ ≤ y) :
    ∫ s in x₁..y, 1 / (Real.log s) ^ 2 ≤ (Real.log x₁ / (Real.log x₁ - 2)) * (y / (Real.log y) ^ 2) := by
  have hx₁_gt : 1 < x₁ := by linarith
  have hlogx₁ : 0 < Real.log x₁ := Real.log_pos hx₁_gt
  have hlogx₁_gt : 2 < Real.log x₁ := log_gt_two_of_ge_14 hx₁
  have hc : 0 < 1 - 2 / Real.log x₁ := by
    have : 2 / Real.log x₁ < 1 := (div_lt_iff₀ hlogx₁).mpr (by linarith)
    linarith
  have hs_gt_of_mem : ∀ s ∈ Set.uIcc x₁ y, 1 < s := fun s hs => by
    cases Set.mem_uIcc.mp hs <;> linarith
  have h_intble1 : IntervalIntegrable (fun s ↦ (1 - 2 / Real.log x₁) * (1 / (Real.log s) ^ 2)) volume x₁ y :=
    ContinuousOn.intervalIntegrable <| continuousOn_of_forall_continuousAt fun s hs ↦ by
      have hne : Real.log s ≠ 0 := ne_of_gt (Real.log_pos (hs_gt_of_mem s hs))
      exact ContinuousAt.mul continuousAt_const
        (ContinuousAt.div continuousAt_const
          (ContinuousAt.pow (Real.continuousAt_log (by linarith [hs_gt_of_mem s hs])) 2)
          (pow_ne_zero 2 hne))
  have h_intble2 : IntervalIntegrable (fun s ↦ 1 / (Real.log s) ^ 2 - 2 / (Real.log s) ^ 3) volume x₁ y :=
    ContinuousOn.intervalIntegrable <| continuousOn_of_forall_continuousAt fun s hs ↦ by
      have hne : Real.log s ≠ 0 := ne_of_gt (Real.log_pos (hs_gt_of_mem s hs))
      have hs0 : s ≠ 0 := by linarith [hs_gt_of_mem s hs]
      exact (ContinuousAt.div continuousAt_const
          (ContinuousAt.pow (Real.continuousAt_log hs0) 2) (pow_ne_zero 2 hne)).sub
        (ContinuousAt.div continuousAt_const
          (ContinuousAt.pow (Real.continuousAt_log hs0) 3) (pow_ne_zero 3 hne))
  have h_mono : ∫ s in x₁..y, (1 - 2 / Real.log x₁) * (1 / (Real.log s) ^ 2) ≤
      ∫ s in x₁..y, (1 / (Real.log s) ^ 2 - 2 / (Real.log s) ^ 3) := by
    apply intervalIntegral.integral_mono_on hy h_intble1 h_intble2
    intro s hs
    have hs_gt : 1 < s := hx₁_gt.trans_le hs.1
    have hlogs : 0 < Real.log s := Real.log_pos hs_gt
    have hlog_le : Real.log x₁ ≤ Real.log s := Real.log_le_log (by linarith) hs.1
    have h_frac : 2 / Real.log s ≤ 2 / Real.log x₁ :=
      div_le_div_of_nonneg_left (by norm_num) hlogx₁ hlog_le
    rw [show (1 - 2 / Real.log x₁) * (1 / (Real.log s) ^ 2) = (1 - 2 / Real.log x₁) / (Real.log s) ^ 2 by ring,
        show 1 / (Real.log s) ^ 2 - 2 / (Real.log s) ^ 3 = (1 - 2 / Real.log s) / (Real.log s) ^ 2 by field_simp]
    exact div_le_div_of_nonneg_right (by linarith) (by positivity)
  have h_int_eq : ∫ s in x₁..y, (1 / (Real.log s) ^ 2 - 2 / (Real.log s) ^ 3) =
      y / (Real.log y) ^ 2 - x₁ / (Real.log x₁) ^ 2 :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun s hs => hasDerivAt_id_div_log_sq (hx₁_gt.trans_le (Set.uIcc_of_le hy ▸ hs).1))
      h_intble2
  rw [intervalIntegral.integral_const_mul] at h_mono
  have h_bound : (1 - 2 / Real.log x₁) * ∫ s in x₁..y, 1 / (Real.log s) ^ 2 ≤ y / (Real.log y) ^ 2 :=
    calc (1 - 2 / Real.log x₁) * ∫ s in x₁..y, 1 / (Real.log s) ^ 2
        ≤ ∫ s in x₁..y, (1 / (Real.log s) ^ 2 - 2 / (Real.log s) ^ 3) := h_mono
      _ = y / (Real.log y) ^ 2 - x₁ / (Real.log x₁) ^ 2 := h_int_eq
      _ ≤ y / (Real.log y) ^ 2 := by linarith [div_nonneg (by linarith : 0 ≤ x₁) (by positivity : (0 : ℝ) ≤ (Real.log x₁) ^ 2)]
  have h_bound' : ∫ s in x₁..y, 1 / (Real.log s) ^ 2 ≤ (y / (Real.log y) ^ 2) / (1 - 2 / Real.log x₁) := by
    rwa [le_div_iff₀ hc, mul_comm]
  convert h_bound' using 1
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean#L3075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdccd0a48781b270841d4381607ac6c992b7e0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
