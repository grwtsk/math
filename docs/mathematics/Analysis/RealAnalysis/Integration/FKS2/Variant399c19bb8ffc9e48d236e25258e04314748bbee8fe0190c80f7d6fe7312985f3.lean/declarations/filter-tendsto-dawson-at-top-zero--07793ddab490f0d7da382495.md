# filter_tendsto_dawson_at_top_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89cf0386-d45e-40e1-505f-7c5435693001",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01995fbe-f2b8-349b-920c-a2587570174e",
  "kind": "lemma",
  "lexical_name": "filter_tendsto_dawson_at_top_zero",
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
  "slug": "filter-tendsto-dawson-at-top-zero--07793ddab490f0d7da382495",
  "source": {
    "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07793ddab490f0d7da382495d530f61a841093f8b3d34c28d0c9c4ad42f930ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01995fbe-f2b8-349b-920c-a2587570174e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma filter_tendsto_dawson_at_top_zero : Filter.Tendsto dawson Filter.atTop (nhds 0) := by
  have h_dawson_le : ∀ x > 0, dawson x ≤ 1 / x := by
    intro x hx
    have h_deriv : ∀ t, HasDerivAt (fun t ↦ exp (x * t) / x) (exp (x * t)) t := by
      intro t
      have h := ((hasDerivAt_id t).const_mul x).exp.div_const x
      rwa [mul_one, mul_div_cancel_right₀ _ (ne_of_gt hx)] at h
    have hc : Continuous (fun t ↦ exp (x * t)) := by fun_prop
    have h_int_val : ∫ t in 0..x, exp (x * t) = exp (x * x) / x - exp (x * 0) / x :=
      intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ h_deriv t) (hc.intervalIntegrable 0 x)
    have h_int_le_exp : ∫ t in 0..x, exp (x * t) ≤ exp (x ^ 2) / x := by
      rw [h_int_val, mul_zero, exp_zero, ← sq]
      have : 0 ≤ 1 / x := one_div_nonneg.mpr hx.le
      linarith
    have hc1 : Continuous (fun t : ℝ ↦ exp (t ^ 2)) := continuous_exp.comp (continuous_pow 2)
    have h_mono : ∫ t in 0..x, exp (t ^ 2) ≤ ∫ t in 0..x, exp (x * t) := by
      refine intervalIntegral.integral_mono_on hx.le (hc1.intervalIntegrable 0 x)
        (hc.intervalIntegrable 0 x) (fun t ht ↦ exp_le_exp.mpr ?_)
      rw [Set.mem_Icc] at ht
      rw [sq, mul_comm x]
      exact mul_le_mul_of_nonneg_left ht.2 ht.1
    unfold dawson
    calc exp (-x ^ 2) * ∫ t in 0..x, exp (t ^ 2)
      _ ≤ exp (-x ^ 2) * (exp (x ^ 2) / x) := mul_le_mul_of_nonneg_left (le_trans h_mono h_int_le_exp) (exp_pos _).le
      _ = 1 / x := by
        rw [show exp (-x ^ 2) * (exp (x ^ 2) / x) = (exp (-x ^ 2) * exp (x ^ 2)) / x by ring]
        rw [← exp_add, neg_add_cancel, exp_zero]
  apply squeeze_zero'
  · filter_upwards [Filter.eventually_gt_atTop (0 : ℝ)] with x hx
    exact dawson_nonneg hx.le
  · filter_upwards [Filter.eventually_gt_atTop (0 : ℝ)] with x hx
    exact h_dawson_le x hx
  · simpa only [inv_eq_one_div] using tendsto_inv_atTop_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88be1b47c741ee6510e22488953556110e8e6ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
