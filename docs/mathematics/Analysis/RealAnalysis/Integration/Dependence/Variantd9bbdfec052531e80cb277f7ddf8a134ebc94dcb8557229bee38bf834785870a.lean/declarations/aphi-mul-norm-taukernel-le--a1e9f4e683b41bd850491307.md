# Aphi_mul_norm_tauKernel_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73173e3c-eab7-eba3-631c-d16a0b66b46c",
  "kind": "lemma",
  "lexical_name": "Aphi_mul_norm_tauKernel_le'",
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
  "slug": "aphi-mul-norm-taukernel-le--a1e9f4e683b41bd850491307",
  "source": {
    "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 234,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e9f4e683b41bd850491307d5b6ea4b7022bed69addb284439c4402fa635dde",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73173e3c-eab7-eba3-631c-d16a0b66b46c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Aphi_mul_norm_tauKernel_le' (hF : LocalHypsCoreW cϱ p Fn) {y : ℝ} (hy : Real.log 2 ≤ y)
    (K : ℕ) :
    Fn.Aphi y * ‖∑ k ∈ Finset.range K, Complex.exp ((-(p.tau k * y) : ℝ) * Complex.I)‖
      ≤ p.L ^ 2 / (2 * Real.log 2) := by
  have hL := hF.L_pos
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  have hlog2' : Real.log 2 ≤ 1 := by
    have := Real.log_le_sub_one_of_pos (zero_lt_two' ℝ)
    linarith
  have hA0 := hF.Aphi_nonneg y
  have hRHS : 0 ≤ p.L ^ 2 / (2 * Real.log 2) := by positivity
  have hyabs : |y| = y := abs_of_nonneg (hlog2.le.trans hy)
  rcases le_or_gt p.L y with hyL | hyL
  · have hz : Fn.Aphi y = 0 := le_antisymm ((hF.Aphi_le y).trans (by simp [hyabs, hyL])) hA0
    simp [hz, hRHS]
  · set m := min y (p.L - y) with hm
    have hy0 : 0 < y := hlog2.trans_le hy
    have hm0 : 0 < m := lt_min hy0 (by linarith)
    have hfac : ∑ k ∈ Finset.range K, Complex.exp ((-(p.tau k * y) : ℝ) * Complex.I)
        = Complex.exp ((-(p.T * y) : ℝ) * Complex.I)
          * ∑ k ∈ Finset.range K, Complex.exp (((k : ℝ) * (-(p.h * y)) : ℝ) * Complex.I) := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [← Complex.exp_add]
      congr 1
      simp only [Setting.tau]
      push_cast
      ring
    have hnorm : ‖∑ k ∈ Finset.range K, Complex.exp ((-(p.tau k * y) : ℝ) * Complex.I)‖
        = ‖∑ k ∈ Finset.range K, Complex.exp (((k : ℝ) * (-(p.h * y)) : ℝ) * Complex.I)‖ := by
      rw [hfac, norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul]
    have hdir := ThmE.abs_sin_mul_norm_geom_le (-(p.h * y)) K
    have hsin_eq : |Real.sin (-(p.h * y) / 2)| = Real.sin (π * y / p.L) := by
      have hθ : p.h * y / 2 = π * y / p.L := by
        simp only [Setting.h]
        field_simp
      rw [show -(p.h * y) / 2 = -(p.h * y / 2) by ring, Real.sin_neg, abs_neg, hθ]
      rw [abs_of_nonneg]
      apply Real.sin_nonneg_of_nonneg_of_le_pi
      · positivity
      · rw [div_le_iff₀ hL]
        nlinarith [Real.pi_pos]
    have hsin : 2 * m / p.L ≤ Real.sin (π * y / p.L) := two_min_div_le_sin hL hy0.le hyL.le
    rw [hnorm]
    set S := ‖∑ k ∈ Finset.range K, Complex.exp (((k : ℝ) * (-(p.h * y)) : ℝ) * Complex.I)‖
      with hS
    have hS0 : 0 ≤ S := norm_nonneg _
    rw [hsin_eq] at hdir
    have hS1 : 2 * m / p.L * S ≤ 1 :=
      (mul_le_mul_of_nonneg_right hsin hS0).trans hdir
    have hS2 : 2 * m * S ≤ p.L := by
      have h4 := mul_le_mul_of_nonneg_left hS1 hL.le
      rw [mul_one, ← mul_assoc, mul_div_cancel₀ _ hL.ne'] at h4
      linarith
    have hA1 : Fn.Aphi y ≤ p.L - y := (hF.Aphi_le y).trans (by simp [hyabs, hyL.le])
    have key : (p.L - y) * Real.log 2 ≤ p.L * m := by
      rcases le_total y (p.L - y) with h | h
      · rw [hm, min_eq_left h]
        nlinarith
      · rw [hm, min_eq_right h]
        nlinarith
    rw [le_div_iff₀ (by positivity)]
    calc Fn.Aphi y * S * (2 * Real.log 2) = (Fn.Aphi y * Real.log 2) * (2 * S) := by ring
      _ ≤ ((p.L - y) * Real.log 2) * (2 * S) := by gcongr
      _ ≤ (p.L * m) * (2 * S) := by gcongr
      _ = p.L * (2 * m * S) := by ring
      _ ≤ p.L * p.L := by gcongr
      _ = p.L ^ 2 := (sq _).symm

/-- Abel summation with monotone bounded real weights and vector summands:
‖Σ_{k<d} w_k • q_k‖ ≤ 2WB when every ‖Σ_{k<K} q_k‖ ≤ B (K ≤ d). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
