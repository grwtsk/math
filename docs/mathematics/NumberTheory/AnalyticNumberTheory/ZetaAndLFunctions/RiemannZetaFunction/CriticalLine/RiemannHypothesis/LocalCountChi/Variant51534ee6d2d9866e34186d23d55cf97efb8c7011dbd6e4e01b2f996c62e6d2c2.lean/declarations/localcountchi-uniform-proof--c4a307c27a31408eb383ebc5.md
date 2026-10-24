# localCountChi_uniform_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "603d34e2374063f482905e72c84e5666f23275ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ad8c588-6771-ae3d-9757-5c2f926db91c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:993fb011-2b17-8d9e-6abe-57c574d9912e",
  "kind": "theorem",
  "lexical_name": "localCountChi_uniform_proof",
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
  "slug": "localcountchi-uniform-proof--c4a307c27a31408eb383ebc5",
  "source": {
    "blob": "603d34e2374063f482905e72c84e5666f23275ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4a307c27a31408eb383ebc54022e4bfa5f9682037b76798cd6e159a63c78215",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:993fb011-2b17-8d9e-6abe-57c574d9912e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localCountChi_uniform_proof : ∃ A₀ : ℝ, 1 ≤ A₀ ∧
    ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q), 1 < q → χ.IsPrimitive →
    ∀ t : ℝ, (NcountL χ t (t + 1) : ℝ) ≤ A₀ * Real.log (q * (|t| + 3)) := by
  set r : ℝ := 0.84 with hr
  set R : ℝ := 0.95 with hR
  have hlogRr : 0 < Real.log (R / r) := Real.log_pos (by norm_num [hr, hR])
  refine ⟨max 1 (2 * (1 / Real.log (R / r) * 5)), le_max_left _ _, ?_⟩
  intro q _ χ hq1 hprim t
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq1 hprim
  have hs : LSeam χ := LSeam_of hq1 hprim
  have hq0 : (0:ℝ) < (q:ℝ) := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne q)
  have hq2 : (2:ℝ) ≤ (q:ℝ) := by exact_mod_cast hq1
  -- the absolute log quantity
  set L : ℝ := Real.log ((q:ℝ) * (|t| + 3)) with hLdef
  have hqt6 : (6:ℝ) ≤ (q:ℝ) * (|t| + 3) := by nlinarith [abs_nonneg t]
  have hL1 : 1 ≤ L := by
    rw [hLdef, ← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith
  have hL0 : 0 < L := by linarith
  -- halving
  have hhalf : (NcountL χ t (t + 1) : ℝ) ≤
      2 * ∑ᶠ ρ ∈ (LZeros hs).window t (t + 1) ∩ {ρ : ℂ | 1/2 ≤ ρ.re}, ((LZeros hs).mult ρ : ℝ) := by
    have := (LZeros hs).N_le_two_mul_half t (t + 1)
    rwa [LZeros_N] at this
  set c₀ : ℂ := 2 + (t + 1/2 : ℝ) * I with hc₀
  set κ : ℂ := ((19/10 : ℝ) : ℂ) with hκ
  have hκ0 : κ ≠ 0 := by simp [hκ]
  have hnormκ : ‖κ‖ = 1.9 := by simp [hκ]; norm_num
  have hLc₀ : (1/3 : ℝ) ≤ ‖χ.LFunction c₀‖ := LFunction_lower_bound_two (by simp [hc₀])
  have hLc₀ne : χ.LFunction c₀ ≠ 0 := by
    intro h; rw [h, norm_zero] at hLc₀; norm_num at hLc₀
  set u : ℂ := (χ.LFunction c₀)⁻¹ with hu
  have hu0 : u ≠ 0 := inv_ne_zero hLc₀ne
  have hnu : ‖u‖ ≤ 3 := by
    rw [hu, norm_inv]; rw [inv_le_comm₀ (by positivity) (by norm_num)]; linarith
  set G : ℂ → ℂ := gfunL χ c₀ κ u with hG
  have hfAnalytic : AnalyticOnNhd ℂ G (Metric.closedBall (0:ℂ) 1) :=
    fun z _ => gfunL_analyticAt hχ1 c₀ κ u z
  have hG0 : G 0 = 1 := by
    simp only [hG, gfunL, mul_zero, add_zero, hu]
    exact mul_inv_cancel₀ hLc₀ne
  have hfin : (SetOfZeros 1 G).Finite := by
    have h := RvM.finite_zeros_closedBall (f := G) (R := 1.05) (r := 1) (by norm_num)
      (fun z _ => gfunL_analyticAt hχ1 c₀ κ u z) (z₀ := 0) (by simp; norm_num)
      (by rw [hG0]; exact one_ne_zero)
    exact h.subset (by intro z hz; exact hz)
  set B : ℝ := 24 * (q:ℝ) * (|t| + 6) with hB
  have hBpos : 0 < B := by positivity
  have hfz : ∀ z : ℂ, ‖z‖ ≤ R → ‖G z‖ ≤ B := by
    intro z hz
    set s : ℂ := c₀ + κ * z with hs'
    have hκre : κ.re = 1.9 := by rw [hκ]; norm_num [Complex.ofReal_re]
    have hκim : κ.im = 0 := by rw [hκ]; simp
    have hzre := abs_le.mp ((Complex.abs_re_le_norm z).trans hz)
    have hzim := abs_le.mp ((Complex.abs_im_le_norm z).trans hz)
    rw [hR] at hzre hzim
    have hsre : s.re = 2 + 1.9 * z.re := by
      rw [hs', hc₀]
      simp only [Complex.add_re, Complex.mul_re, Complex.I_re, Complex.I_im, Complex.ofReal_re,
        Complex.ofReal_im, Complex.re_ofNat, hκre, hκim]
      ring
    have hsim : s.im = (t + 1/2) + 1.9 * z.im := by
      rw [hs', hc₀]
      simp only [Complex.add_im, Complex.mul_im, Complex.I_re, Complex.I_im, Complex.ofReal_re,
        Complex.ofReal_im, Complex.im_ofNat, hκre, hκim]
      ring
    have h1 : (0.15:ℝ) ≤ s.re := by rw [hsre]; nlinarith
    have h3 := LFunction_growth_right_uniform hχ1 h1
    have hbase : |s.im| + 3 ≤ |t| + 6 := by
      rw [hsim]
      have h4 := abs_add_le (t + 1/2) (1.9 * z.im)
      have h5 : |1.9 * z.im| ≤ 1.9 * 0.95 := by
        rw [abs_mul, abs_of_pos (by norm_num : (0:ℝ) < 1.9)]
        have : |z.im| ≤ 0.95 := abs_le.mpr ⟨hzim.1, hzim.2⟩
        nlinarith
      have h6 : |t + 1/2| ≤ |t| + 1/2 := by simpa using abs_add_le t (1/2)
      linarith
    calc ‖G z‖ = ‖χ.LFunction s‖ * ‖u‖ := by rw [hG]; exact norm_mul _ _
      _ ≤ (8 * q * (|s.im| + 3)) * 3 := by
          apply mul_le_mul h3 hnu (norm_nonneg _) (by positivity)
      _ ≤ (8 * q * (|t| + 6)) * 3 := by nlinarith
      _ = B := by rw [hB]; ring
  have hrlt1 : r < 1 := by norm_num [hr]
  have hZ := ZerosBound (B := B) (r := r) (R := R) (by norm_num [hr]) hrlt1
    (by norm_num [hr, hR]) (by norm_num [hR]) hfAnalytic hG0 hfin hfz
  set Z : Finset ℂ := (finiteSetOfZeros_mono hrlt1 hfin).toFinset with hZdef
  set W : Set ℂ := (LZeros hs).window t (t + 1) ∩ {ρ : ℂ | 1/2 ≤ ρ.re} with hW
  have hWfin : W.Finite := ((LZeros hs).window_finite t (t + 1)).subset inter_subset_left
  set φ : ℂ → ℂ := fun ρ => (ρ - c₀) / κ with hφ
  have hφinj : Function.Injective φ := by
    intro a b h; simp only [hφ] at h
    have := congrArg (fun w => c₀ + κ * w) h
    simpa [mul_div_cancel₀ _ hκ0] using this
  have hφinv : ∀ ρ, c₀ + κ * φ ρ = ρ := by intro ρ; simp only [hφ]; field_simp; ring
  have hmemS : ∀ ρ ∈ W, φ ρ ∈ Z := by
    rintro ρ ⟨⟨hρZ, hρt, hρt1⟩, hρre⟩
    have hρ : IsNontrivialZeroL χ ρ := by rwa [LZeros_carrier] at hρZ
    rw [hZdef, Set.Finite.mem_toFinset]
    refine ⟨?_, ?_⟩
    · show ‖φ ρ‖ ≤ r
      simp only [hφ, norm_div, hnormκ]
      rw [div_le_iff₀ (by norm_num), hr]
      have hre : (ρ - c₀).re = ρ.re - 2 := by simp [hc₀]
      have him : (ρ - c₀).im = ρ.im - (t + 1/2) := by simp [hc₀]
      have hsq : ‖ρ - c₀‖ ^ 2 ≤ (0.84 * 1.9) ^ 2 := by
        rw [Complex.sq_norm, Complex.normSq_apply, hre, him]
        have := hρ.2.2; have := hρre.out
        nlinarith
      exact (pow_le_pow_iff_left₀ (norm_nonneg _) (by norm_num) two_ne_zero).mp hsq
    · show G (φ ρ) = 0
      simp only [hG, gfunL, hφinv]
      rw [hρ.1, zero_mul]
  have hmult : ∀ ρ ∈ W, ((LZeros hs).mult ρ : ℝ) = (analyticOrderNatAt G (φ ρ) : ℝ) := by
    rintro ρ ⟨⟨hρZ, -, -⟩, -⟩
    rw [LZeros_mult, hG, analyticOrderNatAt_gfunL hχ1 hκ0 hu0, hφinv]
  have hsum : (∑ᶠ ρ ∈ W, ((LZeros hs).mult ρ : ℝ)) ≤
      ((∑ ρ' ∈ Z, analyticOrderNatAt G ρ' : ℕ) : ℝ) := by
    rw [finsum_mem_eq_finite_toFinset_sum _ hWfin,
      Finset.sum_congr rfl (fun ρ hρ => hmult ρ (hWfin.mem_toFinset.mp hρ)),
      ← Finset.sum_image (f := fun w => (analyticOrderNatAt G w : ℝ))
        (fun a _ b _ h => hφinj h)]
    push_cast
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro w hw
      obtain ⟨ρ, hρ, rfl⟩ := Finset.mem_image.mp hw
      exact hmemS ρ (hWfin.mem_toFinset.mp hρ)
    · intros; positivity
  -- log B ≤ 5 L, by monotonicity alone
  have hsq : (q:ℝ) * (|t| + 3) * ((q:ℝ) * (|t| + 3)) = ((q:ℝ) * (|t| + 3))^2 := by ring
  have hL6 : Real.log 6 ≤ L := by rw [hLdef]; exact Real.log_le_log (by norm_num) hqt6
  have hlog24 : Real.log 24 ≤ 2 * L := by
    have h36 : Real.log 24 ≤ Real.log 36 := Real.log_le_log (by norm_num) (by norm_num)
    have h2 : Real.log 36 = 2 * Real.log 6 := by
      rw [show (36:ℝ) = 6^2 by norm_num, Real.log_pow]; push_cast; ring
    linarith
  have hlogq : Real.log (q:ℝ) ≤ L := by
    rw [hLdef]
    apply Real.log_le_log hq0
    nlinarith [abs_nonneg t]
  have hlogt6 : Real.log (|t| + 6) ≤ 2 * L := by
    have h1 : Real.log (|t| + 6) ≤ Real.log (((q:ℝ) * (|t| + 3))^2) := by
      apply Real.log_le_log (by positivity)
      nlinarith [abs_nonneg t]
    have h2 : Real.log (((q:ℝ) * (|t| + 3))^2) = 2 * L := by
      rw [hLdef, Real.log_pow]; push_cast; ring
    linarith
  have hlogB : Real.log B ≤ 5 * L := by
    rw [hB, Real.log_mul (by positivity) (by positivity),
      Real.log_mul (by norm_num) (by positivity)]
    linarith
  calc (NcountL χ t (t + 1) : ℝ)
      ≤ 2 * ∑ᶠ ρ ∈ W, ((LZeros hs).mult ρ : ℝ) := hhalf
    _ ≤ 2 * ((∑ ρ' ∈ Z, analyticOrderNatAt G ρ' : ℕ) : ℝ) := by linarith [hsum]
    _ ≤ 2 * (1 / Real.log (R / r) * Real.log B) := by
        have h : ((∑ ρ' ∈ Z, analyticOrderNatAt G ρ' : ℕ) : ℝ) ≤
            1 / Real.log (R / r) * Real.log B := by exact_mod_cast hZ
        linarith
    _ ≤ 2 * (1 / Real.log (R / r) * (5 * L)) := by
        have := mul_le_mul_of_nonneg_left hlogB (by positivity : (0:ℝ) ≤ 1 / Real.log (R / r))
        linarith
    _ = (2 * (1 / Real.log (R / r) * 5)) * L := by ring
    _ ≤ max 1 (2 * (1 / Real.log (R / r) * 5)) * L := by
        apply mul_le_mul_of_nonneg_right (le_max_right _ _) (by linarith)


/-- **Local count for L(s,χ)**, two-sided (per-χ constant; from the q-uniform count:
log(q(|t|+3)) = log q + log(|t|+3) ≤ (1 + log q)·log(|t|+3) as log(|t|+3) ≥ 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant51534ee6d2d9866e34186d23d55cf97efb8c7011dbd6e4e01b2f996c62e6d2c2.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `603d34e2374063f482905e72c84e5666f23275ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
