# boundaryMultiplier_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e0e111ac6ef54589a1fc8b14b8bf1b979a04a2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b313fbd8-4b5c-510d-7f33-fc75329dce02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9e060f4-00a7-df58-64aa-be58ce924ba0",
  "kind": "theorem",
  "lexical_name": "boundaryMultiplier_norm_le",
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
  "slug": "boundarymultiplier-norm-le--f9c8be04ec2eb7ff162d17f5",
  "source": {
    "blob": "2e0e111ac6ef54589a1fc8b14b8bf1b979a04a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 18,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9c8be04ec2eb7ff162d17f5f2a5857d37000a0e3c734a0b0f33da4ac7ba1b7f",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9e060f4-00a7-df58-64aa-be58ce924ba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryMultiplier_norm_le (ε h t : ℝ) (hε : 0 < ε)
    (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryMultiplier ε h t‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) := by
  let R : ℂ := MobiusSourceFilterQuotient.W ((t : ℂ) * I) /
    MobiusSourceFilterQuotient.W ((ε : ℂ) + (t : ℂ) * I)
  let S : ℂ := (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * I))⁻¹ ^ 6
  let d : ℂ := 1 + (ε : ℂ) + (t : ℂ) * I
  have hR : ‖R‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) :=
    W_horizontal_uniform_bound ε t hε hsmall
  have hre : 1 ≤ (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * I)).re := by
    simp only [Complex.add_re, Complex.one_re, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_zero,
      add_zero]
    nlinarith
  have hs : 1 ≤ ‖1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * I)‖ :=
    hre.trans (Complex.re_le_norm _)
  have hS : ‖S‖ ≤ 1 := by
    dsimp only [S]
    rw [norm_pow, norm_inv]
    apply pow_le_one₀ (inv_nonneg.mpr (norm_nonneg _))
    simpa using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1) hs
  have hd : 0 < ‖d‖ := by
    have hr := Complex.re_le_norm d
    have hdre : d.re = 1 + ε := by simp [d]
    rw [hdre] at hr
    linarith
  have ha : ‖(1 / 2 : ℂ) + (t : ℂ) * I‖ ≤ ‖d‖ := by
    apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
    simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply, d]
    simp
    nlinarith
  have hrs : ‖R‖ * ‖S‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) := by
    calc
      _ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * 1 :=
        mul_le_mul hR hS (norm_nonneg _) (by positivity)
      _ = _ := mul_one _
  change ‖((1 / 2 : ℂ) + (t : ℂ) * I) * (R * S / d)‖ ≤ _
  rw [norm_mul, norm_div, norm_mul]
  calc
    _ ≤ ‖(1 / 2 : ℂ) + (t : ℂ) * I‖ *
        (((4 / 3 : ℝ) * Real.exp (1 / 4)) / ‖d‖) := by gcongr
    _ = ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (‖(1 / 2 : ℂ) + (t : ℂ) * I‖ / ‖d‖) := by ring
    _ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * 1 :=
      mul_le_mul_of_nonneg_left ((div_le_one hd).mpr ha) (by positivity)
    _ = _ := mul_one _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e0e111ac6ef54589a1fc8b14b8bf1b979a04a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
