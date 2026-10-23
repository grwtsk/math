/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.GradedDyadicEnergyHalfPlane
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaOctaveSupplier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Graded theta error preserves the zero-free threshold

For rho>=1/2, suppose that on each sufficiently large dyadic octave

  |theta(u)-u| + 1 <= C X^(rho+eta/2).

Pinned Chebyshev control of psi-theta is O(sqrt u), which is absorbed because
rho>=1/2. Localized Abel summation then gives

  augmentedEnergy(X) <= C' X^(-2(1-rho)+eta).

The graded Mellin/ODE transport therefore yields zeta nonvanishing only on

  Re(s)>rho.

The arithmetic exponent and analytic half-plane threshold agree. Repeating
this linear transport cannot improve a 7/8 input to a smaller threshold.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
GRADED_THETA_TO_SAME_ZERO_FREE_THRESHOLD_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def AllDyadicThetaAtThreshold (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ u ∈
        Set.Icc ((dyadicScale j : ℕ) : ℝ)
          ((2 * dyadicScale j : ℕ) : ℝ),
        |thetaError u| + 1 ≤
          C * Real.rpow (dyadicScale j : ℝ)
            (ρ + η / 2)

theorem thresholdAmplitude_ge_one
    {ρ η : ℝ}
    (hρ : (1 / 2 : ℝ) ≤ ρ)
    (hη : 0 < η)
    {X : ℕ} (hX : 0 < X) :
    1 ≤ Real.rpow (X : ℝ) (ρ + η / 2) := by
  have hX1 : (1 : ℝ) ≤ (X : ℝ) := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX))
  exact Real.one_le_rpow hX1 (by linarith)

theorem sqrt_twoX_le_two_thresholdAmplitude
    {ρ η : ℝ}
    (hρ : (1 / 2 : ℝ) ≤ ρ)
    (hη : 0 < η)
    {X : ℕ} (hX : 0 < X) :
    Real.sqrt (((2 * X : ℕ) : ℝ)) ≤
      2 * Real.rpow (X : ℝ) (ρ + η / 2) := by
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hX1 : (1 : ℝ) ≤ (X : ℝ) := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX))
  have hsqrt2 :
      Real.sqrt (((2 * X : ℕ) : ℝ)) ≤
        2 * Real.sqrt (X : ℝ) := by
    have hl : 0 ≤ Real.sqrt (((2 * X : ℕ) : ℝ)) :=
      Real.sqrt_nonneg _
    have hr : 0 ≤ 2 * Real.sqrt (X : ℝ) := by positivity
    apply (sq_le_sq₀ hl hr).1
    rw [Real.sq_sqrt (by positivity),
      mul_pow, Real.sq_sqrt hXr.le]
    push_cast
    nlinarith
  have hsqrtPow :
      Real.sqrt (X : ℝ) ≤
        Real.rpow (X : ℝ) (ρ + η / 2) := by
    rw [Real.sqrt_eq_rpow]
    exact Real.rpow_le_rpow_of_exponent_le
      hX1 (by linarith)
  exact hsqrt2.trans
    (mul_le_mul_of_nonneg_left hsqrtPow (by norm_num))

theorem thetaAtThreshold_to_energyAtThreshold
    {ρ : ℝ}
    (hρ : (1 / 2 : ℝ) ≤ ρ)
    (hθ : AllDyadicThetaAtThreshold ρ) :
    AllDyadicEnergyAtThreshold ρ := by
  intro η hη
  obtain ⟨C, hC, j₀, htheta⟩ := hθ η hη
  obtain ⟨C₀, hC₀bound⟩ :=
    Chebyshev.psi_sub_theta_le_mul_sqrt
  let A₀ : ℝ := |C₀|
  let D : ℝ := C + 2 * A₀
  let E : ℝ := 6 * (3 * D + 1)^2
  have hA₀ : 0 ≤ A₀ := abs_nonneg _
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  have hE : 0 ≤ E := by
    dsimp [E]
    positivity
  refine ⟨E, hE, j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  let a : ℝ := ρ + η / 2
  let T : ℝ := Real.rpow (X : ℝ) a
  have hX : 0 < X := dyadicScale_pos j
  have hX2 : 2 ≤ X := by
    dsimp [X, dyadicScale]
    omega
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hT0 : 0 ≤ T := by
    dsimp [T]
    exact Real.rpow_nonneg hXr.le _
  have hT1 : 1 ≤ T := by
    dsimp [T, a]
    exact thresholdAmplitude_ge_one hρ hη hX
  have henv : PsiOctaveEnvelope X (D * T) := by
    refine ⟨mul_nonneg hD hT0, ?_⟩
    intro u hu
    have hthetaU :
        |thetaError u| + 1 ≤ C * T := by
      simpa [X, T, a] using htheta j hj u
        (by simpa [X] using hu)
    have hpsiTheta0 :
        0 ≤ ψ u - θ u :=
      sub_nonneg.mpr (Chebyshev.theta_le_psi u)
    have hpsiTheta :
        ψ u - θ u ≤
          2 * A₀ * T := by
      have h0 := hC₀bound u
      have hCabs : C₀ ≤ A₀ := by
        dsimp [A₀]
        exact le_abs_self C₀
      have hsqrtU :
          Real.sqrt u ≤ 2 * T := by
        have hsqrt2 :=
          sqrt_twoX_le_two_thresholdAmplitude
            hρ hη hX
        exact (Real.sqrt_le_sqrt hu.2).trans
          (by simpa [T, a, X] using hsqrt2)
      calc
        ψ u - θ u
            ≤ C₀ * Real.sqrt u := h0
        _ ≤ A₀ * Real.sqrt u :=
          mul_le_mul_of_nonneg_right hCabs
            (Real.sqrt_nonneg _)
        _ ≤ 2 * A₀ * T := by
          have :=
            mul_le_mul_of_nonneg_left hsqrtU hA₀
          nlinarith
    have herr :
        |psiError u| ≤
          |thetaError u| + (ψ u - θ u) := by
      unfold psiError thetaError
      have hid :
          ψ u - u =
            (θ u - u) + (ψ u - θ u) := by ring
      rw [hid]
      exact (abs_add _ _).trans
        (add_le_add_left
          (by simpa [abs_of_nonneg hpsiTheta0])
          |θ u - u|)
    dsimp [D]
    nlinarith
  have henergy :=
    augmentedEnergy_le_of_psiEnvelope hX2 henv
  have hnumer :
      3 * (D * T) + 1 ≤
        (3 * D + 1) * T := by
    nlinarith
  have hratio :
      (3 * (D * T) + 1) / (X : ℝ) ≤
        ((3 * D + 1) * T) / (X : ℝ) :=
    div_le_div_of_nonneg_right hnumer hXr.le
  have hsquare :
      ((3 * (D * T) + 1) / (X : ℝ))^2 ≤
        (((3 * D + 1) * T) / (X : ℝ))^2 := by
    exact (sq_le_sq₀ (by positivity) (by positivity)).2 hratio
  have hcoarse :
      augmentedEnergy X ≤
        6 * (((3 * D + 1) * T) / (X : ℝ))^2 :=
    henergy.trans
      (mul_le_mul_of_nonneg_left hsquare (by norm_num))
  have hpow :
      (T / (X : ℝ))^2 =
        Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
    dsimp [T, a]
    rw [div_pow]
    rw [← Real.rpow_two]
    rw [← Real.rpow_mul hXr.le]
    rw [show ((X : ℝ)^2) =
      Real.rpow (X : ℝ) 2 by
        rw [Real.rpow_natCast]]
    rw [← Real.rpow_sub hXr]
    congr 1
    ring
  dsimp [E]
  calc
    augmentedEnergy X
        ≤ 6 * (((3 * D + 1) * T) / (X : ℝ))^2 := hcoarse
    _ = 6 * (3 * D + 1)^2 * (T / (X : ℝ))^2 := by
      ring
    _ = 6 * (3 * D + 1)^2 *
        Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
      rw [hpow]
    _ = E * Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
      rfl

/-- The linear arithmetic/Mellin route returns exactly the supplied threshold. -/
theorem thetaAtThreshold_to_sameZeroFree
    {ρ : ℝ}
    (hρhalf : (1 / 2 : ℝ) ≤ ρ)
    (hρone : ρ < 1)
    (hθ : AllDyadicThetaAtThreshold ρ) :
    RiemannZetaZeroFreeRightHalfPlane ρ :=
  energyAtThreshold_to_zeroFree
    hρhalf hρone
    (thetaAtThreshold_to_energyAtThreshold hρhalf hθ)

end GRWTSK.RiemannHypothesis
