# eLpNorm_le_eLpNorm_fderiv_of_eq_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d2e6b86-e701-25e0-22f5-0421ba1aa8d3",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_fderiv_of_eq_inner",
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
  "slug": "elpnorm-le-elpnorm-fderiv-of-eq-inner--ad1235b3a1030cbe6e29c480",
  "source": {
    "blob": "7f77ea7698c69b09fd175fb6d232115ceab6fe56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 476,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad1235b3a1030cbe6e29c4809879326c30abb7c16a5616e2390f07d27854893e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d2e6b86-e701-25e0-22f5-0421ba1aa8d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_fderiv_of_eq_inner {u : E → F'}
    (hu : ContDiff ℝ 1 u) (h2u : HasCompactSupport u)
    {p p' : ℝ≥0} (hp : 1 ≤ p) (hn : 0 < finrank ℝ E)
    (hp' : (p' : ℝ)⁻¹ = p⁻¹ - (finrank ℝ E : ℝ)⁻¹) :
    eLpNorm u p' μ ≤ eLpNormLESNormFDerivOfEqInnerConst μ p * eLpNorm (fderiv ℝ u) p μ := by
  /- Here we derive the GNS-inequality for `p ≥ 1` from the version with `p = 1`.
  For `p > 1` we apply the previous version to the function `|u|^γ` for a suitably chosen `γ`.
  The proof requires that `x ↦ |x|^p` is smooth in the codomain, so we require that it is a
  Hilbert space. -/
  by_cases hp'0 : p' = 0
  · simp [hp'0]
  set n := finrank ℝ E
  let n' := NNReal.conjExponent n
  have h2p : (p : ℝ) < n := by
    have : 0 < p⁻¹ - (n : ℝ)⁻¹ :=
      NNReal.coe_lt_coe.mpr (pos_iff_ne_zero.mpr (inv_ne_zero hp'0)) |>.trans_eq hp'
    rwa [NNReal.coe_inv, sub_pos,
      inv_lt_inv₀ _ (zero_lt_one.trans_le (NNReal.coe_le_coe.mpr hp))] at this
    exact_mod_cast hn
  have h0n : 2 ≤ n := Nat.succ_le_of_lt <| Nat.one_lt_cast.mp <| hp.trans_lt h2p
  have hn : NNReal.HolderConjugate n n' := .conjExponent (by norm_cast)
  have h1n : 1 ≤ (n : ℝ≥0) := hn.lt.le
  have h2n : (0 : ℝ) < n - 1 := by simp_rw [sub_pos]; exact hn.coe.lt
  have hnp : (0 : ℝ) < n - p := by simp_rw [sub_pos]; exact h2p
  rcases hp.eq_or_lt with rfl|hp
  -- the case `p = 1`
  · convert eLpNorm_le_eLpNorm_fderiv_one μ hu h2u hn using 2
    · suffices (p' : ℝ) = n' by simpa using this
      rw [← inv_inj, hp']
      field_simp [n', NNReal.conjExponent]
    · norm_cast
      simp_rw [n', n, eLpNormLESNormFDerivOfEqInnerConst]
      field_simp
  -- the case `p > 1`
  let q := Real.conjExponent p
  have hq : Real.HolderConjugate p q := .conjExponent hp
  have h0p : p ≠ 0 := zero_lt_one.trans hp |>.ne'
  have h1p : (p : ℝ) ≠ 1 := hq.lt.ne'
  have h3p : (p : ℝ) - 1 ≠ 0 := sub_ne_zero_of_ne h1p
  have h0p' : p' ≠ 0 := by
    suffices 0 < (p' : ℝ) from (show 0 < p' from this) |>.ne'
    rw [← inv_pos, hp', sub_pos]
    exact inv_strictAnti₀ hq.pos h2p
  have h2q : 1 / n' - 1 / q = 1 / p' := by
    simp_rw -zeta [one_div, hp']
    rw [← hq.one_sub_inv, ← hn.coe.one_sub_inv, sub_sub_sub_cancel_left]
    simp only [NNReal.coe_natCast, NNReal.coe_inv]
  let γ : ℝ≥0 := ⟨p * (n - 1) / (n - p), by positivity⟩
  have h0γ : (γ : ℝ) = p * (n - 1) / (n - p) := rfl
  have h1γ : 1 < (γ : ℝ) := by
    rwa [h0γ, one_lt_div hnp, mul_sub, mul_one, sub_lt_sub_iff_right, lt_mul_iff_one_lt_left]
    exact hn.coe.pos
  have h2γ : γ * n' = p' := by
    rw [← NNReal.coe_inj, ← inv_inj, hp', NNReal.coe_mul, h0γ, hn.coe.conjugate_eq]
    field_simp; ring
  have h3γ : (γ - 1) * q = p' := by
    rw [← inv_inj, hp', h0γ, hq.conjugate_eq]
    have : (p : ℝ) * (n - 1) - (n - p) = n * (p - 1) := by ring
    field_simp [this]; ring
  have h4γ : (γ : ℝ) ≠ 0 := (zero_lt_one.trans h1γ).ne'
  by_cases h3u : ∫⁻ x, ‖u x‖ₑ ^ (p' : ℝ) ∂μ = 0
  · rw [eLpNorm_nnreal_eq_lintegral h0p', h3u, ENNReal.zero_rpow_of_pos] <;> positivity
  have h4u : ∫⁻ x, ‖u x‖ₑ ^ (p' : ℝ) ∂μ ≠ ∞ := by
    refine lintegral_rpow_enorm_lt_top_of_eLpNorm'_lt_top
      ((NNReal.coe_pos.trans pos_iff_ne_zero).mpr h0p') ?_ |>.ne
    rw [← eLpNorm_nnreal_eq_eLpNorm' h0p']
    exact hu.continuous.memLp_of_hasCompactSupport (μ := μ) h2u |>.eLpNorm_lt_top
  have h5u : (∫⁻ x, ‖u x‖ₑ ^ (p' : ℝ) ∂μ) ^ (1 / q) ≠ 0 :=
    ENNReal.rpow_pos (pos_iff_ne_zero.mpr h3u) h4u |>.ne'
  have h6u : (∫⁻ x, ‖u x‖ₑ ^ (p' : ℝ) ∂μ) ^ (1 / q) ≠ ∞ :=
    ENNReal.rpow_ne_top_of_nonneg (div_nonneg zero_le_one hq.symm.nonneg) h4u
  have h7u := hu.continuous -- for fun_prop
  let v : E → ℝ := fun x ↦ ‖u x‖ ^ (γ : ℝ)
  have hv : ContDiff ℝ 1 v := hu.norm_rpow h1γ
  have h2v : HasCompactSupport v := h2u.norm.rpow_const h4γ
  set C := eLpNormLESNormFDerivOneConst μ n'
  have :=
  calc (∫⁻ x, ‖u x‖ₑ ^ (p' : ℝ) ∂μ) ^ (1 / (n' : ℝ)) = eLpNorm v n' μ := by
        rw [← h2γ, eLpNorm_nnreal_eq_lintegral hn.symm.pos.ne']
        simp (discharger := positivity) [v, Real.enorm_rpow_of_nonneg, ENNReal.rpow_mul,
          ← ENNReal.coe_rpow_of_nonneg]
    _ ≤ C * eLpNorm (fderiv ℝ v) 1 μ := eLpNorm_le_eLpNorm_fderiv_one μ hv h2v hn
    _ = C * ∫⁻ x, ‖fderiv ℝ v x‖ₑ ∂μ := by rw [eLpNorm_one_eq_lintegral_enorm]
    _ ≤ C * γ * ∫⁻ x, ‖u x‖ₑ ^ ((γ : ℝ) - 1) * ‖fderiv ℝ u x‖ₑ ∂μ := by
      rw [mul_assoc, ← lintegral_const_mul γ]
      gcongr
      simp_rw [← mul_assoc]
      exact enorm_fderiv_norm_rpow_le (hu.differentiable le_rfl) h1γ
      dsimp [enorm]
      fun_prop
    _ ≤ C * γ * ((∫⁻ x, ‖u x‖ₑ ^ (p' : ℝ) ∂μ) ^ (1 / q) *
        (∫⁻ x, ‖fderiv ℝ u x‖ₑ ^ (p : ℝ) ∂μ) ^ (1 / (p : ℝ))) := by
        gcongr
        convert ENNReal.lintegral_mul_le_Lp_mul_Lq μ
          (.symm <| .conjExponent <| show 1 < (p : ℝ) from hp) ?_ ?_ using 5
        · simp [γ, n, q, ← ENNReal.rpow_mul, ← h3γ]
        · borelize F'
          fun_prop
        · fun_prop
    _ = C * γ * (∫⁻ x, ‖fderiv ℝ u x‖ₑ ^ (p : ℝ) ∂μ) ^ (1 / (p : ℝ)) *
      (∫⁻ x, ‖u x‖ₑ ^ (p' : ℝ) ∂μ) ^ (1 / q) := by ring
  calc
    eLpNorm u p' μ
      = (∫⁻ x, ‖u x‖ₑ ^ (p' : ℝ) ∂μ) ^ (1 / (p' : ℝ)) := eLpNorm_nnreal_eq_lintegral h0p'
    _ ≤ C * γ * (∫⁻ x, ‖fderiv ℝ u x‖ₑ ^ (p : ℝ) ∂μ) ^ (1 / (p : ℝ)) := by
      rwa [← h2q, ENNReal.rpow_sub _ _ h3u h4u, ENNReal.div_le_iff h5u h6u]
    _ = eLpNormLESNormFDerivOfEqInnerConst μ p *  eLpNorm (fderiv ℝ u) (↑p) μ := by
      suffices (C : ℝ) * γ = eLpNormLESNormFDerivOfEqInnerConst μ p by
        rw [eLpNorm_nnreal_eq_lintegral h0p]
        congr
        norm_cast at this ⊢
      simp_rw [eLpNormLESNormFDerivOfEqInnerConst, γ]
      refold_let n n' C
      rw [NNReal.coe_mul, NNReal.coe_mk, Real.coe_toNNReal', mul_eq_mul_left_iff, eq_comm,
        max_eq_left_iff]
      left
      positivity

variable (F) in
/-- The constant factor occurring in the conclusion of `eLpNorm_le_eLpNorm_fderiv_of_eq`.
It only depends on `E`, `F`, `μ` and `p`. -/
irreducible_def SNormLESNormFDerivOfEqConst [FiniteDimensional ℝ F] (p : ℝ) : ℝ≥0 :=
  let F' := EuclideanSpace ℝ <| Fin <| finrank ℝ F
  let e : F ≃L[ℝ] F' := toEuclidean
  ‖(e.symm : F' →L[ℝ] F)‖₊ * eLpNormLESNormFDerivOfEqInnerConst μ p * ‖(e : F →L[ℝ] F')‖₊

/-- The **Gagliardo-Nirenberg-Sobolev inequality**.  Let `u` be a continuously differentiable
compactly-supported function `u` on a normed space `E` of finite dimension `n`, equipped
with Haar measure, let `1 < p < n` and let `p'⁻¹ := p⁻¹ - n⁻¹`.
Then the `Lᵖ'` norm of `u` is bounded above by a constant times the `Lᵖ` norm of
the Fréchet derivative of `u`.

This is the version where the codomain of `u` is a finite dimensional normed space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f77ea7698c69b09fd175fb6d232115ceab6fe56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
