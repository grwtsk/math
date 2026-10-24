# lintegral_exp_mul_sq_norm_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31a85780a3f310d0c3713db48b94cc23ec76185c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d26e80d9-4c67-7dcf-6a70-16fb6dd7209a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb8e0028-e77c-b14b-000a-ea8c72ca4d67",
  "kind": "lemma",
  "lexical_name": "lintegral_exp_mul_sq_norm_le_mul",
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
  "slug": "lintegral-exp-mul-sq-norm-le-mul--b07c1bfdb931b89145794471",
  "source": {
    "blob": "31a85780a3f310d0c3713db48b94cc23ec76185c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 381,
    "path": "GRWTSK/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b07c1bfdb931b8914579447194bfac8adb9e60bc68aee7301c37a3b662cf8ddd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb8e0028-e77c-b14b-000a-ea8c72ca4d67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_exp_mul_sq_norm_le_mul [IsProbabilityMeasure μ]
    (h_rot : (μ.prod μ).map (ContinuousLinearMap.rotation (-(π / 4))) = μ.prod μ)
    (ha_pos : 0 < a)
    {c' : ℝ≥0∞} (hc' : c' ≤ μ {x | ‖x‖ ≤ a}) (hc'_gt : 2⁻¹ < c') :
    ∫⁻ x, .ofReal (rexp (logRatio c' * a⁻¹ ^ 2 * ‖x‖ ^ 2)) ∂μ
      ≤ μ {x | ‖x‖ ≤ a} *
       (.ofReal (rexp (logRatio c'))
        + ∑' n, .ofReal (rexp (-2⁻¹ * Real.log (c' / (1 - c')).toReal * 2 ^ n))) := by
  let t := normThreshold a
  let c := μ {x | ‖x‖ ≤ a}
  let C := logRatio c' * a⁻¹ ^ 2
  have hc'_le : c' ≤ 1 := hc'.trans prob_le_one
  -- We want to bound an integral
  change ∫⁻ x, .ofReal (rexp (C * ‖x‖ ^ 2)) ∂μ
      ≤ c * (.ofReal (rexp (logRatio c'))
            + ∑' n, .ofReal (rexp (-2⁻¹ * Real.log (c' / (1 - c')).toReal * 2 ^ n)))
  -- We will cut the space into a ball of radius `a` and annuli defined from the thresholds `t n`
  -- and bound the integral on each piece.
  -- First, we bound the integral on the ball of radius `a`
  have ht_int_zero : ∫⁻ x in closedBall 0 a, .ofReal (rexp (C * ‖x‖ ^ 2)) ∂μ
      ≤ μ {x | ‖x‖ ≤ a} * .ofReal (rexp (logRatio c')) := by
    calc ∫⁻ x in closedBall 0 a, .ofReal (rexp (C * ‖x‖ ^ 2)) ∂μ
    _ ≤ ∫⁻ x in closedBall 0 a, .ofReal (rexp (C * a ^ 2)) ∂μ := by
      refine setLIntegral_mono (by fun_prop) fun x hx ↦ ?_
      gcongr
      · exact mul_nonneg (logRatio_nonneg hc'_gt.le hc'_le) (by positivity)
      · simpa using hx
    _ = μ {x | ‖x‖ ≤ a} * .ofReal (rexp (logRatio c')) := by
      simp only [lintegral_const, MeasurableSet.univ, Measure.restrict_apply, Set.univ_inter]
      rw [mul_comm]
      simp only [inv_pow, C]
      field_simp
      congr with x
      simp
  -- We dispense with an edge case. If `μ {x | ‖x‖ ≤ a} = 1`, then the integral over
  -- the complement of the ball is zero and we are done.
  by_cases ha : μ {x | ‖x‖ ≤ a} = 1
  · simp only [ha, one_mul, ENNReal.toReal_div, neg_mul, ge_iff_le, c] at ht_int_zero ⊢
    refine le_add_right ((le_of_eq ?_).trans ht_int_zero)
    rw [← setLIntegral_univ]
    refine setLIntegral_congr ?_
    rw [← ae_iff_prob_eq_one ?_] at ha
    · refine (ae_eq_univ.2 ?_).symm
      change μ {x | ¬ x ∈ closedBall 0 a} = 0
      rw [← ae_iff]
      filter_upwards [ha] with x hx using by simp [hx]
    · fun_prop
  -- So we can assume `μ {x | ‖x‖ ≤ a} < 1`, which implies `c' < 1`
  have ha_lt : μ {x | ‖x‖ ≤ a} < 1 := lt_of_le_of_ne prob_le_one ha
  have hc'_lt : c' < 1 := lt_of_le_of_lt hc' ha_lt
  -- We cut the space into a ball and a sequence of annuli between the thresholds `t n`
  have h_iUnion : (Set.univ : Set E)
      = closedBall 0 a ∪ ⋃ n, closedBall 0 (t (n + 1)) \ closedBall 0 (t n) := by
    ext x
    simp only [Set.mem_univ, Set.mem_union, Metric.mem_closedBall, dist_zero_right, Set.mem_iUnion,
      Set.mem_sdiff, not_le, true_iff]
    simp_rw [and_comm (b := t _ < ‖x‖)]
    rcases le_or_gt (‖x‖) a with ha' | ha'
    · exact Or.inl ha'
    · exact Or.inr <| (normThreshold_strictMono ha_pos).exists_between_of_tendsto_atTop
        (tendsto_normThreshold_atTop ha_pos) ha'
  -- The integral over the union is at most the sum of the integrals
  rw [← setLIntegral_univ, h_iUnion]
  have : ∫⁻ x in closedBall 0 (t 0) ∪ ⋃ n, closedBall 0 (t (n + 1)) \ closedBall 0 (t n),
        .ofReal (rexp (C * ‖x‖ ^ 2)) ∂μ
      ≤ ∫⁻ x in closedBall 0 (t 0), .ofReal (rexp (C * ‖x‖ ^ 2)) ∂μ +
        ∑' i, ∫⁻ x in closedBall 0 (t (i + 1)) \ closedBall 0 (t i),
          .ofReal (rexp (C * ‖x‖ ^ 2)) ∂μ := by
    refine (lintegral_union_le _ _ _).trans ?_
    gcongr
    exact lintegral_iUnion_le _ _
  -- Each of the integrals in the sum correspond to the terms in the goal
  refine this.trans ?_
  rw [mul_add]
  gcongr
  -- We already proved the upper bound for the ball
  · exact ht_int_zero
  rw [← ENNReal.tsum_mul_left]
  gcongr with n
  -- Now we prove the bound for each annulus, by calling a previous lemma
  refine (le_trans ?_ (lintegral_closedBall_sdiff_exp_logRatio_mul_sq_le h_rot
    (hc'_gt.trans_le hc') ha_lt n)).trans ?_
  · gcongr
    simp only [inv_pow, C]
    field_simp
    exact logRatio_mono hc'_gt ha_lt hc'
  gcongr _ * ENNReal.ofReal (rexp ?_)
  simp only [ENNReal.toReal_div, neg_mul, neg_le_neg_iff]
  gcongr
  · refine div_pos ?_ ?_
    all_goals rw [ENNReal.toReal_pos_iff]
    · exact ⟨lt_trans (by norm_num) hc'_gt, by finiteness⟩
    · simp only [tsub_pos_iff_lt, hc'_lt, true_and]
      finiteness
  · simp only [ENNReal.toReal_pos_iff, tsub_pos_iff_lt]
    exact ⟨ha_lt, by finiteness⟩
  · finiteness
  · finiteness

end Fernique

open Fernique

/-- For `μ` a probability measure whose product with itself is invariant by rotation and for `a, c`
with `2⁻¹ < c ≤ μ {x | ‖x‖ ≤ a}`, the integral `∫⁻ x, exp (logRatio c * a⁻¹ ^ 2 * ‖x‖ ^ 2) ∂μ`
is bounded by a quantity that does not depend on `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31a85780a3f310d0c3713db48b94cc23ec76185c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
