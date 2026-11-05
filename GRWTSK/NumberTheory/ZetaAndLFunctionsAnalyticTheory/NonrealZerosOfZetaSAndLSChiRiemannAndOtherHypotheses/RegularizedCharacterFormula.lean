/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CharacterEulerSource
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CoreZeroInventories
import Mathlib.Analysis.Complex.CauchyIntegral

/-!
# Pole-corrected finite explicit formula for every Dirichlet character

The Hurwitz construction gives an entire G_chi, identified with (s-1)L(s,chi)
away from one. Analyticity and its actual nonzero value at two give a complete
compact zero inventory. Differentiate the source identity before integrating:
 integral(-L'/L*w) = 2*pi*i*(w(1)-sum(order_G(a)*w(a))).
Every zero of G in the disk occurs. For nonprincipal chi, the artificial
simple zero at one is proved from L(1,chi)!=0 and cancels the w(1) correction.
Away from one both source zero membership AND multiplicity are preserved.

This is a finite uncompleted-L circle formula, not an infinite Weil or Perron
formula. Gamma/conductor factors for completed sources, contour exhaustion,
Perron inversion and infinite residue convergence remain separate bridges.
Primary route: entire Hurwitz differences, exact finite character identity,
analytic uniqueness, the complete-inventory argument principle, and Cauchy's
formula. Nonprincipal cancellation is a normalization check, not a second proof.
AI-assisted source; compilation, kernel checking, axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Filter Metric
open scoped Topology BigOperators

namespace GRWTSK.NumberTheory.Conditional.RegularizedCharacter

open GRWTSK.Analysis.ComplexAnalysis
open CompactZeroInventory

variable {N : ℕ} [NeZero N]

/-- Actual upstream Hurwitz functions supply the entire extension. -/
def source (χ : DirichletCharacter ℂ N) (s : ℂ) : ℂ :=
  (N : ℂ) ^ (-s) * ∑ j : ZMod N,
    χ j * HurwitzEuler.regularizedSource (EulerApproximation.positiveShift j) s

theorem entire (χ : DirichletCharacter ℂ N) : AnalyticOnNhd ℂ (source χ) univ := by
  intro s hs
  have hn : (N : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  have hp : AnalyticAt ℂ (fun w : ℂ => (N : ℂ) ^ (-w)) s :=
    ((differentiable_id.neg).const_cpow (Or.inl hn)).analyticAt s
  apply hp.mul
  exact Finset.analyticAt_fun_sum _ (fun j _ => analyticAt_const.mul
    (HurwitzEuler.regularizedSource_entire (EulerApproximation.positiveShift j)
      s (mem_univ s)))

/-- The actual residue-class average fixes the normalization value. -/
theorem value_one (χ : DirichletCharacter ℂ N) :
    source χ 1 = (N : ℂ) ^ (-1 : ℂ) * ∑ j : ZMod N, χ j := by
  simp [source]

theorem source_eq (χ : DirichletCharacter ℂ N) (s : ℂ) (pole : s ≠ 1) :
    source χ s = (s - 1) * χ.LFunction s := by
  change (N : ℂ) ^ (-s) * (∑ j : ZMod N,
    χ j * HurwitzEuler.regularizedSource (EulerApproximation.positiveShift j) s) =
      (s - 1) * ((N : ℂ) ^ (-s) *
        ∑ j : ZMod N, χ j * HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s)
  simp_rw [HurwitzEuler.regularizedSource_eq _ s pole,
    CharacterEuler.positiveShift_toAddCircle]
  calc
    _ = (N : ℂ) ^ (-s) * ((s - 1) *
        ∑ j : ZMod N, χ j * HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s) := by
      congr 1
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j hj
      ring
    _ = _ := by ring

theorem source_eventuallyEq (χ : DirichletCharacter ℂ N) (s : ℂ) (pole : s ≠ 1) :
    source χ =ᶠ[𝓝 s] fun z => (z - 1) * χ.LFunction z := by
  filter_upwards [isOpen_ne.mem_nhds pole] with z hz
  exact source_eq χ z hz

/-- Complete compact inventories now allow disks crossing the removed pole. -/
def context (χ : DirichletCharacter ℂ N) : AnalyticContext (source χ) univ where
  analytic := entire χ
  connected := isConnected_univ
  anchor := 2
  anchor_mem := mem_univ 2
  anchor_nonzero := by
    rw [source_eq χ 2 (by norm_num)]
    exact mul_ne_zero (by norm_num)
      (χ.LFunction_ne_zero_of_one_le_re (Or.inr (by norm_num)) (by norm_num))

theorem zero_iff (χ : DirichletCharacter ℂ N) (s : ℂ) (pole : s ≠ 1) :
    source χ s = 0 ↔ χ.LFunction s = 0 := by
  rw [source_eq χ s pole, mul_eq_zero]
  exact or_iff_right (sub_ne_zero.mpr pole)

theorem order_eq (χ : DirichletCharacter ℂ N) (s : ℂ) (pole : s ≠ 1) :
    analyticOrderAt (source χ) s = analyticOrderAt χ.LFunction s := by
  have hL := (SourceInventories.characterContext χ).analytic s pole
  have hunit : AnalyticAt ℂ (fun z : ℂ => z - 1) s := analyticAt_id.sub analyticAt_const
  rw [analyticOrderAt_congr (source_eventuallyEq χ s pole)]
  change analyticOrderAt ((fun z : ℂ => z - 1) * χ.LFunction) s = _
  rw [analyticOrderAt_mul hunit hL,
    hunit.analyticOrderAt_eq_zero.mpr (sub_ne_zero.mpr pole), zero_add]

/-- Differentiate on the genuine source domain before cancelling denominators. -/
theorem logDeriv_split (χ : DirichletCharacter ℂ N) (s : ℂ)
    (pole : s ≠ 1) (nonzero : χ.LFunction s ≠ 0) :
    logDeriv (source χ) s = 1 / (s - 1) + logDeriv χ.LFunction s := by
  have hL := (χ.differentiableAt_LFunction s (Or.inl pole)).hasDerivAt
  have hp := ((hasDerivAt_id s).sub_const 1).mul hL
  have derivative : deriv (source χ) s = χ.LFunction s + (s - 1) * deriv χ.LFunction s := by
    rw [(source_eventuallyEq χ s pole).deriv_eq, hp.deriv]
    ring
  unfold logDeriv
  rw [derivative, source_eq χ s pole]
  field_simp [sub_ne_zero.mpr pole, nonzero]
  <;> ring

theorem nonprincipal_product (χ : DirichletCharacter ℂ N) (nonprincipal : χ ≠ 1) :
    source χ = fun s => (s - 1) * χ.LFunction s := by
  have hL : Differentiable ℂ χ.LFunction :=
    fun s => χ.differentiableAt_LFunction s (Or.inr nonprincipal)
  have hprod : AnalyticOnNhd ℂ (fun s : ℂ => (s - 1) * χ.LFunction s) univ :=
    fun s _ => (analyticAt_id.sub analyticAt_const).mul (hL.analyticAt s)
  exact (entire χ).eq_of_frequently_eq hprod
    (((source_eventuallyEq χ 2 (by norm_num)).filter_mono nhdsWithin_le_nhds).frequently)

/-- A normalization zero is not an actual L-zero; its order is exactly one. -/
theorem nonprincipal_order_one (χ : DirichletCharacter ℂ N) (nonprincipal : χ ≠ 1) :
    source χ 1 = 0 ∧ analyticOrderAt (source χ) 1 = (1 : ℕ∞) := by
  have product := nonprincipal_product χ nonprincipal
  constructor
  · rw [product]
    simp
  · apply ((entire χ) 1 (mem_univ 1)).analyticOrderAt_eq_natCast.mpr
    refine ⟨χ.LFunction,
      (show Differentiable ℂ χ.LFunction from
        fun s => χ.differentiableAt_LFunction s (Or.inr nonprincipal)).analyticAt 1,
      χ.LFunction_apply_one_ne_zero nonprincipal, ?_⟩
    exact Eventually.of_forall (fun z => by
      rw [product]
      simp only [pow_one, smul_eq_mul])

theorem sphere_ne_one {c z : ℂ} {r : ℝ}
    (inside : (1 : ℂ) ∈ ball c r) (boundary : z ∈ sphere c r) : z ≠ 1 := by
  intro same
  subst z
  exact (mem_ball.mp inside).ne (mem_sphere.mp boundary)

/-- The finite formula contains every regularized-source zero and the exact pole term. -/
theorem finite_explicit_formula (χ : DirichletCharacter ℂ N) (c : ℂ) (r : ℝ)
    (inside : (1 : ℂ) ∈ ball c r)
    (nonzero : ∀ z ∈ sphere c r, χ.LFunction z ≠ 0)
    (w : ℂ → ℂ) (analytic : AnalyticOnNhd ℂ w (closedBall c r)) :
    CircleIntegrable (fun z => -logDeriv χ.LFunction z * w z) c r ∧
      (∮ z in C(c, r), -logDeriv χ.LFunction z * w z) =
        (w 1 - ∑ a ∈ (context χ).zeros (closedBall c r)
          (isCompact_closedBall c r) (subset_univ _),
          (analyticOrderNatAt (source χ) a : ℂ) * w a) *
            FinitePrincipalPartCircle.period := by
  have positive : 0 < r := dist_nonneg.trans_lt (mem_ball.mp inside)
  have sourceNonzero : ∀ z ∈ sphere c r, source χ z ≠ 0 := by
    intro z hz
    rw [source_eq χ z (sphere_ne_one inside hz)]
    exact mul_ne_zero (sub_ne_zero.mpr (sphere_ne_one inside hz)) (nonzero z hz)
  obtain ⟨hI, hFormula⟩ := (context χ).weighted_circle_formula c r positive (subset_univ _)
    sourceNonzero w analytic
  have kernelContinuous : ContinuousOn (fun z : ℂ => w z / (z - 1)) (sphere c r) := by
    intro z hz
    exact ((analytic z (sphere_subset_closedBall hz)).continuousAt.div
      (continuousAt_id.sub continuousAt_const)
      (sub_ne_zero.mpr (sphere_ne_one inside hz))).continuousWithinAt
  have kernelIntegrable := kernelContinuous.circleIntegrable positive.le
  have cauchy : (∮ z in C(c, r), w z / (z - 1)) =
      FinitePrincipalPartCircle.period * w 1 := by
    exact Complex.circleIntegral_div_sub_of_differentiable_on_off_countable
      countable_empty inside
      (fun z hz => (analytic z hz).continuousAt.continuousWithinAt)
      (fun z hz => (analytic z (ball_subset_closedBall hz.1)).differentiableAt)
  have boundaryEq : EqOn (fun z => -logDeriv χ.LFunction z * w z)
      (fun z => w z / (z - 1) - logDeriv (source χ) z * w z) (sphere c r) := by
    intro z hz
    rw [logDeriv_split χ z (sphere_ne_one inside hz) (nonzero z hz)]
    ring
  constructor
  · apply (circleIntegrable_congr (by
      simpa only [abs_of_pos positive] using boundaryEq)).mpr
    exact kernelIntegrable.sub hI
  · rw [circleIntegral.integral_congr positive.le boundaryEq,
      circleIntegral.integral_sub kernelIntegrable hI, cauchy, hFormula]
    ring

/-- For nonprincipal characters the artificial one-zero cancels exactly. -/
theorem nonprincipal_correction_cancels (χ : DirichletCharacter ℂ N) (nonprincipal : χ ≠ 1)
    (c : ℂ) (r : ℝ) (inside : (1 : ℂ) ∈ ball c r) (w : ℂ → ℂ) :
    w 1 - (∑ a ∈ (context χ).zeros (closedBall c r)
      (isCompact_closedBall c r) (subset_univ _),
      (analyticOrderNatAt (source χ) a : ℂ) * w a) =
      -∑ a ∈ ((context χ).zeros (closedBall c r)
        (isCompact_closedBall c r) (subset_univ _)).erase 1,
        (analyticOrderNatAt χ.LFunction a : ℂ) * w a := by
  classical
  let S := (context χ).zeros (closedBall c r) (isCompact_closedBall c r) (subset_univ _)
  have horder := nonprincipal_order_one χ nonprincipal
  have member : (1 : ℂ) ∈ S :=
    ((context χ).mem_zeros _ _ _ 1).mpr ⟨ball_subset_closedBall inside, horder.1⟩
  have multiplicity : analyticOrderNatAt (source χ) 1 = 1 := by
    simp [analyticOrderNatAt, horder.2]
  have split := Finset.sum_erase_add S
    (fun a => (analyticOrderNatAt (source χ) a : ℂ) * w a) member
  have rest : (∑ a ∈ S.erase 1, (analyticOrderNatAt (source χ) a : ℂ) * w a) =
      ∑ a ∈ S.erase 1, (analyticOrderNatAt χ.LFunction a : ℂ) * w a := by
    apply Finset.sum_congr rfl
    intro a ha
    have different := (Finset.mem_erase.mp ha).1
    simp only [analyticOrderNatAt, order_eq χ a different]
  rw [multiplicity, Nat.cast_one, one_mul, rest] at split
  change w 1 - (∑ a ∈ S, (analyticOrderNatAt (source χ) a : ℂ) * w a) = _
  linear_combination -split

end GRWTSK.NumberTheory.Conditional.RegularizedCharacter
