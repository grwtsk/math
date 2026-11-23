/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiToeplitzHilbertPolyaCriterion
import Mathlib.NumberTheory.LSeries.Nonvanishing

/-! # The upper-half-plane Clark height criterion for Mathlib's Riemann hypothesis -/

noncomputable section
namespace GRWTSK.NumberTheory.XiCuspClarkHeightCriterion
open Complex XiToeplitzHilbertPolyaCriterion

private theorem xi_completed {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    sourceXi s = (1/2)*s*(s-1)*completedRiemannZeta s := by
  rw [completedRiemannZeta_eq]
  unfold sourceXi
  field_simp [h0,sub_ne_zero.mpr h1.symm]
  ring

private theorem xi_right {s : ℂ} (h : 1 ≤ s.re) : sourceXi s ≠ 0 := by
  by_cases h1 : s = 1
  · subst s; norm_num [sourceXi]
  have h0 : s ≠ 0 := by rintro rfl; norm_num at h
  have hz := riemannZeta_ne_zero_of_one_le_re h
  rw [riemannZeta_def_of_ne_zero h0] at hz
  rw [xi_completed h0 h1]
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) h0) (sub_ne_zero.mpr h1))
    (fun hc => hz (by simp [hc]))

/-- Boundary response obtained from the two entire incoming and outgoing amplitudes. -/
def response (L : ℝ) (z : ℂ) : ℂ :=
  let n := exp (I*L*z)*sourceXi (1+I*z)
  let d := sourceXi (1-I*z)
  I*(d-n)/(d+n)

/-- Comparing against i introduces no denominator zeros in the upper half-plane. -/
theorem response_eq_i_iff (L : ℝ) {z : ℂ} (hz : 0 < z.im) :
    response L z = I ↔ sourceXi (1+I*z) = 0 := by
  have hd : sourceXi (1-I*z) ≠ 0 := by
    apply xi_right
    simp [Complex.sub_re,Complex.mul_re]
    linarith
  let n := exp (I*L*z)*sourceXi (1+I*z)
  let d := sourceXi (1-I*z)
  change I*(d-n)/(d+n)=I ↔ _
  constructor
  · intro h
    by_cases hs : d+n=0
    · simp [hs] at h
      exact (I_ne_zero h.symm).elim
    rw [div_eq_iff hs] at h
    have hh : (2*I)*n=0 := by linear_combination -h
    exact (mul_eq_zero.mp ((mul_eq_zero.mp hh).resolve_left (mul_ne_zero two_ne_zero I_ne_zero))).resolve_left (exp_ne_zero _)
  · intro h
    have hn : n=0 := by simp [n,h]
    simp [hn,d,hd]

/-- Exact equivalence with the Mathlib proposition. The remaining height
constraint is an assertion about every complex input in the upper half-plane. -/
theorem riemannHypothesis_iff_clark_height (L : ℝ) :
    RiemannHypothesis ↔ ∀ z : ℂ, 0 < z.im → response L z = I → z.im = 1/2 := by
  constructor
  · intro rh z hz hr
    let s := 1+I*z
    have hs : sourceXi s=0 := (response_eq_i_iff L hz).mp hr
    have hpos : 0 < s.re := by
      by_contra! hc
      have h := xi_right (s:=1-s) (by simp [Complex.sub_re]; linarith)
      exact h ((sourceXi_reflection s).trans hs)
    have h0 : s ≠ 0 := by intro e; rw [e] at hpos; norm_num at hpos
    have h1 : s ≠ 1 := by intro e; rw [e] at hs; norm_num [sourceXi] at hs
    rw [xi_completed h0 h1] at hs
    have hc := (mul_eq_zero.mp hs).resolve_left
      (mul_ne_zero (mul_ne_zero (by norm_num) h0) (sub_ne_zero.mpr h1))
    have hzero : riemannZeta s=0 := by rw [riemannZeta_def_of_ne_zero h0,hc,zero_div]
    have htr : ¬ ∃ n : ℕ, s = -2*(n+1) := by
      rintro ⟨n,hn⟩
      rw [hn] at hpos
      simp [Complex.mul_re] at hpos
      linarith [Nat.cast_nonneg (α:=ℝ) n]
    have h := rh s hzero htr h1
    simp [s,Complex.mul_re] at h
    linarith
  · intro heights s hz ht h1
    have h0 : s ≠ 0 := by rintro rfl; norm_num [riemannZeta_zero] at hz
    have hg : Gammaℝ s ≠ 0 := by
      rintro h
      obtain ⟨n,hn⟩ := Gammaℝ_eq_zero_iff.mp h
      cases n with
      | zero => simp_all
      | succ n =>
        apply ht
        exact ⟨n,by push_cast at hn; linear_combination hn⟩
    have hl : s.re < 1 := by
      by_contra! hh
      exact riemannZeta_ne_zero_of_one_le_re hh hz
    rw [riemannZeta_def_of_ne_zero h0] at hz
    have hxi : sourceXi s=0 := by
      rw [xi_completed h0 h1,(div_eq_zero_iff.mp hz).resolve_right hg,mul_zero]
    let z := (s-1)*(-I)
    have him : z.im=1-s.re := by simp [z,Complex.mul_im]
    have hback : 1+I*z=s := by dsimp [z]; linear_combination -(s-1)*I_mul_I
    have hp : 0 < z.im := by rw [him]; linarith
    have h := heights z hp ((response_eq_i_iff L hp).mpr (hback ▸ hxi))
    rw [him] at h
    linarith
end GRWTSK.NumberTheory.XiCuspClarkHeightCriterion
