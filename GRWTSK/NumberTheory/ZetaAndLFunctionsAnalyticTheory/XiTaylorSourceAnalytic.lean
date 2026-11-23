/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiToeplitzHilbertPolyaCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiOddChiralObstruction
import Mathlib.Analysis.Complex.TaylorSeries
import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas

/-!
# Taylor expansion at the center of the pole-cleared xi function

The Mellin sign on the real critical interval fixes the normalization. Complex
conjugation fixes its normalized Taylor coefficients, and reflection eliminates
all odd derivatives in the entire Taylor expansion.

The conjugation and even-index Taylor argument follows the repository's
`XiTaylorTransportSourceEdition1.lean` (blob
`0d0037b2ee5d16af481772cbdeed2ee05e1ff673`, declarations
`xi_conjugation` through `hasSum_centered_square`). Here those steps
apply directly to `sourceXi` and divide by its actual nonzero center.
The center bound is supplied by the maintained real-axis Mellin proof
via `XiOddChiralObstruction.spectralSource_zero_ne_zero`.
-/

set_option autoImplicit false
noncomputable section

open Complex Filter Set
open scoped ComplexConjugate Topology

namespace GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion

open GRWTSK.NumberTheory.Zeta

private theorem sourceXi_eq_xi : sourceXi = CompletedQuotientSource.xi := by
  funext s
  simp only [sourceXi, CompletedQuotientSource.xi, add_comm]

/-- Nonvanishing of the exact center used to normalize the coefficients. -/
theorem sourceXi_center_ne_zero : sourceXi (1 / 2 : ℂ) ≠ 0 := by
  rw [sourceXi_eq_xi]
  simpa only [CompletedQuotientSource.spectralSource, mul_zero, sub_zero] using
    GRWTSK.NumberTheory.Zeta.XiOddChiralObstruction.spectralSource_zero_ne_zero

private theorem sourceXi_differentiable : Differentiable ℂ sourceXi :=
  sourceXi_eq_xi ▸ CompletedQuotientSource.differentiable_xi

private theorem sourceXi_right (z : ℂ) (hz : 1 < z.re) :
    sourceXi z = (1 / 2) * z * (z - 1) * (riemannZeta z * Gammaℝ z) := by
  have h0 : z ≠ 0 := by rintro rfl; norm_num at hz
  have h1 : z ≠ 1 := by rintro rfl; norm_num at hz
  have hg := Gammaℝ_ne_zero_of_re_pos (lt_trans zero_lt_one hz)
  rw [sourceXi_eq_xi, CompletedQuotientSource.xi_eq_completed z h0 h1,
    riemannZeta_def_of_ne_zero h0, div_mul_cancel₀ _ hg]

private theorem gammaReal_conj (s : ℂ) : Gammaℝ (conj s) = conj (Gammaℝ s) := by
  have hp : (Real.pi : ℂ).arg ≠ Real.pi := by
    simpa [arg_ofReal_of_nonneg Real.pi_pos.le] using Real.pi_ne_zero.symm
  have hpow : (Real.pi : ℂ) ^ (-conj s / 2) = conj ((Real.pi : ℂ) ^ (-s / 2)) := by
    simpa [Complex.conj_ofNat] using cpow_conj (Real.pi : ℂ) (-s / 2) hp
  rw [Gammaℝ_def, Gammaℝ_def, map_mul, hpow]
  congr 1
  simpa [Complex.conj_ofNat] using Gamma_conj (s / 2)

private theorem sourceXi_conjugation : conj ∘ sourceXi ∘ conj = sourceXi := by
  have hf : AnalyticOnNhd ℂ sourceXi univ := fun z _ => sourceXi_differentiable.analyticAt z
  have hg : AnalyticOnNhd ℂ (conj ∘ sourceXi ∘ conj) univ := by
    apply DifferentiableOn.analyticOnNhd _ isOpen_univ
    intro z _
    exact (differentiableAt_conj_conj_iff.mpr
      (sourceXi_differentiable (conj z))).differentiableWithinAt
  have he : EqOn (conj ∘ sourceXi ∘ conj) sourceXi univ := by
    apply hg.eqOn_of_preconnected_of_eventuallyEq hf isPreconnected_univ (mem_univ (2 : ℂ))
    apply eventuallyEq_of_mem ((isOpen_lt continuous_const continuous_re).mem_nhds
      (show 1 < (2 : ℂ).re by norm_num))
    intro z hz
    change conj (sourceXi (conj z)) = sourceXi z
    rw [sourceXi_right (conj z) (by simpa using hz), sourceXi_right z hz, gammaReal_conj,
      riemannZeta_conj]
    simp [Complex.conj_ofNat]
  exact funext fun z => he (mem_univ z)

private theorem iteratedDeriv_conjugate (n : ℕ) (f : ℂ → ℂ) :
    iteratedDeriv n (conj ∘ f ∘ conj) = conj ∘ iteratedDeriv n f ∘ conj := by
  induction n with
  | zero => simp
  | succ n ih => simp only [iteratedDeriv_succ, ih, deriv_conj_conj]

private theorem derivative_center_conj (n : ℕ) :
    conj (iteratedDeriv n sourceXi (1 / 2)) = iteratedDeriv n sourceXi (1 / 2) := by
  have h := congrFun (iteratedDeriv_conjugate n sourceXi) (1 / 2)
  rw [sourceXi_conjugation] at h
  simpa [Complex.conj_ofNat] using h.symm

/-- The complex coefficient normalized by the actual center is real at every degree. -/
theorem normalizedEvenXiTaylorComplex_real (n : ℕ) :
    (normalizedEvenXiTaylorComplex n).im = 0 := by
  have hc : conj (sourceXi (1 / 2)) = sourceXi (1 / 2) := by
    simpa using derivative_center_conj 0
  have h : conj (normalizedEvenXiTaylorComplex n) = normalizedEvenXiTaylorComplex n := by
    simp only [normalizedEvenXiTaylorComplex, map_div₀, map_mul, map_natCast,
      derivative_center_conj, hc]
  have hi := congrArg Complex.im h
  simp only [conj_im] at hi
  linarith

private theorem odd_deriv_zero (n : ℕ) : iteratedDeriv (2 * n + 1) sourceXi (1 / 2) = 0 := by
  have h := congrFun (iteratedDeriv_comp_const_sub (2 * n + 1) sourceXi 1) (1 / 2)
  rw [show (fun z : ℂ => sourceXi (1 - z)) = sourceXi from funext sourceXi_reflection] at h
  have hsign : (-1 : ℂ) ^ (2 * n + 1) = -1 := by rw [pow_add, pow_mul]; norm_num
  rw [show (1 : ℂ) - 1 / 2 = 1 / 2 by norm_num, hsign] at h
  change iteratedDeriv (2 * n + 1) sourceXi (1 / 2) = (-1 : ℂ) * _ at h
  linear_combination (1 / 2 : ℂ) * h

/-- The normalized even Taylor expansion converges to the original height-coordinate value. -/
theorem hasSum_normalizedEvenXiTaylor (z : ℂ) :
    HasSum (fun n : ℕ => (normalizedEvenXiTaylor n : ℂ) * (-(z ^ 2)) ^ n)
      (sourceXiOnLine z / sourceXi (1 / 2)) := by
  let term (n : ℕ) := iteratedDeriv n sourceXi (1 / 2) / (n.factorial : ℂ) * (I * z) ^ n
  have full : HasSum term (sourceXiOnLine z) := by
    refine (Complex.hasSum_taylorSeries_of_entire sourceXi_differentiable
      (1 / 2) (1 / 2 + I * z)).congr_fun ?_
    intro n
    simp only [term, add_sub_cancel_left, smul_eq_mul, div_eq_mul_inv]
    ring
  have inj : Function.Injective (fun n : ℕ => 2 * n) := by intro a b hab; dsimp at hab; omega
  have off (n : ℕ) (hn : n ∉ range (fun k : ℕ => 2 * k)) : term n = 0 := by
    rcases n.even_or_odd with ⟨k, hk⟩ | ⟨k, hk⟩
    · exact (hn ⟨k, by dsimp; omega⟩).elim
    · have he : n = 2 * k + 1 := by omega
      simp only [term, he, odd_deriv_zero, zero_div, zero_mul]
  have hev := (inj.hasSum_iff off).mpr full
  apply (hev.div_const (sourceXi (1 / 2))).congr_fun
  intro n
  have hr : (normalizedEvenXiTaylor n : ℂ) = normalizedEvenXiTaylorComplex n := by
    apply Complex.ext
    · rfl
    · exact (normalizedEvenXiTaylorComplex_real n).symm
  have hsq : (I * z) ^ 2 = -(z ^ 2) := by rw [mul_pow, I_sq, neg_one_mul]
  simp only [Function.comp_apply, term, hr, normalizedEvenXiTaylorComplex, pow_mul, hsq]
  ring

/-- All three source-fidelity obligations in the Toeplitz criterion hold for the actual xi. -/
theorem xiTaylorSourceFaithful : XiTaylorSourceFaithful :=
  ⟨sourceXi_center_ne_zero, normalizedEvenXiTaylorComplex_real, hasSum_normalizedEvenXiTaylor⟩

end GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion
