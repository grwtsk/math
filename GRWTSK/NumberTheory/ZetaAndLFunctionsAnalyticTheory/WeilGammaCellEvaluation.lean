/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationCellEvaluation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaCompactCutoffs
import GRWTSK.MeasureAndIntegration.ExponentialBumpCells

/-!
# Finite cell enclosures for the original gamma correction

MSC2020: 11M26, 11M41, 65D30, 65G20.
Consumer: WeilExponentialBumpGammaEvaluation. Keep the actual translation
energy and parityKernel. Correlation enclosures include BETWEEN-lag variation.
The kernel is decreasing; finite binomial endpoint bounds pay its uncertainty.
Positive denominator floors follow from positive lag and positive order,
not an oracle for a derivative or an integral. No sign of the complete Weil form is assumed.

SOURCE_PROOF_CANDIDATE. Lean parsing, elaboration, exact types, builds,
kernel replay, transitive axiom audit, certified source computation and
independent review NOT_RUN. Novelty UNASSESSED. See the adjacent provenance.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaCells

open SourcePrimeCorrelation CharacterWindow CorrelationCells
open GRWTSK.MeasureAndIntegration.ExponentialBumpCells

/-- WGC-1. Exact identity on the original whole line, with L2 admission. -/
theorem translationEnergy_eq_energy_sub_correlation
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    (∫ t : ℝ, ‖f (t + r) - f t‖ ^ 2) = 2 * energy f - 2 * (correlation f r).re := by
  have hp (z w : ℂ) : ‖w - z‖ ^ 2 = ‖w‖ ^ 2 + ‖z‖ ^ 2 - 2 * (conj z * w).re := by
    simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply,
      Complex.sub_re, Complex.sub_im, Complex.mul_re, Complex.conj_re, Complex.conj_im]
    ring
  have hs := hf.integrable_norm_pow (p := 2) (by norm_num)
  have ht : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hs
  have hc := integrable_correlation_integrand hf r
  simp_rw [hp]
  rw [integral_sub (ht.add hs) (hc.re.const_mul 2), integral_add ht hs,
    integral_const_mul, integral_re hc,
    integral_add_right_eq_self (fun t : ℝ => ‖f t‖ ^ 2) r]
  change energy f + energy f - 2 * (correlation f r).re = _
  ring

/-- WGC-2. Exact nonnegativity clips a possibly negative sampled lower bound. -/
theorem translationEnergy_enclosure {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (r μ ε₀ ε : ℝ) (z : ℂ)
    (hE : |energy f - μ| ≤ ε₀) (hC : ‖correlation f r - z‖ ≤ ε) :
    max 0 (2 * (μ - z.re) - 2 * (ε₀ + ε)) ≤ (∫ t : ℝ, ‖f (t + r) - f t‖ ^ 2) ∧
      (∫ t : ℝ, ‖f (t + r) - f t‖ ^ 2) ≤ max 0 (2 * (μ - z.re) + 2 * (ε₀ + ε)) := by
  have hR : |(correlation f r).re - z.re| ≤ ε := by
    simpa only [Complex.sub_re] using (Complex.abs_re_le_norm (correlation f r - z)).trans hC
  have hnn : 0 ≤ (∫ t : ℝ, ‖f (t + r) - f t‖ ^ 2) :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hid := translationEnergy_eq_energy_sub_correlation hf r
  have he := abs_le.mp hE
  have hr := abs_le.mp hR
  constructor
  · exact max_le hnn (by linarith [he.1, he.2, hr.1, hr.2])
  · exact (show (∫ t : ℝ, ‖f (t + r) - f t‖ ^ 2) ≤
        2 * (μ - z.re) + 2 * (ε₀ + ε) by linarith [he.1, he.2, hr.1, hr.2]).trans
      (le_max_right _ _)

/-- WGC-3. Both source parities are covered, and in fact every natural a. -/
theorem parityKernel_antitone (a : ℕ) {r s : ℝ} (hr : 0 < r) (hrs : r ≤ s) :
    parityKernel a s ≤ parityKernel a r := by
  have hs : 0 < s := hr.trans_le hrs
  have ha : 0 ≤ (a : ℝ) + (1 / 2 : ℝ) := by positivity
  have hn : Real.exp (-((a : ℝ) + (1 / 2 : ℝ)) * s) ≤
      Real.exp (-((a : ℝ) + (1 / 2 : ℝ)) * r) := Real.exp_le_exp.mpr (by nlinarith)
  have hd : 1 - Real.exp (-2 * r) ≤ 1 - Real.exp (-2 * s) := by
    have h := Real.exp_le_exp.mpr (show -2 * s ≤ -2 * r by linarith)
    linarith
  have hdr : 0 < 1 - Real.exp (-2 * r) :=
    sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith))
  have hds : 0 < 1 - Real.exp (-2 * s) :=
    sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith))
  unfold parityKernel
  apply (div_le_div_iff₀ hds hdr).mpr
  exact (mul_le_mul_of_nonneg_right hn hdr.le).trans
    (mul_le_mul_of_nonneg_left hd (Real.exp_pos _).le)

/-- Lower endpoint-value enclosure, finite rational arithmetic for rational r. -/
def kernelBinomialLower (a : ℕ) (r : ℝ) (n : ℕ) : ℝ :=
  expNegBinomialLower (((a : ℝ) + (1 / 2 : ℝ)) * r) n /
    (1 - expNegBinomialLower (2 * r) n)

/-- The denominator is proved positive for positive lag and positive order. -/
def kernelBinomialUpper (a : ℕ) (r : ℝ) (n : ℕ) : ℝ :=
  expNegBinomialUpper (((a : ℝ) + (1 / 2 : ℝ)) * r) n /
    (1 - expNegBinomialUpper (2 * r) n)

private theorem expNegBinomialUpper_lt_one {y : ℝ} (hy : 0 < y) {n : ℕ}
    (hn : 0 < n) : expNegBinomialUpper y n < 1 := by
  cases n with
  | zero => simp at hn
  | succ n =>
    have hnR : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
    have hx : 0 < y / ((n + 1 : ℕ) : ℝ) := div_pos hy hnR
    have hd : 0 < 1 + y / ((n + 1 : ℕ) : ℝ) := by linarith
    have hb : 0 ≤ (1 + y / ((n + 1 : ℕ) : ℝ))⁻¹ := inv_nonneg.mpr hd.le
    have hb1 : (1 + y / ((n + 1 : ℕ) : ℝ))⁻¹ < 1 := by
      rw [← one_div]
      exact (div_lt_one hd).mpr (by linarith)
    have hp : ((1 + y / ((n + 1 : ℕ) : ℝ))⁻¹) ^ n ≤ 1 :=
      pow_le_one₀ hb hb1.le
    unfold expNegBinomialUpper
    rw [pow_succ]
    exact (mul_le_mul_of_nonneg_right hp hb).trans_lt (by simpa only [one_mul] using hb1)

/-- WGC-4. Derive kernel coefficients from finite binomial data, not exact exp samples. -/
theorem kernelBinomial_enclosure (a : ℕ) {r : ℝ} (hr : 0 < r) {n : ℕ}
    (hn : 0 < n) (hnA : ((a : ℝ) + (1 / 2 : ℝ)) * r ≤ (n : ℝ))
    (hnD : 2 * r ≤ (n : ℝ)) :
    0 ≤ kernelBinomialLower a r n ∧
      kernelBinomialLower a r n ≤ parityKernel a r ∧
      parityKernel a r ≤ kernelBinomialUpper a r n := by
  have hA : 0 ≤ ((a : ℝ) + (1 / 2 : ℝ)) * r := by positivity
  have hD : 0 ≤ 2 * r := by positivity
  have hnum := expNegBinomial_enclosure hA hn hnA
  have hden := expNegBinomial_enclosure hD hn hnD
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
  have hln : 0 ≤ expNegBinomialLower (((a : ℝ) + (1 / 2 : ℝ)) * r) n := by
    unfold expNegBinomialLower
    exact pow_nonneg (sub_nonneg.mpr ((div_le_one hnR).mpr hnA)) n
  have hun : 0 ≤ expNegBinomialUpper (((a : ℝ) + (1 / 2 : ℝ)) * r) n :=
    (Real.exp_pos _).le.trans hnum.2
  have hd : 0 < 1 - Real.exp (-(2 * r)) :=
    sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith))
  have hdl : 0 < 1 - expNegBinomialLower (2 * r) n := by linarith [hden.1]
  have hdu : 0 < 1 - expNegBinomialUpper (2 * r) n :=
    sub_pos.mpr (expNegBinomialUpper_lt_one (by positivity : 0 < 2 * r) hn)
  have heq : parityKernel a r =
      Real.exp (-(((a : ℝ) + (1 / 2 : ℝ)) * r)) / (1 - Real.exp (-(2 * r))) := by
    simp only [parityKernel, neg_mul]
  rw [heq]
  refine ⟨div_nonneg hln hdl.le, ?_, ?_⟩
  · unfold kernelBinomialLower
    apply (div_le_div_iff₀ hdl hd).mpr
    exact (mul_le_mul_of_nonneg_left (by linarith [hden.1] :
      1 - Real.exp (-(2 * r)) ≤ 1 - expNegBinomialLower (2 * r) n) hln).trans
      (mul_le_mul_of_nonneg_right hnum.1 hdl.le)
  · unfold kernelBinomialUpper
    apply (div_le_div_iff₀ hd hdu).mpr
    exact (mul_le_mul_of_nonneg_right hnum.2 hdu.le).trans
      (mul_le_mul_of_nonneg_left (by linarith [hden.2] :
        1 - expNegBinomialUpper (2 * r) n ≤ 1 - Real.exp (-(2 * r))) hun)

/-- WGC-5. On a positive lag cell the LOWER kernel is taken at the RIGHT endpoint. -/
theorem kernelBinomial_cell_enclosure (a : ℕ) {l u r : ℝ}
    (hl : 0 < l) (hlu : l ≤ u) (hr : r ∈ Icc l u) {n : ℕ}
    (hn : 0 < n) (hnA : ((a : ℝ) + (1 / 2 : ℝ)) * u ≤ (n : ℝ))
    (hnD : 2 * u ≤ (n : ℝ)) :
    0 ≤ kernelBinomialLower a u n ∧
      kernelBinomialLower a u n ≤ parityKernel a r ∧
      parityKernel a r ≤ kernelBinomialUpper a l n := by
  have ha : 0 ≤ (a : ℝ) + (1 / 2 : ℝ) := by positivity
  have hleft := kernelBinomial_enclosure a hl hn
    ((mul_le_mul_of_nonneg_left hlu ha).trans hnA) (by linarith)
  have hright := kernelBinomial_enclosure a (hl.trans_le hlu) hn hnA hnD
  exact ⟨hright.1,
    hright.2.1.trans (parityKernel_antitone a (hl.trans_le hr.1) hr.2),
    (parityKernel_antitone a hl hr.1).trans hleft.2.2⟩

/-- WGC-6. Only the translation energy is clipped, never the signed arithmetic form. -/
theorem gammaCorrectionDensity_enclosure {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (a : ℕ) (r μ ε₀ ε : ℝ) (z : ℂ) (kl ku : ℝ)
    (hE : |energy f - μ| ≤ ε₀) (hC : ‖correlation f r - z‖ ≤ ε)
    (hkl : 0 ≤ kl) (hlo : kl ≤ parityKernel a r) (hup : parityKernel a r ≤ ku) :
    kl * max 0 (2 * (μ - z.re) - 2 * (ε₀ + ε)) ≤ gammaCorrectionDensity a f r ∧
      gammaCorrectionDensity a f r ≤ ku * max 0 (2 * (μ - z.re) + 2 * (ε₀ + ε)) := by
  have hs := translationEnergy_enclosure hf r μ ε₀ ε z hE hC
  have hk := hkl.trans hlo
  have hku := hk.trans hup
  have hnn : 0 ≤ (∫ t : ℝ, ‖f (t + r) - f t‖ ^ 2) :=
    integral_nonneg (fun _ => sq_nonneg _)
  exact ⟨mul_le_mul hlo hs.1 (le_max_left _ _) hk,
    mul_le_mul hup hs.2 hnn hku⟩

/-- Adjacent, oriented lag rectangles. Geometry is required by the theorem. -/
def lagCellSum (y v : ℕ → ℝ) (M : ℕ) : ℝ :=
  ∑ j ∈ Finset.range M, v j * (y (j + 1) - y j)

/-- WGC-7. Integrate whole-cell bounds, retaining the original gamma-domain condition. -/
theorem gammaIntegral_enclosure (a : ℕ) (f : ℝ → ℂ)
    (hi : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0))
    (eta R : ℝ) (y lo up : ℕ → ℝ) (M : ℕ)
    (hy0 : y 0 = eta) (hyM : y M = R)
    (hgeom : ∀ j < M, 0 < y j ∧ y j ≤ y (j + 1))
    (hcell : ∀ j < M, ∀ r ∈ Icc (y j) (y (j + 1)),
      lo j ≤ gammaCorrectionDensity a f r ∧ gammaCorrectionDensity a f r ≤ up j) :
    lagCellSum y lo M ≤ (∫ r in eta..R, gammaCorrectionDensity a f r) ∧
      (∫ r in eta..R, gammaCorrectionDensity a f r) ≤ lagCellSum y up M := by
  have hij (j : ℕ) (hj : j < M) :
      IntervalIntegrable (gammaCorrectionDensity a f) volume (y j) (y (j + 1)) := by
    apply (intervalIntegrable_iff_integrableOn_Ioc_of_le (hgeom j hj).2).mpr
    exact hi.mono_set (fun r hr => (hgeom j hj).1.trans hr.1)
  have hsum := intervalIntegral.sum_integral_adjacent_intervals (a := y) (n := M) hij
  rw [hy0, hyM] at hsum
  unfold lagCellSum
  constructor
  · rw [← hsum]
    apply Finset.sum_le_sum
    intro j hj
    have hj' := Finset.mem_range.mp hj
    have h := intervalIntegral.integral_mono_on (hgeom j hj').2
      (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => lo j) volume _ _)
      (hij j hj') (fun r hr => (hcell j hj' r hr).1)
    simpa only [intervalIntegral.integral_const, smul_eq_mul, mul_comm] using h
  · rw [← hsum]
    apply Finset.sum_le_sum
    intro j hj
    have hj' := Finset.mem_range.mp hj
    have h := intervalIntegral.integral_mono_on (hgeom j hj').2 (hij j hj')
      (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => up j) volume _ _)
      (fun r hr => (hcell j hj' r hr).2)
    simpa only [intervalIntegral.integral_const, smul_eq_mul, mul_comm] using h

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaCells
