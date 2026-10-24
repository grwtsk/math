# tendsto_rectangleIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 949,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b0f0b39-0286-a9ee-267c-0146457a8360",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb85390f-7b67-fb7c-9d0c-784c212eddb5",
  "kind": "theorem",
  "lexical_name": "tendsto_rectangleIntegral",
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
  "slug": "tendsto-rectangleintegral--4e034a49b8fd3795a9ef1171",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1030,
    "line": 949,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e034a49b8fd3795a9ef11713eb93cdef0d99f47bbc94ad6fcf5947221fbfd0b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb85390f-7b67-fb7c-9d0c-784c212eddb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 949–1030.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_rectangleIntegral (s : ℂ) {Cg : ℝ} (hCg : 0 < Cg) {R : ℕ → ℝ}
    (hR : ∀ j : ℕ, (j : ℝ) + 7 ≤ R j ∧ R j ≤ (j : ℝ) + 8)
    (hgood : ∀ j : ℕ, ∀ p : ℂ, (p.im = R j ∨ p.im = -R j) → 1 / 2 ≤ p.re → p.re ≤ 2 →
      riemannZeta p ≠ 0 ∧ ‖logDeriv riemannZeta p‖ ≤ Cg * (Real.log ((j : ℝ) + 10)) ^ 2) :
    Tendsto (fun j : ℕ => RectangleIntegral' (fun p => wt s p * logDeriv xi p) (zc (R j)) (wc (R j)))
      atTop (𝓝 0) := by
  obtain ⟨C, hC, hb⟩ := norm_logDeriv_xi_le_border
  set K : ℝ := 32 * ‖s - reflect s‖ * C * (Cg + 2) with hK
  -- the comparison sequence K log²(j+10)/(j+7) → 0
  have hlim : Tendsto (fun j : ℕ => K * (Real.log ((j : ℝ) + 10) ^ 2 / ((j : ℝ) + 7)))
      atTop (𝓝 0) := by
    have h1 := Real.tendsto_pow_log_div_mul_add_atTop 1 (-3) 2 one_ne_zero
    have h2 : Tendsto (fun j : ℕ => (j : ℝ) + 10) atTop atTop :=
      tendsto_natCast_atTop_atTop.atTop_add tendsto_const_nhds
    have h3 := (h1.comp h2).const_mul K
    rw [mul_zero] at h3
    refine h3.congr (fun j => ?_)
    simp only [Function.comp_apply]
    ring_nf
  rw [tendsto_zero_iff_norm_tendsto_zero]
  refine squeeze_zero' (Eventually.of_forall (fun j => norm_nonneg _)) ?_ hlim
  filter_upwards [eventually_ge_atTop (Nat.ceil (2 * ‖s‖))] with j hj
  have hRj := hR j
  have hj' : 2 * ‖s‖ ≤ j := le_trans (Nat.le_ceil _) (by exact_mod_cast hj)
  have hR4 : 2 * ‖s‖ + 4 ≤ R j := by linarith
  have hR2 : 2 ≤ R j := by linarith [norm_nonneg s]
  have hR0 : 0 < R j := by linarith
  set L : ℝ := Cg * Real.log ((j : ℝ) + 10) ^ 2 + 1 with hL
  have hlog10 : 1 ≤ Real.log ((j : ℝ) + 10) := by
    rw [← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9
    linarith [(Nat.cast_nonneg j : (0 : ℝ) ≤ j)]
  have hlogsq : Real.log ((j : ℝ) + 10) ≤ Real.log ((j : ℝ) + 10) ^ 2 := by nlinarith
  have hL1 : 1 ≤ L := by
    have : 0 ≤ Cg * Real.log ((j : ℝ) + 10) ^ 2 := by positivity
    rw [hL]; linarith
  have hgoodL : ∀ p : ℂ, (p.im = R j ∨ p.im = -R j) → 1 / 2 ≤ p.re → p.re ≤ 2 →
      riemannZeta p ≠ 0 ∧ ‖logDeriv riemannZeta p‖ ≤ L :=
    fun p hp h1 h2 => ⟨(hgood j p hp h1 h2).1, by rw [hL]; linarith [(hgood j p hp h1 h2).2]⟩
  have hM : ∀ p ∈ RectangleBorder (zc (R j)) (wc (R j)),
      ‖wt s p * logDeriv xi p‖ ≤ (4 * ‖s - reflect s‖ / R j ^ 2) * (C * (L + Real.log (2 + R j))) := by
    intro p hp
    rw [norm_mul]
    exact mul_le_mul (norm_wt_le_border hR4 p hp) (hb L (R j) hL1 hR2 hgoodL p hp)
      (norm_nonneg _) (by positivity)
  have hI := norm_rectangleIntegral_le (f := fun p => wt s p * logDeriv xi p)
    (by simp; linarith) (by simp; linarith) hM
  simp only [zc_re, wc_re, zc_im, wc_im] at hI
  -- numerator: L + log(2 + R) ≤ (Cg + 2) log²(j+10)
  have hA : L + Real.log (2 + R j) ≤ (Cg + 2) * Real.log ((j : ℝ) + 10) ^ 2 := by
    have h1 : Real.log (2 + R j) ≤ Real.log ((j : ℝ) + 10) :=
      Real.log_le_log (by linarith) (by linarith)
    rw [hL]; nlinarith
  have hB : (4 * ‖s - reflect s‖ / R j ^ 2) * (C * (L + Real.log (2 + R j)))
      * (2 * (R j - (1 - R j)) + 2 * (R j - -R j))
      ≤ K * (Real.log ((j : ℝ) + 10) ^ 2 / ((j : ℝ) + 7)) := by
    calc (4 * ‖s - reflect s‖ / R j ^ 2) * (C * (L + Real.log (2 + R j)))
          * (2 * (R j - (1 - R j)) + 2 * (R j - -R j))
        ≤ (4 * ‖s - reflect s‖ / R j ^ 2) * (C * ((Cg + 2) * Real.log ((j : ℝ) + 10) ^ 2))
          * (8 * R j) := by
          apply mul_le_mul _ (by linarith) (by linarith) (by positivity)
          exact mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hA hC.le) (by positivity)
      _ = K * Real.log ((j : ℝ) + 10) ^ 2 / R j := by
          rw [hK]; field_simp; ring
      _ ≤ K * Real.log ((j : ℝ) + 10) ^ 2 / ((j : ℝ) + 7) :=
          div_le_div_of_nonneg_left (by positivity) (by positivity) hRj.1
      _ = K * (Real.log ((j : ℝ) + 10) ^ 2 / ((j : ℝ) + 7)) := by ring
  -- ‖(1/2πi) • ∮‖ ≤ ‖∮‖
  have h2π : ‖(1 / (2 * (Real.pi : ℂ) * I) : ℂ)‖ ≤ 1 := by
    rw [norm_div, norm_one, norm_mul, norm_mul, Complex.norm_I, mul_one, Complex.norm_ofNat,
      Complex.norm_real, Real.norm_eq_abs, abs_of_pos Real.pi_pos, div_le_one (by positivity)]
    linarith [Real.pi_gt_three]
  calc ‖RectangleIntegral' (fun p => wt s p * logDeriv xi p) (zc (R j)) (wc (R j))‖
      = ‖(1 / (2 * (Real.pi : ℂ) * I) : ℂ)‖
        * ‖RectangleIntegral (fun p => wt s p * logDeriv xi p) (zc (R j)) (wc (R j))‖ := by
        rw [RectangleIntegral', norm_smul]
    _ ≤ 1 * ‖RectangleIntegral (fun p => wt s p * logDeriv xi p) (zc (R j)) (wc (R j))‖ :=
        mul_le_mul_of_nonneg_right h2π (norm_nonneg _)
    _ ≤ K * (Real.log ((j : ℝ) + 10) ^ 2 / ((j : ℝ) + 7)) := by rw [one_mul]; exact hI.trans hB

/-- a point off the zero set is at distance ≫_s (1 + |γ_ρ|²)^{1/2} from every zero ρ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L949).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
