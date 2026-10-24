# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.GradedPsiThresholdTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7ed85d75ce10b1b3a1803aad500ab070607110c` · SHA-256 `0c9ba35257c12768cb7920eef395b6426b7346bf554b1f08f50189f5406064e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.GradedThetaThresholdTransport
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiOctaveEnergySupplier
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Graded psi threshold transport

Define the graded psi analogue of the existing theta supplier. A bound

  |psi(u)-u|+1 <= C X^(rho+eta/2)

on each dyadic octave yields the threshold-rho energy bound by the localized
Abel reconstruction.

For rho>=1/2, pinned Chebyshev control of psi-theta by O(sqrt u) is absorbed by
the same scale. Thus graded psi and theta suppliers are interconvertible up to
constants at the threshold level relevant to this program.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
GRADED_PSI_THRESHOLD_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def AllDyadicPsiAtThreshold (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ u ∈
        Set.Icc ((dyadicScale j : ℕ) : ℝ)
          ((2 * dyadicScale j : ℕ) : ℝ),
        |psiError u| + 1 ≤
          C * Real.rpow (dyadicScale j : ℝ)
            (ρ + η / 2)

theorem psiAtThreshold_to_energyAtThreshold
    {ρ : ℝ} (hψ : AllDyadicPsiAtThreshold ρ) :
    AllDyadicEnergyAtThreshold ρ := by
  intro η hη
  obtain ⟨C, hC, j₀, hbound⟩ := hψ η hη
  let D : ℝ := 96 * C^2
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  let T : ℝ := Real.rpow (X : ℝ) (ρ + η / 2)
  let A : ℝ := C * T
  have hX : 0 < X := dyadicScale_pos j
  have hX2 : 2 ≤ X := by
    dsimp [X, dyadicScale]
    omega
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hA0 : 0 ≤ A := by
    dsimp [A, T]
    positivity
  have henv : PsiOctaveEnvelope X A := by
    refine ⟨hA0, ?_⟩
    intro u hu
    have hb := hbound j hj u (by simpa [X] using hu)
    dsimp [A, T, X] at *
    linarith
  have hA1 : 1 ≤ A := by
    have hb := hbound j hj (X : ℝ) (by
      constructor
      · exact le_rfl
      · exact_mod_cast (by omega : X ≤ 2 * X))
    dsimp [A, T, X] at *
    linarith
  have henergy := augmentedEnergy_le_of_psiEnvelope hX2 henv
  have hnumer : 3 * A + 1 ≤ 4 * A := by linarith
  have hratio :
      (3 * A + 1) / (X : ℝ) ≤ 4 * A / (X : ℝ) :=
    div_le_div_of_nonneg_right hnumer hXr.le
  have hsquare :
      ((3 * A + 1) / (X : ℝ))^2 ≤
        (4 * A / (X : ℝ))^2 := by
    exact (sq_le_sq₀ (by positivity) (by positivity)).2 hratio
  have hcoarse :
      augmentedEnergy X ≤ 6 * (4 * A / (X : ℝ))^2 :=
    henergy.trans
      (mul_le_mul_of_nonneg_left hsquare (by norm_num))
  have hpow :
      (T / (X : ℝ))^2 =
        Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
    dsimp [T]
    rw [div_pow]
    rw [← Real.rpow_two]
    rw [← Real.rpow_mul hXr.le]
    rw [show ((X : ℝ)^2) = Real.rpow (X : ℝ) 2 by
      rw [Real.rpow_natCast]]
    rw [← Real.rpow_sub hXr]
    congr 1
    ring
  dsimp [D, A]
  calc
    augmentedEnergy X
        ≤ 6 * (4 * (C * T) / (X : ℝ))^2 := hcoarse
    _ = 96 * C^2 * (T / (X : ℝ))^2 := by ring
    _ = 96 * C^2 *
        Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
      rw [hpow]
    _ = D * Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
      rfl

theorem psiAtThreshold_to_sameZeroFree
    {ρ : ℝ}
    (hρhalf : (1 / 2 : ℝ) ≤ ρ)
    (hρone : ρ < 1)
    (hψ : AllDyadicPsiAtThreshold ρ) :
    RiemannZetaZeroFreeRightHalfPlane ρ :=
  energyAtThreshold_to_zeroFree
    hρhalf hρone
    (psiAtThreshold_to_energyAtThreshold hψ)

theorem psiAtThreshold_to_thetaAtThreshold
    {ρ : ℝ}
    (hρ : (1 / 2 : ℝ) ≤ ρ)
    (hψ : AllDyadicPsiAtThreshold ρ) :
    AllDyadicThetaAtThreshold ρ := by
  intro η hη
  obtain ⟨C, hC, j₀, hψbound⟩ := hψ η hη
  obtain ⟨C₀, hC₀bound⟩ :=
    Chebyshev.psi_sub_theta_le_mul_sqrt
  let A₀ : ℝ := |C₀|
  let D : ℝ := C + 2 * A₀
  have hA₀ : 0 ≤ A₀ := abs_nonneg _
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj u hu
  let X : ℕ := dyadicScale j
  let T : ℝ :=
    Real.rpow (X : ℝ) (ρ + η / 2)
  have hX : 0 < X := dyadicScale_pos j
  have hψu :
      |psiError u| + 1 ≤ C * T := by
    simpa [X, T] using hψbound j hj u
      (by simpa [X] using hu)
  have hpsiTheta0 :
      0 ≤ ψ u - θ u :=
    sub_nonneg.mpr (Chebyshev.theta_le_psi u)
  have hpsiTheta :
      ψ u - θ u ≤ 2 * A₀ * T := by
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
        (by simpa [X, T] using hsqrt2)
    calc
      ψ u - θ u ≤ C₀ * Real.sqrt u := h0
      _ ≤ A₀ * Real.sqrt u :=
        mul_le_mul_of_nonneg_right hCabs
          (Real.sqrt_nonneg _)
      _ ≤ 2 * A₀ * T := by
        have :=
          mul_le_mul_of_nonneg_left hsqrtU hA₀
        nlinarith
  have herr :
      |thetaError u| ≤
        |psiError u| + (ψ u - θ u) := by
    unfold psiError thetaError
    have hid :
        θ u - u =
          (ψ u - u) - (ψ u - θ u) := by ring
    rw [hid]
    exact (abs_sub _ _).trans
      (add_le_add_left
        (by simpa [abs_of_nonneg hpsiTheta0])
        |ψ u - u|)
  dsimp [D]
  linarith

end GRWTSK.RiemannHypothesis
```
