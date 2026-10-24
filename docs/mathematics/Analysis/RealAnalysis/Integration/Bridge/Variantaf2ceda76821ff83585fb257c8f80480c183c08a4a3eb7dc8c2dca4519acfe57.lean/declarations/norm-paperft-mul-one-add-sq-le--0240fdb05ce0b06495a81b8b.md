# norm_paperFT_mul_one_add_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3145ebd-cfd3-0599-8863-d9ce084f425a",
  "kind": "theorem",
  "lexical_name": "norm_paperFT_mul_one_add_sq_le",
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
  "slug": "norm-paperft-mul-one-add-sq-le--0240fdb05ce0b06495a81b8b",
  "source": {
    "blob": "db88fa3fedc657aa5a64c7ccf4d29a9c09a5be3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0240fdb05ce0b06495a81b8bd8dce19b7f7d99822a89aa48914191e1bd195be8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3145ebd-cfd3-0599-8863-d9ce084f425a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_paperFT_mul_one_add_sq_le {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) {Λ : ℝ}
    (hΛ : ∀ u, k u ≠ 0 → |u| ≤ Λ) (τ : ℝ) :
    ‖paperFT k τ‖ * (1 + τ ^ 2) ≤ (∫ u, ‖k u‖) + ∫ u, ‖deriv (deriv k) u‖ := by
  have hkc : HasCompactSupport k := Zeta23.hasCompactSupport_of_support_subset_abs hΛ
  have hki : Integrable k := hk.continuous.integrable_of_hasCompactSupport hkc
  have h1 := Zeta23.norm_paperFT_le hki hΛ (τ : ℂ)
  have h2 := Zeta23.norm_paperFT_mul_sq_le hk hΛ (τ : ℂ)
  simp only [Complex.ofReal_im, abs_zero, zero_mul, Real.exp_zero, one_mul, Complex.norm_real,
    Real.norm_eq_abs, sq_abs] at h1 h2
  calc ‖paperFT k τ‖ * (1 + τ ^ 2) = ‖paperFT k τ‖ + ‖paperFT k τ‖ * τ ^ 2 := by ring
    _ ≤ _ := add_le_add h1 h2

/-- From H-Γ: `|μ(τ)| ≤ K₂ (1+|τ|)^{1/2}` for all τ (continuity on [−1,1]; Stirling [eq:mufacts]
`μ(τ) = (1/2π)log(|τ|/2π) + O(τ^{-2})` and `log x ≤ 2x^{1/2}` for |τ| ≥ 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db88fa3fedc657aa5a64c7ccf4d29a9c09a5be3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
