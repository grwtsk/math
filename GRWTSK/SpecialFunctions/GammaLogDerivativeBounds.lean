/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.SpecialFunctions.ReciprocalGammaStrip
import GRWTSK.FunctionsOfAComplexVariable.NormalizedDiskLogarithm
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
import Mathlib.Tactic

/-!
# A full complex-norm bound for the archimedean logarithmic derivative

MSC2020: 33B15, 30C80, 11M41.
The Euler-integral ceiling and reflection-derived reciprocal bound are for the
actual Gamma function. A constructed normalized logarithm on a disk converts
those amplitude estimates to a linear derivative bound. Three finite digamma
recurrences return to the original strip. No infinite digamma series, Stirling
remainder, selected compact maximum, or derivative-bound supplier is assumed.

The consumer is the completed Dirichlet horizontal-boundary theorem. This is
an upper norm estimate, not centered-digamma positivity or its zero-residual
limit, and not Weil positivity. All real poles are excluded before division.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Refs math#1801.
Canonical inputs retain their evidence status. Individual provenance and the
complete analytical argument are adjacent. Mathlib authorship is unchanged.
-/

set_option autoImplicit false
noncomputable section
open Set Metric Filter
open scoped Topology BigOperators
open GRWTSK.SpecialFunctions.ComplexGammaGrowth
open GRWTSK.SpecialFunctions.ReciprocalGammaStrip
open GRWTSK.Analysis.ComplexAnalysis.NormalizedDiskLogarithm
open GRWTSK.Analysis.ComplexAnalysis.NormalizedLogDerivativeBound

namespace GRWTSK.SpecialFunctions.GammaLogDerivativeBounds

private theorem avoids_neg_nat_of_re_pos {z : ℂ} (hz : 0 < z.re) (m : ℕ) :
    z ≠ -(m : ℂ) := by
  intro he
  have hr := congrArg Complex.re he
  simp only [Complex.neg_re, Complex.natCast_re] at hr
  linarith [Nat.cast_nonneg (α := ℝ) m]

private theorem avoids_neg_nat_of_im_ne {z : ℂ} (hz : z.im ≠ 0) (m : ℕ) :
    z ≠ -(m : ℂ) := by
  intro he
  apply hz
  simpa only [Complex.neg_im, Complex.natCast_im, neg_zero] using congrArg Complex.im he

private theorem norm_Gamma_le_add_one {z : ℂ} (hz : 1 ≤ z.re) :
    ‖Complex.Gamma z‖ ≤ ‖Complex.Gamma (z + 1)‖ := by
  have hz0 : z ≠ 0 := by intro h; simp [h] at hz
  have hn : 1 ≤ ‖z‖ := hz.trans ((le_abs_self z.re).trans (Complex.abs_re_le_norm z))
  rw [Complex.Gamma_add_one z hz0, norm_mul]
  exact le_mul_of_one_le_left (norm_nonneg _) hn

/-- An actual nonzero amplitude anchor at the same height as the observation point.
The reciprocal estimate is source-derived; the caller supplies no Gamma floor. -/
theorem gamma_four_anchor (y : ℝ) (hy : 1 ≤ |y|) :
    1 / ((2 * Real.exp (4 * Real.log 8) / Real.pi) * Real.exp (Real.pi * |y|)) ≤
      ‖Complex.Gamma ((4 : ℂ) + Complex.I * (y : ℂ))‖ := by
  let w : ℂ := 1 + Complex.I * (y : ℂ)
  let A : ℝ := 2 * Real.exp (4 * Real.log 8) / Real.pi
  have hA : 0 < A := by dsimp [A]; positivity
  have hden : 0 < A * Real.exp (Real.pi * |y|) := mul_pos hA (Real.exp_pos _)
  have hG : Complex.Gamma w ≠ 0 := Complex.Gamma_ne_zero_of_re_pos (by simp [w])
  have hinv : ‖(Complex.Gamma w)⁻¹‖ ≤ A * Real.exp (Real.pi * |y|) := by
    simpa only [w, A, Complex.add_im, Complex.mul_im, Complex.I_re, Complex.I_im,
      Complex.ofReal_re, Complex.ofReal_im, Complex.one_im, zero_mul, one_mul,
      add_zero, zero_add] using
      norm_inv_Gamma_le_strip (z := w) (by simp [w]) (by simp [w]) (by simpa [w] using hy)
  have hprod : 1 ≤ ‖Complex.Gamma w‖ * (A * Real.exp (Real.pi * |y|)) := by
    calc
      1 = ‖Complex.Gamma w‖ * ‖(Complex.Gamma w)⁻¹‖ := by
        rw [norm_inv, mul_inv_cancel₀ (norm_ne_zero_iff.mpr hG)]
      _ ≤ _ := mul_le_mul_of_nonneg_left hinv (norm_nonneg _)
  have hfloor : 1 / (A * Real.exp (Real.pi * |y|)) ≤ ‖Complex.Gamma w‖ :=
    (div_le_iff₀ hden).mpr hprod
  apply hfloor.trans
  calc
    _ ≤ ‖Complex.Gamma (w + 1)‖ := norm_Gamma_le_add_one (by simp [w])
    _ ≤ ‖Complex.Gamma ((w + 1) + 1)‖ := norm_Gamma_le_add_one (by simp [w])
    _ ≤ ‖Complex.Gamma (((w + 1) + 1) + 1)‖ := norm_Gamma_le_add_one (by simp [w])
    _ = _ := by congr 2; dsimp [w]; ring

/-- Fixed amplitude costs from the canonical Euler-integral and reciprocal bounds. -/
def gammaLogBudget : ℝ :=
  1 + |Real.log (2 * Real.exp (7 * Real.log 14))| +
    |Real.log (2 * Real.exp (4 * Real.log 8) / Real.pi)|

theorem gammaLogBudget_pos : 0 < gammaLogBudget := by
  unfold gammaLogBudget
  linarith [abs_nonneg (Real.log (2 * Real.exp (7 * Real.log 14))),
    abs_nonneg (Real.log (2 * Real.exp (4 * Real.log 8) / Real.pi))]

/-- A normalized logarithm on the actual translated Gamma disk supplies the
whole complex derivative, including its imaginary part. Both height signs occur. -/
theorem norm_digamma_le_right_band {z : ℂ}
    (hl : 2 ≤ z.re) (hu : z.re ≤ 6) (hi : 1 ≤ |z.im|) :
    ‖Complex.digamma z‖ ≤ 80 * (gammaLogBudget + Real.pi * |z.im|) := by
  let c : ℂ := 4 + Complex.I * (z.im : ℂ)
  let g : ℂ → ℂ := fun u => Complex.Gamma (c + u)
  let x : ℂ := z - c
  let M : ℝ := 2 * Real.exp (7 * Real.log 14)
  let A : ℝ := 2 * Real.exp (4 * Real.log 8) / Real.pi
  let eta : ℝ := 1 / (A * Real.exp (Real.pi * |z.im|))
  let H : ℝ := gammaLogBudget + Real.pi * |z.im|
  have hM : 0 < M := by dsimp [M]; positivity
  have hA : 0 < A := by dsimp [A]; positivity
  have heta : 0 < eta := by dsimp [eta]; positivity
  have hH : 0 < H := add_pos_of_pos_of_nonneg gammaLogBudget_pos
    (mul_nonneg Real.pi_pos.le (abs_nonneg _))
  have geometry (u : ℂ) (hu : u ∈ ball 0 (11 / 4 : ℝ)) :
      1 ≤ (c + u).re ∧ (c + u).re ≤ 7 := by
    have hn : ‖u‖ < 11 / 4 := by simpa only [mem_ball, dist_zero_right] using hu
    have hr := abs_le.mp (Complex.abs_re_le_norm u)
    have hc : c.re = 4 := by simp [c]
    rw [Complex.add_re, hc]
    constructor <;> linarith
  have hg : DifferentiableOn ℂ g (ball 0 (11 / 4 : ℝ)) := by
    intro u hu
    have hp : 0 < (c + u).re := by linarith [(geometry u hu).1]
    exact ((Complex.differentiableAt_Gamma _ (avoids_neg_nat_of_re_pos hp)).comp u
      (differentiableAt_const.add differentiableAt_id)).differentiableWithinAt
  have hn : ∀ u ∈ ball 0 (11 / 4 : ℝ), g u ≠ 0 := by
    intro u hu
    exact Complex.Gamma_ne_zero_of_re_pos (by linarith [(geometry u hu).1])
  have hb : ∀ u ∈ ball 0 (11 / 4 : ℝ), ‖g u‖ ≤ M := by
    intro u hu
    simpa only [M, show (2 : ℝ) * 7 = 14 by norm_num] using
      norm_Gamma_le_envelope (R := 7) (geometry u hu).1 (geometry u hu).2
  have hf : eta ≤ ‖g 0‖ := by
    simpa [eta, A, g, c] using gamma_four_anchor z.im hi
  obtain ⟨L, hL0, hL, hdL, _heL, hrL⟩ := exists_normalized_log_bounded g (11 / 4)
    M eta (by norm_num) hM heta hg hn hb hf
  have hratio : M / eta = M * A * Real.exp (Real.pi * |z.im|) := by
    dsimp [eta]
    simp only [one_div, div_eq_mul_inv, inv_inv]
    ring
  have hcost : Real.log (M / eta) ≤ H := by
    rw [hratio, Real.log_mul (mul_ne_zero hM.ne' hA.ne') (Real.exp_ne_zero _),
      Real.log_mul hM.ne' hA.ne', Real.log_exp]
    change Real.log M + Real.log A + Real.pi * |z.im| ≤
      (1 + |Real.log M| + |Real.log A|) + Real.pi * |z.im|
    linarith [le_abs_self (Real.log M), le_abs_self (Real.log A)]
  have hx : c + x = z := by dsimp [x]; ring
  have hxN : ‖x‖ ≤ 9 / 4 := by
    have he : x = ((z.re - 4 : ℝ) : ℂ) := by
      apply Complex.ext <;> simp [x, c]
    rw [he, Complex.norm_real, Real.norm_eq_abs]
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  have hxmem : x ∈ ball (0 : ℂ) (11 / 4 : ℝ) := by
    rw [mem_ball, dist_zero_right]
    linarith
  have hreturn : logDeriv g x = Complex.digamma z := by
    have hlin : HasDerivAt (fun u : ℂ => c + u) 1 x := (hasDerivAt_id x).const_add c
    have hp : ∀ m : ℕ, c + x ≠ -(m : ℂ) := by
      rw [hx]
      exact avoids_neg_nat_of_re_pos (by linarith)
    simpa only [g, hx, one_mul] using hlin.logDeriv_Gamma hp
  rw [← hreturn, ← (hdL x hxmem).deriv]
  exact norm_deriv_log_le_eighty L H hH hL hL0
    (fun u hu => (hrL u hu).trans hcost) x hxN

/-- A single constant for the full digamma norm on the unshifted parity strip. -/
def digammaStripConstant : ℝ := 80 * (gammaLogBudget + Real.pi) + 3

theorem digammaStripConstant_pos : 0 < digammaStripConstant := by
  unfold digammaStripConstant
  have hB := gammaLogBudget_pos
  have hpi := Real.pi_pos
  positivity

/-- Three exact source recurrences, each paid by the same imaginary-part gap.
The shift is finite; no unknown limit at infinity is discarded. -/
theorem norm_digamma_le_horizontal_strip {z : ℂ}
    (hl : -(1 / 2 : ℝ) ≤ z.re) (hu : z.re ≤ 3 / 2) (hi : 1 ≤ |z.im|) :
    ‖Complex.digamma z‖ ≤ digammaStripConstant * (1 + |z.im|) := by
  have him : z.im ≠ 0 := by intro h; simp [h] at hi
  have hrec := Complex.digamma_apply_add_nat (avoids_neg_nat_of_im_ne him) 3
  have hsum : ‖∑ k ∈ Finset.range 3, (z + (k : ℂ))⁻¹‖ ≤ 3 := by
    calc
      _ ≤ ∑ k ∈ Finset.range 3, ‖(z + (k : ℂ))⁻¹‖ := norm_sum_le _ _
      _ ≤ ∑ _k ∈ Finset.range 3, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro k _hk
        have hnorm : 1 ≤ ‖z + (k : ℂ)‖ := hi.trans (by
          simpa using Complex.abs_im_le_norm (z + (k : ℂ)))
        rw [norm_inv, ← one_div]
        exact (div_le_one (lt_of_lt_of_le (by norm_num) hnorm)).mpr hnorm
      _ = 3 := by norm_num
  have hshift : ‖Complex.digamma (z + 3)‖ ≤
      80 * (gammaLogBudget + Real.pi * |z.im|) := by
    simpa using norm_digamma_le_right_band (z := z + 3)
      (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
      (by simp only [Complex.add_re, Complex.ofNat_re]; linarith) (by simpa using hi)
  have he : Complex.digamma z = Complex.digamma (z + 3) -
      ∑ k ∈ Finset.range 3, (z + (k : ℂ))⁻¹ := by
    exact eq_sub_iff_add_eq.mpr (by simpa using hrec.symm)
  rw [he]
  calc
    _ ≤ ‖Complex.digamma (z + 3)‖ + ‖∑ k ∈ Finset.range 3, (z + (k : ℂ))⁻¹‖ :=
      norm_sub_le _ _
    _ ≤ 80 * (gammaLogBudget + Real.pi * |z.im|) + 3 := add_le_add hshift hsum
    _ ≤ digammaStripConstant * (1 + |z.im|) := by
      unfold digammaStripConstant
      have hB := gammaLogBudget_pos
      nlinarith [mul_nonneg (show 0 ≤ 80 * gammaLogBudget + 3 by positivity)
        (abs_nonneg z.im), Real.pi_pos]

/-- Regularity of the actual real archimedean factor, away from all real poles. -/
theorem differentiableAt_GammaR_of_nonreal {s : ℂ} (hi : s.im ≠ 0) :
    DifferentiableAt ℂ Complex.Gammaℝ s := by
  have hh : (s / 2 : ℂ).im ≠ 0 := by simpa using div_ne_zero hi (by norm_num : (2 : ℝ) ≠ 0)
  have hp : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_pos.ne'
  change DifferentiableAt ℂ (fun w => (Real.pi : ℂ) ^ (-w / 2) * Complex.Gamma (w / 2)) s
  exact (((differentiableAt_id.neg).div_const (2 : ℂ)).const_cpow (.inl hp)).mul
    ((Complex.differentiableAt_Gamma _ (avoids_neg_nat_of_im_ne hh)).comp s
      (differentiableAt_id.div_const (2 : ℂ)))

/-- Exact chain factor and pi normalization, not only the Gamma divisor. -/
theorem logDeriv_GammaR_of_nonreal {s : ℂ} (hi : s.im ≠ 0) :
    logDeriv Complex.Gammaℝ s =
      (Complex.digamma (s / 2) - Complex.log (Real.pi : ℂ)) / 2 := by
  have hh : (s / 2 : ℂ).im ≠ 0 := by simpa using div_ne_zero hi (by norm_num : (2 : ℝ) ≠ 0)
  have hp : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_pos.ne'
  have hpow := (((hasDerivAt_id s).neg).div_const (2 : ℂ)).const_cpow (c := (Real.pi : ℂ)) (.inl hp)
  have hpn : (Real.pi : ℂ) ^ (-s / 2) ≠ 0 := Complex.cpow_ne_zero_iff.mpr (.inl hp)
  have hhalf := (hasDerivAt_id s).div_const (2 : ℂ)
  have havoid := avoids_neg_nat_of_im_ne hh
  have hdiff := (Complex.differentiableAt_Gamma _ havoid).comp s hhalf.differentiableAt
  change logDeriv (fun w => (Real.pi : ℂ) ^ (-w / 2) * Complex.Gamma (w / 2)) s = _
  rw [logDeriv_fun_mul s hpn (Complex.Gamma_ne_zero havoid) hpow.differentiableAt hdiff,
    hhalf.logDeriv_Gamma havoid, logDeriv_apply, hpow.deriv]
  field_simp [hpn] <;> ring

/-- Universal parity-independent coefficient. It contains no conductor or height. -/
def gammaRLogDerivativeConstant : ℝ :=
  digammaStripConstant + ‖Complex.log (Real.pi : ℂ)‖

theorem gammaRLogDerivativeConstant_pos : 0 < gammaRLogDerivativeConstant :=
  add_pos_of_pos_of_nonneg digammaStripConstant_pos (norm_nonneg _)

/-- This one strip contains both genuine parity arguments s and s+1.
The estimate controls the full complex norm, for every height of either sign. -/
theorem norm_logDeriv_GammaR_le_horizontal_strip {s : ℂ}
    (hl : -1 ≤ s.re) (hu : s.re ≤ 3) (hi : 2 ≤ |s.im|) :
    ‖logDeriv Complex.Gammaℝ s‖ ≤ gammaRLogDerivativeConstant * (1 + |s.im|) := by
  have him : s.im ≠ 0 := by intro h; simp [h] at hi
  have hre : (s / 2 : ℂ).re = s.re / 2 := by simp
  have habs : |(s / 2 : ℂ).im| = |s.im| / 2 := by simp [abs_div]
  have hb := norm_digamma_le_horizontal_strip (z := s / 2)
    (by rw [hre]; linarith) (by rw [hre]; linarith) (by rw [habs]; linarith)
  rw [habs] at hb
  have hb' : ‖Complex.digamma (s / 2)‖ ≤ digammaStripConstant * (1 + |s.im|) :=
    hb.trans (mul_le_mul_of_nonneg_left (by linarith [abs_nonneg s.im]) digammaStripConstant_pos.le)
  rw [logDeriv_GammaR_of_nonreal him, norm_div, show ‖(2 : ℂ)‖ = (2 : ℝ) by norm_num]
  calc
    _ ≤ (digammaStripConstant * (1 + |s.im|) + ‖Complex.log (Real.pi : ℂ)‖) / 2 :=
      div_le_div_of_nonneg_right ((norm_sub_le _ _).trans (add_le_add_right hb' _)) (by norm_num)
    _ ≤ digammaStripConstant * (1 + |s.im|) + ‖Complex.log (Real.pi : ℂ)‖ := by
      have hp : 0 ≤ digammaStripConstant * (1 + |s.im|) + ‖Complex.log (Real.pi : ℂ)‖ :=
        add_nonneg (mul_nonneg digammaStripConstant_pos.le (by positivity)) (norm_nonneg _)
      linarith
    _ ≤ gammaRLogDerivativeConstant * (1 + |s.im|) := by
      unfold gammaRLogDerivativeConstant
      nlinarith [mul_nonneg (norm_nonneg (Complex.log (Real.pi : ℂ))) (abs_nonneg s.im)]

end GRWTSK.SpecialFunctions.GammaLogDerivativeBounds
