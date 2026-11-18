/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletWeilIntegrand

/-! # Analytic multiplicity under the primitive Dirichlet functional equation -/

set_option autoImplicit false
noncomputable section

open Filter
open scoped Topology

namespace GRWTSK.NumberTheory.WeilNegativeWitness

private theorem completed_analyticAt_and_order_eq {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) {s : ℂ} (hs : 0 < s.re) (hsOne : s ≠ 1) :
    AnalyticAt ℂ χ.completedLFunction s ∧
      analyticOrderAt χ.completedLFunction s = analyticOrderAt χ.LFunction s := by
  have hL := analyticOnNhd_LFunction_compl_one χ s (by simpa using hsOne)
  have hγ := gammaFactor_regular_of_re_pos χ hs
  have hEq : χ.completedLFunction =ᶠ[𝓝 s] χ.LFunction * χ.gammaFactor := by
    filter_upwards [(Complex.continuous_re.tendsto s).eventually (eventually_gt_nhds hs)]
      with z hz
    exact completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos χ hz
  refine ⟨(hL.mul hγ.1).congr hEq.symm, ?_⟩
  rw [analyticOrderAt_congr hEq, analyticOrderAt_mul hL hγ.1,
    hγ.1.analyticOrderAt_eq_zero.mpr hγ.2, add_zero]

/-- On the open strip, affine reflection to the inverse character preserves
the order of the actual ordinary L-function. Both archimedean factors and
the functional-equation multiplier are analytic units at these points. -/
theorem analyticOrderAt_LFunction_inverse_affine {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) {s : ℂ}
    (hs : 0 < s.re) (hs' : s.re < 1) :
    analyticOrderAt (χ⁻¹).LFunction (1 - s) = analyticOrderAt χ.LFunction s := by
  have hpInv : (χ⁻¹).IsPrimitive := by
    simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp
  have ht : 0 < (1 - s).re := by simp only [Complex.sub_re, Complex.one_re]; linarith
  have hsOne : s ≠ 1 := by intro h; simp [h] at hs'
  have htOne : 1 - s ≠ (1 : ℂ) := by
    intro h
    have hre := congrArg Complex.re h
    simp only [Complex.sub_re, Complex.one_re] at hre
    linarith
  have hc := completed_analyticAt_and_order_eq χ hs hsOne
  have hcInv := completed_analyticAt_and_order_eq χ⁻¹ ht htOne
  let g : ℂ → ℂ := fun z => 1 - z
  let u : ℂ → ℂ := fun z => (q : ℂ) ^ (g z - 1 / 2) * DirichletCharacter.rootNumber χ⁻¹
  have hq : (q : ℂ) ≠ 0 := by exact_mod_cast NeZero.ne q
  have hg : AnalyticAt ℂ g (1 - s) := by dsimp [g]; fun_prop
  have hgValue : g (1 - s) = s := sub_sub_self _ _
  have hu : AnalyticAt ℂ u (1 - s) := by
    have hg' : Differentiable ℂ g := by dsimp [g]; fun_prop
    exact (((hg'.sub_const (1 / 2)).const_cpow (.inl hq)).mul_const _).analyticAt _
  have hu0 : u (1 - s) ≠ 0 :=
    mul_ne_zero (Complex.cpow_ne_zero_iff.mpr (.inl hq))
      (rootNumber_ne_zero_from_completed_source χ⁻¹ hpInv)
  have hcomp : AnalyticAt ℂ (χ.completedLFunction ∘ g) (1 - s) :=
    (hgValue ▸ hc.1).comp hg
  have hderiv : deriv g (1 - s) ≠ 0 := by
    have hd : HasDerivAt g (-1) (1 - s) :=
      (hasDerivAt_id' (1 - s)).const_sub (1 : ℂ)
    rw [hd.deriv]
    norm_num
  have hEq : (χ⁻¹).completedLFunction = u * (χ.completedLFunction ∘ g) := by
    funext z
    simpa only [u, g, Pi.mul_apply, Function.comp_apply, inv_inv, sub_sub_self] using
      hpInv.completedLFunction_one_sub (1 - z)
  calc
    _ = analyticOrderAt (χ⁻¹).completedLFunction (1 - s) := hcInv.2.symm
    _ = analyticOrderAt (χ.completedLFunction ∘ g) (1 - s) := by
      rw [hEq, analyticOrderAt_mul hu hcomp, hu.analyticOrderAt_eq_zero.mpr hu0, zero_add]
    _ = analyticOrderAt χ.completedLFunction s := by
      rw [analyticOrderAt_comp_of_deriv_ne_zero hg hderiv, hgValue]
    _ = _ := hc.2

/-- Affine reflection on the genuine primitive Dirichlet strip zeros. -/
def inverseAffineReflectZero {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (ρ : CriticalStripZero χ) :
    CriticalStripZero χ⁻¹ := by
  have ht : 0 < (1 - ρ.1).re := by
    simp only [Complex.sub_re, Complex.one_re]
    linarith [ρ.2.2.2]
  have ht' : (1 - ρ.1).re < 1 := by
    simp only [Complex.sub_re, Complex.one_re]
    linarith [ρ.2.2.1]
  have htOne : 1 - ρ.1 ≠ (1 : ℂ) := by intro h; simp [h] at ht'
  have ha := analyticOnNhd_LFunction_compl_one χ ρ.1 (by simpa using ρ.ne_one)
  have haInv := analyticOnNhd_LFunction_compl_one χ⁻¹ (1 - ρ.1) (by simpa using htOne)
  refine ⟨1 - ρ.1, haInv.analyticOrderAt_ne_zero.mp ?_, ht, ht'⟩
  rw [analyticOrderAt_LFunction_inverse_affine χ hp ρ.2.2.1 ρ.2.2.2]
  exact ha.analyticOrderAt_ne_zero.mpr ρ.2.1

/-- The transported zero has exactly the original natural-valued multiplicity. -/
theorem zeroMultiplicity_inverseAffineReflectZero {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (ρ : CriticalStripZero χ) :
    zeroMultiplicity χ⁻¹ (inverseAffineReflectZero χ hp ρ) = zeroMultiplicity χ ρ := by
  change (analyticOrderAt (χ⁻¹).LFunction (1 - ρ.1)).toNat =
    (analyticOrderAt χ.LFunction ρ.1).toNat
  rw [analyticOrderAt_LFunction_inverse_affine χ hp ρ.2.2.1 ρ.2.2.2]

/-- Affine reflection preserves membership in the strict height window. -/
theorem inverseAffineReflectZero_mem_heightWindow_iff {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hpInv : (χ⁻¹).IsPrimitive)
    (H : ℝ) (ρ : CriticalStripZero χ) :
    inverseAffineReflectZero χ hp ρ ∈ heightWindow χ⁻¹ hpInv H ↔
      ρ ∈ heightWindow χ hp H := by
  simp only [mem_heightWindow, inverseAffineReflectZero, Complex.sub_im, Complex.one_im,
    zero_sub, abs_neg]

end GRWTSK.NumberTheory.WeilNegativeWitness
