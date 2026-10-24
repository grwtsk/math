# abs_Mform_cos_phase_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cb1fb2a-edb0-3a35-1fd7-e1b251826662",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a1e7222-0712-880d-6eb7-7ffefd641d97",
  "kind": "theorem",
  "lexical_name": "abs_Mform_cos_phase_le",
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
  "slug": "abs-mform-cos-phase-le--644147deb601507617bf9064",
  "source": {
    "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:644147deb601507617bf90645d877aa2c9d7b737813b3092b94b2456163d762d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a1e7222-0712-880d-6eb7-7ffefd641d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_Mform_cos_phase_le (hT : 0 ≤ T) (hΦ : ContDiff ℝ 1 Φ)
    (hΦint : Integrable (fun x => Φ x ^ 2)) {u : ℝ → ℝ} (hu : ContDiff ℝ 1 u) {B D : ℝ}
    (hB : ∀ τ ∈ Set.Icc T (2 * T), |u τ| ≤ B) (hD : ∀ τ ∈ Set.Icc T (2 * T), |deriv u τ| ≤ D)
    {y : ℝ} (hy : y ≠ 0) (θ : ℝ) :
    |Mform Φ T u (fun t => Real.cos (t * y + θ))| ≤ (4 * B + D * T) * (∫ x, Φ x ^ 2) / |y| := by

  -- notation
  set S : ℝ := ∫ x, Φ x ^ 2 with hS
  set Ψ : ℝ → ℝ := fun x => Φ x ^ 2 with hΨdef
  set ψ : ℝ → ℝ := deriv Ψ with hψdef
  have hΨ : ContDiff ℝ 1 Ψ := hΦ.pow 2
  have hΦc : Continuous Φ := hΦ.continuous
  have hΨc : Continuous Ψ := hΨ.continuous
  have hψc : Continuous ψ := hΨ.continuous_deriv le_rfl
  have huc : Continuous u := hu.continuous
  have hu'c : Continuous (deriv u) := hu.continuous_deriv le_rfl
  have hIm : MeasurableSet (Icc T (2 * T)) := measurableSet_Icc
  have hTI : T ∈ Icc T (2 * T) := ⟨le_rfl, by linarith⟩
  have hB0 : 0 ≤ B := (abs_nonneg _).trans (hB T hTI)
  have hD0 : 0 ≤ D := (abs_nonneg _).trans (hD T hTI)
  have hS0 : 0 ≤ S := integral_nonneg fun x => sq_nonneg _
  have hΨnn : ∀ x, 0 ≤ Ψ x := fun x => sq_nonneg _
  have hvol : volume.real (Icc T (2 * T)) = T := by
    rw [Real.volume_real_Icc, max_eq_left (by linarith)]; ring
  -- the pieces
  set A : ℝ → ℝ := fun τ => Ψ (τ - 2 * T) * Real.sin (2 * T * y + θ) - Ψ (τ - T) * Real.sin (T * y + θ)
    with hAdef
  set F : ℝ → ℝ → ℝ := fun τ τ' => u τ * ψ (τ - τ') * Real.sin (τ' * y + θ) with hFdef
  have hFc : Continuous (Function.uncurry F) := by
    show Continuous (fun q : ℝ × ℝ => u q.1 * ψ (q.1 - q.2) * Real.sin (q.2 * y + θ))
    fun_prop
  have hFint : Integrable (Function.uncurry F) ((volume.restrict (Icc T (2 * T))).prod (volume.restrict (Icc T (2 * T)))) := by
    rw [Measure.prod_restrict]
    exact (hFc.continuousOn).integrableOn_compact (isCompact_Icc.prod isCompact_Icc)
  -- Step 1: Fubini + inner IBP:  M = y⁻¹ (∫_I u A + ∫_I ∫_I F)
  have step1 : Mform Φ T u (fun t => Real.cos (t * y + θ))
      = y⁻¹ * ((∫ τ in Icc T (2 * T), u τ * A τ) + ∫ τ in Icc T (2 * T), ∫ τ' in Icc T (2 * T), F τ τ') := by
    rw [Mform_eq_iter hΦc huc (by fun_prop)]
    have hinner : ∀ τ, ∫ τ' in Icc T (2 * T), Φ (τ - τ') ^ 2 * Real.cos (τ' * y + θ)
        = A τ / y + y⁻¹ * ∫ τ' in Icc T (2 * T), ψ (τ - τ') * Real.sin (τ' * y + θ) := by
      intro τ
      rw [setIntegral_Icc_eq_intervalIntegral hT, setIntegral_Icc_eq_intervalIntegral hT,
        inner_ibp_phase hΦ hy θ τ]
    simp_rw [hinner]
    have hint1 : IntegrableOn (fun τ => u τ * A τ) (Icc T (2 * T)) := by
      apply Continuous.integrableOn_Icc; simp only [hAdef]; fun_prop
    have hint2 : IntegrableOn (fun τ => ∫ τ' in Icc T (2 * T), F τ τ') (Icc T (2 * T)) := by
      have := hFint.integral_prod_left
      simpa [IntegrableOn, Function.uncurry_def] using this
    have e : ∀ τ, u τ * (A τ / y + y⁻¹ * ∫ τ' in Icc T (2 * T), ψ (τ - τ') * Real.sin (τ' * y + θ))
        = y⁻¹ * (u τ * A τ) + y⁻¹ * ∫ τ' in Icc T (2 * T), F τ τ' := by
      intro τ
      have hF' : ∫ τ' in Icc T (2 * T), F τ τ'
          = u τ * ∫ τ' in Icc T (2 * T), ψ (τ - τ') * Real.sin (τ' * y + θ) := by
        rw [← integral_const_mul]
        congr 1; ext τ'; simp only [hFdef]; ring
      rw [hF']; field_simp
    simp_rw [e]
    rw [integral_add (hint1.const_mul _) (hint2.const_mul _), integral_const_mul,
      integral_const_mul]
    ring
  -- Step 2: swap + outer IBP:  ∫_I ∫_I F = ∫_I sin(τ'y) (u(2T)Ψ(2T-τ') - u(T)Ψ(T-τ') - ∫_I u'Ψ(τ-τ'))
  have step2 : ∫ τ in Icc T (2 * T), ∫ τ' in Icc T (2 * T), F τ τ'
      = ∫ τ' in Icc T (2 * T), Real.sin (τ' * y + θ) * (u (2 * T) * Ψ (2 * T - τ') - u T * Ψ (T - τ')
          - ∫ τ in Icc T (2 * T), deriv u τ * Ψ (τ - τ')) := by
    rw [integral_integral_swap hFint]
    refine setIntegral_congr_fun hIm fun τ' _ => ?_
    have : (fun τ => F τ τ') = fun τ => Real.sin (τ' * y + θ) * (u τ * ψ (τ - τ')) := by
      ext τ; simp only [hFdef]; ring
    rw [this, integral_const_mul]
    congr 1
    rw [setIntegral_Icc_eq_intervalIntegral hT, setIntegral_Icc_eq_intervalIntegral hT]
    exact outer_ibp hΦ hu τ'
  -- Step 3: bounds
  have bd1 : |∫ τ in Icc T (2 * T), u τ * A τ| ≤ 2 * B * S := by
    have hg : IntegrableOn (fun τ => B * (Ψ (τ - 2 * T) + Ψ (τ - T))) (Icc T (2 * T)) := by
      apply Continuous.integrableOn_Icc; fun_prop
    refine (Real.norm_eq_abs _ ▸ norm_integral_le_of_norm_le hg ?_).trans ?_
    · refine ae_restrict_of_forall_mem hIm fun τ hτ => ?_
      rw [Real.norm_eq_abs, abs_mul]
      refine mul_le_mul (hB τ hτ) ?_ (abs_nonneg _) hB0
      simp only [hAdef]
      refine (abs_sub _ _).trans ?_
      rw [abs_mul, abs_mul, abs_of_nonneg (hΨnn _), abs_of_nonneg (hΨnn _)]
      nlinarith [Real.abs_sin_le_one (2 * T * y + θ), Real.abs_sin_le_one (T * y + θ), hΨnn (τ - 2 * T),
        hΨnn (τ - T), abs_nonneg (Real.sin (2 * T * y + θ)), abs_nonneg (Real.sin (T * y + θ))]
    · have i1 : IntegrableOn (fun τ => Ψ (τ - 2 * T)) (Icc T (2 * T)) := by
        apply Continuous.integrableOn_Icc; fun_prop
      have i2 : IntegrableOn (fun τ => Ψ (τ - T)) (Icc T (2 * T)) := by
        apply Continuous.integrableOn_Icc; fun_prop
      rw [integral_const_mul, integral_add i1 i2]
      have h1 := setIntegral_sq_shift_le' hΦint (Icc T (2 * T)) (2 * T)
      have h2 := setIntegral_sq_shift_le' hΦint (Icc T (2 * T)) T
      simp only [hΨdef] at h1 h2 ⊢
      nlinarith
  have bd2 : |∫ τ' in Icc T (2 * T), Real.sin (τ' * y + θ) * (u (2 * T) * Ψ (2 * T - τ') - u T * Ψ (T - τ')
          - ∫ τ in Icc T (2 * T), deriv u τ * Ψ (τ - τ'))| ≤ 2 * B * S + D * S * T := by
    have h2T : (2 * T) ∈ Icc T (2 * T) := ⟨by linarith, le_rfl⟩
    have hg : IntegrableOn (fun τ' => B * Ψ (2 * T - τ') + B * Ψ (T - τ') + D * S) (Icc T (2 * T)) := by
      apply Continuous.integrableOn_Icc; fun_prop
    refine (Real.norm_eq_abs _ ▸ norm_integral_le_of_norm_le hg ?_).trans ?_
    · refine ae_restrict_of_forall_mem hIm fun τ' hτ' => ?_
      rw [Real.norm_eq_abs, abs_mul]
      have hsin := Real.abs_sin_le_one (τ' * y + θ)
      have hin : |∫ τ in Icc T (2 * T), deriv u τ * Ψ (τ - τ')| ≤ D * S := by
        have hg' : IntegrableOn (fun τ => D * Ψ (τ - τ')) (Icc T (2 * T)) := by
          apply Continuous.integrableOn_Icc; fun_prop
        refine (Real.norm_eq_abs _ ▸ norm_integral_le_of_norm_le hg' ?_).trans ?_
        · refine ae_restrict_of_forall_mem hIm fun τ hτ => ?_
          rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (hΨnn _)]
          exact mul_le_mul_of_nonneg_right (hD τ hτ) (hΨnn _)
        · rw [integral_const_mul]
          exact mul_le_mul_of_nonneg_left (setIntegral_sq_shift_le' hΦint (Icc T (2 * T)) τ') hD0
      have hmain : |u (2 * T) * Ψ (2 * T - τ') - u T * Ψ (T - τ') - ∫ τ in Icc T (2 * T), deriv u τ * Ψ (τ - τ')|
          ≤ B * Ψ (2 * T - τ') + B * Ψ (T - τ') + D * S := by
        refine (abs_sub _ _).trans (add_le_add ((abs_sub _ _).trans (add_le_add ?_ ?_)) hin)
        · rw [abs_mul, abs_of_nonneg (hΨnn _)]
          exact mul_le_mul_of_nonneg_right (hB _ h2T) (hΨnn _)
        · rw [abs_mul, abs_of_nonneg (hΨnn _)]
          exact mul_le_mul_of_nonneg_right (hB _ hTI) (hΨnn _)
      calc |Real.sin (τ' * y + θ)| * |u (2 * T) * Ψ (2 * T - τ') - u T * Ψ (T - τ')
              - ∫ τ in Icc T (2 * T), deriv u τ * Ψ (τ - τ')|
          ≤ 1 * (B * Ψ (2 * T - τ') + B * Ψ (T - τ') + D * S) :=
            mul_le_mul hsin hmain (abs_nonneg _) zero_le_one
        _ = _ := one_mul _
    · rw [integral_add, integral_add, integral_const_mul, integral_const_mul, setIntegral_const,
        hvol, smul_eq_mul]
      · have h1 := setIntegral_sq_shift_le_left hΦint (Icc T (2 * T)) (2 * T)
        have h2 := setIntegral_sq_shift_le_left hΦint (Icc T (2 * T)) T
        simp only [hΨdef] at h1 h2 ⊢
        nlinarith
      all_goals { apply Continuous.integrableOn_Icc; fun_prop }
  -- conclude
  rw [step1, step2, abs_mul, abs_inv]
  rw [div_eq_mul_inv, mul_comm ((4 * B + D * T) * S) |y|⁻¹]
  refine mul_le_mul_of_nonneg_left ?_ (inv_nonneg.2 (abs_nonneg _))
  refine (abs_add_le _ _).trans ?_
  nlinarith [bd1, bd2]

/-- **The oscillatory bound** (§5.4: "`|∫_I m(τ′)cos(τ′y)dτ′| ≤ (2 sup|m| + ∫_I|m′|)/y`"), here in
the explicit form: if `Φ, u ∈ C¹`, `|u| ≤ B` and `|u′| ≤ D` on `I = [T,2T]`, `T ≥ 0`, `y ≠ 0`, then
`|𝓜[u, cos(·y)]| ≤ (4B + D·T)·(∫_ℝ Φ²)/|y|` — the case `θ = 0` of `abs_Mform_cos_phase_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e010fcb4ea1553e1e0e674f05839954799b6061d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
