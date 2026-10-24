# Yfn_growth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f314c335-007a-6f46-4b9e-c07f5dc0d43d",
  "kind": "theorem",
  "lexical_name": "Yfn_growth",
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
  "slug": "yfn-growth--fd72530dba6ae76cbeb4496f",
  "source": {
    "blob": "fdfcd632bf3910659a1a69583ecc1b8706a66d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 185,
    "path": "GRWTSK/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd72530dba6ae76cbeb4496fa163f6b3563f5e234e23e4a9eba48e61066be660",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f314c335-007a-6f46-4b9e-c07f5dc0d43d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Yfn_growth : ∃ C : ℝ, 0 < C ∧ ∀ s : ℂ, 1 / 8 ≤ s.re → s.re ≤ 4 → 2 ≤ |s.im| →
    ‖Yfn s‖ ≤ C * |s.im| ^ 4 := by
  obtain ⟨Cζ, hCζ, hζb⟩ := Zeta23.RvM.zeta_growth (δ := 1 / 16) (by norm_num)
  refine ⟨100 * Cζ, by positivity, fun s hre hre' him => ?_⟩
  have hpos : 0 < s.re := by linarith
  have hs1 : s ≠ 1 := by
    intro h; rw [h] at him; norm_num at him
  set t : ℝ := |s.im| with ht
  have ht2 : 2 ≤ t := him
  have hns : ‖s‖ ≤ 3 * t := by
    refine le_trans (Complex.norm_le_abs_re_add_abs_im s) ?_
    rw [abs_of_pos hpos]; linarith
  have hns1 : ‖s - 1‖ ≤ 4 * t := by
    refine le_trans (norm_sub_le _ _) ?_
    simp; linarith
  have hns12 : ‖s - 1 / 2‖ ≤ 4 * t := by
    refine le_trans (norm_sub_le _ _) ?_
    have : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by norm_num
    rw [this]; linarith
  have hpoly : ‖s * (s - 1) / 2‖ ≤ 6 * t ^ 2 := by
    rw [norm_div, norm_mul]
    have : ‖(2 : ℂ)‖ = 2 := by norm_num
    rw [this, div_le_iff₀ (by norm_num : (0:ℝ) < 2)]
    have := mul_le_mul hns hns1 (norm_nonneg _) (by positivity)
    nlinarith
  have hζ : ‖riemannZeta s‖ ≤ Cζ * t := hζb s (by linarith) (by linarith)
  have hζ' : ‖deriv riemannZeta s‖ ≤ 24 * Cζ * t := norm_deriv_zeta_le hCζ hζb hre him
  have hL : ‖logDeriv Gammaℝ s‖ ≤ 4 * t := norm_logDeriv_Gammaℝ_le hpos hre' him
  rw [Yfn_eq hpos hs1]
  have hA : ‖(s - 1 / 2) * riemannZeta s‖ ≤ 4 * Cζ * t ^ 2 := by
    rw [norm_mul]
    have := mul_le_mul hns12 hζ (norm_nonneg _) (by positivity)
    nlinarith
  have hB : ‖logDeriv Gammaℝ s * riemannZeta s + deriv riemannZeta s‖ ≤ 4 * Cζ * t ^ 2 + 24 * Cζ * t := by
    refine le_trans (norm_add_le _ _) ?_
    rw [norm_mul]
    have := mul_le_mul hL hζ (norm_nonneg _) (by positivity)
    nlinarith
  have hC : ‖s * (s - 1) / 2 * (logDeriv Gammaℝ s * riemannZeta s + deriv riemannZeta s)‖
      ≤ 6 * t ^ 2 * (4 * Cζ * t ^ 2 + 24 * Cζ * t) := by
    rw [norm_mul]
    exact mul_le_mul hpoly hB (norm_nonneg _) (by positivity)
  have h4 : 4 ≤ t ^ 2 := by nlinarith
  have ht4 : t ^ 2 ≤ t ^ 4 / 4 := by
    have : t ^ 2 * 4 ≤ t ^ 2 * t ^ 2 := mul_le_mul_of_nonneg_left h4 (by positivity)
    nlinarith
  have ht3 : t ^ 3 ≤ t ^ 4 / 2 := by
    have : t ^ 3 * 2 ≤ t ^ 3 * t := mul_le_mul_of_nonneg_left ht2 (by positivity)
    nlinarith
  have e1 : 4 * Cζ * t ^ 2 ≤ Cζ * t ^ 4 := by
    have := mul_le_mul_of_nonneg_left ht4 hCζ.le; nlinarith
  have e2 : 144 * Cζ * t ^ 3 ≤ 72 * Cζ * t ^ 4 := by
    have := mul_le_mul_of_nonneg_left ht3 hCζ.le; nlinarith
  calc ‖(s - 1 / 2) * riemannZeta s
        + s * (s - 1) / 2 * (logDeriv Gammaℝ s * riemannZeta s + deriv riemannZeta s)‖
      ≤ 4 * Cζ * t ^ 2 + 6 * t ^ 2 * (4 * Cζ * t ^ 2 + 24 * Cζ * t) :=
        le_trans (norm_add_le _ _) (add_le_add hA hC)
    _ = 4 * Cζ * t ^ 2 + 24 * Cζ * t ^ 4 + 144 * Cζ * t ^ 3 := by ring
    _ ≤ Cζ * t ^ 4 + 24 * Cζ * t ^ 4 + 72 * Cζ * t ^ 4 := by linarith
    _ ≤ 100 * Cζ * t ^ 4 := by nlinarith [pow_nonneg (abs_nonneg s.im) 4]

/-- analyticity of Y on a closed disc of radius r < 2 about 2 + it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdfcd632bf3910659a1a69583ecc1b8706a66d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
