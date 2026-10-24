# integrable_mul_logDeriv_Gammaℝ_of_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01d3904d-37a1-4b33-b66d-c25bbed4af5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41cc0f7c-2d64-01f5-ec47-0caa6f9f3c38",
  "kind": "theorem",
  "lexical_name": "integrable_mul_logDeriv_Gammaℝ_of_decay",
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
  "slug": "integrable-mul-logderiv-gamma-of-decay--072ae5467918dcc4f23c8bc4",
  "source": {
    "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:072ae5467918dcc4f23c8bc4b179dd1a4e9f1e4c9367818bf0662c984e95c511",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41cc0f7c-2d64-01f5-ec47-0caa6f9f3c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_mul_logDeriv_Gammaℝ_of_decay {φ : ℝ → ℂ} (hφc : Continuous φ) {C : ℝ}
    (hC0 : 0 ≤ C) (hC : ∀ t, ‖φ t‖ ≤ C / (1 + t ^ 2)) {σ : ℝ} (hσ1 : 1 / 2 ≤ σ) (hσ2 : σ ≤ 3 / 2) :
    Integrable (fun t : ℝ => φ t * logDeriv Complex.Gammaℝ ((σ : ℂ) + t * I)) := by
  obtain ⟨Cψ, hCψ, hψ⟩ := digamma_growth_strip
  set a : ℝ := Real.log Real.pi / 2 with ha
  set b : ℝ := Cψ / 2 with hb
  have ha0 : 0 ≤ a := by rw [ha]; have := Real.log_nonneg (by linarith [Real.pi_gt_three] : (1:ℝ) ≤ Real.pi); linarith
  have hb0 : 0 ≤ b := by rw [hb]; linarith
  set K : ℝ := C * (a + 5 * b) with hK
  -- majorant K (1 + ‖t‖²)^{−3/4}
  have hmaj : Integrable (fun t : ℝ => K * ((1 : ℝ) + ‖t‖ ^ 2) ^ (-(3 / 2 : ℝ) / 2)) :=
    (integrable_rpow_neg_one_add_norm_sq (E := ℝ) (μ := volume)
      (by rw [Module.finrank_self]; norm_num)).const_mul K
  refine Integrable.mono' hmaj
    (hφc.mul (continuous_logDeriv_Gammaℝ_line (by linarith) hσ2)).aestronglyMeasurable
    (Eventually.of_forall fun t => ?_)
  have hσ0 : 0 < σ := by linarith
  have hq : 0 < (1 + t ^ 2 : ℝ) := by positivity
  -- ‖Γℝ'/Γℝ(σ+it)‖ ≤ a + b log(2+|t|) ≤ (a + 5b)(1+t²)^{1/4}
  have hL : ‖logDeriv Complex.Gammaℝ ((σ : ℂ) + t * I)‖ ≤ (a + 5 * b) * (1 + t ^ 2) ^ (1 / 4 : ℝ) := by
    rw [logDeriv_Gammaℝ (by simp; exact hσ0)]
    have hw1 : 1 / 4 ≤ (((σ : ℂ) + t * I) / 2).re := by simp; linarith
    have hw2 : (((σ : ℂ) + t * I) / 2).re ≤ 1 := by simp; linarith
    have hψb := hψ _ hw1 hw2
    have him : |(((σ : ℂ) + t * I) / 2).im| = |t| / 2 := by simp [abs_div]
    rw [him] at hψb
    have hlog : Real.log (2 + |t| / 2) ≤ 5 * (1 + t ^ 2) ^ (1 / 4 : ℝ) := by
      have hlt : Real.log (2 + |t| / 2) ≤ Real.log (2 + |t|) :=
        Real.log_le_log (x := 2 + |t| / 2) (y := 2 + |t|) (by positivity) (by linarith [abs_nonneg t])
      refine le_trans hlt ?_
      have := log_two_add_le (abs_nonneg t)
      rwa [sq_abs] at this
    have hone : (1 : ℝ) ≤ (1 + t ^ 2) ^ (1 / 4 : ℝ) := Real.one_le_rpow (by nlinarith) (by norm_num)
    calc ‖-((Real.log Real.pi : ℝ) : ℂ) / 2 + 1 / 2 * Complex.digamma (((σ : ℂ) + t * I) / 2)‖
        ≤ ‖-((Real.log Real.pi : ℝ) : ℂ) / 2‖ + ‖(1 / 2 : ℂ) * Complex.digamma (((σ : ℂ) + t * I) / 2)‖ :=
          norm_add_le _ _
      _ ≤ a + b * Real.log (2 + |t| / 2) := by
          apply add_le_add
          · rw [norm_div, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by linarith),
              show ‖(2:ℂ)‖ = 2 by norm_num, ha]
          · rw [norm_mul, show ‖(1 / 2 : ℂ)‖ = 1 / 2 by norm_num, hb]
            nlinarith
      _ ≤ a * (1 + t ^ 2) ^ (1 / 4 : ℝ) + b * (5 * (1 + t ^ 2) ^ (1 / 4 : ℝ)) := by
          apply add_le_add
          · nlinarith
          · exact mul_le_mul_of_nonneg_left hlog hb0
      _ = (a + 5 * b) * (1 + t ^ 2) ^ (1 / 4 : ℝ) := by ring
  rw [norm_mul]
  have hH := hC t
  have hpow : (C / (1 + t ^ 2)) * ((a + 5 * b) * (1 + t ^ 2) ^ (1 / 4 : ℝ))
      = K * ((1 : ℝ) + ‖t‖ ^ 2) ^ (-(3 / 2 : ℝ) / 2) := by
    rw [Real.norm_eq_abs, sq_abs, hK]
    have e : (1 + t ^ 2 : ℝ) ^ (-(3 / 2 : ℝ) / 2) = (1 + t ^ 2) ^ (1 / 4 : ℝ) / (1 + t ^ 2) := by
      rw [show (-(3 / 2 : ℝ) / 2) = (1 / 4 : ℝ) - 1 by norm_num, Real.rpow_sub hq, Real.rpow_one]
    rw [e]
    field_simp
  calc ‖φ t‖ * ‖logDeriv Complex.Gammaℝ ((σ : ℂ) + t * I)‖
      ≤ (C / (1 + t ^ 2)) * ((a + 5 * b) * (1 + t ^ 2) ^ (1 / 4 : ℝ)) :=
        mul_le_mul hH hL (norm_nonneg _) (by positivity)
    _ = K * ((1 : ℝ) + ‖t‖ ^ 2) ^ (-(3 / 2 : ℝ) / 2) := hpow

/-- **Integrability of `H(σ+it)·Γℝ'/Γℝ(σ+it)`** for `1/2 ≤ σ ≤ 3/2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ae92dfd3852a435f3b7d5adc13cdde73073280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
