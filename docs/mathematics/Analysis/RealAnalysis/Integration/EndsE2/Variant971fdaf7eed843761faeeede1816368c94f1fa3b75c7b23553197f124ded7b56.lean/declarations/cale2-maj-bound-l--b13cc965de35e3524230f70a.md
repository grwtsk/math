# calE2_maj_bound_L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d6fd06e00cad8d39301d7f9084d8c358b8400b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87cf47f6-d25f-5778-f7ab-b1b4cce587e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f273275-a084-49f1-6739-1509c52195b5",
  "kind": "theorem",
  "lexical_name": "calE2_maj_bound_L",
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
  "slug": "cale2-maj-bound-l--b13cc965de35e3524230f70a",
  "source": {
    "blob": "2d6fd06e00cad8d39301d7f9084d8c358b8400b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 353,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b13cc965de35e3524230f70a4f625380a4928040aed4f77b5be8eae58723a59f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f273275-a084-49f1-6739-1509c52195b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem calE2_maj_bound_L :
    ∃ C T₀ : ℝ, ∀ (p : Setting) (F : LocalFun) (B : ℝ) (ν : ℝ → ℝ), T₀ ≤ p.T →
      LocalHypsCoreW cϱ p F → Continuous ν → NuBound p B ν → p.L ≤ B →
      ∫ q in (sqI p)ᶜ, majK2 cϱ p ν q
        ≤ C * (p.L ^ 3 * B ^ 2 * (1 + Real.log p.L) * (p.L + p.l)) := by
  refine ⟨2 * (8 + 4 * max 0 (Real.log cϱ) + 7 * cϱ) * CN2 cϱ,
    2 * π * Real.exp 8, fun p F B ν hT hF hνc hν hBL => ?_⟩
  -- regime
  have hπ3 := Real.pi_gt_three
  have he8 : (1 : ℝ) ≤ Real.exp 8 := Real.one_le_exp (by norm_num)
  have hT8 : 2 * π * Real.exp 8 ≤ p.T := hT
  have hT1 : (1 : ℝ) ≤ p.T := by nlinarith
  have hT0 : (0 : ℝ) < p.T := by linarith
  have hT2π : 2 * π ≤ p.T := by nlinarith
  have hl8 : (8 : ℝ) ≤ p.l := Setting.le_l_of_T hT8
  have hl1 : (1 : ℝ) ≤ p.l := by linarith
  have hlogl2 : (2 : ℝ) ≤ Real.log p.l := by
    rw [Real.le_log_iff_exp_le (by linarith)]
    have h1 := Real.exp_one_lt_d9
    calc Real.exp 2 = Real.exp 1 * Real.exp 1 := by rw [← Real.exp_add]; norm_num
      _ ≤ 2.7182818286 * 2.7182818286 := by nlinarith [Real.exp_pos 1]
      _ ≤ 8 := by norm_num
      _ ≤ p.l := hl8
  have hL8 : (8 : ℝ) ≤ p.L := hF.eight_le_L
  have hL0 : (0 : ℝ) < p.L := by linarith
  have hlogL0 : (0 : ℝ) ≤ Real.log p.L := Real.log_nonneg (by linarith)
  have hB1 : (1 : ℝ) ≤ B := by linarith
  have hB0 : (0 : ℝ) ≤ B := by linarith
  have hw1 : (1 : ℝ) ≤ p.w := hF.one_le_w
  have hc4 : (4 : ℝ) ≤ cϱ := hF.four_le_cϱ
  have hm0 : (0 : ℝ) ≤ max 0 (Real.log cϱ) := le_max_left _ _
  have hlogl0 : (0 : ℝ) < Real.log p.l := by linarith
  -- fold the N1 constant into log L
  have hlogbound : Real.log (cϱ * p.L / (4 * p.w)) ≤ max 0 (Real.log cϱ) + Real.log p.L := by
    calc Real.log (cϱ * p.L / (4 * p.w)) ≤ Real.log (cϱ * p.L) := by
          apply Real.log_le_log (by positivity)
          apply div_le_self (by positivity)
          linarith
      _ = Real.log cϱ + Real.log p.L := Real.log_mul (by positivity) (by positivity)
      _ ≤ max 0 (Real.log cϱ) + Real.log p.L := by
          have := le_max_right (0 : ℝ) (Real.log cϱ)
          linarith
  set M1 : ℝ := (2 * (4 + 2 * Real.log (cϱ * p.L / (4 * p.w))) + 7 * cϱ) * B with hM1
  have hM1nn : 0 ≤ M1 := by
    rw [hM1]
    have hwle := hF.w_le
    have hlog4w : (0:ℝ) ≤ Real.log (cϱ * p.L / (4 * p.w)) := by
      apply Real.log_nonneg
      rw [le_div_iff₀ (by positivity)]
      nlinarith
    positivity
  have hM1fold : M1 ≤ ((8 + 4 * max 0 (Real.log cϱ) + 7 * cϱ) * (1 + Real.log p.L)) * B := by
    rw [hM1]
    have key : 2 * (4 + 2 * Real.log (cϱ * p.L / (4 * p.w))) + 7 * cϱ
        ≤ (8 + 4 * max 0 (Real.log cϱ) + 7 * cϱ) * (1 + Real.log p.L) := by
      have h1 : Real.log (cϱ * p.L / (4 * p.w)) ≤ max 0 (Real.log cϱ) + Real.log p.L := hlogbound
      nlinarith [mul_nonneg hm0 hlogL0, mul_nonneg (by linarith : (0:ℝ) ≤ cϱ) hlogL0]
    exact mul_le_mul_of_nonneg_right key hB0
  -- the 1-D estimates
  have hN1 : ∀ a ∈ Icc p.T (2 * p.T),
      ∫ τ : ℝ, psiA cϱ p (τ - a) * |ν τ| ≤ M1 :=
    fun a ha => nu_weight_bound_L hνc hF hν hBL hT1 ha
  have hN2 := nu_grid_bound_L hνc hF hν hBL hT8
  have htotal := setIntegral_compl_sqI_majK2_le hνc hF hν hB1 hT1 hM1nn hN1 hN2
  refine htotal.trans ?_
  have hc60 : (0:ℝ) ≤ CN2 cϱ := CN2_nonneg cϱ
  have hLl0 : 0 ≤ p.L + p.l := by linarith
  have hstep : M1 * (CN2 cϱ * (B * (p.L * (p.L + p.l))))
      ≤ (((8 + 4 * max 0 (Real.log cϱ) + 7 * cϱ) * (1 + Real.log p.L)) * B)
        * (CN2 cϱ * (B * (p.L * (p.L + p.l)))) := by
    exact mul_le_mul_of_nonneg_right hM1fold (mul_nonneg hc60 (by positivity))
  calc 2 * (p.L ^ 2 * M1 * (CN2 cϱ * (B * (p.L * (p.L + p.l)))))
      = 2 * p.L ^ 2 * (M1 * (CN2 cϱ * (B * (p.L * (p.L + p.l))))) := by
        ring
    _ ≤ 2 * p.L ^ 2 * ((((8 + 4 * max 0 (Real.log cϱ) + 7 * cϱ) * (1 + Real.log p.L)) * B)
        * (CN2 cϱ * (B * (p.L * (p.L + p.l))))) := by
        refine mul_le_mul_of_nonneg_left hstep (by positivity)
    _ = 2 * (8 + 4 * max 0 (Real.log cϱ) + 7 * cϱ) * CN2 cϱ
        * (p.L ^ 3 * B ^ 2 * (1 + Real.log p.L) * (p.L + p.l)) := by
        ring


/-- **Bound for E2** (§5.3): |𝓔₂| ≤ C·L³B²·l·log l for T ≥ T₀ (corollary of the
majorant bound via |K²νν'| ≤ majK2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d6fd06e00cad8d39301d7f9084d8c358b8400b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
