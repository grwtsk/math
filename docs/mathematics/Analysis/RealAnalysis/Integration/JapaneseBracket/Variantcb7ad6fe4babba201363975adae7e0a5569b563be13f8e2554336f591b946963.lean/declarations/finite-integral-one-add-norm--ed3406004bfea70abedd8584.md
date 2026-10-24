# finite_integral_one_add_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53624264e17f9f26edf0fb1ce109889ad416f4d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d9afcfc-652a-a58f-b307-d1124eb06e2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80b0d90f-b3e9-9d29-de1f-e977273d97f1",
  "kind": "theorem",
  "lexical_name": "finite_integral_one_add_norm",
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
  "slug": "finite-integral-one-add-norm--ed3406004bfea70abedd8584",
  "source": {
    "blob": "53624264e17f9f26edf0fb1ce109889ad416f4d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed3406004bfea70abedd85840c25d0a4e4ad104723d1ca782efb3bc1cefe55f0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80b0d90f-b3e9-9d29-de1f-e977273d97f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_integral_one_add_norm [MeasureSpace E] [BorelSpace E]
    [(volume : Measure E).IsAddHaarMeasure] {r : ℝ} (hnr : (finrank ℝ E : ℝ) < r) :
    (∫⁻ x : E, ENNReal.ofReal ((1 + ‖x‖) ^ (-r))) < ∞ := by
  have hr : 0 < r := lt_of_le_of_lt (finrank ℝ E).cast_nonneg hnr
  -- We start by applying the layer cake formula
  have h_meas : Measurable fun ω : E => (1 + ‖ω‖) ^ (-r) :=
    -- porting note: was `by measurability`
    (measurable_norm.const_add _).pow_const _
  have h_pos : ∀ x : E, 0 ≤ (1 + ‖x‖) ^ (-r) := fun x ↦ by positivity
  rw [lintegral_eq_lintegral_meas_le volume h_pos h_meas]
  have h_int : ∀ t, 0 < t → volume {a : E | t ≤ (1 + ‖a‖) ^ (-r)} =
      volume (Metric.closedBall (0 : E) (t ^ (-r⁻¹) - 1)) := fun t ht ↦ by
    congr 1
    ext x
    simp only [mem_setOf_eq, mem_closedBall_zero_iff]
    exact le_rpow_one_add_norm_iff_norm_le hr (mem_Ioi.mp ht) x
  rw [set_lintegral_congr_fun measurableSet_Ioi (eventually_of_forall h_int)]
  set f := fun t : ℝ ↦ volume (Metric.closedBall (0 : E) (t ^ (-r⁻¹) - 1))
  set mB := volume (Metric.ball (0 : E) 1)
  -- the next two inequalities are in fact equalities but we don't need that
  calc
    ∫⁻ t in Ioi 0, f t ≤ ∫⁻ t in Ioc 0 1 ∪ Ioi 1, f t := lintegral_mono_set Ioi_subset_Ioc_union_Ioi
    _ ≤ (∫⁻ t in Ioc 0 1, f t) + ∫⁻ t in Ioi 1, f t := lintegral_union_le _ _ _
    _ < ∞ := ENNReal.add_lt_top.2 ⟨?_, ?_⟩
  · -- We use estimates from auxiliary lemmas to deal with integral from `0` to `1`
    have h_int' : ∀ t ∈ Ioc (0 : ℝ) 1,
        f t = ENNReal.ofReal ((t ^ (-r⁻¹) - 1) ^ finrank ℝ E) * mB := fun t ht ↦ by
      refine' volume.addHaar_closedBall (0 : E) _
      rw [sub_nonneg]
      exact Real.one_le_rpow_of_pos_of_le_one_of_nonpos ht.1 ht.2 (by simp [hr.le])
    rw [set_lintegral_congr_fun measurableSet_Ioc (ae_of_all _ h_int'),
      lintegral_mul_const' _ _ measure_ball_lt_top.ne]
    exact ENNReal.mul_lt_top
      (finite_integral_rpow_sub_one_pow_aux (finrank ℝ E) hnr).ne measure_ball_lt_top.ne
  · -- The integral from 1 to ∞ is zero:
    have h_int'' : ∀ t ∈ Ioi (1 : ℝ), f t = 0 := fun t ht => by
      simp only [closedBall_rpow_sub_one_eq_empty_aux E hr ht, measure_empty]
    -- The integral over the constant zero function is finite:
    rw [set_lintegral_congr_fun measurableSet_Ioi (ae_of_all volume <| h_int''), lintegral_const 0,
      zero_mul]
    exact WithTop.zero_lt_top
#align finite_integral_one_add_norm finite_integral_one_add_norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53624264e17f9f26edf0fb1ce109889ad416f4d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
