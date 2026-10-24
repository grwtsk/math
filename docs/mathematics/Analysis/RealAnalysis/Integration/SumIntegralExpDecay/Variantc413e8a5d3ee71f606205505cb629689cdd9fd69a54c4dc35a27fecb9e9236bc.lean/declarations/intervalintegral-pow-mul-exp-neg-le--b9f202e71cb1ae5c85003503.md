# intervalIntegral_pow_mul_exp_neg_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d8af6e90aba7cba86bdf6acab7b59613ecb38f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8005c0d3-35db-dc68-7216-bc695fa7abf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7f75781-fb0c-3b05-0e9b-23dfd0f270e7",
  "kind": "lemma",
  "lexical_name": "intervalIntegral_pow_mul_exp_neg_le",
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
  "slug": "intervalintegral-pow-mul-exp-neg-le--b9f202e71cb1ae5c85003503",
  "source": {
    "blob": "3d8af6e90aba7cba86bdf6acab7b59613ecb38f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9f202e71cb1ae5c85003503a60117dc2bddc297cb50c06fcaa55961f161e0bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7f75781-fb0c-3b05-0e9b-23dfd0f270e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma intervalIntegral_pow_mul_exp_neg_le {k : ℕ} {M c : ℝ} (hM : 0 ≤ M) (hc : 0 < c) :
    ∫ x in (0 : ℝ)..M, x ^ k * rexp (- (c * x)) ≤ k ! / c ^ (k + 1) := by
  have hk : (0 : ℝ) < ↑k + 1 := by positivity
  have key := integral_rpow_mul_exp_neg_mul_Ioi hk hc
  have hint : IntegrableOn (fun x ↦ x ^ ((↑k + 1 : ℝ) - 1) * rexp (-(c * x))) (Ioi 0) :=
    .of_integral_ne_zero (by rw [key]; positivity)
  rw [intervalIntegral.integral_of_le hM]
  calc ∫ x in Ioc (0 : ℝ) M, x ^ k * rexp (-(c * x))
    _ = ∫ x in Ioc (0 : ℝ) M, x ^ ((↑k + 1 : ℝ) - 1) * rexp (-(c * x)) := by
        simp [add_sub_cancel_right, rpow_natCast]
    _ ≤ ∫ x in Ioi (0 : ℝ), x ^ ((↑k + 1 : ℝ) - 1) * rexp (-(c * x)) := by
        apply setIntegral_mono_set hint _ Ioc_subset_Ioi_self.eventuallySubset
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
        exact mul_nonneg (rpow_nonneg hx.le _) (exp_nonneg _)
    _ = k ! / c ^ (k + 1) := by
        simp_rw [key, Gamma_nat_eq_factorial, div_eq_mul_inv,
          one_mul, mul_comm, inv_rpow hc.le, ← rpow_natCast]
        norm_cast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantc413e8a5d3ee71f606205505cb629689cdd9fd69a54c4dc35a27fecb9e9236bc.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8af6e90aba7cba86bdf6acab7b59613ecb38f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
