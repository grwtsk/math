# good_heights_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccf5a427-f05e-63ed-f540-2474c48a2ae7",
  "kind": "theorem",
  "lexical_name": "good_heights_chi",
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
  "slug": "good-heights-chi--a4c8cb66d02a40fac3e6bf2b",
  "source": {
    "blob": "ff9c1c747924dd476bccea6fbb30f760bcfadbfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4c8cb66d02a40fac3e6bf2bdeffa022cb7f8dba365e558c9cc0d71ffc45e6f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccf5a427-f05e-63ed-f540-2474c48a2ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem good_heights_chi (hq : 1 < q) (hprim : χ.IsPrimitive) :
    ∃ C : ℝ, 0 < C ∧ ∀ j : ℕ, 7 ≤ j →
    ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
    ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
      χ.LFunction s ≠ 0 ∧
      ‖logDeriv χ.LFunction s‖ ≤ C * (Real.log ((q:ℝ) * ((j : ℝ) + 3))) ^ 2 := by
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq hprim
  have hs : LSeam χ := LSeam_of hq hprim
  have hq1 : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq.le
  have hlogq : 0 ≤ Real.log (q : ℝ) := Real.log_nonneg hq1
  classical
  obtain ⟨C, hC, hpf⟩ := L_logDeriv_partial_fraction hχ1
  obtain ⟨A₀, hA₀, hloc⟩ := localCountChi hq hprim
  have hloc' : ∀ t : ℝ, ((LZeros hs).N t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3) := by
    intro t; rw [LZeros_N]; exact hloc t
  have hLC := Tail.LocalCount.ofWindowCount (LZeros hs) hA₀ hloc'
  refine ⟨2 * C * (48 * A₀ + 3), by positivity, fun j hj => ?_⟩
  have hj7 : (7 : ℝ) ≤ j := by exact_mod_cast hj
  set Lj : ℝ := Real.log ((j : ℝ) + 3) with hLj
  set Lg : ℝ := Real.log ((q : ℝ) * ((j : ℝ) + 3)) with hLg
  have hLgq : Lg = Real.log (q : ℝ) + Lj := by
    rw [hLg, hLj, Real.log_mul (by positivity) (by positivity)]
  have hLj1 : 1 ≤ Lj := by
    rw [hLj, ← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith
  have hLjLg : Lj ≤ Lg := by rw [hLgq]; linarith
  have hLg1 : 1 ≤ Lg := hLj1.trans hLjLg
  have hlog2j : Real.log 2 ≤ Lj := by
    rw [hLj]; exact Real.log_le_log (by norm_num) (by linarith)
  have hlog2 : Real.log 2 ≤ Lg := hlog2j.trans hLjLg
  -- the two finite families of zeros near height ±j
  set Wp : Set ℂ := (LZeros hs).window ((j : ℝ) - 3) ((j : ℝ) + 3) with hWp
  set Wm : Set ℂ := (LZeros hs).window (-(j : ℝ) - 4) (-(j : ℝ) + 2) with hWm
  have hWpfin : ((fun ρ : (LZeros hs).carrier => (ρ : ℂ)) ⁻¹' Wp).Finite :=
    ((LZeros hs).finite_window _ _).preimage Subtype.val_injective.injOn
  have hWmfin : ((fun ρ : (LZeros hs).carrier => (ρ : ℂ)) ⁻¹' Wm).Finite :=
    ((LZeros hs).finite_window _ _).preimage Subtype.val_injective.injOn
  set Fp : Finset (LZeros hs).carrier := hWpfin.toFinset with hFp
  set Fm : Finset (LZeros hs).carrier := hWmfin.toFinset with hFm
  have hFp_mem : ∀ ρ : (LZeros hs).carrier, ρ ∈ Fp ↔ (ρ : ℂ) ∈ Wp := fun ρ => by
    rw [hFp, Set.Finite.mem_toFinset]; rfl
  have hFm_mem : ∀ ρ : (LZeros hs).carrier, ρ ∈ Fm ↔ (ρ : ℂ) ∈ Wm := fun ρ => by
    rw [hFm, Set.Finite.mem_toFinset]; rfl
  set S : Finset ℝ := Fp.image (fun ρ : (LZeros hs).carrier => (ρ : ℂ).im)
    ∪ Fm.image (fun ρ : (LZeros hs).carrier => -(ρ : ℂ).im) with hS
  -- count: |S| ≤ 24 A₀ Lg
  have hcountp : ∑ ρ ∈ Fp, ((LZeros hs).mult ρ : ℝ) ≤ 6 * (A₀ * (2 * Lg)) := by
    have h := sum_mult_six_windows_L hs hLC (a := (j : ℤ) - 3) Fp (fun ρ hρ => by
      have := ((hFp_mem ρ).mp hρ).2; push_cast; constructor <;> linarith [this.1, this.2])
    refine h.trans (mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left ?_ hLC.A₀_pos.le)
      (by norm_num))
    · have : |((j : ℤ) - 3 : ℤ)| = (j : ℤ) - 3 := abs_of_nonneg (by omega)
      have habs : |(((j:ℤ) - 3 : ℤ) : ℝ)| = (j : ℝ) - 3 := by
        rw [← Int.cast_abs, this]; push_cast; ring
      rw [habs]
      calc Real.log ((j:ℝ) - 3 + 9) ≤ Real.log (2 * ((j:ℝ) + 3)) :=
            Real.log_le_log (by linarith) (by linarith)
        _ = Real.log 2 + Lj := by rw [Real.log_mul (by norm_num) (by linarith)]
        _ ≤ 2 * Lg := by linarith
  have hcountm : ∑ ρ ∈ Fm, ((LZeros hs).mult ρ : ℝ) ≤ 6 * (A₀ * (2 * Lg)) := by
    have h := sum_mult_six_windows_L hs hLC (a := -(j : ℤ) - 4) Fm (fun ρ hρ => by
      have := ((hFm_mem ρ).mp hρ).2; push_cast; constructor <;> linarith [this.1, this.2])
    refine h.trans (mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left ?_ hLC.A₀_pos.le)
      (by norm_num))
    · have : |(-(j : ℤ) - 4 : ℤ)| = (j : ℤ) + 4 := by
        rw [abs_of_nonpos (by omega)]; ring
      have habs : |((-(j:ℤ) - 4 : ℤ) : ℝ)| = (j : ℝ) + 4 := by
        rw [← Int.cast_abs, this]; push_cast; ring
      rw [habs]
      calc Real.log ((j:ℝ) + 4 + 9) ≤ Real.log (((j:ℝ) + 3) ^ 2) := by
            apply Real.log_le_log (by linarith); nlinarith
        _ = 2 * Lj := by rw [Real.log_pow]; push_cast; ring
        _ ≤ 2 * Lg := by linarith
  have hcard : (S.card : ℝ) ≤ 24 * A₀ * Lg := by
    have h1 : S.card ≤ Fp.card + Fm.card :=
      (Finset.card_union_le _ _).trans (Nat.add_le_add Finset.card_image_le Finset.card_image_le)
    have h1' : (S.card : ℝ) ≤ Fp.card + Fm.card := by exact_mod_cast h1
    linarith [card_le_sum_mult_L hs Fp, card_le_sum_mult_L hs Fm]
  -- the good height
  obtain ⟨R, hR1, hR2, hfar⟩ := exists_far_point S j
  set δ : ℝ := 1 / (2 * ((S.card : ℝ) + 1)) with hδ
  have hδpos : 0 < δ := by rw [hδ]; positivity
  have hδinv : 1 / δ = 2 * ((S.card : ℝ) + 1) := by rw [hδ, one_div_one_div]
  refine ⟨R, hR1, hR2, fun s hs' hσ1 hσ2 => ?_⟩
  have hR6 : (6 : ℝ) ≤ |R| := by rw [abs_of_nonneg (by linarith)]; linarith
  have hR6' : (6 : ℝ) ≤ |-R| := by rwa [abs_neg]
  have hlogR : Real.log ((q : ℝ) * (|R| + 3)) ≤ 2 * Lg := by
    rw [abs_of_nonneg (by linarith), Real.log_mul (by positivity) (by linarith)]
    have : Real.log (R + 3) ≤ Real.log 2 + Lj := by
      calc Real.log (R + 3) ≤ Real.log (2 * ((j:ℝ) + 3)) := Real.log_le_log (by linarith) (by linarith)
        _ = Real.log 2 + Lj := by rw [Real.log_mul (by norm_num) (by linarith)]
    rw [hLgq]; linarith
  -- s in the conclusion ball of the partial fraction at t = s.im
  have hsball : s ∈ Metric.closedBall (2 + s.im * I) (3 / 2) := by
    rw [Metric.mem_closedBall, dist_eq_norm]
    have : s - (2 + s.im * I) = ((s.re - 2 : ℝ) : ℂ) := by
      apply Complex.ext <;> simp
    rw [this, Complex.norm_real, Real.norm_eq_abs, abs_sub_comm, abs_of_nonneg (by linarith)]
    linarith
  -- every zero in the pf ball at height s.im = ±R has its (signed) ordinate in S
  have hordS : ∀ ρ : ℂ, ρ ∈ Metric.closedBall (2 + s.im * I) (22/25 * (91/50)) →
      χ.LFunction ρ = 0 → δ ≤ ‖s - ρ‖ := by
    intro ρ hρ hz
    have hnt := isNontrivialZeroL_of_mem_closedBall hχ1 (by norm_num) hρ hz
    have him := im_mem_of_mem_closedBall hρ
    rw [abs_le] at him
    have hρc : ρ ∈ (LZeros hs).carrier := by rw [LZeros_carrier]; exact hnt
    refine le_trans ?_ (abs_im_sub_le_norm_sub s ρ)
    rcases hs' with hsR | hsR
    · -- Im ρ ∈ S via Fp
      have hmem : (⟨ρ, hρc⟩ : (LZeros hs).carrier) ∈ Fp := by
        rw [hFp_mem]
        refine ⟨hρc, ?_, ?_⟩ <;> rw [hsR] at him <;> nlinarith
      have : ρ.im ∈ S := by
        rw [hS, Finset.mem_union]; left
        exact Finset.mem_image.mpr ⟨(⟨ρ, hρc⟩ : (LZeros hs).carrier), hmem, rfl⟩
      have := hfar _ this
      rwa [hsR]
    · have hmem : (⟨ρ, hρc⟩ : (LZeros hs).carrier) ∈ Fm := by
        rw [hFm_mem]
        refine ⟨hρc, ?_, ?_⟩ <;> rw [hsR] at him <;> nlinarith
      have : -ρ.im ∈ S := by
        rw [hS, Finset.mem_union]; right
        exact Finset.mem_image.mpr ⟨(⟨ρ, hρc⟩ : (LZeros hs).carrier), hmem, rfl⟩
      have := hfar _ this
      rw [hsR, show |(-R) - ρ.im| = |R - (-ρ.im)| by rw [← abs_neg]; ring_nf]
      exact this
  -- L(s,χ) ≠ 0: s itself would be a zero in the ball at distance 0
  have hζ : χ.LFunction s ≠ 0 := by
    intro hz
    have h0 := hordS s (Metric.closedBall_subset_closedBall (by norm_num) hsball) hz
    simp at h0; linarith
  refine ⟨hζ, ?_⟩
  -- apply the partial fraction at t := s.im
  have ht6 : (6 : ℝ) ≤ |s.im| := by rcases hs' with h | h <;> rw [h] <;> assumption
  obtain ⟨Z, hZ, hZsum, hZpf⟩ := hpf s.im ht6
  have hZpf' := hZpf s hsball hζ
  have hlogt : Real.log ((q : ℝ) * (|s.im| + 3)) ≤ 2 * Lg := by
    rcases hs' with h | h
    · rw [h]; exact hlogR
    · rw [h, abs_neg]; exact hlogR
  -- the sum over Z
  have hZmem : ∀ ρ ∈ Z, ρ ∈ Metric.closedBall (2 + s.im * I) (22/25 * (91/50)) ∧ χ.LFunction ρ = 0 := by
    intro ρ hρ
    have : ρ ∈ (↑Z : Set ℂ) := hρ
    rw [hZ] at this
    exact this
  have hsumZ : ‖∑ ρ ∈ Z, (analyticOrderNatAt χ.LFunction ρ : ℂ) / (s - ρ)‖
      ≤ (C * (2 * Lg)) * (1 / δ) := by
    calc ‖∑ ρ ∈ Z, (analyticOrderNatAt χ.LFunction ρ : ℂ) / (s - ρ)‖
        ≤ ∑ ρ ∈ Z, ‖(analyticOrderNatAt χ.LFunction ρ : ℂ) / (s - ρ)‖ := norm_sum_le _ _
      _ ≤ ∑ ρ ∈ Z, (analyticOrderNatAt χ.LFunction ρ : ℝ) * (1 / δ) := by
          refine Finset.sum_le_sum fun ρ hρ => ?_
          obtain ⟨hρb, hρz⟩ := hZmem ρ hρ
          have hd := hordS ρ hρb hρz
          have hsρ : 0 < ‖s - ρ‖ := lt_of_lt_of_le hδpos hd
          rw [norm_div, Complex.norm_natCast, div_eq_mul_one_div]
          refine mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)
          exact one_div_le_one_div_of_le hδpos hd
      _ = (∑ ρ ∈ Z, (analyticOrderNatAt χ.LFunction ρ : ℝ)) * (1 / δ) := by rw [Finset.sum_mul]
      _ ≤ (C * (2 * Lg)) * (1 / δ) := by
          refine mul_le_mul_of_nonneg_right (hZsum.trans ?_) (one_div_nonneg.mpr hδpos.le)
          exact mul_le_mul_of_nonneg_left hlogt hC.le
  -- assemble
  have hmain : ‖logDeriv χ.LFunction s‖ ≤ C * (2 * Lg) + (C * (2 * Lg)) * (1 / δ) := by
    have h1 : ‖logDeriv χ.LFunction s‖
        ≤ ‖logDeriv χ.LFunction s - ∑ ρ ∈ Z, (analyticOrderNatAt χ.LFunction ρ : ℂ) / (s - ρ)‖
          + ‖∑ ρ ∈ Z, (analyticOrderNatAt χ.LFunction ρ : ℂ) / (s - ρ)‖ := norm_le_norm_sub_add _ _
    have h2 := hZpf'.trans (mul_le_mul_of_nonneg_left hlogt hC.le)
    linarith [hsumZ]
  refine hmain.trans ?_
  rw [hδinv]
  have hc := hcard
  have hA := hLC.A₀_pos.le
  -- C·2Lg·(1 + 2(n+1)) ≤ 2C(48A₀+3) Lg²
  have : C * (2 * Lg) + C * (2 * Lg) * (2 * ((S.card : ℝ) + 1))
      = 2 * C * Lg * (2 * (S.card : ℝ) + 3) := by ring
  rw [this]
  have hn : 2 * (S.card : ℝ) + 3 ≤ (48 * A₀ + 3) * Lg := by nlinarith
  calc 2 * C * Lg * (2 * (S.card : ℝ) + 3) ≤ 2 * C * Lg * ((48 * A₀ + 3) * Lg) :=
        mul_le_mul_of_nonneg_left hn (by positivity)
    _ = 2 * C * (48 * A₀ + 3) * Real.log ((q : ℝ) * ((j : ℝ) + 3)) ^ 2 := by rw [hLg]; ring

/-- Zero-sum summability for L(s,χ) (template: Zeta23.WeilEF.EF_zero_sum_summable via the
local count; with good_heights_chi). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9c1c747924dd476bccea6fbb30f760bcfadbfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
