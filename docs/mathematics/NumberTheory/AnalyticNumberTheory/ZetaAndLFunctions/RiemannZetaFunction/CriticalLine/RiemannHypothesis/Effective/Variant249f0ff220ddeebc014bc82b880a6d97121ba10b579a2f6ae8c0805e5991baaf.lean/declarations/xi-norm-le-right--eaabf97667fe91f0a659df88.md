# xi_norm_le_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 604,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80a9aedb-156f-acb5-d5d2-f8f1c7c5f3e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea16558d-6d1a-f713-8aaa-1355dde859c5",
  "kind": "theorem",
  "lexical_name": "xi_norm_le_right",
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
  "slug": "xi-norm-le-right--eaabf97667fe91f0a659df88",
  "source": {
    "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 604,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaabf97667fe91f0a659df88baeb1a26d621f79225cc2a3a970410e260522433",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea16558d-6d1a-f713-8aaa-1355dde859c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_norm_le_right {s : ℂ} (hre : (1/2 : ℝ) ≤ s.re) (hs1 : s ≠ 1)
    (hup : s.re ≤ 10) :
    ‖xi s‖ ≤ ‖s‖ / 2 * 24 * (‖s - 1‖ * (1/2 + ‖s‖ / s.re) + 1) := by
  have hs0 : s ≠ 0 := by
    intro h
    rw [h] at hre
    norm_num at hre
  have hrepos : (0:ℝ) < s.re := by linarith
  rw [xi_eq s hs0 hs1]
  have hζ := Zeta23.RvM.norm_riemannZeta_le_of_re_pos hrepos hs1
  have hΓne : Complex.Gammaℝ s ≠ 0 := Complex.Gammaℝ_ne_zero_of_re_pos hrepos
  have hΛ : completedRiemannZeta s = Complex.Gammaℝ s * riemannZeta s := by
    have h := riemannZeta_def_of_ne_zero hs0
    rw [h]
    field_simp
  have hΓnorm : ‖Complex.Gammaℝ s‖ ≤ 24 := by
    rw [Complex.Gammaℝ_def, norm_mul]
    have h1 : ‖(Real.pi : ℂ) ^ (-s / 2)‖ ≤ 1 := by
      rw [Complex.norm_cpow_eq_rpow_re_of_pos Real.pi_pos]
      have hexp : (-s / 2).re = -(s.re / 2) := by
        simp [Complex.neg_re, Complex.div_re]
        ring
      rw [hexp, Real.rpow_neg Real.pi_pos.le]
      have hππ : (1:ℝ) ≤ Real.pi ^ (s.re / 2 : ℝ) :=
        Real.one_le_rpow (by linarith [Real.pi_gt_three]) (by linarith)
      rw [inv_le_one_iff₀]
      right
      exact hππ
    have h2 : ‖Complex.Gamma (s / 2)‖ ≤ 24 := by
      have hre2 : (0:ℝ) < (s / 2).re := by
        have : (s / 2).re = s.re / 2 := by
          rw [Complex.div_ofNat_re]
        rw [this]
        linarith
      calc ‖Complex.Gamma (s / 2)‖ ≤ Real.Gamma ((s / 2).re) := norm_Gamma_le_Gamma_re hre2
        _ ≤ 24 := by
            have heq : (s / 2).re = s.re / 2 := by
              rw [Complex.div_ofNat_re]
            refine Real_Gamma_le_24 ?_ ?_
            · rw [heq]
              linarith
            · rw [heq]
              linarith
    calc ‖(Real.pi : ℂ) ^ (-s / 2)‖ * ‖Complex.Gamma (s / 2)‖ ≤ 1 * 24 := by
          exact mul_le_mul h1 h2 (norm_nonneg _) (by norm_num)
      _ = 24 := by norm_num
  have hprod : ‖(s - 1) * riemannZeta s‖ ≤ ‖s - 1‖ * (1/2 + ‖s‖ / s.re) + 1 := by
    rw [norm_mul]
    have h1 : ‖s - 1‖ * ‖riemannZeta s‖
        ≤ ‖s - 1‖ * (1/2 + 1 / ‖1 - s‖ + ‖s‖ / s.re) :=
      mul_le_mul_of_nonneg_left hζ (norm_nonneg _)
    have h2 : ‖s - 1‖ * (1 / ‖1 - s‖) ≤ 1 := by
      rw [norm_sub_rev]
      rcases eq_or_ne (‖(1:ℂ) - s‖) 0 with h | h
      · rw [h]
        norm_num
      · rw [mul_one_div, div_le_one (lt_of_le_of_ne (norm_nonneg _) (Ne.symm h))]
    nlinarith [norm_nonneg (s - 1), norm_nonneg s, norm_nonneg (riemannZeta s),
      div_nonneg (norm_nonneg s) hrepos.le]
  calc ‖s * (s - 1) / 2 * completedRiemannZeta s‖
      = ‖s‖ / 2 * (‖Complex.Gammaℝ s‖ * ‖(s - 1) * riemannZeta s‖) := by
        rw [hΛ]
        rw [show s * (s - 1) / 2 * (Complex.Gammaℝ s * riemannZeta s)
          = s / 2 * (Complex.Gammaℝ s * ((s - 1) * riemannZeta s)) by ring]
        rw [norm_mul, norm_mul, norm_div]
        simp [Complex.norm_ofNat]
    _ ≤ ‖s‖ / 2 * (24 * (‖s - 1‖ * (1/2 + ‖s‖ / s.re) + 1)) := by
        refine mul_le_mul_of_nonneg_left ?_ (by positivity)
        refine mul_le_mul hΓnorm hprod (norm_nonneg _) (by norm_num)
    _ = ‖s‖ / 2 * 24 * (‖s - 1‖ * (1/2 + ‖s‖ / s.re) + 1) := by ring

/-- Numeric ξ-bound on the counting disk: ‖ξ(s)‖ ≤ 32000 for ‖s − 2‖ ≤ 1992/250 (= 7.968). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401f1318bdac29d95211200b7315ce03b0c8f64d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
