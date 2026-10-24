# tendsto_JT_of_autocorr_close

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2faeef4-6913-5dbe-eba1-6b6f2a604c23",
  "kind": "theorem",
  "lexical_name": "tendsto_JT_of_autocorr_close",
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
  "slug": "tendsto-jt-of-autocorr-close--14360d30e361e62daabf7257",
  "source": {
    "blob": "63abccc96d115cf966dcf2f3551c9d99877e0ac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14360d30e361e62daabf725770ec07f0f4d624d7d2d08c8af2df3a59e6345494",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2faeef4-6913-5dbe-eba1-6b6f2a604c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_JT_of_autocorr_close {P : Params} (hP : P.Valid) (hD : ContinuousOn D (Icc 0 1))
    (hv : Continuous v) {g : ℝ → ℝ → ℝ} {C : ℝ}
    (hgc : ∀ᶠ T in atTop, Continuous (g T))
    (hg : ∀ᶠ T in atTop, ∀ y ∈ Icc (0:ℝ) (P.L T), |g T y - P.L T * vConv v (y / P.L T)| ≤ C * P.w) :
    Tendsto (fun T => 2 / P.L T ^ 3 * l T * ∫ y in (0:ℝ)..P.L T, (D (y / l T) * g T y))
      atTop (𝓝 (jWin D P.lam v / P.lam)) := by
  have hlam := hP.lam_pos
  have hlam1 := hP.lam_le_one
  -- a bound for |D| on [0,1]
  obtain ⟨M, hM⟩ := isCompact_Icc.exists_bound_of_continuousOn hD
  have hM0 : 0 ≤ M := le_trans (norm_nonneg _) (hM 0 ⟨le_rfl, zero_le_one⟩)
  -- eventually: l > 0, L > 0, and the two g-hypotheses
  have hev : ∀ᶠ T in atTop, |2 / P.L T ^ 3 * l T * (∫ y in (0:ℝ)..P.L T, (D (y / l T) * g T y))
      - jWin D P.lam v / P.lam| ≤ (2 * M * |C| / P.lam) * P.w / P.L T := by
    filter_upwards [Assembly.eventually_l_pos, hgc, hg] with T hl hgcT hgT
    have hL : 0 < P.L T := by unfold Params.L; exact mul_pos hlam hl
    have hLl : P.L T = P.lam * l T := rfl
    -- D(λ r) is continuous on [0,1]
    have hDl : ContinuousOn (fun r : ℝ => D (P.lam * r)) (Icc 0 1) := by
      refine hD.comp (continuous_const.mul continuous_id).continuousOn ?_
      intro r hr
      exact ⟨mul_nonneg hlam.le hr.1, by nlinarith [hr.2, hlam1, hr.1]⟩
    -- change of variables y = L r
    have hsub : ∫ y in (0:ℝ)..P.L T, (D (y / l T) * g T y)
        = P.L T * ∫ r in (0:ℝ)..1, (D (P.lam * r) * g T (P.L T * r)) := by
      have hc := intervalIntegral.integral_comp_mul_left (fun y => D (y / l T) * g T y) (ne_of_gt hL)
        (a := 0) (b := 1)
      simp only [mul_zero, mul_one, smul_eq_mul] at hc
      have hker : (fun r => D (P.L T * r / l T) * g T (P.L T * r))
          = fun r => D (P.lam * r) * g T (P.L T * r) := by
        ext r
        have : P.L T * r / l T = P.lam * r := by rw [hLl]; field_simp
        rw [this]
      rw [hker] at hc
      rw [hc]; field_simp
    -- the target in the same currency
    have htar : jWin D P.lam v / P.lam
        = 2 / (P.lam * P.L T) * ∫ r in (0:ℝ)..1, (D (P.lam * r) * (P.L T * vConv v r)) := by
      unfold jWin
      have : (fun r => D (P.lam * r) * (P.L T * vConv v r))
          = fun r => P.L T * (D (P.lam * r) * vConv v r) := by
        ext r; ring
      rw [this, intervalIntegral.integral_const_mul]
      field_simp
    have hJT : 2 / P.L T ^ 3 * l T * ∫ y in (0:ℝ)..P.L T, (D (y / l T) * g T y)
        = 2 / (P.lam * P.L T) * ∫ r in (0:ℝ)..1, (D (P.lam * r) * g T (P.L T * r)) := by
      rw [hsub]
      have hl' : l T = P.L T / P.lam := by rw [hLl]; field_simp
      rw [hl']
      field_simp
    rw [hJT, htar, ← mul_sub]
    -- integrability
    have hi1 : IntervalIntegrable (fun r => D (P.lam * r) * g T (P.L T * r)) volume 0 1 :=
      (hDl.mul (hgcT.comp (continuous_const.mul continuous_id)).continuousOn).intervalIntegrable_of_Icc
        zero_le_one
    have hi2 : IntervalIntegrable (fun r => D (P.lam * r) * (P.L T * vConv v r)) volume 0 1 :=
      (hDl.mul (continuous_const.mul (continuous_vConv hv)).continuousOn).intervalIntegrable_of_Icc
        zero_le_one
    rw [← intervalIntegral.integral_sub hi1 hi2]
    -- pointwise bound of the difference integrand by M·|C|·w
    have hpt : ∀ r ∈ Set.uIoc (0:ℝ) 1,
        ‖D (P.lam * r) * g T (P.L T * r) - D (P.lam * r) * (P.L T * vConv v r)‖ ≤ M * (|C| * P.w) := by
      intro r hr
      rw [uIoc_of_le zero_le_one] at hr
      have hr' : r ∈ Icc (0:ℝ) 1 := ⟨hr.1.le, hr.2⟩
      rw [← mul_sub, norm_mul]
      have hy : P.L T * r ∈ Icc 0 (P.L T) := ⟨mul_nonneg hL.le hr'.1, by nlinarith [hr'.2, hL]⟩
      have hg1 := hgT (P.L T * r) hy
      have hdiv : P.L T * r / P.L T = r := by field_simp
      rw [hdiv] at hg1
      have hD1 : ‖D (P.lam * r)‖ ≤ M :=
        hM _ ⟨mul_nonneg hlam.le hr'.1, by nlinarith [hr'.2, hlam1, hr'.1]⟩
      have hg2 : ‖g T (P.L T * r) - P.L T * vConv v r‖ ≤ |C| * P.w := by
        rw [Real.norm_eq_abs]
        exact hg1.trans (mul_le_mul_of_nonneg_right (le_abs_self C) (le_of_lt (Params.w_pos hP)))
      exact mul_le_mul hD1 hg2 (norm_nonneg _) hM0
    have hint := intervalIntegral.norm_integral_le_of_norm_le_const hpt
    rw [Real.norm_eq_abs, sub_zero, abs_one, mul_one] at hint
    rw [abs_mul, abs_of_pos (by positivity : (0:ℝ) < 2 / (P.lam * P.L T))]
    calc 2 / (P.lam * P.L T) * |∫ r in (0:ℝ)..1,
          (D (P.lam * r) * g T (P.L T * r) - D (P.lam * r) * (P.L T * vConv v r))|
        ≤ 2 / (P.lam * P.L T) * (M * (|C| * P.w)) := mul_le_mul_of_nonneg_left hint (by positivity)
      _ = 2 * M * |C| / P.lam * P.w / P.L T := by field_simp
  exact ThmD.tendsto_of_close hlam hev

end Limit

/-! ## (W3) the flat window, concretely (the tree's taper P.phi; v = vFlat) -/

section Flat
variable {P : Params}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63abccc96d115cf966dcf2f3551c9d99877e0ac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
