# norm_deriv_L2_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2dfd7f9c0da96f5740c52033032152259e5a67eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f8462b1-e90b-69dd-8eb1-23a67903ff0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dee0d7d-cfe4-0733-80f0-eec9197fda5f",
  "kind": "theorem",
  "lexical_name": "norm_deriv_L2_le'",
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
  "slug": "norm-deriv-l2-le--040f5448bf0a2de2e85910cc",
  "source": {
    "blob": "2dfd7f9c0da96f5740c52033032152259e5a67eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 356,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:040f5448bf0a2de2e85910cc82d6e5e19cddbdeda4da914ecaf21551e2e2c988",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dee0d7d-cfe4-0733-80f0-eec9197fda5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_deriv_L2_le' (hc1 : 9/8 ≤ c) (hc2 : c ≤ 5/4) {t : ℝ} (ht : 2 ≤ |t|) :
    ‖deriv L2 (((c:ℝ):ℂ) + t * I)‖ ≤ 4 / |t| := by
  set s : ℂ := ((c:ℝ):ℂ) + t * I with hs
  have ht0 : 0 < |t| := by linarith
  have htne : t ≠ 0 := abs_pos.mp ht0
  have hsim : s.im = t := by simp [hs]
  rw [deriv_L2_eq (mem_goodStrip_line hc1 hc2 t) (by rwa [hsim])]
  -- the two trigamma terms
  have hw₁ : 0 < (s / 2).re := by rw [Complex.div_ofNat_re, hs, re_line]; linarith
  have hw₁im : (s / 2).im = t / 2 := by rw [Complex.div_ofNat_im, hsim]
  have hw₁i : 1/2 ≤ |(s / 2).im| := by rw [hw₁im, abs_div, abs_two]; linarith
  have hw₂ : 0 < ((3 - s) / 2).re := by rw [Complex.div_ofNat_re]; simp [hs]; linarith
  have hw₂im : ((3 - s) / 2).im = -(t / 2) := by rw [Complex.div_ofNat_im]; simp [hs]; ring
  have hw₂i : 1/2 ≤ |((3 - s) / 2).im| := by rw [hw₂im, abs_neg, abs_div, abs_two]; linarith
  have hψ₁ := norm_deriv_digamma_le hw₁ hw₁i
  have hψ₂ := norm_deriv_digamma_le hw₂ hw₂i
  rw [hw₁im, abs_div, abs_two] at hψ₁
  rw [hw₂im, neg_sq, abs_neg, abs_div, abs_two] at hψ₂
  have hinv : ‖((1 - s) ^ 2)⁻¹‖ ≤ (|t| ^ 2)⁻¹ := by
    rw [norm_inv, norm_pow]
    refine inv_anti₀ (by positivity) (pow_le_pow_left₀ (abs_nonneg t) ?_ 2)
    have := Complex.abs_im_le_norm (1 - s); rw [hs] at this; simpa using this
  have htt : t ^ 2 = |t| ^ 2 := (sq_abs t).symm
  have n18 : ‖(1/8 : ℂ)‖ = 1/8 := by norm_num
  have n12 : ‖(1/2 : ℂ)‖ = 1/2 := by norm_num
  calc ‖(1/8 : ℂ) * deriv Complex.digamma (s / 2) - (1/8 : ℂ) * deriv Complex.digamma ((3 - s) / 2)
        - (1/2 : ℂ) * ((1 - s) ^ 2)⁻¹‖
      ≤ ‖(1/8 : ℂ) * deriv Complex.digamma (s / 2)‖ + ‖(1/8 : ℂ) * deriv Complex.digamma ((3 - s) / 2)‖
        + ‖(1/2 : ℂ) * ((1 - s) ^ 2)⁻¹‖ := norm_sub₃_le'
    _ ≤ (1/8) * (1 / (t/2) ^ 2 + 2 / (|t| / 2)) + (1/8) * (1 / (t/2) ^ 2 + 2 / (|t| / 2))
        + (1/2) * (|t| ^ 2)⁻¹ := by
        rw [norm_mul, norm_mul, norm_mul, n18, n12]
        gcongr
    _ = 3 / (2 * |t| ^ 2) + 1 / |t| := by
        have e : (t / 2) ^ 2 = |t| ^ 2 / 4 := by rw [div_pow, htt]; norm_num
        rw [e]; field_simp; ring
    _ ≤ 4 / |t| := by
        rw [div_add_div _ _ (by positivity) ht0.ne', div_le_div_iff₀ (by positivity) ht0]
        nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Variant94cda1d5eb1cb9489e436c4a20d5161b13066e8ca2bec2d98f7d4e5201784180.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dfd7f9c0da96f5740c52033032152259e5a67eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
