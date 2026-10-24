# finite_integral_one_add_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b144afb1-9b83-4ef9-90c3-54508e978679",
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
  "slug": "finite-integral-one-add-norm--e879dca82e6293a706a8cf79",
  "source": {
    "blob": "93a1be435cf4c08f7648f8fec6ecf57be1dc0420",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e879dca82e6293a706a8cf7971eafd636cfb204216f8c1d937c7bd52c09a424c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b144afb1-9b83-4ef9-90c3-54508e978679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–149.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93a1be435cf4c08f7648f8fec6ecf57be1dc0420` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
