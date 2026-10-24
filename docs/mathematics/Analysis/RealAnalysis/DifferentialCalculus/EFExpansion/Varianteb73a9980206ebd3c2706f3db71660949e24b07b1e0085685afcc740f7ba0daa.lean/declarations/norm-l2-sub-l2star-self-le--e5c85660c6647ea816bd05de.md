# norm_L2_sub_L2star_self_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed71a8d8-30bb-e01c-7a47-48a5009b7cec",
  "kind": "theorem",
  "lexical_name": "norm_L2_sub_L2star_self_le'",
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
  "slug": "norm-l2-sub-l2star-self-le--e5c85660c6647ea816bd05de",
  "source": {
    "blob": "9b07462fa708a42283cb7334515d99edaba3fc28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 220,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5c85660c6647ea816bd05de1f3ffb9a144af710a67a4d6bc4aa4b31f98fe808",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed71a8d8-30bb-e01c-7a47-48a5009b7cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_L2_sub_L2star_self_le' (hc1 : 9/8 ≤ c) (hc2 : c ≤ 5/4) {t : ℝ} (ht : 2 ≤ t) :
    ‖L2 (((c:ℝ):ℂ) + t * I) - ((L2star t : ℝ) : ℂ)‖ ≤ 12 / t := by
  have ht0 : 0 < t := by linarith
  set s : ℂ := ((c:ℝ):ℂ) + t * I with hs
  have hsG : s ∈ GoodStrip := mem_goodStrip_line hc1 hc2 t
  have hsim : s.im ≠ 0 := by rw [hs, im_line]; exact ht0.ne'
  -- the two Stirling points
  set w₁ : ℂ := (((c/2:ℝ)):ℂ) + ((t/2:ℝ):ℂ) * I with hw₁
  set w₂ : ℂ := ((((3-c)/2:ℝ)):ℂ) - ((t/2:ℝ):ℂ) * I with hw₂
  have hsw₁ : s / 2 = w₁ := by simp [hs, hw₁]; ring
  have hsw₂ : (3 - s) / 2 = w₂ := by simp [hs, hw₂]; ring
  have hw₁re : 0 < w₁.re := by simp [hw₁]; linarith
  have hw₂re : 0 < w₂.re := by simp [hw₂]; linarith
  have hw₁im : w₁.im = t/2 := by simp [hw₁]
  have hw₂im : w₂.im = -(t/2) := by simp [hw₂]
  have hw₁im' : 1/2 ≤ |w₁.im| := by rw [hw₁im, abs_of_pos (by linarith)]; linarith
  have hw₂im' : 1/2 ≤ |w₂.im| := by rw [hw₂im, abs_neg, abs_of_pos (by linarith)]; linarith
  have hst₁ : ‖Complex.digamma w₁ - Complex.log w₁ + (1/2 : ℂ) / w₁‖ ≤ 6 / t := by
    refine (Zeta23.StirlingVert.digamma_stirling hw₁re hw₁im').trans ?_
    rw [hw₁im, div_le_div_iff₀ (by positivity) ht0]; nlinarith
  have hst₂ : ‖Complex.digamma w₂ - Complex.log w₂ + (1/2 : ℂ) / w₂‖ ≤ 6 / t := by
    refine (Zeta23.StirlingVert.digamma_stirling hw₂re hw₂im').trans ?_
    rw [hw₂im, neg_sq, div_le_div_iff₀ (by positivity) ht0]; nlinarith
  have hlog₁ := norm_log_sub_le_gen (a := c/2) (by linarith) (by linarith) ht
  have hlog₂ := norm_log_sub_le_gen_neg (a := (3-c)/2) (by linarith) (by linarith) ht
  -- reciprocals are O(1/t)
  have hw₁inv : ‖w₁⁻¹‖ ≤ (t/2)⁻¹ := by
    rw [norm_inv]; refine inv_anti₀ (by positivity) ?_
    have := Complex.abs_im_le_norm w₁; rwa [hw₁im, abs_of_pos (by positivity)] at this
  have hw₂inv : ‖w₂⁻¹‖ ≤ (t/2)⁻¹ := by
    rw [norm_inv]; refine inv_anti₀ (by positivity) ?_
    have := Complex.abs_im_le_norm w₂; rwa [hw₂im, abs_neg, abs_of_pos (by positivity)] at this
  have hsinv : ‖(1 - s)⁻¹‖ ≤ t⁻¹ := by
    rw [norm_inv]; refine inv_anti₀ ht0 ?_
    have := Complex.abs_im_le_norm (1 - s)
    rw [hs] at this; simp at this; rwa [abs_of_pos ht0] at this
  -- the decomposition
  have hL : L2 s = -(Real.log Real.pi : ℂ) / 2 + (1/4 : ℂ) * Complex.digamma w₁
      + (1/4 : ℂ) * Complex.digamma w₂ - (1/2 : ℂ) / (1 - s) := by
    rw [L2_eq_digamma_shift hsG hsim, hsw₁, hsw₂]
  have hstar : ((L2star t : ℝ) : ℂ)
      = (1/4 : ℂ) * ((((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)
          + (((Real.log (t/2) : ℝ) : ℂ) - ((Real.pi/2 : ℝ) : ℂ) * I))
        - (Real.log Real.pi : ℂ) / 2 := by
    unfold L2star
    have e1 : Real.log (t / (2 * Real.pi)) = Real.log (t/2) - Real.log Real.pi := by
      rw [show t / (2 * Real.pi) = (t/2) / Real.pi by ring, Real.log_div (by positivity) Real.pi_pos.ne']
    rw [e1]; push_cast; ring
  have key : L2 s - ((L2star t : ℝ) : ℂ)
      = (1/4 : ℂ) * (Complex.digamma w₁ - Complex.log w₁ + (1/2 : ℂ) / w₁)
        + (1/4 : ℂ) * (Complex.digamma w₂ - Complex.log w₂ + (1/2 : ℂ) / w₂)
        + ((1/4 : ℂ) * (Complex.log w₁ - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I))
          + (1/4 : ℂ) * (Complex.log w₂ - (((Real.log (t/2) : ℝ) : ℂ) - ((Real.pi/2 : ℝ) : ℂ) * I))
          + (-(1/8 : ℂ) * w₁⁻¹ - (1/8 : ℂ) * w₂⁻¹ - (1/2 : ℂ) * (1 - s)⁻¹)) := by
    rw [hL, hstar]; simp only [div_eq_mul_inv]; ring
  rw [key]
  have n14 : ‖(1/4 : ℂ)‖ = 1/4 := by norm_num
  have n18 : ‖(1/8 : ℂ)‖ = 1/8 := by norm_num
  have n12 : ‖(1/2 : ℂ)‖ = 1/2 := by norm_num
  have hrest : ‖-(1/8 : ℂ) * w₁⁻¹ - (1/8 : ℂ) * w₂⁻¹ - (1/2 : ℂ) * (1 - s)⁻¹‖
      ≤ (1/8) * (t/2)⁻¹ + (1/8) * (t/2)⁻¹ + (1/2) * t⁻¹ := by
    calc ‖-(1/8 : ℂ) * w₁⁻¹ - (1/8 : ℂ) * w₂⁻¹ - (1/2 : ℂ) * (1 - s)⁻¹‖
        ≤ ‖-(1/8 : ℂ) * w₁⁻¹‖ + ‖(1/8 : ℂ) * w₂⁻¹‖ + ‖(1/2 : ℂ) * (1 - s)⁻¹‖ := norm_sub₃_le'
      _ ≤ (1/8) * (t/2)⁻¹ + (1/8) * (t/2)⁻¹ + (1/2) * t⁻¹ := by
          rw [norm_mul, norm_neg, n18, norm_mul, n18, norm_mul, n12]
          gcongr
  calc ‖(1/4 : ℂ) * (Complex.digamma w₁ - Complex.log w₁ + (1/2 : ℂ) / w₁)
        + (1/4 : ℂ) * (Complex.digamma w₂ - Complex.log w₂ + (1/2 : ℂ) / w₂)
        + ((1/4 : ℂ) * (Complex.log w₁ - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I))
          + (1/4 : ℂ) * (Complex.log w₂ - (((Real.log (t/2) : ℝ) : ℂ) - ((Real.pi/2 : ℝ) : ℂ) * I))
          + (-(1/8 : ℂ) * w₁⁻¹ - (1/8 : ℂ) * w₂⁻¹ - (1/2 : ℂ) * (1 - s)⁻¹))‖
      ≤ ‖(1/4 : ℂ) * (Complex.digamma w₁ - Complex.log w₁ + (1/2 : ℂ) / w₁)‖
        + ‖(1/4 : ℂ) * (Complex.digamma w₂ - Complex.log w₂ + (1/2 : ℂ) / w₂)‖
        + (‖(1/4 : ℂ) * (Complex.log w₁ - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I))‖
          + ‖(1/4 : ℂ) * (Complex.log w₂ - (((Real.log (t/2) : ℝ) : ℂ) - ((Real.pi/2 : ℝ) : ℂ) * I))‖
          + ‖-(1/8 : ℂ) * w₁⁻¹ - (1/8 : ℂ) * w₂⁻¹ - (1/2 : ℂ) * (1 - s)⁻¹‖) :=
        norm_add₃_le'.trans (add_le_add le_rfl norm_add₃_le')
    _ ≤ (1/4) * (6/t) + (1/4) * (6/t) + ((1/4) * (6/t) + (1/4) * (6/t)
          + ((1/8) * (t/2)⁻¹ + (1/8) * (t/2)⁻¹ + (1/2) * t⁻¹)) := by
        rw [norm_mul, norm_mul, norm_mul, norm_mul, n14]
        gcongr
    _ = 7 / t := by field_simp; ring
    _ ≤ 12 / t := by rw [div_le_div_iff₀ ht0 ht0]; nlinarith

/-- X1 in ∃-form: ‖L₂(c+it) − L₂⋆(t)‖ ≤ C/t for t ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b07462fa708a42283cb7334515d99edaba3fc28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
