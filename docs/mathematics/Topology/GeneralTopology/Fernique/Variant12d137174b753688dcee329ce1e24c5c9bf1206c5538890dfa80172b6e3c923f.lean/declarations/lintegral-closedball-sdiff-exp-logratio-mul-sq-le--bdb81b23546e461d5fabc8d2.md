# lintegral_closedBall_sdiff_exp_logRatio_mul_sq_le

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
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b19268c-820d-4342-d43c-efb71b9ac092",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b687352-558e-a76a-61dd-ed0acb347149",
  "kind": "lemma",
  "lexical_name": "lintegral_closedBall_sdiff_exp_logRatio_mul_sq_le",
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
  "slug": "lintegral-closedball-sdiff-exp-logratio-mul-sq-le--bdb81b23546e461d5fabc8d2",
  "source": {
    "blob": "31a85780a3f310d0c3713db48b94cc23ec76185c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdb81b23546e461d5fabc8d255788d5b1a8ba19258c4aca7e14a67ff7ff25154",
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

Occurrence: `result:9b687352-558e-a76a-61dd-ed0acb347149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_closedBall_sdiff_exp_logRatio_mul_sq_le [IsProbabilityMeasure μ]
    (h_rot : (μ.prod μ).map (ContinuousLinearMap.rotation (-(π / 4))) = μ.prod μ)
    (ha_gt : 2⁻¹ < μ {x | ‖x‖ ≤ a}) (ha_lt : μ {x | ‖x‖ ≤ a} < 1) (n : ℕ) :
    ∫⁻ x in (closedBall 0 (normThreshold a (n + 1)) \ closedBall 0 (normThreshold a n)),
        .ofReal (rexp (logRatio (μ {x | ‖x‖ ≤ a}) * a⁻¹ ^ 2 * ‖x‖ ^ 2)) ∂μ
      ≤ μ {x | ‖x‖ ≤ a} * .ofReal (rexp
          (-2⁻¹ * Real.log (μ {x | ‖x‖ ≤ a} / (1 - μ {x | ‖x‖ ≤ a})).toReal * 2 ^ n)) :=
  let t := normThreshold a
  let c := μ {x | ‖x‖ ≤ a}
  let C := logRatio c * a⁻¹ ^ 2
  calc ∫⁻ x in (closedBall 0 (t (n + 1)) \ closedBall 0 (t n)), .ofReal (rexp (C * ‖x‖ ^ 2)) ∂μ
  -- We bound the function on the set by its maximal value, at the outer boundary of the annulus
  _ ≤ ∫⁻ x in (closedBall 0 (t (n + 1)) \ closedBall 0 (t n)),
      .ofReal (rexp (C * t (n + 1) ^ 2)) ∂μ := by
    refine setLIntegral_mono (by fun_prop) fun x hx ↦ ?_
    gcongr
    · exact mul_nonneg (logRatio_pos ha_gt ha_lt).le (by positivity)
    · simp only [Set.mem_sdiff, mem_closedBall, dist_zero_right, not_le] at hx
      exact hx.1
  -- The integral of a constant is the constant times the measure of the set
  _ = .ofReal (rexp (C * t (n + 1) ^ 2)) * μ (closedBall 0 (t (n + 1)) \ closedBall 0 (t n)) := by
    simp only [lintegral_const, MeasurableSet.univ, Measure.restrict_apply, Set.univ_inter, C, t]
  _ ≤ .ofReal (rexp (C * t (n + 1) ^ 2)) * μ {x | t n < ‖x‖} := by
    gcongr
    intro x
    simp
  -- We obtained an upper bound on the measure of that annulus in a previous lemma
  _ ≤ .ofReal (rexp (C * t (n + 1) ^ 2))
      * c * .ofReal (rexp (-Real.log (c / (1 - c)).toReal * 2 ^ n)) := by
    conv_rhs => rw [mul_assoc]
    gcongr
    exact measure_gt_normThreshold_le_exp h_rot ha_gt ha_lt n
  _ ≤ .ofReal (rexp (2⁻¹ * Real.log (c.toReal / (1 - c).toReal) * 2 ^ n))
      * c * .ofReal (rexp (-Real.log (c / (1 - c)).toReal * 2 ^ n)) := by
    gcongr ENNReal.ofReal (rexp ?_) * _ * _
    convert! logRatio_mul_normThreshold_add_one_le ha_gt ha_lt n (a := a) using 1
    ring
  _ = c * .ofReal (rexp (-2⁻¹ * Real.log (c / (1 - c)).toReal * 2 ^ n)) := by
    rw [mul_comm _ c, mul_assoc, ← ENNReal.ofReal_mul (by positivity), ← Real.exp_add]
    congr
    norm_cast
    simp only [Nat.cast_pow, Nat.cast_ofNat, ENNReal.toReal_div]
    ring

@[deprecated (since := "2026-06-03")]
alias lintegral_closedBall_diff_exp_logRatio_mul_sq_le :=
  lintegral_closedBall_sdiff_exp_logRatio_mul_sq_le

open Metric in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31a85780a3f310d0c3713db48b94cc23ec76185c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
