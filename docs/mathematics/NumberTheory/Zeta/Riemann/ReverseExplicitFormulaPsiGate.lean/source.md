# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ReverseExplicitFormulaPsiGate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1563ac22421e936af1012ebfc5405b4f14c0f6d1` · SHA-256 `e1b5fac203e20da91c7c95ebd19c08cf29cb78c686235a14c4bf6683704be42f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.GradedPsiThresholdTransport
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThresholdDescentProgram
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaVonKochAdapter
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Reverse explicit-formula gate in classical psi form

The desired reverse theorem at threshold rho is isolated as

  zero-free Re(s)>rho
    -> eventually |psi(x)-x| <= C x^rho (log x)^2.

This file does not prove that theorem. It proves that its output is exactly
strong enough to populate the graded psi/theta source at rho.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CLASSICAL_PSI_POWER_LOGSQ_ADAPTER_DEFINED / REVERSE_EXPLICIT_FORMULA_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def ClassicalPsiPowerLogSqBound (ρ : ℝ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ x₀ : ℝ,
    ∀ x ≥ x₀,
      |psiError x| ≤
        C * Real.rpow x ρ * (Real.log x)^2

theorem classicalPsiPowerLogSqBound_to_psiAtThreshold
    {ρ : ℝ} (hρ : 0 ≤ ρ)
    (hclassical : ClassicalPsiPowerLogSqBound ρ) :
    AllDyadicPsiAtThreshold ρ := by
  obtain ⟨C₀, hC₀, x₀, hψ⟩ := hclassical
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
  let C : ℝ :=
    1 + C₀ * Real.rpow 2 (ρ + δ)
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
    filter_upwards
      [hscale.eventually_ge_atTop x₀,
       hscale.eventually_ge_atTop L,
       hscale.eventually_ge_atTop 1]
      with j h1 h2 h3
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
  have hψu :
      |psiError u| ≤
        C₀ * Real.rpow u ρ * (Real.log u)^2 :=
    hψ u (hXx0.trans huX)
  have hlog :
      (Real.log u)^2 ≤ Real.rpow u δ :=
    hL u (hXL.trans huX)
  have hprod :
      Real.rpow u ρ * (Real.log u)^2 ≤
        Real.rpow u (ρ + δ) := by
    rw [← Real.rpow_add (by linarith [hu1])]
    exact mul_le_mul_of_nonneg_left hlog
      (Real.rpow_nonneg (by linarith [hu1]) _)
  have hpow2X :
      Real.rpow u (ρ + δ) ≤
        Real.rpow (2 * (X : ℝ)) (ρ + δ) := by
    exact Real.rpow_le_rpow
      (by linarith [hu1]) hu2X
      (by linarith)
  have hsplit :
      Real.rpow (2 * (X : ℝ)) (ρ + δ) =
        Real.rpow 2 (ρ + δ) *
          Real.rpow (X : ℝ) (ρ + δ) := by
    rw [Real.mul_rpow
      (by norm_num : 0 ≤ (2 : ℝ))
      (by linarith [hX1])]
  have hψX :
      |psiError u| ≤
        C₀ * Real.rpow 2 (ρ + δ) *
          Real.rpow (X : ℝ) (ρ + δ) := by
    calc
      |psiError u|
          ≤ C₀ * (Real.rpow u ρ *
              (Real.log u)^2) := hψu
      _ ≤ C₀ * Real.rpow u (ρ + δ) :=
        mul_le_mul_of_nonneg_left hprod hC₀
      _ ≤ C₀ * Real.rpow (2 * (X : ℝ)) (ρ + δ) :=
        mul_le_mul_of_nonneg_left hpow2X hC₀
      _ = _ := by rw [hsplit]; ring
  have hsmall :
      ρ + δ ≤ ρ + η / 2 := by
    dsimp [δ]
    linarith
  have hpowmono :
      Real.rpow (X : ℝ) (ρ + δ) ≤
        Real.rpow (X : ℝ) (ρ + η / 2) :=
    Real.rpow_le_rpow_of_exponent_le hX1 hsmall
  have hone :
      1 ≤ Real.rpow (X : ℝ) (ρ + η / 2) :=
    Real.one_le_rpow hX1 (by linarith)
  have hψtarget :
      |psiError u| ≤
        (C - 1) *
          Real.rpow (X : ℝ) (ρ + η / 2) := by
    dsimp [C]
    calc
      |psiError u|
          ≤ C₀ * Real.rpow 2 (ρ + δ) *
              Real.rpow (X : ℝ) (ρ + δ) := hψX
      _ ≤ C₀ * Real.rpow 2 (ρ + δ) *
              Real.rpow (X : ℝ) (ρ + η / 2) :=
        mul_le_mul_of_nonneg_left hpowmono (by positivity)
      _ = (C - 1) *
          Real.rpow (X : ℝ) (ρ + η / 2) := by
        dsimp [C]
        ring
  calc
    |psiError u| + 1
        ≤ (C - 1) *
            Real.rpow (X : ℝ) (ρ + η / 2) +
          Real.rpow (X : ℝ) (ρ + η / 2) :=
      add_le_add hψtarget hone
    _ = C * Real.rpow (X : ℝ) (ρ + η / 2) := by
      ring

def ZeroFreeToPsiPowerLogSqAt (ρ : ℝ) : Prop :=
  RiemannZetaZeroFreeRightHalfPlane ρ →
    ClassicalPsiPowerLogSqBound ρ

theorem zeroFree_reversePsiGate_to_theta
    {ρ : ℝ}
    (hρhalf : (1 / 2 : ℝ) ≤ ρ)
    (hfree : RiemannZetaZeroFreeRightHalfPlane ρ)
    (hreverse : ZeroFreeToPsiPowerLogSqAt ρ) :
    AllDyadicThetaAtThreshold ρ :=
  psiAtThreshold_to_thetaAtThreshold hρhalf
    (classicalPsiPowerLogSqBound_to_psiAtThreshold
      (by linarith) (hreverse hfree))

theorem riemannHypothesis_of_acceptedSevenEighths_reversePsi_quadratic
    (port :
      AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8))
    (hreverse :
      ZeroFreeToPsiPowerLogSqAt ((7 : ℝ) / 8))
    (hcontract :
      QuadraticThetaDescentSevenEighthsToHalf) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_thetaSevenEighths_quadraticDescent
    (zeroFree_reversePsiGate_to_theta
      (by norm_num) port.theorem hreverse)
    hcontract

end GRWTSK.RiemannHypothesis
```
