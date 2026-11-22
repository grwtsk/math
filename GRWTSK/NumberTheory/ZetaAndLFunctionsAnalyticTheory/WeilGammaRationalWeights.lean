/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaGeometricQuadrature

/-!
# Rational enclosures of the original gamma panel and tail weights

The original parity-zero kernel is expanded by a FINITE geometric identity.
The omitted term remains nonnegative and has an explicit integrable majorant.
At a=-2 log u, 0<u<1, every integrated term and the full remainder bound is
rational when u is rational. No numerical exponential, logarithm, or improper
integral is an input to the coefficient enclosure.

The lag itself is still the exact real logarithm; these results do not certify
sine evaluations at translated points, other arithmetic constants, or a source
sign. Consumers: the existing cellWeight and the rounded quadrature module.
SOURCE_PROOF_CANDIDATE. Lean elaboration, exact types, kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaRationalWeights

open OddRootProjection GammaCutoffResidual GammaGeometricQuadrature

/-- Executable rational partial sum; no transcendental evaluator is used. -/
def rationalTailLower (u : ℚ) (N : ℕ) : ℚ :=
  ∑ k ∈ Finset.range N, 2 * u ^ (4 * k + 1) / (4 * k + 1 : ℕ)

/-- Complete positive omitted-tail allowance, not just the next term. -/
def rationalTailError (u : ℚ) (N : ℕ) : ℚ :=
  2 * u ^ (4 * N + 1) / ((4 * N + 1 : ℕ) * (1 - u ^ 4))

def rationalTailUpper (u : ℚ) (N : ℕ) : ℚ :=
  rationalTailLower u N + rationalTailError u N

noncomputable section

def decay (n : ℕ) : ℝ := 2 * (n : ℝ) + 1 / 2

def exponentialTerm (n : ℕ) (r : ℝ) : ℝ := Real.exp (-decay n * r)

def finiteKernel (N : ℕ) (r : ℝ) : ℝ :=
  ∑ n ∈ Finset.range N, exponentialTerm n r

def kernelRemainder (N : ℕ) (r : ℝ) : ℝ :=
  exponentialTerm N r / (1 - Real.exp (-2 * r))

def integratedPartial (N : ℕ) (a : ℝ) : ℝ :=
  ∑ n ∈ Finset.range N, exponentialTerm n a / decay n

def integratedAllowance (N : ℕ) (a : ℝ) : ℝ :=
  (exponentialTerm N a / decay N) / (1 - Real.exp (-2 * a))

private theorem decay_pos (n : ℕ) : 0 < decay n := by
  unfold decay
  positivity

private theorem denominator_pos {r : ℝ} (hr : 0 < r) :
    0 < 1 - Real.exp (-2 * r) := by
  apply sub_pos.mpr
  rw [← Real.exp_zero]
  exact Real.exp_lt_exp.mpr (by linarith)

private theorem exponentialTerm_succ (n : ℕ) (r : ℝ) :
    exponentialTerm (n + 1) r = exponentialTerm n r * Real.exp (-2 * r) := by
  unfold exponentialTerm
  rw [← Real.exp_add]
  congr 1
  simp only [decay, Nat.cast_add, Nat.cast_one]
  ring

private theorem remainder_step (N : ℕ) {r : ℝ} (hr : 0 < r) :
    kernelRemainder N r = exponentialTerm N r + kernelRemainder (N + 1) r := by
  unfold kernelRemainder
  rw [exponentialTerm_succ]
  field_simp [(denominator_pos hr).ne']
  <;> ring

/-- Finite expansion with its exact remainder, before integration. -/
theorem kernel_decomposition (N : ℕ) {r : ℝ} (hr : 0 < r) :
    parityKernel 0 r = finiteKernel N r + kernelRemainder N r := by
  induction N with
  | zero => simp [finiteKernel, kernelRemainder, exponentialTerm, decay, parityKernel]
  | succ N ih =>
      rw [ih, remainder_step N hr]
      simp only [finiteKernel, Finset.sum_range_succ]
      ring

/-- The positive remainder is controlled on the ENTIRE lag tail. -/
theorem remainder_bounds (N : ℕ) {a r : ℝ} (ha : 0 < a) (har : a ≤ r) :
    0 ≤ kernelRemainder N r ∧
      kernelRemainder N r ≤ exponentialTerm N r / (1 - Real.exp (-2 * a)) := by
  have hd := denominator_pos (ha.trans_le har)
  have hda := denominator_pos ha
  have hden : 1 - Real.exp (-2 * a) ≤ 1 - Real.exp (-2 * r) := by
    have h := Real.exp_le_exp.mpr (show -2 * r ≤ -2 * a by linarith)
    linarith
  constructor
  · exact div_nonneg (Real.exp_pos _).le hd.le
  · unfold kernelRemainder
    apply (div_le_div_iff₀ hd hda).2
    exact mul_le_mul_of_nonneg_left hden (Real.exp_pos _).le

private theorem term_integrable (n : ℕ) (a : ℝ) :
    IntegrableOn (exponentialTerm n) (Ioi a) :=
  integrableOn_exp_mul_Ioi (neg_neg_of_pos (decay_pos n)) a

private theorem term_integral (n : ℕ) (a : ℝ) :
    (∫ r in Ioi a, exponentialTerm n r) = exponentialTerm n a / decay n := by
  unfold exponentialTerm
  rw [integral_exp_mul_Ioi (neg_neg_of_pos (decay_pos n)) a]
  simp only [neg_div_neg_eq]

private theorem finiteKernel_integrable (N : ℕ) (a : ℝ) :
    IntegrableOn (finiteKernel N) (Ioi a) := by
  induction N with
  | zero => simpa [finiteKernel] using (integrable_zero : IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Ioi a))
  | succ N ih =>
      simpa only [finiteKernel, Finset.sum_range_succ] using ih.add (term_integrable N a)

private theorem finiteKernel_integral (N : ℕ) (a : ℝ) :
    (∫ r in Ioi a, finiteKernel N r) = integratedPartial N a := by
  induction N with
  | zero => simp [finiteKernel, integratedPartial]
  | succ N ih =>
      have hid : finiteKernel (N + 1) = fun r => finiteKernel N r + exponentialTerm N r := by
        funext r
        simp only [finiteKernel, Finset.sum_range_succ]
      rw [hid, integral_add (finiteKernel_integrable N a) (term_integrable N a), ih,
        term_integral]
      simp only [integratedPartial, Finset.sum_range_succ]

/-- Actual tailWeight is enclosed without interchanging an infinite sum. -/
theorem tailWeight_bounds (N : ℕ) {a : ℝ} (ha : 0 < a) :
    integratedPartial N a ≤ tailWeight a ∧
      tailWeight a ≤ integratedPartial N a + integratedAllowance N a := by
  have hi := finiteKernel_integrable N a
  have hk := kernel_integrableOn_tail ha
  have hm := (term_integrable N a).div_const (1 - Real.exp (-2 * a))
  constructor
  · calc
      integratedPartial N a = ∫ r in Ioi a, finiteKernel N r := (finiteKernel_integral N a).symm
      _ ≤ tailWeight a := by
        apply integral_mono_ae hi hk
        filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
        rw [kernel_decomposition N (ha.trans hr)]
        exact le_add_of_nonneg_right (remainder_bounds N ha hr.le).1
  · calc
      tailWeight a ≤ ∫ r in Ioi a,
          finiteKernel N r + exponentialTerm N r / (1 - Real.exp (-2 * a)) := by
        apply integral_mono_ae hk (hi.add hm)
        filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
        rw [kernel_decomposition N (ha.trans hr)]
        exact add_le_add_left (remainder_bounds N ha hr.le).2 _
      _ = integratedPartial N a + integratedAllowance N a := by
        rw [integral_add hi hm, finiteKernel_integral, integral_div, term_integral]
        rfl

/-- Source lag associated with a rational exponential coordinate. -/
def logarithmicLag (u : ℝ) : ℝ := -2 * Real.log u

theorem logarithmicLag_pos {u : ℝ} (hu : 0 < u) (hu1 : u < 1) :
    0 < logarithmicLag u := by
  have h := Real.log_neg hu hu1
  unfold logarithmicLag
  linarith

theorem logarithmicLag_antitone {u v : ℝ} (hv : 0 < v) (hvu : v ≤ u) :
    logarithmicLag u ≤ logarithmicLag v := by
  have h := Real.log_le_log hv hvu
  unfold logarithmicLag
  linarith

private theorem exp_nat_log {u : ℝ} (hu : 0 < u) (n : ℕ) :
    Real.exp ((n : ℝ) * Real.log u) = u ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Nat.cast_succ, add_mul, one_mul, Real.exp_add,
        ih, Real.exp_log hu, pow_succ]

private theorem term_logarithmicLag (n : ℕ) {u : ℝ} (hu : 0 < u) :
    exponentialTerm n (logarithmicLag u) = u ^ (4 * n + 1) := by
  unfold exponentialTerm logarithmicLag decay
  have hid : -(2 * (n : ℝ) + 1 / 2) * (-2 * Real.log u) =
      ((4 * n + 1 : ℕ) : ℝ) * Real.log u := by push_cast; ring
  rw [hid]
  exact exp_nat_log hu _

private theorem denominator_logarithmicLag {u : ℝ} (hu : 0 < u) :
    1 - Real.exp (-2 * logarithmicLag u) = 1 - u ^ 4 := by
  rw [show -2 * logarithmicLag u = (4 : ℕ) * Real.log u by unfold logarithmicLag; norm_num; ring]
  rw [exp_nat_log hu]

private theorem integratedPartial_cast (u : ℚ) (N : ℕ) (hu : 0 < u) :
    integratedPartial N (logarithmicLag (u : ℝ)) = (rationalTailLower u N : ℝ) := by
  have huR : (0 : ℝ) < (u : ℝ) := by exact_mod_cast hu
  simp only [integratedPartial, rationalTailLower]
  push_cast
  apply Finset.sum_congr rfl
  intro n _
  rw [term_logarithmicLag n huR]
  have hn : (4 * (n : ℝ) + 1) ≠ 0 := by positivity
  have hd := (decay_pos n).ne'
  unfold decay at hd ⊢
  field_simp [hd, hn]
  <;> ring

private theorem integratedAllowance_cast (u : ℚ) (N : ℕ) (hu : 0 < u) (hu1 : u < 1) :
    integratedAllowance N (logarithmicLag (u : ℝ)) = (rationalTailError u N : ℝ) := by
  have huR : (0 : ℝ) < (u : ℝ) := by exact_mod_cast hu
  have hu1R : (u : ℝ) < 1 := by exact_mod_cast hu1
  have hden := denominator_pos (logarithmicLag_pos huR hu1R)
  rw [denominator_logarithmicLag huR] at hden
  unfold integratedAllowance
  rw [term_logarithmicLag N huR, denominator_logarithmicLag huR]
  simp only [rationalTailError]
  push_cast
  have hn : (4 * (N : ℝ) + 1) ≠ 0 := by positivity
  have hd := (decay_pos N).ne'
  unfold decay at hd ⊢
  field_simp [hd, hn, hden.ne']
  <;> ring

/-- The two endpoints are finite RATIONAL expressions with a proved source identity. -/
theorem rationalTail_bounds (u : ℚ) (N : ℕ) (hu : 0 < u) (hu1 : u < 1) :
    (rationalTailLower u N : ℝ) ≤ tailWeight (logarithmicLag (u : ℝ)) ∧
      tailWeight (logarithmicLag (u : ℝ)) ≤ (rationalTailUpper u N : ℝ) := by
  have huR : (0 : ℝ) < (u : ℝ) := by exact_mod_cast hu
  have hu1R : (u : ℝ) < 1 := by exact_mod_cast hu1
  have h := tailWeight_bounds N (logarithmicLag_pos huR hu1R)
  rw [integratedPartial_cast u N hu, integratedAllowance_cast u N hu hu1] at h
  simpa only [rationalTailUpper, Rat.cast_add] using h

/-- Outward rational rounding is checked by exact rational inequalities. -/
theorem tailWeight_enclosure (u : ℚ) (N : ℕ) (lo hi : ℚ)
    (hu : 0 < u) (hu1 : u < 1)
    (hlo : lo ≤ rationalTailLower u N) (hhi : rationalTailUpper u N ≤ hi) :
    (lo : ℝ) ≤ tailWeight (logarithmicLag (u : ℝ)) ∧
      tailWeight (logarithmicLag (u : ℝ)) ≤ (hi : ℝ) := by
  obtain ⟨hl, hr⟩ := rationalTail_bounds u N hu hu1
  have hloR : (lo : ℝ) ≤ (rationalTailLower u N : ℝ) := by exact_mod_cast hlo
  have hhiR : (rationalTailUpper u N : ℝ) ≤ (hi : ℝ) := by exact_mod_cast hhi
  exact ⟨hloR.trans hl, hr.trans hhiR⟩

/-- Exact original panel identity, paying BOTH endpoint errors. -/
theorem cellWeight_enclosure (u v loU hiU loV hiV : ℚ)
    (hv : 0 < v) (hvu : v ≤ u) (hu1 : u < 1)
    (hU : (loU : ℝ) ≤ tailWeight (logarithmicLag (u : ℝ)) ∧
      tailWeight (logarithmicLag (u : ℝ)) ≤ (hiU : ℝ))
    (hV : (loV : ℝ) ≤ tailWeight (logarithmicLag (v : ℝ)) ∧
      tailWeight (logarithmicLag (v : ℝ)) ≤ (hiV : ℝ)) :
    ((loU - hiV : ℚ) : ℝ) ≤ cellWeight (logarithmicLag (u : ℝ)) (logarithmicLag (v : ℝ)) ∧
      cellWeight (logarithmicLag (u : ℝ)) (logarithmicLag (v : ℝ)) ≤ ((hiU - loV : ℚ) : ℝ) := by
  have hu : 0 < u := hv.trans_le hvu
  have huR : (0 : ℝ) < (u : ℝ) := by exact_mod_cast hu
  have hvR : (0 : ℝ) < (v : ℝ) := by exact_mod_cast hv
  have hu1R : (u : ℝ) < 1 := by exact_mod_cast hu1
  have hvuR : (v : ℝ) ≤ (u : ℝ) := by exact_mod_cast hvu
  rw [cellWeight_eq_tail_sub (logarithmicLag_pos huR hu1R)
    (logarithmicLag_antitone hvR hvuR)]
  push_cast
  constructor <;> linarith [hU.1, hU.2, hV.1, hV.2]

end
end GRWTSK.NumberTheory.WeilQuadraticForm.GammaRationalWeights
