# sum_Pc_part_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79f0aa92-b452-4ebd-3302-94cbce1ab475",
  "kind": "lemma",
  "lexical_name": "sum_Pc_part_bound",
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
  "slug": "sum-pc-part-bound--b40312a9fd7cc4b4bb2ba024",
  "source": {
    "blob": "24e4e88dd0c9bddae4026b54fcadbe1c3177cf0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b40312a9fd7cc4b4bb2ba024ddd93cca015e6a4429abdf8511bffac3dff342de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f0aa92-b452-4ebd-3302-94cbce1ab475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_Pc_part_bound (hF : LocalHypsCoreW cϱ p F) {c : ℕ → ℂ} (hc1 : c 1 = 0) :
    |∑ k ∈ Finset.range p.d, ∫ r, F.phiHat r ^ 2 * Pc p.X c (p.tau k + r)|
      ≤ p.L ^ 2 / Real.log 2 * S1 c p.X := by
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  simp_rw [Pc_part_eq hF c]
  rw [← Finset.mul_sum, Finset.sum_comm, abs_mul, abs_two]
  have hterm : ∀ n ∈ Finset.Ioc 0 ⌊p.X⌋₊,
      |∑ k ∈ Finset.range p.d, (Real.sqrt n)⁻¹ * F.Aphi (Real.log n)
          * ((c n).re * Real.cos (p.tau k * Real.log n)
            + (c n).im * Real.sin (p.tau k * Real.log n))|
        ≤ ‖c n‖ / Real.sqrt n * (p.L ^ 2 / (2 * Real.log 2)) := by
    intro n hn
    have hn0 : 0 < n := (Finset.mem_Ioc.1 hn).1
    have hs0 : (0:ℝ) ≤ (Real.sqrt n)⁻¹ := inv_nonneg.2 (Real.sqrt_nonneg _)
    rcases Nat.lt_or_ge n 2 with hn2 | hn2
    · have hn1 : n = 1 := by omega
      subst hn1
      simp [hc1]
    · have hre : ∀ θ : ℝ, (c n).re * Real.cos θ + (c n).im * Real.sin θ
          = (c n * Complex.exp ((-θ : ℝ) * Complex.I)).re := by
        intro θ
        rw [show ((-θ : ℝ) : ℂ) = -(θ : ℂ) by push_cast; ring]
        rw [show (-(θ:ℂ)) * Complex.I = ((-θ : ℝ) : ℂ) * Complex.I by push_cast; ring]
        rw [Complex.exp_mul_I]
        simp only [Complex.mul_re, Complex.add_re, Complex.add_im, Complex.mul_im,
          Complex.cos_ofReal_re, Complex.sin_ofReal_re, Complex.cos_ofReal_im,
          Complex.sin_ofReal_im, Real.cos_neg, Real.sin_neg, Complex.I_re, Complex.I_im]
        ring
      have hsum_eq : ∑ k ∈ Finset.range p.d, (Real.sqrt n)⁻¹ * F.Aphi (Real.log n)
            * ((c n).re * Real.cos (p.tau k * Real.log n)
              + (c n).im * Real.sin (p.tau k * Real.log n))
          = (Real.sqrt n)⁻¹ * (F.Aphi (Real.log n)
              * (c n * ∑ k ∈ Finset.range p.d,
                  Complex.exp ((-(p.tau k * Real.log n) : ℝ) * Complex.I)).re) := by
        rw [Finset.mul_sum, Complex.re_sum]
        rw [Finset.mul_sum, Finset.mul_sum]
        refine Finset.sum_congr rfl fun k _ => ?_
        rw [hre (p.tau k * Real.log n)]
        ring
      rw [hsum_eq, abs_mul, abs_of_nonneg hs0, div_eq_mul_inv, mul_comm (‖c n‖), mul_assoc]
      refine mul_le_mul_of_nonneg_left ?_ hs0
      have hy : Real.log 2 ≤ Real.log n := Real.log_le_log two_pos (by exact_mod_cast hn2)
      have hA0 := hF.Aphi_nonneg (Real.log n)
      calc |F.Aphi (Real.log n) * (c n * ∑ k ∈ Finset.range p.d,
              Complex.exp ((-(p.tau k * Real.log n) : ℝ) * Complex.I)).re|
          = F.Aphi (Real.log n) * |(c n * ∑ k ∈ Finset.range p.d,
              Complex.exp ((-(p.tau k * Real.log n) : ℝ) * Complex.I)).re| := by
            rw [abs_mul, abs_of_nonneg hA0]
        _ ≤ F.Aphi (Real.log n) * (‖c n‖ * ‖∑ k ∈ Finset.range p.d,
              Complex.exp ((-(p.tau k * Real.log n) : ℝ) * Complex.I)‖) := by
            gcongr
            exact (Complex.abs_re_le_norm _).trans (norm_mul_le _ _)
        _ = ‖c n‖ * (F.Aphi (Real.log n) * ‖∑ k ∈ Finset.range p.d,
              Complex.exp ((-(p.tau k * Real.log n) : ℝ) * Complex.I)‖) := by ring
        _ ≤ ‖c n‖ * (p.L ^ 2 / (2 * Real.log 2)) :=
            mul_le_mul_of_nonneg_left (Aphi_mul_norm_tauKernel_le hF hy) (norm_nonneg _)
  calc 2 * |∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ∑ k ∈ Finset.range p.d,
          (Real.sqrt n)⁻¹ * F.Aphi (Real.log n)
          * ((c n).re * Real.cos (p.tau k * Real.log n)
            + (c n).im * Real.sin (p.tau k * Real.log n))|
      ≤ 2 * ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, |∑ k ∈ Finset.range p.d,
          (Real.sqrt n)⁻¹ * F.Aphi (Real.log n)
          * ((c n).re * Real.cos (p.tau k * Real.log n)
            + (c n).im * Real.sin (p.tau k * Real.log n))| := by
        gcongr
        exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ 2 * ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊, ‖c n‖ / Real.sqrt n * (p.L ^ 2 / (2 * Real.log 2)) := by
        gcongr with n hn
        exact hterm n hn
    _ = p.L ^ 2 / Real.log 2 * S1 c p.X := by
        rw [← Finset.sum_mul]
        unfold S1
        field_simp

/-- **Decomposition of a diagonal entry for ν** (mirror of GentryA_diag_eq):
`G_kk(ν) = G^μ_kk + cΠ·G^Π_kk + G^{P_c}_kk` after translating `τ = τ_k + r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e4e88dd0c9bddae4026b54fcadbe1c3177cf0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
