/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip
import GRWTSK.SpecialFunctions.ReciprocalGammaStrip
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib.NumberTheory.DirichletCharacter.Bounds

/-!
# Source-derived Dirichlet bounds on the fixed central strip

MSC2020: 11M41, 11M06, 44A15. The literal modified Hurwitz kernels in the
pinned continuation have convergent Mellin integrals at every exponent.
Two endpoint norm integrals bound the completed functions uniformly in height.
The finite residue-class sum preserves the source normalization. Both even
pole terms and the odd contribution are retained before taking norms.

For -1<=Re(s)<=2 and |Im(s)|>=2, the actual LFunction is bounded by a
source-defined finite constant times exp(pi*|Im(s)|/2). No strip-growth,
zero-counting or RH/GRH hypothesis is assumed. This is an upper norm bound,
not a Weil sign result. Conductor-one zeta is explicitly specialized below.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Coordination:
math#1801. Exact pinned primary inputs and individual records are adjacent.
-/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory Finset HurwitzZeta
open GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip
open GRWTSK.SpecialFunctions.ComplexGammaGrowth
open GRWTSK.SpecialFunctions.ReciprocalGammaStrip

namespace GRWTSK.NumberTheory.DirichletStripBounds

/-- Actual endpoint kernel integrals, plus both even polar corrections. -/
def hurwitzStripMass (a : UnitAddCircle) : ℝ :=
  stripMass (hurwitzEvenFEPair a).f_modif (-1) 2 +
    stripMass (hurwitzOddFEPair a).f_modif (-1) 2 + 2

/-- Nonnegative budget; endpoint convergence is derived by the FE-pair theorem. -/
theorem hurwitzStripMass_nonneg (a : UnitAddCircle) : 0 ≤ hurwitzStripMass a := by
  unfold hurwitzStripMass
  linarith [stripMass_nonneg (hurwitzEvenFEPair a).f_modif (-1) 2,
    stripMass_nonneg (hurwitzOddFEPair a).f_modif (-1) 2]

/-- The two genuine completed Hurwitz contributions are bounded uniformly in height. -/
theorem norm_completedHurwitz_pair_le (a : UnitAddCircle) {s : ℂ}
    (hl : -1 ≤ s.re) (hu : s.re ≤ 2) (hi : 2 ≤ |s.im|) :
    ‖completedHurwitzZetaEven a s‖ + ‖completedHurwitzZetaOdd a s‖ ≤
      hurwitzStripMass a := by
  classical
  have htwo : ‖(2 : ℂ)‖ = (2 : ℝ) := by norm_num
  have hsRe : (s / 2 : ℂ).re = s.re / 2 := by simp
  have hoRe : ((s + 1) / 2 : ℂ).re = (s.re + 1) / 2 := by simp
  have he0 : ‖completedHurwitzZetaEven₀ a s‖ ≤
      stripMass (hurwitzEvenFEPair a).f_modif (-1) 2 := by
    have h := norm_Lambda0_le_stripMass (hurwitzEvenFEPair a)
      (s := s / 2) (a := -1) (b := 2)
      (by rw [hsRe]; linarith) (by rw [hsRe]; linarith)
    rw [completedHurwitzZetaEven₀, norm_div, htwo]
    linarith [stripMass_nonneg (hurwitzEvenFEPair a).f_modif (-1) 2]
  have hoddLambda (w : ℂ) : (hurwitzOddFEPair a).Λ w = (hurwitzOddFEPair a).Λ₀ w := by
    simp only [WeakFEPair.Λ,
      show (hurwitzOddFEPair a).f₀ = (0 : ℂ) from rfl,
      show (hurwitzOddFEPair a).g₀ = (0 : ℂ) from rfl, smul_zero, sub_zero]
  have ho : ‖completedHurwitzZetaOdd a s‖ ≤
      stripMass (hurwitzOddFEPair a).f_modif (-1) 2 := by
    have h := norm_Lambda0_le_stripMass (hurwitzOddFEPair a)
      (s := (s + 1) / 2) (a := -1) (b := 2)
      (by rw [hoRe]; linarith) (by rw [hoRe]; linarith)
    rw [completedHurwitzZetaOdd, hoddLambda, norm_div, htwo]
    linarith [stripMass_nonneg (hurwitzOddFEPair a).f_modif (-1) 2]
  have hn0 : 1 ≤ ‖s‖ := (by linarith : 1 ≤ |s.im|).trans (Complex.abs_im_le_norm s)
  have hn1 : 1 ≤ ‖(1 : ℂ) - s‖ := by
    have h := Complex.abs_im_le_norm ((1 : ℂ) - s)
    simp only [Complex.sub_im, Complex.one_im, zero_sub, abs_neg] at h
    linarith
  have hd0 : 1 / ‖s‖ ≤ 1 := by
    simpa only [one_div_one] using
      one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1) hn0
  have hd1 : ‖(1 : ℂ) / (1 - s)‖ ≤ 1 := by
    simpa only [norm_div, norm_one, one_div_one] using
      one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1) hn1
  have hp0 : ‖(if a = 0 then (1 : ℂ) else 0) / s‖ ≤ 1 := by
    classical
    by_cases ha : a = 0
    · simpa only [ha, if_true, norm_div, norm_one] using hd0
    · simp only [ha, if_false, zero_div, norm_zero, zero_le_one]
  have he : ‖completedHurwitzZetaEven a s‖ ≤
      stripMass (hurwitzEvenFEPair a).f_modif (-1) 2 + 2 := by
    rw [completedHurwitzZetaEven_eq]
    calc
      _ ≤ ‖completedHurwitzZetaEven₀ a s‖ +
          ‖(if a = 0 then (1 : ℂ) else 0) / s‖ + ‖(1 : ℂ) / (1 - s)‖ :=
        (norm_sub_le _ _).trans (add_le_add_right (norm_sub_le _ _) _)
      _ ≤ _ := by linarith
  unfold hurwitzStripMass
  linarith

variable (N : ℕ) [NeZero N]

/-- Finite residue-class sum of actual kernel budgets, independent of height and character. -/
def completedStripBound : ℝ :=
  Real.exp (2 * Real.log (N : ℝ)) * ∑ j : ZMod N, hurwitzStripMass (ZMod.toAddCircle j)

/-- Positivity needed in all later product comparisons. -/
theorem completedStripBound_nonneg : 0 ≤ completedStripBound N := by
  exact mul_nonneg (Real.exp_pos _).le (sum_nonneg (fun j _ => hurwitzStripMass_nonneg _))

variable {N}

/-- Uniform high-height central-strip bound for the actual completed Dirichlet source. -/
theorem norm_completedLFunction_le_strip (chi : DirichletCharacter ℂ N) {s : ℂ}
    (hl : -1 ≤ s.re) (hu : s.re ≤ 2) (hi : 2 ≤ |s.im|) :
    ‖DirichletCharacter.completedLFunction chi s‖ ≤ completedStripBound N := by
  have hN : (1 : ℝ) ≤ N := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (NeZero.ne N)
  have hlogN : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg hN
  have hp : ‖(N : ℂ) ^ (-s)‖ ≤ Real.exp (2 * Real.log (N : ℝ)) := by
    have h := norm_ofReal_cpow_le_exp_abs (x := (N : ℝ)) (R := 2)
      (z := -s) (by linarith)
      (by simp only [Complex.neg_re, abs_neg]; exact abs_le.mpr ⟨by linarith, hu⟩)
    simpa only [Complex.ofReal_natCast, abs_of_nonneg hlogN] using h
  have hsum : ‖(∑ j : ZMod N, chi j * completedHurwitzZetaEven (ZMod.toAddCircle j) s) +
      (∑ j : ZMod N, chi j * completedHurwitzZetaOdd (ZMod.toAddCircle j) s)‖ ≤
      ∑ j : ZMod N, hurwitzStripMass (ZMod.toAddCircle j) := by
    calc
      _ ≤ ‖∑ j : ZMod N, chi j * completedHurwitzZetaEven (ZMod.toAddCircle j) s‖ +
          ‖∑ j : ZMod N, chi j * completedHurwitzZetaOdd (ZMod.toAddCircle j) s‖ :=
        norm_add_le _ _
      _ ≤ (∑ j : ZMod N, ‖chi j * completedHurwitzZetaEven (ZMod.toAddCircle j) s‖) +
          (∑ j : ZMod N, ‖chi j * completedHurwitzZetaOdd (ZMod.toAddCircle j) s‖) :=
        add_le_add (norm_sum_le _ _) (norm_sum_le _ _)
      _ = ∑ j : ZMod N, (‖chi j * completedHurwitzZetaEven (ZMod.toAddCircle j) s‖ +
          ‖chi j * completedHurwitzZetaOdd (ZMod.toAddCircle j) s‖) :=
        (sum_add_distrib).symm
      _ ≤ _ := by
        apply sum_le_sum
        intro j _
        rw [norm_mul, norm_mul, ← mul_add]
        exact (mul_le_of_le_one_left (add_nonneg (norm_nonneg _) (norm_nonneg _))
          (chi.norm_le_one j)).trans (norm_completedHurwitz_pair_le _ hl hu hi)
  rw [DirichletCharacter.completedLFunction, ZMod.completedLFunction, ← mul_add, norm_mul]
  exact mul_le_mul hp hsum (norm_nonneg _) (Real.exp_pos _).le

/-- The reciprocal estimate covers both genuine parity factors. -/
theorem norm_inv_gammaFactor_le_strip (chi : DirichletCharacter ℂ N) {s : ℂ}
    (hl : -1 ≤ s.re) (hu : s.re ≤ 2) (hi : 2 ≤ |s.im|) :
    ‖(DirichletCharacter.gammaFactor chi s)⁻¹‖ ≤
      reciprocalStripConstant * Real.exp (Real.pi * |s.im| / 2) := by
  classical
  unfold DirichletCharacter.gammaFactor
  split_ifs
  · exact norm_inv_GammaR_le_strip (by linarith) (by linarith) hi
  · have h := norm_inv_GammaR_le_strip (w := s + 1)
      (by simp only [Complex.add_re, Complex.one_re]; linarith)
      (by simp only [Complex.add_re, Complex.one_re]; linarith)
      (by simpa only [Complex.add_im, Complex.one_im, add_zero] using hi)
    simpa only [Complex.add_im, Complex.one_im, add_zero] using h

/-- Return to the continued LFunction, not its out-of-convergence series.
No strip-growth assumption remains in this source estimate. -/
theorem norm_LFunction_le_strip (chi : DirichletCharacter ℂ N) {s : ℂ}
    (hl : -1 ≤ s.re) (hu : s.re ≤ 2) (hi : 2 ≤ |s.im|) :
    ‖DirichletCharacter.LFunction chi s‖ ≤
      completedStripBound N * reciprocalStripConstant * Real.exp (Real.pi * |s.im| / 2) := by
  have hs0 : s ≠ 0 := by intro h; simp [h] at hi
  rw [chi.LFunction_eq_completed_div_gammaFactor s (.inl hs0), div_eq_mul_inv, norm_mul]
  calc
    _ ≤ completedStripBound N *
        (reciprocalStripConstant * Real.exp (Real.pi * |s.im| / 2)) :=
      mul_le_mul (norm_completedLFunction_le_strip chi hl hu hi)
        (norm_inv_gammaFactor_le_strip chi hl hu hi) (norm_nonneg _)
        (completedStripBound_nonneg N)
    _ = _ := by ring

/-- Explicit conductor-one return to the original continued zeta function. -/
theorem norm_riemannZeta_le_strip {s : ℂ}
    (hl : -1 ≤ s.re) (hu : s.re ≤ 2) (hi : 2 ≤ |s.im|) :
    ‖riemannZeta s‖ ≤
      completedStripBound 1 * reciprocalStripConstant * Real.exp (Real.pi * |s.im| / 2) := by
  simpa only [DirichletCharacter.LFunction_modOne_eq] using
    norm_LFunction_le_strip (1 : DirichletCharacter ℂ 1) hl hu hi

end GRWTSK.NumberTheory.DirichletStripBounds
