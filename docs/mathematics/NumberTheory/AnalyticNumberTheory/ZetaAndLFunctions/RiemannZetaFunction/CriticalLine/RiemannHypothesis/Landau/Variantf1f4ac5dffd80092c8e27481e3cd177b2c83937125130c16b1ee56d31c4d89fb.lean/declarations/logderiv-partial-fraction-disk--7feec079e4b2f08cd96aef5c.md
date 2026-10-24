# logDeriv_partial_fraction_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca5032a7-6fa5-89ed-daba-cfb5b5160bc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e809c8f6-5a33-d1e2-f2bb-96e53da2ed1f",
  "kind": "theorem",
  "lexical_name": "logDeriv_partial_fraction_disk",
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
  "slug": "logderiv-partial-fraction-disk--7feec079e4b2f08cd96aef5c",
  "source": {
    "blob": "5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 348,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7feec079e4b2f08cd96aef5cf1ea4e0b9f028d9ad389f2a62084be86520fc022",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e809c8f6-5a33-d1e2-f2bb-96e53da2ed1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_partial_fraction_disk {f : ℂ → ℂ} {s₀ : ℂ} {R B : ℝ}
    (hR : 0 < R) (hfa : AnalyticOnNhd ℂ f (Metric.closedBall s₀ R)) (hf0 : f s₀ ≠ 0)
    (hB2 : 2 ≤ B) (hfB : ∀ w ∈ Metric.closedBall s₀ (24/25 * R), ‖f w‖ ≤ B * ‖f s₀‖) :
    ∃ Z : Finset ℂ,
      (↑Z = {ρ ∈ Metric.closedBall s₀ (22/25 * R) | f ρ = 0}) ∧
      ((∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℝ)) ≤ 1 / Real.log ((24/25) / (22/25)) * Real.log B) ∧
      ∀ s ∈ Metric.closedBall s₀ (83/100 * R), f s ≠ 0 →
        ‖logDeriv f s - ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) / (s - ρ)‖
          ≤ 44795000 / R * Real.log B := by
  have hRC : (R : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt hR
  set φ : ℂ → ℂ := fun w => s₀ + (R : ℂ) * w with hφ
  have hφmem : ∀ {w : ℂ} {r : ℝ}, ‖w‖ ≤ r → φ w ∈ Metric.closedBall s₀ (r * R) := by
    intro w r hw
    rw [Metric.mem_closedBall, Complex.dist_eq, hφ]
    simp only [add_sub_cancel_left]
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hR]
    calc R * ‖w‖ ≤ R * r := mul_le_mul_of_nonneg_left hw hR.le
      _ = r * R := mul_comm _ _
  set c : ℂ := (f s₀)⁻¹ with hc
  have hcne : c ≠ 0 := inv_ne_zero hf0
  set g : ℂ → ℂ := fun w => c * f (φ w) with hg
  have hφa : ∀ w : ℂ, AnalyticAt ℂ φ w := fun w => by
    rw [hφ]
    exact analyticAt_const.add (analyticAt_const.mul analyticAt_id)
  have hφd : ∀ w : ℂ, deriv φ w = (R : ℂ) := by
    intro w
    rw [hφ]
    simp
  have hφinj : Function.Injective φ := by
    intro a b hab
    rw [hφ] at hab
    simp only [add_right_inj] at hab
    exact mul_left_cancel₀ hRC hab
  have hga : AnalyticOnNhd ℂ g (Metric.closedBall (0 : ℂ) 1) := by
    intro w hw
    have hwn : ‖w‖ ≤ 1 := by rwa [Metric.mem_closedBall, Complex.dist_eq, sub_zero] at hw
    have hmem : φ w ∈ Metric.closedBall s₀ R := by
      have := hφmem (r := 1) hwn
      simpa using this
    exact analyticAt_const.mul ((hfa (φ w) hmem).comp (hφa w))
  have hg0 : g 0 = 1 := by
    rw [hg, hc]
    simp only [hφ, mul_zero, add_zero]
    exact inv_mul_cancel₀ hf0
  have hg0' : g 0 ≠ 0 := by rw [hg0]; exact one_ne_zero
  have hfin : (SetOfZeros 1 g).Finite := finite_SetOfZeros hga hg0'
  have hgB : ∀ w : ℂ, ‖w‖ ≤ 24/25 → ‖g w‖ ≤ B := by
    intro w hw
    rw [hg]
    simp only
    rw [norm_mul, hc, norm_inv]
    rw [inv_mul_le_iff₀ (norm_pos_iff.mpr hf0)]
    calc ‖f (φ w)‖ ≤ B * ‖f s₀‖ := hfB (φ w) (hφmem hw)
      _ = ‖f s₀‖ * B := mul_comm _ _
  have hfnezero : ∀ ρg : ℂ, g ρg = 0 ↔ f (φ ρg) = 0 := by
    intro ρg
    rw [hg]
    simp only
    constructor
    · intro h
      rcases mul_eq_zero.mp h with h | h
      · exact absurd h hcne
      · exact h
    · intro h
      rw [h, mul_zero]
  set Zg := (finiteSetOfZeros_mono (by norm_num : (22/25 : ℝ) < 1) hfin).toFinset with hZg
  have hZgmem : ∀ ρg : ℂ, ρg ∈ Zg ↔ (‖ρg‖ ≤ 22/25 ∧ f (φ ρg) = 0) := by
    intro ρg
    rw [hZg, Set.Finite.mem_toFinset]
    constructor
    · rintro ⟨h1, h2⟩
      exact ⟨h1, (hfnezero ρg).mp h2⟩
    · rintro ⟨h1, h2⟩
      exact ⟨h1, (hfnezero ρg).mpr h2⟩
  have hord : ∀ ρg : ℂ, ‖ρg‖ ≤ 1 → analyticOrderNatAt g ρg = analyticOrderNatAt f (φ ρg) := by
    intro ρg hρg
    have hcomp : analyticOrderAt (f ∘ φ) ρg = analyticOrderAt f (φ ρg) :=
      analyticOrderAt_comp_of_deriv_ne_zero (hφa ρg) (by rw [hφd]; exact hRC)
    have hsmul : analyticOrderAt g ρg = analyticOrderAt (f ∘ φ) ρg := by
      have heq : g = (fun _ : ℂ => c) • (f ∘ φ) := by
        funext w
        simp [hg, smul_eq_mul]
      rw [heq, analyticOrderAt_smul analyticAt_const
        (((hfa (φ ρg) (by simpa using hφmem (r := 1) hρg)).comp (hφa ρg)))]
      rw [(analyticAt_const (v := c)).analyticOrderAt_eq_zero.mpr hcne, zero_add]
    rw [analyticOrderNatAt, analyticOrderNatAt, hsmul, hcomp]
  refine ⟨Zg.image φ, ?_, ?_, ?_⟩
  · ext ρ
    simp only [Finset.coe_image, Set.mem_image, Finset.mem_coe, Set.mem_setOf_eq]
    constructor
    · rintro ⟨ρg, hρg, rfl⟩
      obtain ⟨h1, h2⟩ := (hZgmem ρg).mp hρg
      exact ⟨by simpa using hφmem h1, h2⟩
    · rintro ⟨h1, h2⟩
      refine ⟨(ρ - s₀) / (R : ℂ), ?_, ?_⟩
      · rw [hZgmem]
        constructor
        · rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hR,
            div_le_iff₀ hR]
          rw [Metric.mem_closedBall, Complex.dist_eq] at h1
          linarith [h1]
        · rw [show φ ((ρ - s₀) / (R:ℂ)) = ρ by rw [hφ]; field_simp; ring]
          exact h2
      · rw [hφ]; field_simp; ring
  · have hcount := ZerosBound (by norm_num) (by norm_num)
      (by norm_num : (22/25:ℝ) < 24/25) (by norm_num) hga hg0 hfin hgB
    rw [Finset.sum_image (fun a _ b _ hab => hφinj hab)]
    have hcongr : ∀ ρg ∈ Zg, (analyticOrderNatAt f (φ ρg) : ℝ) = (analyticOrderNatAt g ρg : ℝ) := by
      intro ρg hρg
      rw [hord ρg (le_trans ((hZgmem ρg).mp hρg).1 (by norm_num))]
    rw [Finset.sum_congr rfl hcongr]
    exact_mod_cast hcount
  · intro s hs hfs
    set w : ℂ := (s - s₀) / (R : ℂ) with hw
    have hφw : φ w = s := by rw [hφ, hw]; field_simp; ring
    have hwn : ‖w‖ ≤ 83/100 := by
      rw [hw, norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hR, div_le_iff₀ hR]
      rw [Metric.mem_closedBall, Complex.dist_eq] at hs
      linarith [hs]
    have hgw : g w ≠ 0 := by
      rw [hg]
      simp only
      rw [hφw]
      exact mul_ne_zero hcne hfs
    have hunit := logDeriv_partial_fraction_unit hga hg0 hfin hB2 hgB hwn hgw
    have hsR : s ∈ Metric.closedBall s₀ R :=
      Metric.closedBall_subset_closedBall (by nlinarith) hs
    have hld : logDeriv g w = (R : ℂ) * logDeriv f s := by
      have hstep : logDeriv g w = logDeriv (f ∘ φ) w := by
        rw [hg]
        exact logDeriv_const_mul w c hcne
      have hdf : DifferentiableAt ℂ f (φ w) := by
        rw [hφw]
        exact (hfa s hsR).differentiableAt
      rw [hstep, logDeriv_comp hdf (hφa w).differentiableAt, hφw, hφd, mul_comm]
    have hsum : ∑ ρ ∈ Zg.image φ, (analyticOrderNatAt f ρ : ℂ) / (s - ρ)
        = (R : ℂ)⁻¹ * ∑ ρg ∈ Zg, (analyticOrderNatAt g ρg : ℂ) / (w - ρg) := by
      rw [Finset.sum_image (fun a _ b _ hab => hφinj hab), Finset.mul_sum]
      refine Finset.sum_congr rfl fun ρg hρg => ?_
      have h34 : ‖ρg‖ ≤ 22/25 := ((hZgmem ρg).mp hρg).1
      rw [hord ρg (by linarith)]
      have hsub : s - φ ρg = (R : ℂ) * (w - ρg) := by
        rw [← hφw, hφ]
        ring
      rw [hsub]
      rw [div_mul_eq_div_div_swap]
      field_simp
    rw [hsum]
    have hfld : logDeriv f s = (R:ℂ)⁻¹ * logDeriv g w := by
      rw [hld]
      field_simp
    rw [hfld, ← mul_sub, norm_mul, norm_inv, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos hR]
    rw [div_eq_inv_mul, mul_assoc]
    exact mul_le_mul_of_nonneg_left hunit (inv_nonneg.mpr hR.le)


end UnitDisk

/-- **Partial fraction for ζ'/ζ at height t** (|t| ≥ 6): there is a finite set Z — exactly the
ζ-zeros within distance (22/25)·(91/50) of 2+it — such that on the ball of radius 3/2 around
2+it (covering 1/2 ≤ Re s ≤ 2 at height t), away from zeros,
ζ'/ζ(s) = Σ_{ρ ∈ Z} m_ρ/(s−ρ) + O(log(|t|+3)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
