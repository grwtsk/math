# norm_fourier_mul_one_add_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "faa550820f77d9a30084b43fcb1b073ae5550001",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f4c3b19-2d41-4f4d-9bd9-8f0173cff10a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca76b3af-de8d-5c15-d719-db5e1e8c5294",
  "kind": "theorem",
  "lexical_name": "norm_fourier_mul_one_add_sq_le",
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
  "slug": "norm-fourier-mul-one-add-sq-le--5dc2a6d1213bf255ff74a260",
  "source": {
    "blob": "faa550820f77d9a30084b43fcb1b073ae5550001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dc2a6d1213bf255ff74a260f6a23f0887079a9c462aee0021fcdb835fc9376b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca76b3af-de8d-5c15-d719-db5e1e8c5294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_fourier_mul_one_add_sq_le {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) {Λ : ℝ}
    (hΛ : ∀ u, k u ≠ 0 → |u| ≤ Λ) (w : ℝ) :
    ‖𝓕 k w‖ * (1 + w ^ 2)
      ≤ (∫ u, ‖k u‖) + (∫ u, ‖deriv (deriv k) u‖) / (4 * π ^ 2) := by
  have hkc : HasCompactSupport k := Zeta23.hasCompactSupport_of_support_subset_abs hΛ
  have hki : Integrable k := hk.continuous.integrable_of_hasCompactSupport hkc
  have hdict : 𝓕 k w = paperFT k ((-(2 * π * w) : ℝ) : ℂ) := by
    rw [paperFT_ofReal_eq_fourier]; field_simp
  have h1 := Zeta23.norm_paperFT_le hki hΛ ((-(2 * π * w) : ℝ) : ℂ)
  have h2 := Zeta23.norm_paperFT_mul_sq_le hk hΛ ((-(2 * π * w) : ℝ) : ℂ)
  simp only [Complex.ofReal_im, abs_zero, zero_mul, Real.exp_zero, one_mul, Complex.norm_real,
    Real.norm_eq_abs, sq_abs] at h1 h2
  rw [hdict]
  have h2' : ‖paperFT k ((-(2 * π * w) : ℝ) : ℂ)‖ * w ^ 2
      ≤ (∫ u, ‖deriv (deriv k) u‖) / (4 * π ^ 2) := by
    rw [le_div_iff₀ (by positivity)]
    calc ‖paperFT k ((-(2 * π * w) : ℝ) : ℂ)‖ * w ^ 2 * (4 * π ^ 2)
        = ‖paperFT k ((-(2 * π * w) : ℝ) : ℂ)‖ * (-(2 * π * w)) ^ 2 := by ring
      _ ≤ ∫ u, ‖deriv (deriv k) u‖ := h2
  calc ‖paperFT k ((-(2 * π * w) : ℝ) : ℂ)‖ * (1 + w ^ 2)
      = ‖paperFT k ((-(2 * π * w) : ℝ) : ℂ)‖ + ‖paperFT k ((-(2 * π * w) : ℝ) : ℂ)‖ * w ^ 2 := by ring
    _ ≤ _ := add_le_add h1 h2'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faa550820f77d9a30084b43fcb1b073ae5550001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
