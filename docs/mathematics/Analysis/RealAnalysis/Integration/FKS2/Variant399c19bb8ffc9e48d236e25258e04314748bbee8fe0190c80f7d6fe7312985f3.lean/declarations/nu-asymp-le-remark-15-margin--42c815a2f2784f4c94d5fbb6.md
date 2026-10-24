# nu_asymp_le_remark_15_margin

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
      "line": 918,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f485a79f-3692-ddca-254a-50080006a79d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b393ef70-bfd6-8fa3-8a44-c99736134544",
  "kind": "theorem",
  "lexical_name": "nu_asymp_le_remark_15_margin",
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
  "slug": "nu-asymp-le-remark-15-margin--42c815a2f2784f4c94d5fbb6",
  "source": {
    "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 982,
    "line": 918,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42c815a2f2784f4c94d5fbb61d0ea06714ac20885fe344298322984749fd9adb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b393ef70-bfd6-8fa3-8a44-c99736134544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 918–982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nu_asymp_le_remark_15_margin (x₀ : ℝ) (h : Real.log x₀ ≥ 1000) :
    ν_asymp (FKS.A x₀) (3 / 2) 2 5.5666305 x₀ ≤ remark_15_margin := by
  set t : ℝ := Real.log x₀
  have ht : t ≥ 1000 := by simpa [t] using h
  have ht_pos : 0 < t := by linarith [ht]

  have hA_pos : 0 < FKS.A x₀ := by linarith [FKS_A_one_le x₀ h]
  have h_invA_le_one : 1 / FKS.A x₀ ≤ 1 :=
    (div_le_iff₀ hA_pos).2 (by simpa using FKS_A_one_le x₀ h)

  have hxhalf_abs : |x₀ ^ (-(1 / 2 : ℝ))| ≤ exp (-(1 / 2 : ℝ) * t) := by
    simpa [t, mul_assoc, mul_left_comm, mul_comm] using Real.abs_rpow_le_exp_log_mul x₀ (-(1 / 2 : ℝ))
  have hxthird_abs : |x₀ ^ (-(2 / 3 : ℝ))| ≤ exp (-(2 / 3 : ℝ) * t) := by
    simpa [t, mul_assoc, mul_left_comm, mul_comm] using Real.abs_rpow_le_exp_log_mul x₀ (-(2 / 3 : ℝ))

  have hpow_le_div : ((5.5666305 : ℝ) / t) ^ (3 / 2 : ℝ) ≤ (5.5666305 : ℝ) / t := by
    simpa using Real.rpow_le_rpow_of_exponent_ge (by positivity)
      ((div_le_iff₀ (by linarith)).2 (by linarith)) (by norm_num : (1 : ℝ) ≤ 3 / 2)

  have h_exp_half :
      exp (2 * Real.sqrt (t / 5.5666305)) * exp (-(1 / 2 : ℝ) * t) ≤ exp (-(1 / 4 : ℝ) * t) := by
    rw [← Real.exp_add]; exact Real.exp_le_exp.2 (by nlinarith [two_mul_sqrt_div_le_quarter t ht])
  have h_exp_third :
      exp (2 * Real.sqrt (t / 5.5666305)) * exp (-(2 / 3 : ℝ) * t) ≤ exp (-(5 / 12 : ℝ) * t) := by
    rw [← Real.exp_add]; exact Real.exp_le_exp.2 (by nlinarith [two_mul_sqrt_div_le_quarter t ht])

  have h_inside :
      BKLNW.a₁ t * t * x₀ ^ (-(1 / 2 : ℝ)) + BKLNW.a₂ t * t * x₀ ^ (-(2 / 3 : ℝ))
        ≤ (2 * t) * exp (-(1 / 2 : ℝ) * t) + (5 * t * t) * exp (-(2 / 3 : ℝ) * t) := by
    linarith [term_inside_bound ht_pos.le (BKLNW_a1_nonneg t ht) (BKLNW_a1_le_two_of_ge_1000 t ht) hxhalf_abs,
      term_inside_bound ht_pos.le (BKLNW_a2_nonneg t) (BKLNW_a2_le_five_mul_of_ge_1000 t ht) hxthird_abs]
  have hhalf_rewrite : ((-1 : ℝ) / 2) = -(1 / 2 : ℝ) := by norm_num
  have hthird_rewrite : ((-2 : ℝ) / 3) = -(2 / 3 : ℝ) := by norm_num

  let powfac : ℝ := ((5.5666305 : ℝ) / t) ^ (3 / 2 : ℝ)
  let expfac : ℝ := exp (2 * Real.sqrt (t / 5.5666305))
  have hpowfac_nonneg : 0 ≤ powfac := by unfold powfac; positivity
  have hexpfac_nonneg : 0 ≤ expfac := by unfold expfac; positivity

  have h_main0 :
      ν_asymp (FKS.A x₀) (3 / 2) 2 5.5666305 x₀
        ≤ (1 / FKS.A x₀) * powfac * expfac *
            ((2 * t) * exp (-(1 / 2 : ℝ) * t) + (5 * t * t) * exp (-(2 / 3 : ℝ) * t)) := by
    simpa [hhalf_rewrite, hthird_rewrite, ν_asymp, t, powfac, expfac, mul_assoc, mul_left_comm, mul_comm] using
      mul_le_mul_of_nonneg_left h_inside (by positivity : 0 ≤ (1 / FKS.A x₀) * powfac * expfac)

  have h_main1 : ν_asymp (FKS.A x₀) (3 / 2) 2 5.5666305 x₀
      ≤ powfac * expfac * ((2 * t) * exp (-(1 / 2 : ℝ) * t) + (5 * t * t) * exp (-(2 / 3 : ℝ) * t)) :=
    h_main0.trans (by simpa [mul_assoc] using mul_le_mul_of_nonneg_right h_invA_le_one (by positivity))

  have h_split :
      powfac * expfac * ((2 * t) * exp (-(1 / 2 : ℝ) * t) + (5 * t * t) * exp (-(2 / 3 : ℝ) * t))
        ≤ (2 * (5.5666305 : ℝ)) * exp (-(230 : ℝ)) + (2500 * (5.5666305 : ℝ)) * exp (-(230 : ℝ)) := by
    rw [mul_add]
    exact add_le_add
      (part1_decay_bound t powfac expfac ht hpow_le_div hexpfac_nonneg h_exp_half)
      (part2_decay_bound t powfac expfac ht hpow_le_div hexpfac_nonneg h_exp_third)

  have h_main2 : ν_asymp (FKS.A x₀) (3 / 2) 2 5.5666305 x₀ ≤ (60000 : ℝ) * exp (-(230 : ℝ)) :=
    h_main1.trans (h_split.trans (by
      rw [← add_mul]; exact mul_le_mul_of_nonneg_right (by norm_num) (by positivity)))

  simpa [remark_15_margin] using h_main2.trans sixty_thousand_mul_exp_neg_230_le

/-- A rewritten form of `nu_asymp_le_remark_15_margin`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean#L918).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88be1b47c741ee6510e22488953556110e8e6ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
