/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierBounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.MeasureTheory.Constructions.Polish.Basic
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Topology.Algebra.Support
import Mathlib.Tactic

/-!
# A finite negative band for the first theta-weighted Weil stage

Source: the supplied `weil_threshold_round/proof.md`, 6 November 2026,
Sections 2--4. Mathematical interfaces were inspected at
`grwtsk/math@c7778e07068616b8577ed9a4e1ef930a15b06666`.
Upstream: Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

This module uses the actual `OddMultiplierBounds.periodicMultiplier`.
Twelve of its nonnegative rational summands at frequency 7 already exceed
27/5. Monotonicity in absolute frequency therefore proves that its negative
part at level 27/5 vanishes outside [-7,7]. All omitted summands have the
correct sign; no frequency exterior is discarded without this proof.

The sine-square majorant is global. Three integrations of the known cubic
lower bound for sine give the quartic cosine upper bound, quintic sine
upper bound, and sextic cosine lower bound. Substitution of 2*x in the last
one proves the sixth-degree majorant used by the odd moment calculation.
These are standard Taylor inequalities, not a claim of theorem novelty.

Consumer: the actual negative-band moment estimate and Hilbert--Schmidt
kernel in the weighted first-stage argument. The gamma floor -27/5,
character-parity comparison, Fourier/physical-source identification, theta
moment enclosures, closed-form realization, and trace-class operator return
are separate obligations. In particular `baseNegativeBand` is not the
arithmetic source and its positivity is not Weil positivity.

Evidence: manually authored proof scripts. Elaboration, compilation, fresh
kernel checking, transitive axiom auditing, and independent analytical
review: NOT_RUN. No RH/GRH theorem is asserted.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

open OddMultiplierBounds PeriodicBoundary

/-- The negative band of the EXISTING base-parity source multiplier. -/
def baseNegativeBand (xi : ℝ) : ℝ :=
  max ((27 / 5 : ℝ) - periodicMultiplier 0 xi) 0

theorem baseNegativeBand_nonneg (xi : ℝ) : 0 ≤ baseNegativeBand xi :=
  le_max_right _ _

theorem baseNegativeBand_le (xi : ℝ) : baseNegativeBand xi ≤ 27 / 5 := by
  unfold baseNegativeBand
  exact max_le (by linarith [periodicMultiplier_nonneg 0 xi]) (by norm_num)

@[simp] theorem baseNegativeBand_neg (xi : ℝ) :
    baseNegativeBand (-xi) = baseNegativeBand xi := by
  simp only [baseNegativeBand, periodicMultiplier_neg]

/-- A source-exact finite calculation. It is a lower bound for the infinite
multiplier, not a claim that twelve terms are the complete multiplier. -/
theorem twelve_terms_at_seven :
    (27 / 5 : ℝ) < ∑ j ∈ Finset.range 12, periodicMultiplierTerm 0 7 j := by
  norm_num [Finset.sum_range_succ, periodicMultiplierTerm, multiplierRate,
    multiplierSummand]

theorem baseMultiplier_seven_gt : (27 / 5 : ℝ) < periodicMultiplier 0 7 := by
  apply twelve_terms_at_seven.trans_le
  exact (periodicMultiplier_summable 0 7).sum_le_tsum (Finset.range 12)
    (fun j _ => periodicMultiplierTerm_nonneg 0 7 (Nat.cast_nonneg j))

/-- The entire frequency exterior, including its endpoints, is zero. -/
theorem baseNegativeBand_eq_zero_of_seven_le_abs {xi : ℝ} (hxi : 7 ≤ |xi|) :
    baseNegativeBand xi = 0 := by
  have hm : periodicMultiplier 0 7 ≤ periodicMultiplier 0 xi :=
    periodicMultiplier_abs_mono 0 (by simpa only [abs_of_pos (by norm_num : (0 : ℝ) < 7)] using hxi)
  unfold baseNegativeBand
  exact max_eq_right (by linarith [baseMultiplier_seven_gt])

theorem support_baseNegativeBand_subset :
    Function.support baseNegativeBand ⊆ Icc (-7) 7 := by
  intro xi hxi
  change baseNegativeBand xi ≠ 0 at hxi
  by_contra hout
  have hlarge : (7 : ℝ) ≤ |xi| := by
    apply le_of_lt
    apply lt_of_not_ge
    intro hsmall
    exact hout (abs_le.mp hsmall)
  exact hxi (baseNegativeBand_eq_zero_of_seven_le_abs hlarge)

theorem hasCompactSupport_baseNegativeBand : HasCompactSupport baseNegativeBand := by
  change IsCompact (closure (Function.support baseNegativeBand))
  exact isCompact_Icc.of_isClosed_subset isClosed_closure
    (closure_minimal support_baseNegativeBand_subset isClosed_Icc)

private theorem measurable_baseMultiplier : Measurable (periodicMultiplier 0) := by
  unfold periodicMultiplier
  apply Measurable.tsum
  intro j
  unfold periodicMultiplierTerm multiplierSummand
  fun_prop

theorem measurable_baseNegativeBand : Measurable baseNegativeBand := by
  unfold baseNegativeBand
  exact (measurable_const.sub measurable_baseMultiplier).max measurable_const

/-- The negative-band moment integrals have a genuine Lebesgue L1 input. -/
theorem integrable_baseNegativeBand : Integrable baseNegativeBand volume := by
  have hmajor : Integrable ((Icc (-7 : ℝ) 7).indicator (fun _ : ℝ => (27 / 5 : ℝ))) := by
    rw [integrable_indicator_iff measurableSet_Icc]
    exact continuous_const.integrableOn_Icc
  apply hmajor.mono' measurable_baseNegativeBand.aestronglyMeasurable
  apply Filter.Eventually.of_forall
  intro xi
  rw [Real.norm_eq_abs, abs_of_nonneg (baseNegativeBand_nonneg xi)]
  by_cases hin : xi ∈ Icc (-7 : ℝ) 7
  · rw [indicator_of_mem hin]
    exact baseNegativeBand_le xi
  · rw [indicator_of_notMem hin]
    have hlarge : (7 : ℝ) ≤ |xi| := by
      apply le_of_lt
      apply lt_of_not_ge
      intro hsmall
      exact hin (abs_le.mp hsmall)
    rw [baseNegativeBand_eq_zero_of_seven_le_abs hlarge]

/-- Every polynomial moment of the actual band is integrable. -/
theorem integrable_frequencyMoment (k : ℕ) :
    Integrable (fun xi : ℝ => baseNegativeBand xi * xi ^ k) volume := by
  let B : ℝ := (27 / 5) * 7 ^ k
  have hmajor : Integrable ((Icc (-7 : ℝ) 7).indicator (fun _ : ℝ => B)) := by
    rw [integrable_indicator_iff measurableSet_Icc]
    exact continuous_const.integrableOn_Icc
  have hmeas : Measurable (fun xi : ℝ => baseNegativeBand xi * xi ^ k) :=
    measurable_baseNegativeBand.mul (by fun_prop)
  apply hmajor.mono' hmeas.aestronglyMeasurable
  apply Filter.Eventually.of_forall
  intro xi
  by_cases hin : xi ∈ Icc (-7 : ℝ) 7
  · rw [indicator_of_mem hin, Real.norm_eq_abs, abs_mul,
      abs_of_nonneg (baseNegativeBand_nonneg xi), abs_pow]
    exact mul_le_mul (baseNegativeBand_le xi)
      (pow_le_pow_left₀ (abs_nonneg xi) (abs_le.mpr hin) k)
      (pow_nonneg (abs_nonneg xi) k) (by norm_num)
  · rw [indicator_of_notMem hin]
    have hlarge : (7 : ℝ) ≤ |xi| := by
      apply le_of_lt
      apply lt_of_not_ge
      intro hsmall
      exact hin (abs_le.mp hsmall)
    rw [baseNegativeBand_eq_zero_of_seven_le_abs hlarge, zero_mul, norm_zero]

/-- Literal moment, with the complete (proved zero) frequency exterior. -/
def frequencyMoment (k : ℕ) : ℝ :=
  ∫ xi : ℝ, baseNegativeBand xi * xi ^ k

theorem even_frequencyMoment_nonneg (k : ℕ) : 0 ≤ frequencyMoment (2 * k) := by
  apply integral_nonneg
  intro xi
  exact mul_nonneg (baseNegativeBand_nonneg xi) ((even_two_mul k).pow_nonneg xi)

/-- The comparison keeps the sign of the subtracted band. The numerical
gamma floor is not proved merely by introducing the band. -/
theorem base_multiplier_lower {c : ℝ} (hc : -(27 / 5 : ℝ) ≤ c) (xi : ℝ) :
    -baseNegativeBand xi ≤ periodicMultiplier 0 xi + c := by
  have hm : (27 / 5 : ℝ) - periodicMultiplier 0 xi ≤ baseNegativeBand xi :=
    le_max_left _ _
  linarith

private theorem nonneg_of_nonneg_deriv_on_half_line {f : ℝ → ℝ}
    (hf : Differentiable ℝ f) (hzero : 0 ≤ f 0)
    (hd : ∀ x : ℝ, 0 < x → 0 ≤ deriv f x) {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ f x := by
  have hm : MonotoneOn f (Ici 0) := by
    apply monotoneOn_of_deriv_nonneg (convex_Ici 0)
      hf.continuous.continuousOn hf.differentiableOn
    intro y hy
    exact hd y (by simpa only [interior_Ici, mem_Ioi] using hy)
  exact hzero.trans (hm (by simp) hx hx)

private theorem cos_le_quartic_of_nonneg {x : ℝ} (hx : 0 ≤ x) :
    Real.cos x ≤ 1 - x ^ 2 / 2 + x ^ 4 / 24 := by
  let f := fun y : ℝ => 1 - y ^ 2 / 2 + y ^ 4 / 24 - Real.cos y
  have hd (y : ℝ) : deriv f y = -y + y ^ 3 / 6 + Real.sin y := by
    simp (disch := fun_prop) [f]
    ring
  have h := nonneg_of_nonneg_deriv_on_half_line
    (f := f) (by dsimp [f]; fun_prop) (by norm_num [f])
    (fun y hy => by rw [hd]; linarith [Real.sin_ge_sub_cube hy.le]) hx
  dsimp [f] at h
  linarith

private theorem sin_le_quintic_of_nonneg {x : ℝ} (hx : 0 ≤ x) :
    Real.sin x ≤ x - x ^ 3 / 6 + x ^ 5 / 120 := by
  let f := fun y : ℝ => y - y ^ 3 / 6 + y ^ 5 / 120 - Real.sin y
  have hd (y : ℝ) : deriv f y = 1 - y ^ 2 / 2 + y ^ 4 / 24 - Real.cos y := by
    simp (disch := fun_prop) [f]
    ring
  have h := nonneg_of_nonneg_deriv_on_half_line
    (f := f) (by dsimp [f]; fun_prop) (by norm_num [f])
    (fun y hy => by rw [hd]; linarith [cos_le_quartic_of_nonneg hy.le]) hx
  dsimp [f] at h
  linarith

private theorem sextic_le_cos_of_nonneg {x : ℝ} (hx : 0 ≤ x) :
    1 - x ^ 2 / 2 + x ^ 4 / 24 - x ^ 6 / 720 ≤ Real.cos x := by
  let f := fun y : ℝ => Real.cos y - 1 + y ^ 2 / 2 - y ^ 4 / 24 + y ^ 6 / 720
  have hd (y : ℝ) : deriv f y = -Real.sin y + y - y ^ 3 / 6 + y ^ 5 / 120 := by
    simp (disch := fun_prop) [f]
    ring
  have h := nonneg_of_nonneg_deriv_on_half_line
    (f := f) (by dsimp [f]; fun_prop) (by norm_num [f])
    (fun y hy => by rw [hd]; linarith [sin_le_quintic_of_nonneg hy.le]) hx
  dsimp [f] at h
  linarith

theorem sextic_le_cos (x : ℝ) :
    1 - x ^ 2 / 2 + x ^ 4 / 24 - x ^ 6 / 720 ≤ Real.cos x := by
  rcases le_total 0 x with hx | hx
  · exact sextic_le_cos_of_nonneg hx
  · have h := sextic_le_cos_of_nonneg (neg_nonneg.mpr hx)
    have h2 : (-x) ^ 2 = x ^ 2 := by ring
    have h4 : (-x) ^ 4 = x ^ 4 := by ring
    have h6 : (-x) ^ 6 = x ^ 6 := by ring
    rwa [Real.cos_neg, h2, h4, h6] at h

/-- A global inequality: no restriction on the position-frequency product. -/
theorem sin_sq_le_sextic (x : ℝ) :
    Real.sin x ^ 2 ≤ x ^ 2 - x ^ 4 / 3 + 2 * x ^ 6 / 45 := by
  have h := sextic_le_cos (2 * x)
  rw [Real.cos_two_mul'] at h
  nlinarith [Real.sin_sq_add_cos_sq x]

end GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
