/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.NumberTheory.LSeries.AbstractFuncEq
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Uniform Mellin bounds from two convergent endpoint integrals

MSC2020: 44A15, 30D15. The bound is uniform in the imaginary part. The
consumer is the literal Hurwitz-kernel continuation used by Dirichlet L-functions.
No compact maximum depending on height is selected. All three Mellin integrals
are required to converge; the actual FE-pair application derives this fact.

Primary API: David Loeffler, Mathlib MellinTransform and AbstractFuncEq, pinned
in the adjacent individual provenance records. SOURCE_PROOF_CANDIDATE;
elaboration, fresh kernel replay, transitive axiom audit and independent review
NOT_RUN. Novelty UNASSESSED. Coordination: grwtsk/math#1801.
-/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory

namespace GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip

/-- Endpoint norm integrals; consumers prove their convergence before using this budget. -/
def stripMass (f : ℝ → ℂ) (a b : ℝ) : ℝ :=
  (∫ t : ℝ in Ioi 0, ‖(t : ℂ) ^ ((a : ℂ) - 1) • f t‖) +
  (∫ t : ℝ in Ioi 0, ‖(t : ℂ) ^ ((b : ℂ) - 1) • f t‖)

/-- Each defining integral is nonnegative; this alone is not a convergence assertion. -/
theorem stripMass_nonneg (f : ℝ → ℂ) (a b : ℝ) : 0 ≤ stripMass f a b := by
  exact add_nonneg (integral_nonneg (fun _ => norm_nonneg _))
    (integral_nonneg (fun _ => norm_nonneg _))

/-- Splitting at t=1 dominates every interior exponent by the two endpoint norms. -/
theorem norm_kernel_le_endpoints (f : ℝ → ℂ) {a b : ℝ} {s : ℂ}
    (ha : a ≤ s.re) (hb : s.re ≤ b) {t : ℝ} (ht : 0 < t) :
    ‖(t : ℂ) ^ (s - 1) • f t‖ ≤
      ‖(t : ℂ) ^ ((a : ℂ) - 1) • f t‖ +
        ‖(t : ℂ) ^ ((b : ℂ) - 1) • f t‖ := by
  simp only [norm_smul, Complex.norm_cpow_eq_rpow_re_of_pos ht,
    Complex.sub_re, Complex.ofReal_re, Complex.one_re, Real.rpow_def_of_pos ht]
  by_cases ht1 : t ≤ 1
  · have hlog : Real.log t ≤ 0 := Real.log_nonpos ht.le ht1
    have hexp : Real.exp (Real.log t * (s.re - 1)) ≤
        Real.exp (Real.log t * (a - 1)) := by
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonpos_left (sub_le_sub_right ha 1) hlog
    exact (mul_le_mul_of_nonneg_right hexp (norm_nonneg _)).trans
      (le_add_of_nonneg_right (by positivity))
  · have hlog : 0 ≤ Real.log t := Real.log_nonneg (le_of_not_ge ht1)
    have hexp : Real.exp (Real.log t * (s.re - 1)) ≤
        Real.exp (Real.log t * (b - 1)) := by
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_left (sub_le_sub_right hb 1) hlog
    exact (mul_le_mul_of_nonneg_right hexp (norm_nonneg _)).trans
      (le_add_of_nonneg_left (by positivity))

/-- Quantitative vertical-strip bound, with all integral convergence explicit. -/
theorem norm_mellin_le_stripMass (f : ℝ → ℂ) {a b : ℝ} {s : ℂ}
    (ha : a ≤ s.re) (hb : s.re ≤ b)
    (hfa : MellinConvergent f (a : ℂ)) (hfb : MellinConvergent f (b : ℂ))
    (hfs : MellinConvergent f s) :
    ‖mellin f s‖ ≤ stripMass f a b := by
  have hia := hfa.norm
  have hib := hfb.norm
  calc
    ‖mellin f s‖ ≤ ∫ t : ℝ in Ioi 0, ‖(t : ℂ) ^ (s - 1) • f t‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi 0,
        ‖(t : ℂ) ^ ((a : ℂ) - 1) • f t‖ +
          ‖(t : ℂ) ^ ((b : ℂ) - 1) • f t‖ := by
      apply integral_mono_ae hfs.norm (hia.add hib)
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      exact norm_kernel_le_endpoints f ha hb ht
    _ = stripMass f a b := by rw [integral_add hia hib]; rfl

/-- The actual modified FE kernel is integrable at every complex exponent. -/
theorem modified_mellin_convergent (P : WeakFEPair ℂ) (s : ℂ) :
    MellinConvergent P.f_modif s :=
  (P.isStrongFEPair_toStrongFEPair.hasMellin s).1

/-- A weak FE pair's pole-subtracted continuation is uniformly bounded on each strip.
The endpoint convergence is derived from its existing strong modified pair. -/
theorem norm_Lambda0_le_stripMass (P : WeakFEPair ℂ) {a b : ℝ} {s : ℂ}
    (ha : a ≤ s.re) (hb : s.re ≤ b) :
    ‖P.Λ₀ s‖ ≤ stripMass P.f_modif a b := by
  exact norm_mellin_le_stripMass P.f_modif ha hb
    (modified_mellin_convergent P a) (modified_mellin_convergent P b)
    (modified_mellin_convergent P s)

end GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip
