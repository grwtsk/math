/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaOctaveSupplier
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Adapter from the classical von-Koch theta error form

A classical RH-strength formulation is

  |theta(x)-x| <= C sqrt(x) (log x)^2

for all sufficiently large x.

For every eta>0, Mathlib proves

  (log x)^2 = o(x^(eta/4)).

Thus the classical bound implies, after enlarging constants and thresholds,

  |theta(u)-u| + 1
    <= C_eta X sqrt(X^(-1+eta))

uniformly on every dyadic octave X<=u<=2X.

Consequently any independently certified von-Koch theta error theorem supplies
the dyadic theta square-root bound, and hence the existing conditional RH
return.

This file is an adapter only. It does not import or assume the blueprint/sorry
statements in external PNT repositories.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
VON_KOCH_THETA_BOUND_ADAPTER_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology Asymptotics
open Chebyshev
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

def ClassicalThetaSqrtLogSqBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ x₀ : ℝ,
    ∀ x ≥ x₀,
      |thetaError x| ≤
        C * Real.sqrt x * (Real.log x)^2

theorem eventually_log_sq_le_rpow
    {δ : ℝ} (hδ : 0 < δ) :
    ∀ᶠ x : ℝ in atTop,
      (Real.log x)^2 ≤ Real.rpow x δ := by
  have h :=
    Real.isLittleO_log_rpow_rpow_atTop (2 : ℝ) hδ
  filter_upwards [h.eventuallyLE, eventually_gt_atTop 1] with x hx hx1
  have hrpow : 0 ≤ Real.rpow x δ :=
    Real.rpow_nonneg (by linarith) _
  simpa [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _),
    abs_of_nonneg hrpow] using hx

theorem classicalThetaSqrtLogSqBound_to_thetaOctave
    (hclassical : ClassicalThetaSqrtLogSqBound) :
    AllDyadicThetaOctaveSquareRootBound := by
  obtain ⟨C₀, hC₀, x₀, hθ⟩ := hclassical
  intro η hη
  let δ : ℝ := η / 4
  have hδ : 0 < δ := by
    dsimp [δ]
    linarith
  obtain ⟨L, hL⟩ :
      ∃ L : ℝ, ∀ x ≥ L,
        (Real.log x)^2 ≤ Real.rpow x δ := by
    simpa only [eventually_atTop] using
      (eventually_log_sq_le_rpow hδ)
  let C : ℝ := 1 + C₀ * Real.rpow 2 (1 / 2 + δ)
  have hC : 0 ≤ C := by
    dsimp [C]
    positivity
  have hscale :
      Tendsto (fun j : ℕ => (dyadicScale j : ℝ))
        atTop atTop := by
    unfold dyadicScale
    exact_mod_cast
      tendsto_pow_atTop_atTop_of_one_lt
        (by norm_num : 1 < (2 : ℕ))
  obtain ⟨j₀, hx0j, hLj, h1j⟩ :
      ∃ j₀ : ℕ,
        x₀ ≤ (dyadicScale j₀ : ℝ) ∧
        L ≤ (dyadicScale j₀ : ℝ) ∧
        1 ≤ (dyadicScale j₀ : ℝ) := by
    filter_upwards [hscale.eventually_ge_atTop x₀,
      hscale.eventually_ge_atTop L,
      hscale.eventually_ge_atTop 1] with j h1 h2 h3
    exact ⟨j, h1, h2, h3⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj u hu
  let X : ℕ := dyadicScale j
  have hXmono : dyadicScale j₀ ≤ X := by
    dsimp [X, dyadicScale]
    exact pow_le_pow_right₀ (by norm_num : 0 ≤ (2 : ℕ))
      (Nat.add_le_add_right hj 1)
  have hXx0 : x₀ ≤ (X : ℝ) :=
    hx0j.trans (by exact_mod_cast hXmono)
  have hXL : L ≤ (X : ℝ) :=
    hLj.trans (by exact_mod_cast hXmono)
  have hX1 : (1 : ℝ) ≤ (X : ℝ) :=
    h1j.trans (by exact_mod_cast hXmono)
  have huX : (X : ℝ) ≤ u := hu.1
  have hu2X : u ≤ 2 * (X : ℝ) := by
    simpa using hu.2
  have hu1 : 1 ≤ u := hX1.trans huX
  have htheta :
      |thetaError u| ≤
        C₀ * Real.sqrt u * (Real.log u)^2 :=
    hθ u (hXx0.trans huX)
  have hlog :
      (Real.log u)^2 ≤ Real.rpow u δ :=
    hL u (hXL.trans huX)
  have hpowu :
      Real.sqrt u * (Real.log u)^2 ≤
        Real.rpow u (1 / 2 + δ) := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_add (by linarith [hu1])]
    exact mul_le_mul_of_nonneg_left hlog
      (Real.rpow_nonneg (by linarith [hu1]) _)
  have hpow2X :
      Real.rpow u (1 / 2 + δ) ≤
        Real.rpow (2 * (X : ℝ)) (1 / 2 + δ) := by
    exact Real.rpow_le_rpow (by linarith [hu1]) hu2X
      (by dsimp [δ]; linarith)
  have hsplit :
      Real.rpow (2 * (X : ℝ)) (1 / 2 + δ) =
        Real.rpow 2 (1 / 2 + δ) *
          Real.rpow (X : ℝ) (1 / 2 + δ) := by
    rw [Real.mul_rpow (by norm_num : 0 ≤ (2 : ℝ))
      (by linarith [hX1])]
  have hthetaX :
      |thetaError u| ≤
        C₀ * Real.rpow 2 (1 / 2 + δ) *
          Real.rpow (X : ℝ) (1 / 2 + δ) := by
    calc
      |thetaError u|
          ≤ C₀ * (Real.sqrt u * (Real.log u)^2) := htheta
      _ ≤ C₀ * Real.rpow u (1 / 2 + δ) :=
        mul_le_mul_of_nonneg_left hpowu hC₀
      _ ≤ C₀ * Real.rpow (2 * (X : ℝ)) (1 / 2 + δ) :=
        mul_le_mul_of_nonneg_left hpow2X hC₀
      _ = _ := by rw [hsplit]; ring
  have hsmallExp :
      1 / 2 + δ ≤ 1 / 2 + η / 2 := by
    dsimp [δ]
    linarith
  have hpowmono :
      Real.rpow (X : ℝ) (1 / 2 + δ) ≤
        Real.rpow (X : ℝ) (1 / 2 + η / 2) :=
    Real.rpow_le_rpow_of_exponent_le hX1 hsmallExp
  have hone :
      1 ≤ Real.rpow (X : ℝ) (1 / 2 + η / 2) :=
    Real.one_le_rpow hX1 (by linarith)
  have htargetEq :
      (X : ℝ) *
          Real.sqrt (Real.rpow (X : ℝ) (-1 + η)) =
        Real.rpow (X : ℝ) (1 / 2 + η / 2) := by
    have hXp : (0 : ℝ) < (X : ℝ) := lt_of_lt_of_le zero_lt_one hX1
    rw [Real.sqrt_eq_rpow,
      ← Real.rpow_mul hXp.le]
    rw [show (1 : ℝ) / 2 * (-1 + η) =
      (-1 + η) / 2 by ring]
    rw [← Real.rpow_one (X : ℝ),
      ← Real.rpow_add hXp]
    congr 1
    ring
  have hthetaTarget :
      |thetaError u| ≤
        (C - 1) *
          Real.rpow (X : ℝ) (1 / 2 + η / 2) := by
    dsimp [C]
    calc
      |thetaError u|
          ≤ C₀ * Real.rpow 2 (1 / 2 + δ) *
              Real.rpow (X : ℝ) (1 / 2 + δ) := hthetaX
      _ ≤ C₀ * Real.rpow 2 (1 / 2 + δ) *
              Real.rpow (X : ℝ) (1 / 2 + η / 2) :=
        mul_le_mul_of_nonneg_left hpowmono (by positivity)
      _ = (C - 1) *
          Real.rpow (X : ℝ) (1 / 2 + η / 2) := by
        dsimp [C]
        ring
  calc
    |thetaError u| + 1
        ≤ (C - 1) *
            Real.rpow (X : ℝ) (1 / 2 + η / 2) +
          Real.rpow (X : ℝ) (1 / 2 + η / 2) :=
      add_le_add hthetaTarget hone
    _ = C * Real.rpow (X : ℝ) (1 / 2 + η / 2) := by ring
    _ = C * (X : ℝ) *
        Real.sqrt (Real.rpow (X : ℝ) (-1 + η)) := by
      rw [htargetEq]
      ring

theorem classicalThetaSqrtLogSqBound_to_allDyadicEnergyBound
    (hclassical : ClassicalThetaSqrtLogSqBound) :
    AllDyadicEnergyBound :=
  thetaOctaveSquareRootBound_to_allDyadicEnergyBound
    (classicalThetaSqrtLogSqBound_to_thetaOctave hclassical)

theorem riemannHypothesis_of_classicalThetaSqrtLogSqBound
    (hclassical : ClassicalThetaSqrtLogSqBound) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_thetaOctaveSquareRootBound
    (classicalThetaSqrtLogSqBound_to_thetaOctave hclassical)

end GRWTSK.RiemannHypothesis
