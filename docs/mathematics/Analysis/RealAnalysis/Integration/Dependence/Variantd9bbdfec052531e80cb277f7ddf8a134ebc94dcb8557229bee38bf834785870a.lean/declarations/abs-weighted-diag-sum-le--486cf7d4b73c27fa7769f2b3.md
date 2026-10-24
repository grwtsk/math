# abs_weighted_diag_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7013119c-8cd3-25fc-6556-81798d84df1a",
  "kind": "theorem",
  "lexical_name": "abs_weighted_diag_sum_le",
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
  "slug": "abs-weighted-diag-sum-le--486cf7d4b73c27fa7769f2b3",
  "source": {
    "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 341,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:486cf7d4b73c27fa7769f2b3302e0f78276d8684f4bb689527da5f2f0e0b0df1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7013119c-8cd3-25fc-6556-81798d84df1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_weighted_diag_sum_le (hF : LocalHypsCoreW cϱ p Fn) {y : ℝ} (hy : Real.log 2 ≤ y)
    (d : ℕ) (w : ℕ → ℝ) {W : ℝ} (hw0 : ∀ k, 0 ≤ w k) (hwW : ∀ k, w k ≤ W) (hmono : Monotone w)
    (z : ℂ) :
    |∑ k ∈ Finset.range d, w k * (Fn.Aphi y *
        (z.re * Real.cos (p.tau k * y) + z.im * Real.sin (p.tau k * y)))|
      ≤ ‖z‖ * (2 * W * (p.L ^ 2 / (2 * Real.log 2))) := by
  -- the kernel vectors q_k := A(y) e^{-i τ_k y}
  set q : ℕ → ℂ := fun k => (Fn.Aphi y : ℂ) * Complex.exp ((-(p.tau k * y) : ℝ) * Complex.I)
    with hq
  have hqK : ∀ K ≤ d, ‖∑ k ∈ Finset.range K, q k‖ ≤ p.L ^ 2 / (2 * Real.log 2) := by
    intro K _
    rw [hq, ← Finset.mul_sum, norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (hF.Aphi_nonneg y)]
    exact Aphi_mul_norm_tauKernel_le' hF hy K
  have habel := norm_sum_smul_le_of_monotone d w q hw0 hwW hmono hqK
  -- identify the real sum with Re(z * Σ w_k • q_k)
  have hre : ∑ k ∈ Finset.range d, w k * (Fn.Aphi y *
      (z.re * Real.cos (p.tau k * y) + z.im * Real.sin (p.tau k * y)))
      = (z * ∑ k ∈ Finset.range d, w k • q k).re := by
    rw [Finset.mul_sum, Complex.re_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [hq]
    simp only [Complex.real_smul]
    rw [Complex.exp_mul_I]
    simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      Complex.add_re, Complex.add_im, Complex.cos_ofReal_re, Complex.cos_ofReal_im,
      Complex.sin_ofReal_re, Complex.sin_ofReal_im, Complex.I_re, Complex.I_im,
      Complex.ofReal_neg, Complex.cos_neg, Complex.sin_neg, Complex.neg_re, Complex.neg_im]
    ring
  rw [hre]
  calc |(z * ∑ k ∈ Finset.range d, w k • q k).re|
      ≤ ‖z * ∑ k ∈ Finset.range d, w k • q k‖ := Complex.abs_re_le_norm _
    _ = ‖z‖ * ‖∑ k ∈ Finset.range d, w k • q k‖ := norm_mul _ _
    _ ≤ ‖z‖ * (2 * W * (p.L ^ 2 / (2 * Real.log 2))) :=
        mul_le_mul_of_nonneg_left habel (norm_nonneg _)

/-! ### C. The fixed-T conclusions -/

/-- geometric partial sums: Σ_{r<R} x^{r+1} ≤ 2x for 0 ≤ x ≤ 1/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
