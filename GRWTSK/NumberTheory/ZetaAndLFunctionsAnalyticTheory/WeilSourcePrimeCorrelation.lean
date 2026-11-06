/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CharacterWeilWindowBounds
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-!
# Whole-line prime correlations for the Weil window

The source uses the antilinear-first correlation of a zero-extended function,
as in the logarithmic version of Connes–Consani–Moscovici, *Zeta Spectral
Triples*, arXiv:2511.22755v1, (3.17)–(3.20), and the signed character response
in `CharacterWeilWindowBounds`. The energy is the integral of the squared
norm against Lebesgue measure. The arithmetic inventory is that of
`LowSchur.activePrimePowers`.

Young's inequality bounds the integrand by the mean of the two squared
norms. Translation invariance gives that majorant precisely the original
energy. For support in `[-T,T]`, the overlap of this support with its
translate by at least `2*T` lies in the null singleton `{-T}`. Consequently
every extra prime-power summand has zero correlation when the window grows
around the same function. This includes the cutoff endpoint itself.

These are classical integral estimates and a same-source return for the
prime term. The gamma and pole terms, the completed explicit formula, and
lower signs of the full form are separate. Independent analytical review
and novelty assessment: NOT_RUN.
-/

set_option autoImplicit false

noncomputable section

open MeasureTheory
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

open LowSchur CharacterWindow

/-- Antilinear-first correlation using the actual translated whole-line function. -/
def correlation (f : ℝ → ℂ) (r : ℝ) : ℂ :=
  ∫ t : ℝ, conj (f t) * f (t + r)

/-- Squared Lebesgue L² norm, for a square-integrable function. -/
def energy (f : ℝ → ℂ) : ℝ :=
  ∫ t : ℝ, ‖f t‖ ^ 2

theorem energy_eq_norm_toLp_sq {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    energy f = ‖hf.toLp f‖ ^ 2 := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ), L2.inner_def]
  rw [← integral_re (L2.integrable_inner (𝕜 := ℂ) (hf.toLp f) (hf.toLp f))]
  simp only [inner_self_eq_norm_sq_to_K]
  apply integral_congr_ae
  filter_upwards [hf.coeFn_toLp] with t ht
  rw [ht, ← RCLike.ofReal_pow, RCLike.ofReal_re]

private theorem integrable_sq_norm {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    Integrable (fun t : ℝ => ‖f t‖ ^ 2) :=
  hf.integrable_norm_pow (p := 2) (by norm_num)

private theorem norm_product_le (f : ℝ → ℂ) (r t : ℝ) :
    ‖conj (f t) * f (t + r)‖ ≤ (‖f t‖ ^ 2 + ‖f (t + r)‖ ^ 2) / 2 := by
  rw [norm_mul, Complex.norm_conj]
  nlinarith [sq_nonneg (‖f t‖ - ‖f (t + r)‖)]

theorem integrable_correlation_integrand {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    Integrable (fun t : ℝ => conj (f t) * f (t + r)) := by
  have htranslate := measurePreserving_add_right volume r
  have hsq := integrable_sq_norm hf
  have hsq_shift : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) :=
    htranslate.integrable_comp_of_integrable hsq
  have hconj : AEStronglyMeasurable (fun t : ℝ => conj (f t)) volume :=
    Complex.continuous_conj.comp_aestronglyMeasurable hf.aestronglyMeasurable
  have hshift : AEStronglyMeasurable (fun t : ℝ => f (t + r)) volume :=
    hf.aestronglyMeasurable.comp_quasiMeasurePreserving htranslate.quasiMeasurePreserving
  exact ((hsq.add hsq_shift).div_const 2).mono' (hconj.mul hshift)
    (Filter.Eventually.of_forall (norm_product_le f r))

theorem norm_correlation_le_energy {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    ‖correlation f r‖ ≤ energy f := by
  have hsq := integrable_sq_norm hf
  have hsq_shift : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hsq
  calc
    ‖correlation f r‖ ≤
        ∫ t : ℝ, (‖f t‖ ^ 2 + ‖f (t + r)‖ ^ 2) / 2 :=
      norm_integral_le_of_norm_le ((hsq.add hsq_shift).div_const 2)
        (Filter.Eventually.of_forall (norm_product_le f r))
    _ = energy f := by
      rw [integral_div, integral_add hsq hsq_shift,
        integral_add_right_eq_self (fun t : ℝ => ‖f t‖ ^ 2) r]
      unfold energy
      ring

/-- At equality of shift and support width, the surviving point still has measure zero. -/
theorem correlation_eq_zero_of_cutoff {f : ℝ → ℂ} {T r : ℝ}
    (hf : ∀ t, t ∉ Set.Icc (-T) T → f t = 0) (hr : 2 * T ≤ r) :
    correlation f r = 0 := by
  unfold correlation
  have hend : ∀ᵐ t : ℝ, t ≠ -T := by
    rw [ae_iff]
    simp
  have hzero : (fun t : ℝ => conj (f t) * f (t + r)) =ᵐ[volume] 0 := by
    filter_upwards [hend] with t ht
    change conj (f t) * f (t + r) = 0
    by_cases h : t ∈ Set.Icc (-T) T
    · have hshift : t + r ∉ Set.Icc (-T) T := by
        intro h'
        exact ht (le_antisymm (by linarith [h'.2]) h.1)
      simp [hf _ hshift]
    · simp [hf _ h]
  simpa only [Pi.zero_apply, integral_zero] using integral_congr_ae hzero

private theorem mem_active_iff {T : ℝ} {n : ℕ} :
    n ∈ activePrimePowers T ↔ 2 ≤ n ∧ (n : ℝ) < Real.exp (2 * T) := by
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil]
  tauto

/-- Enlarging the window adds only zero terms for the same supported function. -/
theorem twistedPrime_eq_of_le {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N)
    {f : ℝ → ℂ} {T U : ℝ} (hf : ∀ t, t ∉ Set.Icc (-T) T → f t = 0)
    (hTU : T ≤ U) :
    twistedPrime T χ (fun n => correlation f (Real.log (n : ℝ))) =
      twistedPrime U χ (fun n => correlation f (Real.log (n : ℝ))) := by
  unfold twistedPrime
  congr 1
  refine Finset.sum_subset (fun n hn => ?_) (fun n hnU hnT => ?_)
  · obtain ⟨hn, hlog⟩ := mem_active_iff.mp hn
    exact mem_active_iff.mpr ⟨hn, hlog.trans_le (Real.exp_le_exp.mpr (by linarith))⟩
  · obtain ⟨hn, _⟩ := mem_active_iff.mp hnU
    have hcut : Real.exp (2 * T) ≤ (n : ℝ) :=
      le_of_not_gt (fun h => hnT (mem_active_iff.mpr ⟨hn, h⟩))
    have hr : 2 * T ≤ Real.log (n : ℝ) := by
      simpa using Real.log_le_log (Real.exp_pos _) hcut
    simp [correlation_eq_zero_of_cutoff hf hr]

/-- The existing signed character prime estimate on the actual correlation. -/
theorem abs_twistedPrime_le_energy {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    |twistedPrime T χ (fun n => correlation f (Real.log (n : ℝ)))| ≤
      primeMass T * energy f :=
  abs_twistedPrime_le T χ _ _ (fun n _ => norm_correlation_le_energy hf (Real.log (n : ℝ)))

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
