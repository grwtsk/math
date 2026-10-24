# setIntegral_far_norm_Hfn_kfun_le

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
      "line": 921,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95dfee4f-c263-e740-67b0-9194904586e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8805d60c-14b8-2e3d-d0c0-564926a1b93d",
  "kind": "theorem",
  "lexical_name": "setIntegral_far_norm_Hfn_kfun_le",
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
  "slug": "setintegral-far-norm-hfn-kfun-le--2c00e677911394fec8c3bb55",
  "source": {
    "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 953,
    "line": 921,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c00e677911394fec8c3bb552625055dd975c094051339559caf55b1a09da6f6",
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

Occurrence: `result:8805d60c-14b8-2e3d-d0c0-564926a1b93d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 921–953.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_far_norm_Hfn_kfun_le (h : WindowAt P T C) {k l : ℤ}
    (hk1 : T ≤ P.tau T k) (hk2 : P.tau T k ≤ 2 * T) (hl1 : T ≤ P.tau T l) (hl2 : P.tau T l ≤ 2 * T) :
    ∫ t in {t : ℝ | 3 * P.tauStar T k l / 4 ≤ |t - P.tauStar T k l|},
        ‖Hfn (kfun P T k l) ((5 / 4 : ℂ) + t * I)‖
      ≤ 16 * Real.pi * (1 + C) ^ 2 * P.X T ^ (3 / 4 : ℝ) * P.L T ^ 2 / T ^ 2 := by
  have hC := h.C_nonneg
  have hL := h.L_pos
  have hX := h.X_pos
  have hT := h.T_pos
  set K := (1 + C) ^ 2 * P.X T ^ (3 / 4 : ℝ) * P.L T ^ 2 with hK
  have hK0 : 0 ≤ K := by positivity
  have hsub := far_subset hk1 hk2 hl1 hl2
  have hg : Integrable (fun t : ℝ => K * (1 / ((1 + (t - P.tau T k) ^ 2) * (1 + (t - P.tau T l) ^ 2)))) :=
    (cauchyConv_integrable _ _).const_mul K
  calc ∫ t in {t : ℝ | 3 * P.tauStar T k l / 4 ≤ |t - P.tauStar T k l|},
          ‖Hfn (kfun P T k l) ((5 / 4 : ℂ) + t * I)‖
      ≤ ∫ t in {t : ℝ | 3 * P.tauStar T k l / 4 ≤ |t - P.tauStar T k l|},
          K * (1 / ((1 + (t - P.tau T k) ^ 2) * (1 + (t - P.tau T l) ^ 2))) :=
        setIntegral_mono_on (h.integrable_Hfn_kfun k l).norm.integrableOn hg.integrableOn
          (measurableSet_far _ _) (fun t _ => by rw [mul_one_div]; exact h.norm_Hfn_kfun_le k l t)
    _ ≤ ∫ t in {t : ℝ | T / 4 ≤ |t - P.tau T k|},
          K * (1 / ((1 + (t - P.tau T k) ^ 2) * (1 + (t - P.tau T l) ^ 2))) :=
        setIntegral_mono_set hg.integrableOn
          (Eventually.of_forall fun t => by simp only [Pi.zero_apply]; positivity)
          (HasSubset.Subset.eventuallyLE (by unfold Params.tauStar; exact hsub))
    _ = K * ∫ t in {t : ℝ | T / 4 ≤ |t - P.tau T k|},
          1 / ((1 + (t - P.tau T k) ^ 2) * (1 + (t - P.tau T l) ^ 2)) := integral_const_mul _ _
    _ ≤ K * (Real.pi / (T / 4) ^ 2) :=
        mul_le_mul_of_nonneg_left (cauchyConv_far _ _ (by positivity)) hK0
    _ = 16 * Real.pi * (1 + C) ^ 2 * P.X T ^ (3 / 4 : ℝ) * P.L T ^ 2 / T ^ 2 := by
        rw [hK]; field_simp; ring

/-- **(W6c, mirrored)** ∫_{|t+τ⋆| ≥ 3τ⋆/4} ‖H_{k∘neg}(5/4+it)‖ dt ≤ 16π (1+C)² X^{3/4} L² / T². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean#L921).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `545614fe9736c8813f20df2657488a97b4f6ec48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
