/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.Projection.Basic
import Mathlib.Analysis.InnerProductSpace.StarOrder
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic.FinCases
import Mathlib.Topology.MetricSpace.HausdorffDistance

/-! # Full residual of an orthogonal compression

The compressed residual and the leakage into the orthogonal complement
are orthogonal. The identity applies pointwise to an operator on a restricted
domain. Issue #1825 gives a history-operator application. MSC2020 47A10.
-/

set_option autoImplicit false

namespace GRWTSK.Analysis.OperatorTheory
open scoped InnerProductSpace

/-- For a trial vector supported in a projection window, the full residual
has two orthogonal terms. Here `y` is the full operator applied to `x`. -/
theorem norm_sub_smul_sq_eq_compression_add_leakage
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (K : Submodule ℂ E) [K.HasOrthogonalProjection]
    {x : E} (hx : x ∈ K) (y : E) (μ : ℂ) :
    ‖y - μ • x‖ ^ 2 = ‖K.starProjection y - μ • x‖ ^ 2 +
      ‖y - K.starProjection y‖ ^ 2 := by
  have hmem : K.starProjection y - μ • x ∈ K :=
    K.sub_mem (K.starProjection_apply_mem y) (K.smul_mem μ hx)
  have horth :
      ⟪K.starProjection y - μ • x, y - K.starProjection y⟫_ℂ = 0 :=
    inner_eq_zero_symm.mp (K.starProjection_inner_eq_zero y _ hmem)
  have hsum :
      K.starProjection y - μ • x + (y - K.starProjection y) = y - μ • x := by
    abel
  rw [← hsum]
  simpa only [pow_two] using norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero _ _ horth

/-- The residual of a unit vector bounds its trial value's distance to the
real spectrum of a bounded self-adjoint operator. -/
theorem infDist_spectrum_le_norm_residual
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E]
    (H : E →L[ℂ] E) (hH : IsSelfAdjoint H) (r : ℝ) {x : E} (hx : ‖x‖ = 1) :
    Metric.infDist r (spectrum ℝ H) ≤ ‖H x - (r : ℂ) • x‖ := by
  let d := Metric.infDist r (spectrum ℝ H)
  let A := H - algebraMap ℝ (E →L[ℂ] E) r
  have hr : IsSelfAdjoint r := by simp [isSelfAdjoint_iff]
  have hA : IsSelfAdjoint A := hH.sub (hr.algebraMap _)
  have hp : algebraMap ℝ (E →L[ℂ] E) (d ^ 2) ≤ A ^ 2 := by
    have hs : ∀ s ∈ spectrum ℝ H, d ^ 2 ≤ (s - r) ^ 2 := by
      intro s hs
      have hd : d ≤ |s - r| := by
        simpa [Real.dist_eq, abs_sub_comm] using
          (Metric.infDist_le_dist_of_mem (x := r) hs)
      simpa only [sq_abs] using pow_le_pow_left₀ Metric.infDist_nonneg hd 2
    have hc := (cfc_le_iff (fun _ : ℝ => d ^ 2) (fun s : ℝ => (s - r) ^ 2) H
      (ha := hH)).mpr hs
    rwa [cfc_const (d ^ 2) H hH, cfc_pow (fun s : ℝ => s - r) 2 H (ha := hH),
      cfc_sub (fun s : ℝ => s) (fun _ : ℝ => r) H, cfc_id' ℝ H hH,
      cfc_const r H hH] at hc
  have hpos := (ContinuousLinearMap.le_def.mp hp).2 x
  have hsq : ‖A x‖ ^ 2 = (A ^ 2).reApplyInnerSelf x := by
    rw [ContinuousLinearMap.apply_norm_sq_eq_inner_adjoint_left, hA.adjoint_eq, pow_two]
    rfl
  have hscalar : (algebraMap ℝ (E →L[ℂ] E) (d ^ 2)).reApplyInnerSelf x = d ^ 2 := by
    simp [ContinuousLinearMap.reApplyInnerSelf, Algebra.algebraMap_eq_smul_one,
      ← Complex.coe_smul, inner_smul_left, inner_self_eq_norm_sq_to_K, hx, -Complex.ofReal_pow]
  have hle : d ^ 2 ≤ ‖A x‖ ^ 2 := by
    rw [hsq]
    rw [ContinuousLinearMap.reApplyInnerSelf, sub_apply, inner_sub_left,
      map_sub, ← ContinuousLinearMap.reApplyInnerSelf, ← ContinuousLinearMap.reApplyInnerSelf,
      hscalar, sub_nonneg] at hpos
    exact hpos
  simpa [A, Algebra.algebraMap_eq_smul_one, ← Complex.coe_smul] using
    (sq_le_sq₀ Metric.infDist_nonneg (norm_nonneg (A x))).mp hle

/-- A bounded self-adjoint operator's spectral certificate from a compression
retains the leakage into the orthogonal complement. -/
theorem infDist_spectrum_le_compression_residual
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E]
    (H : E →L[ℂ] E) (hH : IsSelfAdjoint H)
    (K : Submodule ℂ E) [K.HasOrthogonalProjection]
    (r : ℝ) {x : E} (hx : x ∈ K) (hx_unit : ‖x‖ = 1) :
    Metric.infDist r (spectrum ℝ H) ≤
      √(‖K.starProjection (H x) - (r : ℂ) • x‖ ^ 2 +
        ‖H x - K.starProjection (H x)‖ ^ 2) := by
  rw [← norm_sub_smul_sq_eq_compression_add_leakage K hx (H x) (r : ℂ),
    Real.sqrt_sq (norm_nonneg _)]
  exact infDist_spectrum_le_norm_residual H hH r hx_unit

section Fixture

local notation "E₂" => EuclideanSpace ℂ (Fin 2)

private noncomputable def diagSign : E₂ →ₗ[ℂ] E₂ :=
  Matrix.toEuclideanLin (!![-1, 0; 0, 1] : Matrix (Fin 2) (Fin 2) ℂ)

private noncomputable def trial : E₂ :=
  WithLp.toLp 2 ![(↑((Real.sqrt 2)⁻¹) : ℂ), ↑((Real.sqrt 2)⁻¹)]

/-- The zero Ritz value of this one-dimensional compression of
`diag(-1,1)` has full residual and leakage both of norm one. -/
theorem diagonal_sign_spurious_zero_ritz :
    let K := ℂ ∙ trial
    ‖trial‖ = 1 ∧ K.starProjection (diagSign trial) = 0 ∧
      ‖diagSign trial‖ = 1 := by
  let a : ℝ := (Real.sqrt 2)⁻¹
  have ha : 0 ≤ a := inv_nonneg.mpr (Real.sqrt_nonneg _)
  have ha₂ : a ^ 2 = 1 / 2 := by
    dsimp [a]
    rw [inv_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
    norm_num
  have hv : WithLp.ofLp (diagSign trial) = ![-(a : ℂ), (a : ℂ)] := by
    ext i
    fin_cases i <;> simp [diagSign, trial, a, Matrix.toEuclideanLin]
  have htrial : ‖trial‖ = 1 := by
    apply (sq_eq_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)).mp
    rw [EuclideanSpace.norm_sq_eq, Fin.sum_univ_two]
    norm_num [trial, a, Complex.norm_real, abs_of_nonneg ha, ha₂]
  have himage : ‖diagSign trial‖ = 1 := by
    apply (sq_eq_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)).mp
    rw [EuclideanSpace.norm_sq_eq, Fin.sum_univ_two]
    change ‖WithLp.ofLp (diagSign trial) 0‖ ^ 2 +
      ‖WithLp.ofLp (diagSign trial) 1‖ ^ 2 = _
    rw [hv]
    norm_num [Complex.norm_real, abs_of_nonneg ha, ha₂]
  have hinner : ⟪trial, diagSign trial⟫_ℂ = 0 := by
    rw [EuclideanSpace.inner_eq_star_dotProduct, hv, dotProduct, Fin.sum_univ_two]
    simp [trial, a]
  refine ⟨htrial, ?_, himage⟩
  apply Submodule.eq_starProjection_of_mem_of_inner_eq_zero (zero_mem _)
  intro w hw
  obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.mp hw
  rw [sub_zero, inner_smul_right, inner_eq_zero_symm.mpr hinner, mul_zero]

end Fixture

end GRWTSK.Analysis.OperatorTheory
