# integral_psi_sq_mul_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a129d40-d022-8134-3e80-ace0e46ed628",
  "kind": "theorem",
  "lexical_name": "integral_psi_sq_mul_abs_le",
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
  "slug": "integral-psi-sq-mul-abs-le--e3d2128a35b4671ed920e3a7",
  "source": {
    "blob": "6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 684,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3d2128a35b4671ed920e3a7e6cecc9038d9ee2bef1f2a6db5c9546b2bfa7381",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a129d40-d022-8134-3e80-ace0e46ed628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_psi_sq_mul_abs_le (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    ∫ r, psi ϱ L w r ^ 2 * |r| ≤ 8 + 8 * Real.log (cRho ϱ * L / (4 * w)) := by
  obtain ⟨hA, hB, hAB, hBA⟩ := psiints_consts hϱ hw hwL
  have hwL' : 2 * w ≤ L := by linarith
  have hL : 0 < L := by linarith
  have hw0 : 0 < w := by linarith
  have hc0 : 0 < cRho ϱ := lt_of_lt_of_le (by norm_num) (four_le_cRho hϱ)
  set A := 2 / L with hAdef
  set B := cRho ϱ / (2 * w) with hBdef
  have hred : ∫ r, psi ϱ L w r ^ 2 * |r| = 2 * ∫ r in Ioi 0, psi ϱ L w r ^ 2 * r := by
    have h := integral_comp_abs (f := fun x => psi ϱ L w x ^ 2 * x)
    simp only [psi_abs] at h
    exact h
  rw [hred]
  -- majorant pieces
  have i1 : IntegrableOn (fun x : ℝ => L ^ 2 * x) (Ioc 0 A) := by
    refine (ContinuousOn.integrableOn_Icc ?_).mono_set Ioc_subset_Icc_self
    exact (continuousOn_const.mul continuousOn_id)
  have i2 : IntegrableOn (fun x : ℝ => 4 * x⁻¹) (Ioc A B) := by
    refine (ContinuousOn.integrableOn_Icc ?_).mono_set Ioc_subset_Icc_self
    exact continuousOn_const.mul
      ((continuousOn_inv₀).mono fun x hx => ne_of_gt (lt_of_lt_of_le hA hx.1))
  have i3 : IntegrableOn (fun x : ℝ => (cRho ϱ / w) ^ 2 * x ^ (-3:ℝ)) (Ioi B) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num) hB).const_mul _
  have I1 := i1.integrable_indicator measurableSet_Ioc
  have I2 := i2.integrable_indicator measurableSet_Ioc
  have I3 := i3.integrable_indicator measurableSet_Ioi
  have I12 : Integrable (fun r => (Ioc 0 A).indicator (fun x : ℝ => L ^ 2 * x) r
      + (Ioc A B).indicator (fun x : ℝ => 4 * x⁻¹) r) := I1.add I2
  have I123 : Integrable (fun r => (Ioc 0 A).indicator (fun x : ℝ => L ^ 2 * x) r
      + (Ioc A B).indicator (fun x : ℝ => 4 * x⁻¹) r
      + (Ioi B).indicator (fun x : ℝ => (cRho ϱ / w) ^ 2 * x ^ (-3:ℝ)) r) := I12.add I3
  have hpt : ∀ r, (Ioi (0:ℝ)).indicator (fun x => psi ϱ L w x ^ 2 * x) r
      ≤ (Ioc 0 A).indicator (fun x : ℝ => L ^ 2 * x) r
        + (Ioc A B).indicator (fun x : ℝ => 4 * x⁻¹) r
        + (Ioi B).indicator (fun x : ℝ => (cRho ϱ / w) ^ 2 * x ^ (-3:ℝ)) r := by
    intro r
    have h0 := psi_nonneg hϱ hw hwL' r
    by_cases hr : 0 < r
    · rw [indicator_of_mem (show r ∈ Ioi (0:ℝ) from hr)]
      by_cases h1 : r ≤ A
      · rw [indicator_of_mem (show r ∈ Ioc 0 A from ⟨hr, h1⟩),
          indicator_of_notMem (show r ∉ Ioc A B from fun h => not_lt.mpr h1 h.1),
          indicator_of_notMem (show r ∉ Ioi B from fun h => not_lt.mpr (h1.trans hAB) h),
          add_zero, add_zero]
        exact mul_le_mul_of_nonneg_right (pow_le_pow_left₀ h0 (psi_le_L hϱ hw hwL' r) 2) hr.le
      · have h1' : A < r := not_le.mp h1
        by_cases h2 : r ≤ B
        · rw [indicator_of_notMem (show r ∉ Ioc 0 A from fun h => h1 h.2),
            indicator_of_mem (show r ∈ Ioc A B from ⟨h1', h2⟩),
            indicator_of_notMem (show r ∉ Ioi B from fun h => not_lt.mpr h2 h), zero_add, add_zero]
          have h := psi_mul_abs_le hϱ hw hwL' r
          rw [abs_of_pos hr] at h
          -- ψ² r = (ψ r)·ψ ≤ 2 ψ ≤ 2 · (2/r)
          have h3 : psi ϱ L w r ≤ 2 * r⁻¹ := by
            rw [← div_eq_mul_inv, le_div_iff₀ hr]; exact h
          calc psi ϱ L w r ^ 2 * r = (psi ϱ L w r * r) * psi ϱ L w r := by ring
            _ ≤ 2 * (2 * r⁻¹) := mul_le_mul h h3 h0 (by norm_num)
            _ = 4 * r⁻¹ := by ring
        · have h2' : B < r := not_le.mp h2
          rw [indicator_of_notMem (show r ∉ Ioc 0 A from fun h => h1 h.2),
            indicator_of_notMem (show r ∉ Ioc A B from fun h => h2 h.2),
            indicator_of_mem (show r ∈ Ioi B from h2'), zero_add, zero_add]
          have h := psi_le_rpow_neg_two hϱ hw hwL' hr
          have hcw : 0 ≤ cRho ϱ / w * r ^ (-2:ℝ) := by positivity
          calc psi ϱ L w r ^ 2 * r ≤ (cRho ϱ / w * r ^ (-2:ℝ)) ^ 2 * r := by
                exact mul_le_mul_of_nonneg_right (pow_le_pow_left₀ h0 h 2) hr.le
            _ = (cRho ϱ / w) ^ 2 * r ^ (-3:ℝ) := by
                have hr' : r ≠ 0 := hr.ne'
                rw [mul_pow, ← Real.rpow_natCast (r ^ (-2:ℝ)) 2, ← Real.rpow_mul hr.le]
                norm_num
                field_simp
    · rw [indicator_of_notMem (show r ∉ Ioi (0:ℝ) from hr),
        indicator_of_notMem (show r ∉ Ioc 0 A from fun h => hr h.1),
        indicator_of_notMem (show r ∉ Ioc A B from fun h => hr (lt_trans hA h.1)),
        indicator_of_notMem (show r ∉ Ioi B from fun h => hr (lt_trans hB h)), add_zero, add_zero]
  -- the three integrals
  have e1 : ∫ r, (Ioc 0 A).indicator (fun x : ℝ => L ^ 2 * x) r = 2 := by
    rw [integral_indicator measurableSet_Ioc, ← intervalIntegral.integral_of_le hA.le,
      intervalIntegral.integral_const_mul, integral_id, hAdef]
    field_simp
    ring
  have e2 : ∫ r, (Ioc A B).indicator (fun x : ℝ => 4 * x⁻¹) r = 4 * Real.log (B / A) := by
    rw [integral_indicator measurableSet_Ioc, ← intervalIntegral.integral_of_le hAB,
      intervalIntegral.integral_const_mul, integral_inv]
    exact fun h => by
      have := (Set.mem_uIcc.mp h); rcases this with h | h <;> linarith [h.1, h.2]
  have e3 : ∫ r, (Ioi B).indicator (fun x : ℝ => (cRho ϱ / w) ^ 2 * x ^ (-3:ℝ)) r = 2 := by
    rw [integral_indicator measurableSet_Ioi, integral_const_mul,
      integral_Ioi_rpow_of_lt (by norm_num) hB]
    norm_num
    rw [hBdef]
    field_simp
  calc 2 * ∫ r in Ioi 0, psi ϱ L w r ^ 2 * r
      = 2 * ∫ r, (Ioi (0:ℝ)).indicator (fun x => psi ϱ L w x ^ 2 * x) r := by
        rw [integral_indicator measurableSet_Ioi]
    _ ≤ 2 * ∫ r, ((Ioc 0 A).indicator (fun x : ℝ => L ^ 2 * x) r
          + (Ioc A B).indicator (fun x : ℝ => 4 * x⁻¹) r
          + (Ioi B).indicator (fun x : ℝ => (cRho ϱ / w) ^ 2 * x ^ (-3:ℝ)) r) :=
        mul_le_mul_of_nonneg_left (integral_mono_of_nonneg (Eventually.of_forall fun r =>
            Set.indicator_nonneg (fun x hx => mul_nonneg (sq_nonneg _) (le_of_lt hx)) _) I123
          (Eventually.of_forall hpt)) (by norm_num)
    _ = 2 * (2 + 4 * Real.log (B / A) + 2) := by rw [integral_add I12 I3, integral_add I1 I2, e1, e2, e3]
    _ = 8 + 8 * Real.log (cRho ϱ * L / (4 * w)) := by rw [hBA]; ring

/-- [eq:psiints]: "∫_ℝ ψ² ≤ 8L". Uses only ψ ≤ min(L, 2/|r|):
∫ = 2∫₀^∞ ≤ 2(∫₀^{2/L} L² + ∫_{2/L}^∞ 4r⁻²) = 2(2L+2L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
