# two_line_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49563da6-9b53-df37-2748-5308aeba8b85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea9613e3-16c6-2243-ba5f-88d9eaaeafab",
  "kind": "theorem",
  "lexical_name": "two_line_lower",
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
  "slug": "two-line-lower--a5199b0942e95fdafe17b5c1",
  "source": {
    "blob": "fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 305,
    "path": "GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5199b0942e95fdafe17b5c1f6accbf22eaf329f55df012824ac6646bae54d5f",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea9613e3-16c6-2243-ba5f-88d9eaaeafab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_line_lower : ∃ t₁ : ℝ, 2 ≤ t₁ ∧ ∀ t : ℝ, t₁ ≤ |t| →
    3 ≤ (Lfn (2 + t * I) + logDeriv riemannZeta (2 + t * I)).re ∧ 1 ≤ ‖Yfn (2 + t * I)‖ := by
  set K : ℝ := ‖deriv riemannZeta 2 / riemannZeta 2‖ with hK
  have hK0 : 0 ≤ K := norm_nonneg _
  refine ⟨2 * Real.exp (12 + 2 * K), ?_, fun t ht => ?_⟩
  · have : 1 ≤ Real.exp (12 + 2 * K) := Real.one_le_exp (by positivity)
    linarith
  have hexp1 : 1 ≤ Real.exp (12 + 2 * K) := Real.one_le_exp (by positivity)
  have ht2 : 2 ≤ |t| := by linarith
  have hlog : 12 + 2 * K ≤ Real.log (|t| / 2) := by
    rw [Real.le_log_iff_exp_le (by positivity)]
    linarith
  have hL := re_Lfn_two_ge ht2
  have hζζ : -K ≤ (logDeriv riemannZeta (2 + t * I)).re := by
    have h1 := Complex.abs_re_le_norm (logDeriv riemannZeta (2 + t * I))
    rw [abs_le] at h1
    linarith [h1.1, norm_logDeriv_zeta_two_le t]
  have hG : 3 ≤ (Lfn (2 + t * I) + logDeriv riemannZeta (2 + t * I)).re := by
    rw [Complex.add_re]; linarith
  refine ⟨hG, ?_⟩
  -- ‖Y‖ = ‖s(s−1)/2‖ ‖ζ‖ ‖G‖ ≥ 1 · (1/3) · 3
  have hs : (0:ℝ) < ((2 : ℂ) + t * I).re := by simp
  rw [Yfn_eq_factor hs (two_line_ne_one t) (zeta_two_line_ne_zero t), norm_mul, norm_mul]
  have hp : 1 ≤ ‖((2 : ℂ) + t * I) * ((2 : ℂ) + t * I - 1) / 2‖ := by
    rw [norm_div, norm_mul]
    have h2 : ‖(2 : ℂ)‖ = 2 := by norm_num
    rw [h2, le_div_iff₀ (by norm_num : (0:ℝ) < 2)]
    have ha : 2 ≤ ‖(2 : ℂ) + t * I‖ := by
      have := Complex.abs_re_le_norm ((2 : ℂ) + t * I)
      simpa using this
    have hb : 1 ≤ ‖(2 : ℂ) + t * I - 1‖ := by
      have := Complex.abs_re_le_norm ((2 : ℂ) + t * I - 1)
      simp at this
      norm_num at this
      exact this
    nlinarith [norm_nonneg ((2 : ℂ) + t * I - 1)]
  have hz : (1 / 3 : ℝ) ≤ ‖riemannZeta (2 + t * I)‖ := Zeta23.RvM.zeta_lower_bound_two t
  have hGn : 3 ≤ ‖Lfn (2 + t * I) + logDeriv riemannZeta (2 + t * I)‖ :=
    le_trans hG (Complex.re_le_norm _)
  calc (1 : ℝ) = 1 * (1 / 3) * 3 := by norm_num
    _ ≤ ‖((2 : ℂ) + t * I) * ((2 : ℂ) + t * I - 1) / 2‖ * ‖riemannZeta (2 + t * I)‖
          * ‖Lfn (2 + t * I) + logDeriv riemannZeta (2 + t * I)‖ := by
        gcongr

/-! ### ‖Γℝ′/Γℝ‖ ≪ log (second-order Stirling) -/

/-- ‖Γℝ′/Γℝ(s)‖ ≤ log(|Im s|+3) + 5 for 0 < Re s ≤ 4, |Im s| ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
