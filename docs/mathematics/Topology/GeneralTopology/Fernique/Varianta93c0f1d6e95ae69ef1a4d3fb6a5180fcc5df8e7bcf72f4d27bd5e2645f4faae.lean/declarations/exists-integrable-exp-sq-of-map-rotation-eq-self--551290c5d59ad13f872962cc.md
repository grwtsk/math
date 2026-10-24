# exists_integrable_exp_sq_of_map_rotation_eq_self'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58d4bc61-b6c1-ebaf-4192-667dcae130c2",
  "kind": "lemma",
  "lexical_name": "exists_integrable_exp_sq_of_map_rotation_eq_self'",
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
  "slug": "exists-integrable-exp-sq-of-map-rotation-eq-self--551290c5d59ad13f872962cc",
  "source": {
    "blob": "559e64cf17d595dbfc07c9242084a40ca67adfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 528,
    "path": "GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:551290c5d59ad13f872962cc38ac32c241e4aa8417ed0589b96a6e93443f5a9c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58d4bc61-b6c1-ebaf-4192-667dcae130c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_integrable_exp_sq_of_map_rotation_eq_self' [IsProbabilityMeasure μ]
    (h_rot : (μ.prod μ).map (ContinuousLinearMap.rotation (-(π / 4))) = μ.prod μ)
    {a : ℝ} (ha_pos : 0 < a) (ha_gt : 2⁻¹ < μ {x | ‖x‖ ≤ a}) (ha_lt : μ {x | ‖x‖ ≤ a} < 1) :
    ∃ C, 0 < C ∧ Integrable (fun x ↦ rexp (C * ‖x‖ ^ 2)) μ := by
  let c := μ {x | ‖x‖ ≤ a}
  replace hc_lt : c < 1 := ha_lt
  have hc_lt_top : c < ∞ := measure_lt_top _ _
  have hc_one_sub_lt_top : 1 - c < ∞ := lt_top_of_lt (b := 2) (tsub_le_self.trans_lt (by simp))
  have h_one_sub_lt_self : 1 - c < c := by
    refine ENNReal.sub_lt_of_lt_add hc_lt.le ?_
    rw [← two_mul]
    rwa [inv_eq_one_div, ENNReal.div_lt_iff (by simp) (by simp), mul_comm] at ha_gt
  have h_pos : 0 < logRatio c * a⁻¹ ^ 2 := mul_pos (logRatio_pos ha_gt hc_lt) (by positivity)
  refine ⟨logRatio c * a⁻¹ ^ 2, h_pos, ⟨by fun_prop, ?_⟩⟩
  simp only [HasFiniteIntegral, ← ofReal_norm, Real.norm_eq_abs, Real.abs_exp]
  -- `⊢ ∫⁻ x, ENNReal.ofReal (rexp (logRatio c * a⁻¹ ^ 2 * ‖x‖ ^ 2)) ∂μ < ∞`
  refine (lintegral_exp_mul_sq_norm_le_of_map_rotation_eq_self h_rot le_rfl ha_gt).trans_lt ?_
  refine ENNReal.add_lt_top.mpr ⟨ENNReal.ofReal_lt_top, ?_⟩
  refine Summable.tsum_ofReal_lt_top <|
    Real.summable_exp_nat_mul_of_ge ?_ (fun i ↦ mod_cast (Nat.lt_pow_self (by simp)).le)
  refine mul_neg_of_neg_of_pos (by simp) (Real.log_pos ?_)
  change 1 < (c / (1 - c)).toReal
  simp only [ENNReal.toReal_div, one_lt_div_iff, ENNReal.toReal_pos_iff, tsub_pos_iff_lt, hc_lt,
    hc_one_sub_lt_top, and_self, true_and]
  rw [ENNReal.toReal_lt_toReal hc_one_sub_lt_top.ne hc_lt_top.ne]
  exact .inl h_one_sub_lt_self

/-- Auxiliary lemma for `exists_integrable_exp_sq_of_map_rotation_eq_self`, in which we will replace
the assumption `IsProbabilityMeasure μ` by the weaker `IsFiniteMeasure μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559e64cf17d595dbfc07c9242084a40ca67adfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
