# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThresholdDescentProgram

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fc2870529fabda8b556755c2f6dcf8f694660d5` · SHA-256 `cfe90be97aed4cbbcdfd5c51d2b9d0397991e72434da6d2b4d426667576665e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.GradedThetaThresholdTransport
import GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact nonlinear threshold-descent gate

The graded Abel/Mellin transport preserves a threshold rho. Therefore any
descent must happen before that linear transport.

The natural quadratic scale map is

  Q(rho)=2*rho-1.

It is exactly what arises if a normalized octave error A/X is squared and then
lifted back to theta scale:

  X * (A/X)^2 = A^2/X.

If A has size X^(rho+delta), then A^2/X has size
X^(2*rho-1+2*delta).

At the relevant thresholds:

  Q(7/8)=3/4,
  Q(3/4)=1/2.

Thus two genuine quadratic contractions would descend from seven eighths to the
critical line. The current recurrence/quartic modules do not yet instantiate
this gate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
QUADRATIC_THRESHOLD_DESCENT_GATE_TYPED / SOURCE_CONTRACTION_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def quadraticThreshold (ρ : ℝ) : ℝ :=
  2 * ρ - 1

@[simp]
theorem quadraticThreshold_sevenEighths :
    quadraticThreshold ((7 : ℝ) / 8) = (3 : ℝ) / 4 := by
  norm_num [quadraticThreshold]

@[simp]
theorem quadraticThreshold_threeQuarters :
    quadraticThreshold ((3 : ℝ) / 4) = (1 : ℝ) / 2 := by
  norm_num [quadraticThreshold]

theorem quadraticThreshold_lt_self
    {ρ : ℝ} (hρ : ρ < 1) :
    quadraticThreshold ρ < ρ := by
  unfold quadraticThreshold
  linarith

theorem half_le_quadraticThreshold
    {ρ : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ) :
    (1 : ℝ) / 2 ≤ quadraticThreshold ρ := by
  unfold quadraticThreshold
  linarith

theorem quadratic_power_identity
    {x ρ δ : ℝ} (hx : 0 < x) :
    (Real.rpow x (ρ + δ))^2 / x =
      Real.rpow x (quadraticThreshold ρ + 2 * δ) := by
  simp only [Real.rpow_eq_pow]
  have hmul := Real.rpow_mul hx.le (ρ + δ) 2
  rw [Real.rpow_two] at hmul
  have hdiv := Real.rpow_sub hx ((ρ + δ) * 2) 1
  rw [Real.rpow_one, hmul] at hdiv
  rw [← hdiv]
  congr 1
  unfold quadraticThreshold
  ring

theorem quadratic_error_step
    {x A B C K R ρ δ : ℝ}
    (hx : 0 < x)
    (hA0 : 0 ≤ A) (hC : 0 ≤ C)
    (hK : 0 ≤ K) (_hR : 0 ≤ R)
    (hA : A ≤ C * Real.rpow x (ρ + δ))
    (hB :
      B ≤ K * A^2 / x +
        R * Real.rpow x
          (quadraticThreshold ρ + 2 * δ)) :
    B ≤ (K * C^2 + R) *
      Real.rpow x
        (quadraticThreshold ρ + 2 * δ) := by
  have hpow0 :
      0 ≤ Real.rpow x (ρ + δ) :=
    Real.rpow_nonneg hx.le _
  have hCrpow :
      0 ≤ C * Real.rpow x (ρ + δ) := by
    positivity
  have hA2 :
      A^2 ≤
        C^2 * (Real.rpow x (ρ + δ))^2 := by
    have hs :=
      (sq_le_sq₀ hA0 hCrpow).2 hA
    simpa [mul_pow] using hs
  have hquad :
      K * A^2 / x ≤
        K * C^2 *
          Real.rpow x
            (quadraticThreshold ρ + 2 * δ) := by
    calc
      K * A^2 / x
          ≤ K *
              (C^2 * (Real.rpow x (ρ + δ))^2) /
              x := by
        exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hA2 hK)
          hx.le
      _ = K * C^2 *
          Real.rpow x
            (quadraticThreshold ρ + 2 * δ) := by
        rw [← quadratic_power_identity hx]
        ring
  calc
    B ≤ K * A^2 / x +
        R * Real.rpow x
          (quadraticThreshold ρ + 2 * δ) := hB
    _ ≤ K * C^2 *
          Real.rpow x
            (quadraticThreshold ρ + 2 * δ) +
        R * Real.rpow x
          (quadraticThreshold ρ + 2 * δ) :=
      add_le_add hquad le_rfl
    _ = (K * C^2 + R) *
        Real.rpow x
          (quadraticThreshold ρ + 2 * δ) := by
      ring

def QuadraticThetaDescentAt (ρ : ℝ) : Prop :=
  AllDyadicThetaAtThreshold ρ →
    AllDyadicThetaAtThreshold (quadraticThreshold ρ)

def QuadraticThetaDescentSevenEighthsToHalf : Prop :=
  ∀ ρ : ℝ,
    (3 : ℝ) / 4 ≤ ρ →
    ρ ≤ (7 : ℝ) / 8 →
    QuadraticThetaDescentAt ρ

def SevenEighthsZeroFreeToTheta : Prop :=
  RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8) →
    AllDyadicThetaAtThreshold ((7 : ℝ) / 8)

theorem thetaSevenEighths_twoQuadraticSteps_to_half
    (hθ : AllDyadicThetaAtThreshold ((7 : ℝ) / 8))
    (hcontract : QuadraticThetaDescentSevenEighthsToHalf) :
    AllDyadicThetaAtThreshold ((1 : ℝ) / 2) := by
  have h78 :
      QuadraticThetaDescentAt ((7 : ℝ) / 8) :=
    hcontract ((7 : ℝ) / 8) (by norm_num) (by norm_num)
  have h34 :
      AllDyadicThetaAtThreshold ((3 : ℝ) / 4) := by
    simpa using h78 hθ
  have h34step :
      QuadraticThetaDescentAt ((3 : ℝ) / 4) :=
    hcontract ((3 : ℝ) / 4) (by norm_num) (by norm_num)
  simpa using h34step h34

theorem riemannHypothesis_of_thetaSevenEighths_quadraticDescent
    (hθ : AllDyadicThetaAtThreshold ((7 : ℝ) / 8))
    (hcontract : QuadraticThetaDescentSevenEighthsToHalf) :
    _root_.RiemannHypothesis := by
  have hhalf :=
    thetaSevenEighths_twoQuadraticSteps_to_half hθ hcontract
  have hfree :
      RiemannZetaZeroFreeRightHalfPlane ((1 : ℝ) / 2) :=
    thetaAtThreshold_to_sameZeroFree
      (by norm_num) (by norm_num) hhalf
  exact
    riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis.mp
      hfree

theorem riemannHypothesis_of_sevenEighths_zeroFree_quadraticProgram
    (h78 :
      RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8))
    (hreverse : SevenEighthsZeroFreeToTheta)
    (hcontract : QuadraticThetaDescentSevenEighthsToHalf) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_thetaSevenEighths_quadraticDescent
    (hreverse h78) hcontract

theorem riemannHypothesis_of_acceptedSevenEighths_quadraticProgram
    (port :
      AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8))
    (hreverse : SevenEighthsZeroFreeToTheta)
    (hcontract : QuadraticThetaDescentSevenEighthsToHalf) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_sevenEighths_zeroFree_quadraticProgram
    port.theorem hreverse hcontract

end GRWTSK.RiemannHypothesis
```
