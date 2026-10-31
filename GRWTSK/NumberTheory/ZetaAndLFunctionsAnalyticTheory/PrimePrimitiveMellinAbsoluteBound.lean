/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePrimitiveMellinAtom
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CenteredPrimeDirichletSeries

/-!
# Absolute integrals of the actual signed Mellin atoms

The inverse-root difference is nonnegative on x>n. Its crude upper bound,
1/sqrt(n), gives a summable integral budget at real part greater than one half.
No cancellation or eventual sign of the arithmetic primitive is assumed.
Indicator transport to a common measure and infinite exchange remain separate.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
open MeasureTheory Set
namespace GRWTSK.NumberTheory.PrimePrimitiveMellin
open GRWTSK.NumberTheory.PrimePowerCorrection

noncomputable def weightedAtom (n : ℕ) (s : ℂ) (x : ℝ) : ℂ :=
  centeredPrimeCoefficient n * atomKernel n s x

theorem weightedAtom_integrable (n : ℕ) (hn : 2 ≤ n) {s : ℂ} (hs : 1 / 2 < s.re) :
    IntegrableOn (weightedAtom n s) (Ioi (n : ℝ)) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  exact (atomKernel_integrable hn0 (by linarith)).const_mul (centeredPrimeCoefficient n)

/-- Positivity is proved for the source factor before taking its complex norm. -/
theorem weightedAtom_norm_le (n : ℕ) (hn : 2 ≤ n) (s : ℂ) {x : ℝ} (hx : (n : ℝ) < x) :
    ‖weightedAtom n s x‖ ≤
      (2 * ‖centeredPrimeCoefficient n‖ * (1 / Real.sqrt (n : ℝ))) *
        x ^ (-s.re - 1) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hx0 : 0 < x := hn0.trans hx
  have horder : 1 / Real.sqrt x ≤ 1 / Real.sqrt (n : ℝ) :=
    one_div_le_one_div_of_le (Real.sqrt_pos.mpr hn0) (Real.sqrt_le_sqrt hx.le)
  have hd : 0 ≤ 1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt x := sub_nonneg.mpr horder
  have hnorm : ‖weightedAtom n s x‖ = ‖centeredPrimeCoefficient n‖ *
      (2 * (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt x) * x ^ (-s.re - 1)) := by
    simp only [weightedAtom, atomKernel_eq_original hn0 hx0 s, norm_mul,
      ← Complex.ofReal_sub, Complex.norm_of_nonneg hd,
      Complex.norm_cpow_eq_rpow_re_of_pos hx0, Complex.sub_re, Complex.neg_re, Complex.one_re]
    norm_num
  calc
    _ = _ := hnorm
    _ ≤ ‖centeredPrimeCoefficient n‖ *
        (2 * (1 / Real.sqrt (n : ℝ)) * x ^ (-s.re - 1)) := by
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      apply mul_le_mul_of_nonneg_right _ (Real.rpow_nonneg hx0.le _)
      exact mul_le_mul_of_nonneg_left
        (sub_le_self _ (one_div_nonneg.mpr (Real.sqrt_nonneg x))) (by norm_num)
    _ = _ := by ring

/-- The actual norm integral is bounded by the previously proved summable budget. -/
theorem integral_weightedAtom_norm_le (n : ℕ) (hn : 2 ≤ n)
    {s : ℂ} (hs : 1 / 2 < s.re) :
    (∫ x : ℝ in Ioi (n : ℝ), ‖weightedAtom n s x‖) ≤ absoluteAtomBudget s.re n := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hs0 : 0 < s.re := by linarith
  have hexp : -s.re - 1 < -1 := by linarith
  have hi := weightedAtom_integrable n hn hs
  have hg := (integrableOn_Ioi_rpow_of_lt hexp hn0).const_mul
    (2 * ‖centeredPrimeCoefficient n‖ * (1 / Real.sqrt (n : ℝ)))
  have hm : (1 / Real.sqrt (n : ℝ)) * (n : ℝ) ^ (-s.re) =
      (n : ℝ) ^ (-s.re - 1 / 2) := by
    rw [one_div, Real.sqrt_eq_rpow, ← Real.rpow_neg hn0.le,
      ← Real.rpow_add hn0]
    congr 1
    ring
  calc
    _ ≤ ∫ x : ℝ in Ioi (n : ℝ),
        (2 * ‖centeredPrimeCoefficient n‖ * (1 / Real.sqrt (n : ℝ))) * x ^ (-s.re - 1) :=
      setIntegral_mono_on hi.norm hg measurableSet_Ioi (fun x hx => weightedAtom_norm_le n hn s hx)
    _ = (2 * ‖centeredPrimeCoefficient n‖ * (1 / Real.sqrt (n : ℝ))) *
        ((n : ℝ) ^ (-s.re) / s.re) := by
      rw [integral_const_mul, integral_Ioi_rpow_of_lt hexp hn0,
        show -s.re - 1 + 1 = -s.re by ring]
      simp only [neg_div_neg_eq]
    _ = (2 / s.re) * (‖centeredPrimeCoefficient n‖ * (n : ℝ) ^ (-s.re - 1 / 2)) := by
      rw [← hm]
      ring
    _ ≤ (2 / s.re) * ((Real.log (n : ℝ) + 1) * (n : ℝ) ^ (-s.re - 1 / 2)) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_right (centeredPrimeCoefficient_norm_le n)
          (Real.rpow_nonneg (Nat.cast_nonneg n) _)) (by positivity)
    _ = _ := rfl

/-- This is summability of actual norm integrals, not only of a proposed bound. -/
theorem weightedAtom_norm_integrals_summable {s : ℂ} (hs : 1 / 2 < s.re) :
    Summable (fun n : {n : ℕ // 2 ≤ n} =>
      ∫ x : ℝ in Ioi (n.val : ℝ), ‖weightedAtom n.val s x‖) := by
  exact Summable.of_nonneg_of_le
    (fun _ => integral_nonneg (fun _ => norm_nonneg _))
    (fun n => integral_weightedAtom_norm_le n.val n.property hs)
    ((absoluteAtomBudget_summable hs).subtype (fun n : ℕ => 2 ≤ n))

end GRWTSK.NumberTheory.PrimePrimitiveMellin
