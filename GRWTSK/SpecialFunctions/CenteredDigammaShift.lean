/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Topology.Algebra.InfiniteSum.NatInt
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Exact finite shifts of the centered digamma function

MSC2020: 33B15, 11M06, 11M26.

The source is the actual `Complex.digamma`, not a function defined by a positive
series. Its unit recurrence gives an exact finite positive-increment formula.
A telescoping rational majorant proves summability of the increments and an
explicit enclosure for every finite shifted drop. The remaining shifted source
has a proved limit, but this file does NOT identify that limit with zero.

The consumer is the centered archimedean multiplier at `y = t / 2`, for
`sigma = 1 / 4` or `sigma = 3 / 4`. The adjacent analytical record explains the
classical zero-residual argument and the one-sided frequency-tail consumer;
those analytical arguments are not asserted to have been formalized here.

Primary mathematical sources: DLMF 5.5.2 (digamma recurrence) and 5.7.6
(partial-fraction series). Primary formal API: Thomas Browning's Mathlib
`Complex.digamma_apply_add_one`, at the repository's unchanged dependency pin.
No RH/GRH, whole-Weil positivity, or arithmetic certificate is asserted.

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. No mathematical novelty claimed. Refs math#1801.
Individual declaration provenance and a complete written argument are adjacent.
-/

set_option autoImplicit false
noncomputable section

open Filter
open scoped Topology

namespace GRWTSK.SpecialFunctions.CenteredDigamma

/-- Actual centered digamma multiplier; spectral frequency is `t = 2 * y`. -/
def centered (sigma y : ℝ) : ℝ :=
  (Complex.digamma ((sigma : ℂ) + (y : ℂ) * Complex.I)).re -
    (Complex.digamma (sigma : ℂ)).re

/-- The positive rational increment supplied by one actual digamma shift. -/
def term (sigma y : ℝ) : ℝ :=
  y ^ 2 / (sigma * (sigma ^ 2 + y ^ 2))

/-- The first `N` rational increments; no infinite sum is totalized here. -/
def partialSum (sigma y : ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, term (sigma + (n : ℝ)) y

/-- A rational majorant whose successive drops dominate the increments. -/
def remainderBudget (sigma y : ℝ) : ℝ :=
  y ^ 2 / sigma ^ 3 + y ^ 2 / (2 * sigma ^ 2)

private theorem avoids_neg_nat {z : ℂ} (hz : 0 < z.re) (m : ℕ) :
    z ≠ -(m : ℂ) := by
  intro h
  have he : z.re = -(m : ℝ) := by simpa using congrArg Complex.re h
  have hm : 0 ≤ (m : ℝ) := Nat.cast_nonneg m
  linarith

private theorem inv_vertical_re (sigma y : ℝ) :
    (((sigma : ℂ) + (y : ℂ) * Complex.I)⁻¹).re =
      sigma / (sigma ^ 2 + y ^ 2) := by
  rw [Complex.inv_re, Complex.normSq_add_mul_I]
  simp

private theorem inv_real_re (sigma : ℝ) :
    ((sigma : ℂ)⁻¹).re = sigma⁻¹ := by
  rw [← Complex.ofReal_inv]
  rfl

/-- Exact unit shift of the actual source, with no positivity or limit premise. -/
theorem centered_sub_shift_one {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    centered sigma y - centered (sigma + 1) y = term sigma y := by
  have hzpos : 0 < ((sigma : ℂ) + (y : ℂ) * Complex.I).re := by
    simpa using hsigma
  have hrpos : 0 < (sigma : ℂ).re := hsigma
  have hz := congrArg Complex.re
    (Complex.digamma_apply_add_one ((sigma : ℂ) + (y : ℂ) * Complex.I)
      (avoids_neg_nat hzpos))
  have hr := congrArg Complex.re
    (Complex.digamma_apply_add_one (sigma : ℂ) (avoids_neg_nat hrpos))
  simp only [Complex.add_re, inv_vertical_re, inv_real_re] at hz hr
  have harg : (((sigma + 1 : ℝ) : ℂ) + (y : ℂ) * Complex.I) =
      ((sigma : ℂ) + (y : ℂ) * Complex.I) + 1 := by
    simp only [Complex.ofReal_add, Complex.ofReal_one]
    ring
  have hargR : ((sigma + 1 : ℝ) : ℂ) = (sigma : ℂ) + 1 := by
    simp
  have hden : sigma ^ 2 + y ^ 2 ≠ 0 := by
    have : 0 < sigma ^ 2 + y ^ 2 :=
      add_pos_of_pos_of_nonneg (sq_pos_of_pos hsigma) (sq_nonneg y)
    exact this.ne'
  unfold centered term
  rw [harg, hargR, hz, hr]
  field_simp [hsigma.ne', hden] <;> ring

private theorem partialSum_succ (sigma y : ℝ) (N : ℕ) :
    partialSum sigma y (N + 1) =
      partialSum sigma y N + term (sigma + (N : ℝ)) y := by
  simp [partialSum, Finset.sum_range_succ]

/-- Finite source return: the retained rational sum equals an actual digamma drop. -/
theorem centered_sub_shift_nat {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) (N : ℕ) :
    centered sigma y - centered (sigma + (N : ℝ)) y = partialSum sigma y N := by
  induction N with
  | zero => simp [partialSum]
  | succ N ih =>
    have hsN : 0 < sigma + (N : ℝ) :=
      add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg N)
    have hstep := centered_sub_shift_one hsN y
    have harg : sigma + ((N + 1 : ℕ) : ℝ) = (sigma + (N : ℝ)) + 1 := by
      simp only [Nat.cast_add, Nat.cast_one]
      ring
    rw [harg, partialSum_succ]
    linarith

private theorem term_nonneg {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    0 ≤ term sigma y := by
  unfold term
  positivity

private theorem budget_nonneg {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    0 ≤ remainderBudget sigma y := by
  unfold remainderBudget
  positivity

private theorem term_le_cubic {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    term sigma y ≤ y ^ 2 / sigma ^ 3 := by
  unfold term
  apply div_le_div_of_nonneg_left (sq_nonneg y) (pow_pos hsigma 3)
  nlinarith [mul_nonneg hsigma.le (sq_nonneg y)]

private theorem budget_step_identity {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    remainderBudget sigma y - remainderBudget (sigma + 1) y - y ^ 2 / sigma ^ 3 =
      y ^ 2 * (3 * sigma + 1) / (2 * sigma ^ 2 * (sigma + 1) ^ 3) := by
  have hs1 : sigma + 1 ≠ 0 := by linarith
  unfold remainderBudget
  field_simp [hsigma.ne', hs1] <;> ring

private theorem term_le_budget_drop {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    term sigma y ≤ remainderBudget sigma y - remainderBudget (sigma + 1) y := by
  have hrem : 0 ≤ y ^ 2 * (3 * sigma + 1) /
      (2 * sigma ^ 2 * (sigma + 1) ^ 3) := by positivity
  rw [← budget_step_identity hsigma y] at hrem
  linarith [term_le_cubic hsigma y]

private theorem partialSum_bounds {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) (N : ℕ) :
    0 ≤ partialSum sigma y N ∧
      partialSum sigma y N ≤ remainderBudget sigma y -
        remainderBudget (sigma + (N : ℝ)) y := by
  constructor
  · unfold partialSum
    exact Finset.sum_nonneg fun n _ =>
      term_nonneg (add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)) y
  · induction N with
    | zero => simp [partialSum]
    | succ N ih =>
      have hsN : 0 < sigma + (N : ℝ) :=
        add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg N)
      have hstep := term_le_budget_drop hsN y
      have harg : sigma + ((N + 1 : ℕ) : ℝ) = (sigma + (N : ℝ)) + 1 := by
        simp only [Nat.cast_add, Nat.cast_one]
        ring
      rw [harg, partialSum_succ]
      linarith

/-- Quantitative one-sided enclosure for every finite drop of the actual source. -/
theorem shifted_drop_bounds {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) (N M : ℕ) :
    0 ≤ centered (sigma + (N : ℝ)) y -
        centered ((sigma + (N : ℝ)) + (M : ℝ)) y ∧
      centered (sigma + (N : ℝ)) y -
        centered ((sigma + (N : ℝ)) + (M : ℝ)) y ≤
      remainderBudget (sigma + (N : ℝ)) y -
        remainderBudget ((sigma + (N : ℝ)) + (M : ℝ)) y := by
  have hsN : 0 < sigma + (N : ℝ) :=
    add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg N)
  rw [centered_sub_shift_nat hsN y M]
  exact partialSum_bounds hsN y M

/-- Summability is proved from the explicit rational majorant, not assumed. -/
theorem summable_terms {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    Summable (fun n : ℕ => term (sigma + (n : ℝ)) y) := by
  apply summable_of_sum_range_le
    (fun n => term_nonneg (add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)) y)
    (c := remainderBudget sigma y)
  intro N
  have hb := (partialSum_bounds hsigma y N).2
  have hn := budget_nonneg (add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg N)) y
  change partialSum sigma y N ≤ remainderBudget sigma y
  linarith

/-- An actual convergent-series enclosure, including every positive real shift. -/
theorem tsum_terms_bounds {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    0 ≤ (∑' n : ℕ, term (sigma + (n : ℝ)) y) ∧
      (∑' n : ℕ, term (sigma + (n : ℝ)) y) ≤ remainderBudget sigma y := by
  have hn : ∀ n : ℕ, 0 ≤ term (sigma + (n : ℝ)) y :=
    fun n => term_nonneg (add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)) y
  constructor
  · exact tsum_nonneg hn
  · apply Real.tsum_le_of_sum_range_le hn
    intro N
    have hb := (partialSum_bounds hsigma y N).2
    have hB := budget_nonneg (add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg N)) y
    change partialSum sigma y N ≤ remainderBudget sigma y
    linarith

/-- All omitted rational increments are enclosed, not just a finite sampled tail.
This is a certificate for the convergent rational series; returning it to the
unshifted digamma value still requires the zero-residual analytic theorem. -/
theorem series_tail_enclosure {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) (N : ℕ) :
    0 ≤ (∑' n : ℕ, term (sigma + (n : ℝ)) y) - partialSum sigma y N ∧
      (∑' n : ℕ, term (sigma + (n : ℝ)) y) - partialSum sigma y N ≤
        remainderBudget (sigma + (N : ℝ)) y := by
  have hsN : 0 < sigma + (N : ℝ) :=
    add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg N)
  have hsplit := (summable_terms hsigma y).sum_add_tsum_nat_add N
  change partialSum sigma y N +
      (∑' n : ℕ, term (sigma + ((n + N : ℕ) : ℝ)) y) =
      (∑' n : ℕ, term (sigma + (n : ℝ)) y) at hsplit
  have htail : (∑' n : ℕ, term (sigma + ((n + N : ℕ) : ℝ)) y) =
      (∑' n : ℕ, term ((sigma + (N : ℝ)) + (n : ℝ)) y) := by
    apply tsum_congr
    intro n
    congr 1
    simp only [Nat.cast_add]
    ring
  rw [htail] at hsplit
  have hb := tsum_terms_bounds hsN y
  constructor <;> linarith [hb.1, hb.2]

/-- A uniform rational-series tail budget on a whole vertical-frequency window.
No sampling argument or midpoint-to-box inference is used. -/
theorem series_tail_enclosure_on_window {sigma : ℝ} (hsigma : 0 < sigma)
    {Y y : ℝ} (hY : 0 ≤ Y) (hy : |y| ≤ Y) (N : ℕ) :
    0 ≤ (∑' n : ℕ, term (sigma + (n : ℝ)) y) - partialSum sigma y N ∧
      (∑' n : ℕ, term (sigma + (n : ℝ)) y) - partialSum sigma y N ≤
        remainderBudget (sigma + (N : ℝ)) Y := by
  have hb := series_tail_enclosure hsigma y N
  have hsN : 0 < sigma + (N : ℝ) :=
    add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg N)
  have hylo : -Y ≤ y := (abs_le.mp hy).1
  have hyhi : y ≤ Y := (abs_le.mp hy).2
  have hy2 : y ^ 2 ≤ Y ^ 2 := by
    have hp := mul_nonneg (sub_nonneg.mpr hyhi) (by linarith : 0 ≤ Y + y)
    nlinarith
  refine ⟨hb.1, hb.2.trans ?_⟩
  unfold remainderBudget
  exact add_le_add
    (div_le_div_of_nonneg_right hy2 (pow_pos hsN 3).le)
    (div_le_div_of_nonneg_right hy2 (by positivity))

/-- The shifted actual source converges. Identifying this displayed limit with zero
is a separate analytic obligation; recurrence and summability do not erase it. -/
theorem shifted_residual_tendsto {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    Tendsto (fun N : ℕ => centered (sigma + (N : ℝ)) y) atTop
      (𝓝 (centered sigma y - ∑' n : ℕ, term (sigma + (n : ℝ)) y)) := by
  have hsum : Tendsto (fun N : ℕ => partialSum sigma y N) atTop
      (𝓝 (∑' n : ℕ, term (sigma + (n : ℝ)) y)) :=
    (summable_terms hsigma y).hasSum.tendsto_sum_nat
  have heq : (fun N : ℕ => centered (sigma + (N : ℝ)) y) =
      (fun N : ℕ => centered sigma y - partialSum sigma y N) := by
    funext N
    linarith [centered_sub_shift_nat hsigma y N]
  rw [heq]
  exact tendsto_const_nhds.sub hsum

/-- Nontrivial source regression at both primitive Dirichlet parity parameters.
Here `y = 1` corresponds to spectral frequency `t = 2`. -/
theorem parity_unit_shift_regression :
    centered (1 / 4) 1 - centered (5 / 4) 1 = 64 / 17 ∧
      centered (3 / 4) 1 - centered (7 / 4) 1 = 64 / 75 := by
  constructor
  · have h := centered_sub_shift_one (sigma := (1 / 4 : ℝ)) (by norm_num) 1
    norm_num [term] at h
    exact h
  · have h := centered_sub_shift_one (sigma := (3 / 4 : ℝ)) (by norm_num) 1
    norm_num [term] at h
    exact h

end GRWTSK.SpecialFunctions.CenteredDigamma
