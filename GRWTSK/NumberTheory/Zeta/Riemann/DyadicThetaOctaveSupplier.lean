/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiOctaveEnergySupplier
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Prime-only theta octave supplier

Pinned Mathlib proves

  0 <= psi(u)-theta(u) <= C_hp sqrt(u).

The RH-strength octave scale used by the psi supplier is

  X * sqrt(X^(-1+eta)) = X^((1+eta)/2).

For every eta>0 this scale dominates sqrt(u) uniformly on u in [X,2X].
Therefore a theta-only square-root-plus-epsilon octave error bound supplies the
psi bound, hence AllDyadicEnergyBound and the existing conditional RH return.

This removes higher prime powers from the Abel supplier as well as from the
Fourier-coordinate supplier.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
THETA_OCTAVE_SQRT_BOUND_IMPLIES_RH_CONDITIONALLY.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def thetaError (u : ℝ) : ℝ := θ u - u

/-- The RH-G01 target amplitude dominates sqrt(X). -/
theorem sqrt_X_le_X_mul_sqrt_target
    {X : ℕ} (hX : 0 < X)
    {η : ℝ} (hη : 0 < η) :
    Real.sqrt (X : ℝ) ≤
      (X : ℝ) *
        Real.sqrt (Real.rpow (X : ℝ) (-1 + η)) := by
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hq :
      0 ≤ Real.rpow (X : ℝ) (-1 + η) :=
    Real.rpow_nonneg hXr.le _
  have hinv :
      1 / (X : ℝ) ≤
        Real.rpow (X : ℝ) (-1 + η) :=
    inv_le_rpow_neg_one_add_eta hX hη
  have hsq :
      (X : ℝ) ≤
        (X : ℝ)^2 *
          Real.rpow (X : ℝ) (-1 + η) := by
    have hmul :=
      mul_le_mul_of_nonneg_left hinv
        (show 0 ≤ (X : ℝ)^2 by positivity)
    field_simp [hXr.ne'] at hmul
    simpa [mul_assoc] using hmul
  have hsqrt0 : 0 ≤ Real.sqrt (X : ℝ) :=
    Real.sqrt_nonneg _
  have hrhs0 :
      0 ≤ (X : ℝ) *
        Real.sqrt (Real.rpow (X : ℝ) (-1 + η)) := by
    positivity
  apply (sq_le_sq₀ hsqrt0 hrhs0).1
  rw [Real.sq_sqrt hXr.le, mul_pow,
    Real.sq_sqrt hq]
  simpa [mul_assoc] using hsq

theorem sqrt_twoX_le_two_target
    {X : ℕ} (hX : 0 < X)
    {η : ℝ} (hη : 0 < η) :
    Real.sqrt (((2 * X : ℕ) : ℝ)) ≤
      2 * ((X : ℝ) *
        Real.sqrt (Real.rpow (X : ℝ) (-1 + η))) := by
  have hsqrt :=
    sqrt_X_le_X_mul_sqrt_target hX hη
  have hXr : 0 ≤ (X : ℝ) := Nat.cast_nonneg _
  have hleft :
      Real.sqrt (((2 * X : ℕ) : ℝ)) ≤
        2 * Real.sqrt (X : ℝ) := by
    have hs0 :
        0 ≤ Real.sqrt (((2 * X : ℕ) : ℝ)) :=
      Real.sqrt_nonneg _
    have hr0 : 0 ≤ 2 * Real.sqrt (X : ℝ) := by positivity
    apply (sq_le_sq₀ hs0 hr0).1
    rw [Real.sq_sqrt (by positivity),
      mul_pow, Real.sq_sqrt hXr]
    push_cast
    nlinarith
  exact hleft.trans (mul_le_mul_of_nonneg_left hsqrt (by norm_num))

def AllDyadicThetaOctaveSquareRootBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ u ∈
        Set.Icc ((dyadicScale j : ℕ) : ℝ)
          ((2 * dyadicScale j : ℕ) : ℝ),
        |thetaError u| + 1 ≤
          C * (dyadicScale j : ℝ) *
            Real.sqrt
              (Real.rpow (dyadicScale j : ℝ) (-1 + η))

/-- Prime-only theta control absorbs the higher-prime-power Chebyshev
remainder and yields the psi supplier. -/
theorem thetaOctaveSquareRootBound_to_psi
    (htheta : AllDyadicThetaOctaveSquareRootBound) :
    AllDyadicPsiOctaveSquareRootBound := by
  intro η hη
  obtain ⟨C, hC, j₀, hthetaBound⟩ := htheta η hη
  obtain ⟨C₀, hC₀⟩ := Chebyshev.psi_sub_theta_le_mul_sqrt
  let A₀ : ℝ := |C₀|
  let D : ℝ := C + 2 * A₀
  have hA₀ : 0 ≤ A₀ := abs_nonneg _
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj u hu
  let X : ℕ := dyadicScale j
  let target : ℝ :=
    (X : ℝ) * Real.sqrt (Real.rpow (X : ℝ) (-1 + η))
  have hX : 0 < X := dyadicScale_pos j
  have huTheta :
      |thetaError u| + 1 ≤ C * target := by
    simpa [X, target, thetaError] using hthetaBound j hj u
      (by simpa [X] using hu)
  have hpsiTheta0 :
      0 ≤ ψ u - θ u :=
    sub_nonneg.mpr (Chebyshev.theta_le_psi u)
  have hpsiTheta :
      ψ u - θ u ≤ A₀ * Real.sqrt u := by
    have h0 := hC₀ u
    have hCabs : C₀ ≤ A₀ := by
      dsimp [A₀]
      exact le_abs_self C₀
    exact h0.trans
      (mul_le_mul_of_nonneg_right hCabs (Real.sqrt_nonneg u))
  have hu0 : 0 ≤ u := hu.1.trans (by exact_mod_cast hX.le)
  have hsqrt_u :
      Real.sqrt u ≤
        Real.sqrt (((2 * X : ℕ) : ℝ)) :=
    Real.sqrt_le_sqrt hu.2
  have hsqrt_target :
      Real.sqrt u ≤ 2 * target := by
    exact hsqrt_u.trans (by
      simpa [target] using sqrt_twoX_le_two_target hX hη)
  have hhp :
      ψ u - θ u ≤ 2 * A₀ * target := by
    exact hpsiTheta.trans
      (by
        have := mul_le_mul_of_nonneg_left hsqrt_target hA₀
        nlinarith)
  have herr :
      |psiError u| ≤ |thetaError u| + (ψ u - θ u) := by
    unfold psiError thetaError
    have hid :
        ψ u - u = (θ u - u) + (ψ u - θ u) := by ring
    rw [hid]
    exact (abs_add _ _).trans
      (add_le_add_left
        (by simpa [abs_of_nonneg hpsiTheta0])
        |θ u - u|)
  dsimp [D]
  unfold psiError
  nlinarith

theorem thetaOctaveSquareRootBound_to_allDyadicEnergyBound
    (htheta : AllDyadicThetaOctaveSquareRootBound) :
    AllDyadicEnergyBound :=
  psiOctaveSquareRootBound_to_allDyadicEnergyBound
    (thetaOctaveSquareRootBound_to_psi htheta)

theorem riemannHypothesis_of_thetaOctaveSquareRootBound
    (htheta : AllDyadicThetaOctaveSquareRootBound) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_psiOctaveSquareRootBound
    (thetaOctaveSquareRootBound_to_psi htheta)

end GRWTSK.RiemannHypothesis
