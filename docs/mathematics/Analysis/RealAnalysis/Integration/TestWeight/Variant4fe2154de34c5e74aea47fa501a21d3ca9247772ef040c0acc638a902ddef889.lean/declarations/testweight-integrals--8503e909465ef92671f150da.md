# testWeight_integrals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1085,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5301df23-5162-74a7-9981-2e0c008b8237",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69cbcaf6-0165-c444-f4fb-f6f11e267475",
  "kind": "theorem",
  "lexical_name": "testWeight_integrals",
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
  "slug": "testweight-integrals--8503e909465ef92671f150da",
  "source": {
    "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1126,
    "line": 1085,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8503e909465ef92671f150da7360b10990951dbb52c5b118d4a9862d4a180d2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69cbcaf6-0165-c444-f4fb-f6f11e267475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1085–1126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testWeight_integrals (hPf : FamilyHyps Pf) :
    ∃ C T₁ : ℝ, 0 < C ∧ ∀ T : ℝ, T₁ ≤ T → ∀ k l : ℤ,
      Integrable (fun t : ℝ => Hfn (kfun (Pf T) T k l) ((5 / 4 : ℂ) + t * I)) ∧
      Integrable (fun t : ℝ => Hfn (fun u => kfun (Pf T) T k l (-u)) ((5 / 4 : ℂ) + t * I)) ∧
      ∫ t : ℝ, ‖Hfn (kfun (Pf T) T k l) ((5 / 4 : ℂ) + t * I)‖
          ≤ C * (Pf T).X T ^ (3 / 4 : ℝ) * (Pf T).L T ^ 2 / (1 + ((Pf T).tau T k - (Pf T).tau T l) ^ 2) ∧
      ∫ t : ℝ, ‖Hfn (fun u => kfun (Pf T) T k l (-u)) ((5 / 4 : ℂ) + t * I)‖
          ≤ C * (Pf T).X T ^ (3 / 4 : ℝ) * (Pf T).L T ^ 2 / (1 + ((Pf T).tau T k - (Pf T).tau T l) ^ 2) ∧
      ∫ t : ℝ, (1 + |t - (Pf T).tauStar T k l|) * ‖Hfn (kfun (Pf T) T k l) ((5 / 4 : ℂ) + t * I)‖
          ≤ C * (Pf T).X T ^ (3 / 4 : ℝ) * (Pf T).L T ^ 2 / (1 + ((Pf T).tau T k - (Pf T).tau T l) ^ 2) ∧
      ∫ t : ℝ, (1 + |t + (Pf T).tauStar T k l|)
            * ‖Hfn (fun u => kfun (Pf T) T k l (-u)) ((5 / 4 : ℂ) + t * I)‖
          ≤ C * (Pf T).X T ^ (3 / 4 : ℝ) * (Pf T).L T ^ 2 / (1 + ((Pf T).tau T k - (Pf T).tau T l) ^ 2) ∧
      (T ≤ (Pf T).tau T k → (Pf T).tau T k ≤ 2 * T → T ≤ (Pf T).tau T l → (Pf T).tau T l ≤ 2 * T →
        ∫ t in {t : ℝ | 3 * (Pf T).tauStar T k l / 4 ≤ |t - (Pf T).tauStar T k l|},
            ‖Hfn (kfun (Pf T) T k l) ((5 / 4 : ℂ) + t * I)‖
          ≤ C * (Pf T).X T ^ (3 / 4 : ℝ) * (Pf T).L T ^ 2 / T ^ 2 ∧
        ∫ t in {t : ℝ | 3 * (Pf T).tauStar T k l / 4 ≤ |t + (Pf T).tauStar T k l|},
            ‖Hfn (fun u => kfun (Pf T) T k l (-u)) ((5 / 4 : ℂ) + t * I)‖
          ≤ C * (Pf T).X T ^ (3 / 4 : ℝ) * (Pf T).L T ^ 2 / T ^ 2) := by
  obtain ⟨C, T₁, hC, hW⟩ := hPf.windowAt
  -- one constant dominating 32π(1+C)², 32π(1+C)(1+3C), 16π(1+C)²:
  refine ⟨32 * Real.pi * ((1 + C) * (1 + 3 * C)), T₁, by positivity, fun T hT k l => ?_⟩
  have h := hW T hT
  have hX := h.X_pos
  have hL := h.L_pos
  have hT0 := h.T_pos
  have hXr : 0 ≤ (Pf T).X T ^ (3 / 4 : ℝ) := Real.rpow_nonneg hX.le _
  have hcc : (1 + C) ^ 2 ≤ (1 + C) * (1 + 3 * C) := by nlinarith
  have hc1 : 32 * Real.pi * (1 + C) ^ 2 ≤ 32 * Real.pi * ((1 + C) * (1 + 3 * C)) :=
    mul_le_mul_of_nonneg_left hcc (by positivity)
  have hc2 : 16 * Real.pi * (1 + C) ^ 2 ≤ 32 * Real.pi * ((1 + C) * (1 + 3 * C)) := by
    nlinarith [mul_nonneg Real.pi_pos.le (sq_nonneg (1 + C))]
  refine ⟨h.integrable_Hfn_kfun k l, h.integrable_Hfn_kfun_neg k l, ?_, ?_,
    h.integral_weighted_norm_Hfn_kfun_le k l, h.integral_weighted_norm_Hfn_kfun_neg_le k l,
    fun hk1 hk2 hl1 hl2 => ⟨?_, ?_⟩⟩
  · exact (h.integral_norm_Hfn_kfun_le k l).trans (by gcongr)
  · exact (h.integral_norm_Hfn_kfun_neg_le k l).trans (by gcongr)
  · exact (h.setIntegral_far_norm_Hfn_kfun_le hk1 hk2 hl1 hl2).trans (by gcongr)
  · exact (h.setIntegral_far_norm_Hfn_kfun_neg_le hk1 hk2 hl1 hl2).trans (by gcongr)

/-- (W6, indices) for a Fin d index the hypothesis T ≤ τ_k ≤ 2T of the far-tail bound holds eventually. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean#L1085).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `545614fe9736c8813f20df2657488a97b4f6ec48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
