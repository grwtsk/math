# lemma_abadsumas_sum_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2877,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b54b3c3e-32f4-aacb-0b37-e8473143ac7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9d3cdff-40d7-3d22-637b-3b42c61fb280",
  "kind": "lemma",
  "lexical_name": "lemma_abadsumas_sum_fourier",
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
  "slug": "lemma-abadsumas-sum-fourier--8873a402925cb815c88a0c30",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2997,
    "line": 2877,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8873a402925cb815c88a0c302f58060aa1ccd0788fb0c2217c6fefcc309f34fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9d3cdff-40d7-3d22-637b-3b42c61fb280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2877–2997.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_abadsumas_sum_fourier (s : ℂ) {a b : ℝ} (ha : 0 < a)
    (hab : a < b) :
    let f : ℝ → ℂ := fun y ↦
      if a ≤ y ∧ y ≤ b then (y ^ (-s.re) : ℝ) * e (-(s.im / (2 * π)) * Real.log y) else 0
    ∀ n : ℕ,
    FourierTransform.fourier f (n + 1) + FourierTransform.fourier f (-(n + 1 : ℤ)) =
    2 * ∫ y in a..b, (y : ℂ) ^ (-s) * Real.cos (2 * π * (n + 1) * y) := by
  intro f n
  have fourier_as_integral : ∀ n : ℤ, FourierTransform.fourier f n =
    ∫ y in a..b, (y ^ (-s.re) : ℝ) * e (-(s.im / (2 * π)) * Real.log y) * e (-n * y) := by
    intro n
    calc FourierTransform.fourier f ↑n
      _ = ∫ (y : ℝ), Complex.exp (↑(-2 * π * y * ↑n) * Complex.I) • f y := fourier_real_eq_integral_exp_smul f ↑n
      _ = ∫ (y : ℝ) in a..b, Complex.exp (↑(-2 * π * y * ↑n) * Complex.I) • f y := by
        rw [intervalIntegral.integral_of_le hab.le, ← integral_indicator measurableSet_Ioc]
        apply MeasureTheory.integral_congr_ae
        filter_upwards [MeasureTheory.Measure.ae_ne volume a] with y hy_ne
        by_cases hy : y ∈ Set.Ioc a b
        · rw [Set.indicator_of_mem hy]
        · rw [Set.indicator_of_notMem hy]
          have h_f_zero : f y = 0 := by
            dsimp [f]
            split_ifs with h_bounds
            · exact (hy ⟨lt_of_le_of_ne h_bounds.1 hy_ne.symm, h_bounds.2⟩).elim
            · rfl
          rw [h_f_zero, smul_zero]
      _ = ∫ (y : ℝ) in a..b, ↑(y ^ (-s.re)) * e (-(s.im / (2 * π)) * Real.log y) * e (-↑n * y) := by
        apply intervalIntegral.integral_congr
        intro y hy
        have h_bounds : a ≤ y ∧ y ≤ b := by
          rw [Set.uIcc_of_le hab.le] at hy
          exact ⟨hy.1, hy.2⟩
        have h_f_val : f y = (y ^ (-s.re) : ℝ) * e (-(s.im / (2 * π)) * Real.log y) := by
          dsimp [f]
          rw [if_pos h_bounds]
        dsimp only
        rw [h_f_val, e]
        calc cexp (↑(-2 * π * y * ↑n) * I) • (↑(y ^ (-s.re)) * cexp (2 * ↑π * I * ↑(-(s.im / (2 * π)) * Real.log y)))
            = ↑(y ^ (-s.re)) * cexp (2 * ↑π * I * ↑(-(s.im / (2 * π)) * Real.log y))
                * cexp (↑(-2 * π * y * ↑n) * I) := by
                  rw [smul_eq_mul]; ring
          _ = ↑(y ^ (-s.re)) * cexp (2 * ↑π * I * ↑(-(s.im / (2 * π)) * Real.log y))
                * e (-↑n * y) := by
                  rw [e]
                  congr 1
                  congr 1
                  push_cast
                  ring
  have sum_fourier_as_cosine : ∀ n : ℕ,
    FourierTransform.fourier f (n + 1) + FourierTransform.fourier f (-(n + 1 : ℤ)) =
    2 * ∫ y in a..b, (y ^ (-s.re) : ℝ) * e (-(s.im / (2 * π)) * Real.log y) *
      Real.cos (2 * π * (n + 1) * y) := by
    intro n
    have h1 : FourierTransform.fourier f (↑n + 1) =
        ∫ y in a..b, ↑(y ^ (-s.re)) * e (-(s.im / (2 * π)) * Real.log y) * e (-(↑n + 1 : ℤ) * y) := by
      exact_mod_cast fourier_as_integral (↑n + 1 : ℤ)
    have h2 : FourierTransform.fourier f (-↑(n + 1 : ℤ)) =
        ∫ y in a..b, ↑(y ^ (-s.re)) * e (-(s.im / (2 * π)) * Real.log y) * e (↑(n + 1 : ℤ) * y) := by
      simpa only [Int.cast_neg, neg_neg] using fourier_as_integral (-↑((n + 1) : ℤ))
    rw [h1, h2]
    have hint1 : IntervalIntegrable
        (fun y => ↑(y ^ (-s.re)) * e (-(s.im / (2 * π)) * Real.log y) * e (-(↑n + 1 : ℤ) * y))
        MeasureTheory.volume a b := by
      have := lemma_abadsumas_integrable_explog (s := s) ha hab (-(n + 1) : ℤ)
      simpa only [Int.cast_neg] using this
    have hint2 : IntervalIntegrable
        (fun y => ↑(y ^ (-s.re)) * e (-(s.im / (2 * π)) * Real.log y) * e (↑(n + 1 : ℤ) * y))
        MeasureTheory.volume a b := lemma_abadsumas_integrable_explog ha hab (n + 1 : ℤ)
    rw [← intervalIntegral.integral_add hint1 hint2, ← intervalIntegral.integral_const_mul]
    congr 1
    ext y
    have heuler : e (-↑(n + 1 : ℤ) * y) + e (↑(n + 1 : ℤ) * y) =
    2 * ↑(Real.cos (2 * π * (↑n + 1) * y)) := by
      have hpos : e (↑(n + 1 : ℤ) * y) =
          Complex.exp (↑(2 * π * (↑n + 1) * y) * Complex.I) := by
        simp only [e]; push_cast; ring_nf
      have hneg : e (-↑(n + 1 : ℤ) * y) =
          Complex.exp (-(↑(2 * π * (↑n + 1) * y)) * Complex.I) := by
        simp only [e]; push_cast; ring_nf
      rw [hneg, hpos, add_comm, Complex.ofReal_cos, ← Complex.two_cos]
    linear_combination ↑(y ^ (-s.re)) * e (-(s.im / (2 * π)) * Real.log y) * heuler
  rw [sum_fourier_as_cosine n]
  congr 1
  apply intervalIntegral.integral_congr
  intro y hy
  simp only [neg_mul, ofReal_cos, ofReal_mul, ofReal_ofNat, ofReal_add, ofReal_natCast, ofReal_one,
  mul_eq_mul_right_iff]
  have hy_pos : 0 < y := by
    rw [Set.uIcc_of_le hab.le] at hy
    exact ha.trans_le hy.1
  have key : (y : ℂ) ^ (-s) =
      ↑(y ^ (-s.re)) * e (-(s.im / (2 * π)) * Real.log y) := by
    have hyne : (y : ℂ) ≠ 0 := by exact_mod_cast hy_pos.ne'
    rw [Complex.cpow_def_of_ne_zero hyne]
    rw [← Complex.ofReal_log hy_pos.le]
    have hexp_split : (↑(Real.log y) : ℂ) * -s =
        ↑(-s.re * Real.log y) + ↑(-s.im * Real.log y) * Complex.I := by
      rw [← Complex.re_add_im s]
      push_cast
      ring_nf
      field_simp
      congr 1
      simp only [re_add_im]
      ring_nf
    rw [hexp_split, Complex.exp_add_mul_I]
    have hrpow : (y ^ (-s.re) : ℝ) = Real.exp (-s.re * Real.log y) := by
      rw [mul_comm, ← Real.rpow_def_of_pos hy_pos]
    have he_expand : e (-(s.im / (2 * π)) * Real.log y) =
        ↑(Real.cos (-s.im * Real.log y)) + ↑(Real.sin (-s.im * Real.log y)) * Complex.I := by
      rw [show ↑(Real.cos (-s.im * Real.log y)) + ↑(Real.sin (-s.im * Real.log y)) * I =
          Complex.exp (↑(-s.im * Real.log y) * I) from by
            rw [exp_mul_I]
            simp only [Complex.ofReal_cos, Complex.ofReal_sin]]
      simp [e]
      congr 1
      ring_nf; field_simp
    rw [hrpow, he_expand]
    push_cast
    ring
  simp [key]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L2877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
