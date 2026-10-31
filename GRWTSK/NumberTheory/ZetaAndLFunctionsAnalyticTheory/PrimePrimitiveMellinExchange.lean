/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePrimitiveMellinAbsoluteBound
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.Normed.Group.Indicator

/-!
# One common measure for the signed Mellin atom exchange

Each atom is cut off by the indicator of x>n, on the same real Lebesgue measure.
The actual integrals of norms are summable, so the integral-tsum theorem applies.
The pointwise series still needs identification with the finite floor primitive;
no eventual-sign statement or RH conclusion follows from this exchange.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
open MeasureTheory Set
namespace GRWTSK.NumberTheory.PrimePrimitiveMellin
open GRWTSK.NumberTheory.PrimePowerCorrection

noncomputable def cutoffAtom (n : ℕ) (s : ℂ) : ℝ → ℂ :=
  (Ioi (n : ℝ)).indicator (weightedAtom n s)

theorem cutoffAtom_integrable (n : ℕ) (hn : 2 ≤ n) {s : ℂ} (hs : 1 / 2 < s.re) :
    Integrable (cutoffAtom n s) :=
  (integrable_indicator_iff measurableSet_Ioi).mpr (weightedAtom_integrable n hn hs)

theorem integral_cutoffAtom_norm (n : ℕ) (s : ℂ) :
    (∫ x : ℝ, ‖cutoffAtom n s x‖) =
      ∫ x : ℝ in Ioi (n : ℝ), ‖weightedAtom n s x‖ := by
  simp only [cutoffAtom, norm_indicator_eq_indicator_norm]
  exact integral_indicator measurableSet_Ioi

/-- The individual integral has the exact source coefficient, with no norm or sign replacement. -/
theorem integral_cutoffAtom (n : ℕ) (hn : 2 ≤ n) {s : ℂ} (hs : 1 / 2 < s.re) :
    (∫ x : ℝ, cutoffAtom n s x) =
      centeredPrimeCoefficient n * ((n : ℂ) ^ (-s - 1 / 2) / (s * (s + 1 / 2))) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  rw [cutoffAtom, integral_indicator measurableSet_Ioi]
  simp only [weightedAtom, integral_const_mul]
  simpa only [Complex.ofReal_natCast] using
    congrArg (fun z : ℂ => centeredPrimeCoefficient n * z)
      (integral_atomKernel hn0 (by linarith : 0 < s.re))

/-- All norm integrals now refer to one common measure. -/
theorem cutoffAtom_norm_integrals_summable {s : ℂ} (hs : 1 / 2 < s.re) :
    Summable (fun n : {n : ℕ // 2 ≤ n} => ∫ x : ℝ, ‖cutoffAtom n.val s x‖) := by
  simpa only [integral_cutoffAtom_norm] using weightedAtom_norm_integrals_summable hs

/-- The actual infinite exchange consumes both integrability and summable norm integrals. -/
theorem integral_cutoffAtom_tsum {s : ℂ} (hs : 1 / 2 < s.re) :
    (∫ x : ℝ, ∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x) =
      ∑' n : {n : ℕ // 2 ≤ n}, ∫ x : ℝ, cutoffAtom n.val s x :=
  (integral_tsum_of_summable_integral_norm
    (fun n => cutoffAtom_integrable n.val n.property hs)
    (cutoffAtom_norm_integrals_summable hs)).symm

/-- Sum the exact atom integrals only after the absolute-exchange hypotheses are supplied. -/
theorem integral_cutoffAtom_tsum_eq_series {s : ℂ} (hs : 1 / 2 < s.re) :
    (∫ x : ℝ, ∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x) =
      ∑' n : {n : ℕ // 2 ≤ n}, centeredPrimeCoefficient n.val *
        ((n.val : ℂ) ^ (-s - 1 / 2) / (s * (s + 1 / 2))) := by
  rw [integral_cutoffAtom_tsum hs]
  apply tsum_congr
  intro n
  exact integral_cutoffAtom n.val n.property hs

end GRWTSK.NumberTheory.PrimePrimitiveMellin
