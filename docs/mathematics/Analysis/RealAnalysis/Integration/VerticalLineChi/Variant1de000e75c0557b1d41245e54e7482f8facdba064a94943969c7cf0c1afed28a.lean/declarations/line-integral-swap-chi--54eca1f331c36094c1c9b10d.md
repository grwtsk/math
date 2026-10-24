# line_integral_swap_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baabc057-1ecf-024d-eef1-7c000d89f2fa",
  "kind": "theorem",
  "lexical_name": "line_integral_swap_chi",
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
  "slug": "line-integral-swap-chi--54eca1f331c36094c1c9b10d",
  "source": {
    "blob": "7b7033b926b715aa7d0952e5790330aaa2c56ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54eca1f331c36094c1c9b10d1974e33588dd4e832910d49bdf1c7ad02b20aaf6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baabc057-1ecf-024d-eef1-7c000d89f2fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem line_integral_swap_chi (_hχ1 : χ ≠ 1) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) {c : ℝ} (hc1 : 1 < c) :
    ∫ t : ℝ, (∑' n : ℕ, paperFT (tilt k (c - 1/2)) t
        * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n)
      = ∑' n : ℕ, ∫ t : ℝ, paperFT (tilt k (c - 1/2)) t
        * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n := by
  have hkb2 : ContDiff ℝ 2 (tilt k (c - 1/2)) := tilt_contDiff hk _
  have hkbc : HasCompactSupport (tilt k (c - 1/2)) := tilt_hasCompactSupport hkc _
  have hFkb := Zeta23.EF.integrable_fourier_of_contDiff_two hkb2 hkbc
  have hpfi : Integrable (fun t : ℝ => paperFT (tilt k (c - 1/2)) t) :=
    Zeta23.EF.integrable_paperFT_ofReal hFkb
  have hre : ∀ t : ℝ, ((((c:ℝ)):ℂ) + t * I).re = c := by
    intro t
    simp
  have hnormle : ∀ (n : ℕ) (t : ℝ), ‖LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ))
      (((c:ℝ):ℂ) + t * I) n‖ ≤ if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c)) := by
    intro n t
    rcases eq_or_ne n 0 with rfl | hn
    · simp [LSeries.term_zero]
    · rw [LSeries.term_of_ne_zero hn, norm_div, norm_mul,
        Complex.norm_natCast_cpow_of_pos (Nat.pos_of_ne_zero hn), hre, if_neg hn,
        Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
        Real.rpow_neg (Nat.cast_nonneg n), div_eq_mul_inv]
      have hχb := DirichletCharacter.norm_le_one χ (n : ZMod q)
      have hrp : (0:ℝ) ≤ ((n:ℝ) ^ (c:ℝ))⁻¹ := by positivity
      have hΛ0 : (0:ℝ) ≤ Λ n := ArithmeticFunction.vonMangoldt_nonneg
      calc ‖(χ (n : ZMod q) : ℂ)‖ * Λ n * ((n:ℝ) ^ (c:ℝ))⁻¹
          ≤ 1 * Λ n * ((n:ℝ) ^ (c:ℝ))⁻¹ := by gcongr
        _ = Λ n * ((n:ℝ) ^ (c:ℝ))⁻¹ := by ring
  have hcont : ∀ n : ℕ, Continuous (fun t : ℝ =>
      LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n) := by
    intro n
    rcases eq_or_ne n 0 with rfl | hn
    · simpa [LSeries.term_zero] using continuous_const
    · simp only [LSeries.term_of_ne_zero hn]
      refine continuous_const.div ?_ (fun t => ?_)
      · refine Continuous.const_cpow (by fun_prop) (Or.inl ?_)
        exact_mod_cast hn
      · exact cpow_ne_zero_iff.mpr (Or.inl (by exact_mod_cast hn))
  have hint : ∀ n : ℕ, Integrable (fun t : ℝ => paperFT (tilt k (c - 1/2)) t
      * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n) := by
    intro n
    refine hpfi.mul_bdd (c := if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c)))
      (hcont n).aestronglyMeasurable ?_
    filter_upwards with t
    exact hnormle n t
  have hcn : Summable (fun n : ℕ => if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c))) := by
    have hs : LSeriesSummable (fun n => (Λ n : ℂ)) (c : ℂ) :=
      ArithmeticFunction.LSeriesSummable_vonMangoldt (by simpa using hc1)
    have hns : Summable (fun n : ℕ => ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖) :=
      summable_norm_iff.mpr hs
    refine hns.congr fun n => ?_
    rcases eq_or_ne n 0 with rfl | hn
    · simp [LSeries.term_zero]
    · rw [LSeries.term_of_ne_zero hn, norm_div,
        Complex.norm_natCast_cpow_of_pos (Nat.pos_of_ne_zero hn), Complex.ofReal_re,
        if_neg hn, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
        Real.rpow_neg (Nat.cast_nonneg n), div_eq_mul_inv]
  have hsum : Summable (fun n : ℕ => ∫ t : ℝ, ‖paperFT (tilt k (c - 1/2)) t
      * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n‖) := by
    refine Summable.of_nonneg_of_le (fun n => integral_nonneg fun t => norm_nonneg _)
      (fun n => ?_)
      ((hcn.mul_left (∫ t : ℝ, ‖paperFT (tilt k (c - 1/2)) t‖)))
    calc (∫ t : ℝ, ‖paperFT (tilt k (c - 1/2)) t
          * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n‖)
        ≤ ∫ t : ℝ, ‖paperFT (tilt k (c - 1/2)) t‖
            * (if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c))) := by
          refine integral_mono_of_nonneg (Filter.Eventually.of_forall fun t => norm_nonneg _)
            (hpfi.norm.mul_const _) (Filter.Eventually.of_forall fun t => ?_)
          simp only
          rw [norm_mul]
          exact mul_le_mul_of_nonneg_left (hnormle n t) (norm_nonneg _)
      _ = (∫ t : ℝ, ‖paperFT (tilt k (c - 1/2)) t‖)
            * (if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c))) := by
          rw [integral_mul_const]
  exact (MeasureTheory.hasSum_integral_of_summable_integral_norm hint hsum).tsum_eq.symm

/-- **The twisted prime side**: (1/2π)∫ H(c+it)(−L'/L)(c+it)dt = Σ Λ(n)χ(n)n^{−1/2}k(log n). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7033b926b715aa7d0952e5790330aaa2c56ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
