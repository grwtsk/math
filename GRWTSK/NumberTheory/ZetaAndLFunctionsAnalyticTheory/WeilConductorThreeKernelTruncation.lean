/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernel
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Tactic

/-!
# Certified truncation of the actual conductor-three integrated kernel

The exact parity-one gamma kernel is expanded by a finite geometric identity.
Its complete remainder, multiplied by `min |t| r`, is bounded by the integrable
function `exp (-(gammaRate M - 1) * r) / 2`, using `r ≤ sinh r`.
The resulting uniform error allowance is `1 / (4*M + 1)`.

The finite head is identified with the existing `partialSourceKernel` by
actual improper integrals. The original gamma constant, character and every
signed arithmetic hinge are retained. This is a pointwise kernel enclosure;
it does not by itself assert quadratic-form order, a derivative-to-physical
norm conversion, or positivity of the Weil form. See the adjacent argument
record for source identity, comparison and the exact remaining return.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open OddRootProjection

def gammaTerm (m : ℕ) (r : ℝ) : ℝ := Real.exp (-gammaRate m * r)
def gammaRemainder (m : ℕ) (r : ℝ) : ℝ := gammaTerm m r / (1 - Real.exp (-2*r))
def truncationBudget (m : ℕ) : ℝ := 1 / (4 * (m : ℝ) + 1)

private theorem den_pos {r : ℝ} (hr : 0 < r) : 0 < 1 - Real.exp (-2*r) := by
  apply sub_pos.mpr
  rw [← Real.exp_zero]
  exact Real.exp_lt_exp.mpr (by linarith)

theorem denominator_lower {r : ℝ} (hr : 0 ≤ r) :
    2*r * Real.exp (-r) ≤ 1 - Real.exp (-2*r) := by
  have hs : r ≤ Real.sinh r := Real.self_le_sinh_iff.mpr hr
  rw [Real.sinh_eq] at hs
  have he : Real.exp r * Real.exp (-r) = 1 := by
    rw [← Real.exp_add]; simp
  have he2 : Real.exp (-r) * Real.exp (-r) = Real.exp (-2*r) := by
    rw [← Real.exp_add]; congr 1; ring
  have h := mul_le_mul_of_nonneg_right hs (Real.exp_pos (-r)).le
  nlinarith

theorem gammaRemainder_majorant (m : ℕ) (t : ℝ) {r : ℝ} (hr : 0 < r) :
    0 ≤ gammaRemainder m r * min |t| r ∧
    gammaRemainder m r * min |t| r ≤ (1/2 : ℝ)*Real.exp (-(gammaRate m-1)*r) := by
  have hd := den_pos hr
  have hmin : 0 ≤ min |t| r := le_min (abs_nonneg _) hr.le
  have hrem : 0 ≤ gammaRemainder m r := by unfold gammaRemainder gammaTerm; positivity
  refine ⟨mul_nonneg hrem hmin, ?_⟩
  apply (mul_le_mul_of_nonneg_left (min_le_right |t| r) hrem).trans
  have he : Real.exp (-(gammaRate m-1)*r) * Real.exp (-r) = gammaTerm m r := by
    unfold gammaTerm
    rw [← Real.exp_add]
    congr 1
    ring
  have h := mul_le_mul_of_nonneg_left (denominator_lower hr.le)
    (Real.exp_pos (-(gammaRate m-1)*r)).le
  unfold gammaRemainder
  rw [div_mul_eq_mul_div, div_le_iff₀ hd]
  nlinarith

theorem gammaRemainder_integrable (m : ℕ) (t : ℝ) :
    IntegrableOn (fun r => gammaRemainder m r * min |t| r) (Ioi 0) := by
  have hdec : -(gammaRate m - 1) < 0 := by unfold gammaRate; have := Nat.cast_nonneg (α := ℝ) m; linarith
  have hi := (integrableOn_exp_mul_Ioi hdec 0).const_mul (1/2 : ℝ)
  have hm : Measurable (fun r => gammaRemainder m r * min |t| r) := by
    unfold gammaRemainder gammaTerm
    fun_prop
  apply hi.mono' hm.aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  rw [Real.norm_of_nonneg (gammaRemainder_majorant m t hr).1]
  exact (gammaRemainder_majorant m t hr).2

theorem gammaRemainder_integral_bounds (m : ℕ) (t : ℝ) :
    0 ≤ (∫ r in Ioi (0 : ℝ), gammaRemainder m r * min |t| r) ∧
    (∫ r in Ioi (0 : ℝ), gammaRemainder m r * min |t| r) ≤ truncationBudget m := by
  have hdec : -(gammaRate m - 1) < 0 := by unfold gammaRate; have := Nat.cast_nonneg (α := ℝ) m; linarith
  have hm := (integrableOn_exp_mul_Ioi hdec 0).const_mul (1/2 : ℝ)
  constructor
  · apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    exact (gammaRemainder_majorant m t hr).1
  · have h : (∫ r in Ioi (0 : ℝ), gammaRemainder m r * min |t| r) ≤
        ∫ r in Ioi (0 : ℝ), (1/2 : ℝ)*Real.exp (-(gammaRate m-1)*r) := by
      apply integral_mono_ae (gammaRemainder_integrable m t) hm
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
      exact (gammaRemainder_majorant m t hr).2
    apply h.trans_eq
    rw [integral_const_mul, integral_exp_mul_Ioi hdec]
    simp only [mul_zero, Real.exp_zero]
    rw [neg_div_neg_eq]
    unfold truncationBudget
    have hd : gammaRate m - 1 ≠ 0 := by
      unfold gammaRate
      have hm0 : 0 ≤ (m : ℝ) := Nat.cast_nonneg m
      linarith
    field_simp [hd, show (4 * (m : ℝ) + 1) ≠ 0 by positivity]
    unfold gammaRate
    ring


theorem exp_min_integrable {a b : ℝ} (ha : 0 < a) (hb : 0 ≤ b) :
    IntegrableOn (fun r => Real.exp (-a*r) * min b r) (Ioi 0) := by
  have hi := (integrableOn_exp_mul_Ioi (neg_neg_of_pos ha) 0).mul_const b
  have hm : Measurable (fun r => Real.exp (-a*r) * min b r) := by fun_prop
  apply hi.mono' hm.aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  rw [Real.norm_of_nonneg (mul_nonneg (Real.exp_pos _).le (le_min hb hr.le))]
  exact mul_le_mul_of_nonneg_left (min_le_left _ _) (Real.exp_pos _).le

theorem integral_exp_min {a b : ℝ} (ha : 0 < a) (hb : 0 ≤ b) :
    (∫ r in Ioi (0 : ℝ), Real.exp (-a*r) * min b r) =
      (1 - Real.exp (-a*b)) / a^2 := by
  have hi := exp_min_integrable ha hb
  have hsplit := intervalIntegral.integral_Ioi_sub_Ioi hi hb
  have ht : (∫ r in Ioi b, Real.exp (-a*r) * min b r) =
      b * Real.exp (-a*b) / a := by
    calc
      _ = ∫ r in Ioi b, Real.exp (-a*r) * b := by
        apply integral_congr_ae
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
        rw [min_eq_left hr.le]
      _ = _ := by
        rw [integral_mul_const, integral_exp_mul_Ioi (neg_neg_of_pos ha)]
        ring
  have hf : (∫ r in (0 : ℝ)..b, Real.exp (-a*r) * min b r) =
      (1 - (a*b+1)*Real.exp (-a*b)) / a^2 := by
    have he : (∫ r in (0 : ℝ)..b, Real.exp (-a*r) * min b r) =
        ∫ r in (0 : ℝ)..b, Real.exp (-a*r) * r := by
      apply intervalIntegral.integral_congr
      intro r hr
      rw [uIcc_of_le hb] at hr
      simp only [min_eq_right hr.2]
    rw [he]
    have hd (r : ℝ) : HasDerivAt
        (fun x => -((a*x+1)*Real.exp (-a*x))/a^2)
        (Real.exp (-a*r)*r) r := by
      convert (((((hasDerivAt_id r).const_mul a).add_const 1).mul
        (((hasDerivAt_id r).const_mul (-a)).exp)).neg.div_const (a^2)) using 1
      · funext x
        simp only [id_eq, Pi.neg_apply, Pi.mul_apply]
      · simp only [id_eq]
        field_simp [ha.ne']
        ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r)
      ((by fun_prop : Continuous (fun r : ℝ => Real.exp (-a*r)*r)).intervalIntegrable 0 b)]
    simp only [mul_zero, zero_add, Real.exp_zero, mul_one]
    ring
  rw [ht, hf] at hsplit
  have hn := ha.ne'
  field_simp [hn] at hsplit ⊢
  nlinarith


private theorem gammaTerm_succ (m : ℕ) (r : ℝ) :
    gammaTerm (m+1) r = gammaTerm m r * Real.exp (-2*r) := by
  unfold gammaTerm
  rw [← Real.exp_add]
  congr 1
  simp only [gammaRate, Nat.cast_add, Nat.cast_one]
  ring

private theorem gammaRemainder_step (m : ℕ) {r : ℝ} (hr : 0 < r) :
    gammaRemainder m r = gammaTerm m r + gammaRemainder (m+1) r := by
  unfold gammaRemainder
  rw [gammaTerm_succ]
  have hd : 1 - Real.exp (-2*r) ≠ 0 := (den_pos hr).ne'
  generalize Real.exp (-2*r) = z at hd ⊢
  field_simp [hd]
  ring

/-- The genuine parity-one kernel decomposes into a finite exponential head
and its complete positive remainder. No infinite-series interchange occurs. -/
theorem parityKernel_finite_decomposition (M : ℕ) {r : ℝ} (hr : 0 < r) :
    parityKernel 1 r = (∑ m ∈ Finset.range M, gammaTerm m r) +
      gammaRemainder M r := by
  induction M with
  | zero => norm_num [gammaRemainder, gammaTerm, gammaRate, parityKernel]
  | succ M ih =>
      rw [ih, gammaRemainder_step M hr, Finset.sum_range_succ]
      ring

theorem finite_min_integrable (M : ℕ) (t : ℝ) :
    IntegrableOn (fun r => (∑ m ∈ Finset.range M, gammaTerm m r) * min |t| r) (Ioi 0) := by
  induction M with
  | zero => simp
  | succ M ih =>
      have ht := exp_min_integrable (gammaRate_pos M) (abs_nonneg t)
      change IntegrableOn (fun r => gammaTerm M r * min |t| r) (Ioi 0) at ht
      simpa only [Finset.sum_range_succ, add_mul, Pi.add_apply] using! ih.add ht

theorem finite_min_integral (M : ℕ) (t : ℝ) :
    (∫ r in Ioi (0 : ℝ), (∑ m ∈ Finset.range M, gammaTerm m r) * min |t| r) =
      ∑ m ∈ Finset.range M, (1-Real.exp (-gammaRate m*|t|))/gammaRate m^2 := by
  induction M with
  | zero => simp
  | succ M ih =>
      simp only [Finset.sum_range_succ, add_mul]
      have ht := exp_min_integrable (gammaRate_pos M) (abs_nonneg t)
      change IntegrableOn (fun r => gammaTerm M r * min |t| r) (Ioi 0) at ht
      rw [integral_add (finite_min_integrable M t) ht, ih]
      exact congrArg _ (integral_exp_min (gammaRate_pos M) (abs_nonneg t))

/-- Absolute convergence of the actual gamma integral, including the
singular endpoint and the entire lag tail. -/
theorem gamma_min_integrable (t : ℝ) :
    IntegrableOn (fun r => parityKernel 1 r * min |t| r) (Ioi 0) := by
  convert gammaRemainder_integrable 0 t using 1
  funext r
  norm_num [gammaRemainder, gammaTerm, gammaRate, parityKernel]

/-- Exact finite head plus entire integral remainder for the original source. -/
theorem gamma_min_integral_decomposition (M : ℕ) (t : ℝ) :
    (∫ r in Ioi (0 : ℝ), parityKernel 1 r * min |t| r) =
      (∑ m ∈ Finset.range M, (1-Real.exp (-gammaRate m*|t|))/gammaRate m^2) +
      ∫ r in Ioi (0 : ℝ), gammaRemainder M r * min |t| r := by
  calc
    _ = ∫ r in Ioi (0 : ℝ),
        (∑ m ∈ Finset.range M, gammaTerm m r) * min |t| r +
        gammaRemainder M r * min |t| r := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
      rw [parityKernel_finite_decomposition M hr, add_mul]
    _ = _ := by
      rw [integral_add (finite_min_integrable M t) (gammaRemainder_integrable M t),
        finite_min_integral]

/-- The signed character, native gamma constant and all prime hinges cancel
exactly. The residual is precisely the negative gamma remainder integral. -/
theorem sourceKernel_sub_partial_eq (M : ℕ) (t : ℝ) :
    sourceKernel t - partialSourceKernel M t =
      -(∫ r in Ioi (0 : ℝ), gammaRemainder M r * min |t| r) := by
  unfold sourceKernel partialSourceKernel
  rw [gamma_min_integral_decomposition]
  ring

/-- Source-exact pointwise enclosure, uniform in every real displacement. -/
theorem sourceKernel_sub_partial_bounds (M : ℕ) (t : ℝ) :
    -truncationBudget M ≤ sourceKernel t - partialSourceKernel M t ∧
      sourceKernel t - partialSourceKernel M t ≤ 0 := by
  rw [sourceKernel_sub_partial_eq]
  obtain ⟨hl, hu⟩ := gammaRemainder_integral_bounds M t
  constructor <;> linarith

theorem abs_sourceKernel_sub_partial_le (M : ℕ) (t : ℝ) :
    |sourceKernel t - partialSourceKernel M t| ≤ truncationBudget M := by
  obtain ⟨hl, hu⟩ := sourceKernel_sub_partial_bounds M t
  rw [abs_of_nonpos hu]
  linarith

theorem truncationBudget_pos (M : ℕ) : 0 < truncationBudget M := by
  unfold truncationBudget
  positivity

/-- The proved complete-tail budget can be made uniformly small by a finite
natural cutoff. This supplies a producer of precision indices, not signs. -/
theorem truncationBudget_eventually_lt {ε : ℝ} (hε : 0 < ε) :
    ∃ M : ℕ, ∀ N : ℕ, M ≤ N → truncationBudget N < ε := by
  obtain ⟨M, hM⟩ := exists_nat_gt (1 / ε)
  refine ⟨M, ?_⟩
  intro N hMN
  have hMN' : (M : ℝ) ≤ N := by exact_mod_cast hMN
  have hM' : 1 < (M : ℝ)*ε := (div_lt_iff₀ hε).mp hM
  unfold truncationBudget
  rw [div_lt_iff₀ (by positivity : 0 < 4*(N : ℝ)+1)]
  have hN : 0 ≤ (N : ℝ) := Nat.cast_nonneg N
  nlinarith

/-- Every positive accuracy admits a finite cutoff valid simultaneously for
ALL real kernel displacements. The original signed source is unchanged. -/
theorem sourceKernel_uniform_approximation {ε : ℝ} (hε : 0 < ε) :
    ∃ M : ℕ, ∀ N : ℕ, M ≤ N → ∀ t : ℝ,
      |sourceKernel t - partialSourceKernel N t| < ε := by
  obtain ⟨M, hM⟩ := truncationBudget_eventually_lt hε
  exact ⟨M, fun N hN t => (abs_sourceKernel_sub_partial_le N t).trans_lt (hM N hN)⟩

/-- Measurability of the parameter integral is proved for its actual joint
integrand. No finite-dimensional surrogate replaces the source kernel. -/
theorem measurable_sourceKernel : Measurable sourceKernel := by
  have hm : Measurable (fun p : ℝ × ℝ => parityKernel 1 p.2 * min |p.1| p.2) := by
    unfold parityKernel
    fun_prop
  have hi := hm.stronglyMeasurable.integral_prod_right'
    (ν := volume.restrict (Ioi (0 : ℝ)))
  have hp : Measurable primeHinges := by
    unfold primeHinges CharacterWindow.twistedPrime
    fun_prop
  change Measurable (fun t => -gammaConstant 3 1 * |t| / 2 -
    (∫ r in Ioi (0 : ℝ), parityKernel 1 r * min |t| r) + primeHinges t)
  exact ((by fun_prop : Measurable (fun t : ℝ => -gammaConstant 3 1*|t|/2)).sub
    hi.measurable).add hp

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
