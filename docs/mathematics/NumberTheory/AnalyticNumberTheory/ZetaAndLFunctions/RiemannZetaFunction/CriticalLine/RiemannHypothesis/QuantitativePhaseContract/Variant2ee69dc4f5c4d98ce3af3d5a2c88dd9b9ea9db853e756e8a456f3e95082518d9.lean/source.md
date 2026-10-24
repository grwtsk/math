# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.QuantitativePhaseContract.Variant2ee69dc4f5c4d98ce3af3d5a2c88dd9b9ea9db853e756e8a456f3e95082518d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e924b7a1c32465000b6884c904f7b83f833da900` · SHA-256 `2ee69dc4f5c4d98ce3af3d5a2c88dd9b9ea9db853e756e8a456f3e95082518d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PrimePortGeometry

/-!
# Explicit external quantitative input and its joint-port consumer

Written direction and Matveev specialization 2026-10-09: grwtsk contributors.
Local input contracts and conditional consumers: OpenAI Codex. Matveev,
Corollary 2.3, Izvestiya Mathematics 64:6 (2000), printed page 1219, is an
external mathematical source. The contracts below are ordinary propositions,
not axioms, instances, or claims that the external paper has been replayed.
The elementary nearest-integer bridge is exposed independently and is proved
in MatveevPhaseBridge; this contract alone does not instantiate the input.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.QuantitativePhaseContract
open PrimePhaseGeometry PrimePortGeometry
noncomputable section

/-- Exact real two-log lower bound required from the external paper. -/
def MatveevTwoLogInput : Prop := ∀ k l : ℤ, k ≠ 0 ∨ l ≠ 0 →
  Real.exp (-(matveevExponent : ℝ)) *
    (max |(k : ℝ)| |(l : ℝ)|) ^ (-(matveevExponent : ℝ)) ≤
      |(l : ℝ) * Real.log 2 - (k : ℝ) * Real.log 3|

/-- The nearest-integer/chord return contract, kept separate from the
external logarithm theorem. MatveevPhaseBridge proves this local adapter. -/
def MatveevToPhaseAdapter : Prop := MatveevTwoLogInput →
  PhaseCertificate certificateConstant (matveevExponent + 1)

theorem certificateConstant_le_logLength : certificateConstant ≤ logLength := by
  have hp : 2 ≤ Real.pi := Real.two_le_pi
  have hb : 2 * logLength / Real.pi ≤ logLength := by
    apply (div_le_iff₀ Real.pi_pos).2
    nlinarith [logLength_positive]
  exact (min_le_left _ _).trans hb

theorem bounded_phase_gain_le_logLength {H : ℝ} (hH : 0 ≤ H) :
    certificateConstant * (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) ≤ logLength := by
  have hp : (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) ≤ 1 :=
    Real.rpow_le_one_of_one_le_of_nonpos (by linarith) (neg_nonpos.mpr (Nat.cast_nonneg _))
  exact (mul_le_of_le_one_right certificateConstant_positive.le hp).trans
    certificateConstant_le_logLength

theorem joint_port_of_phase_certificate
    (hcert : PhaseCertificate certificateConstant (matveevExponent + 1))
    {H : ℝ} (hH : 0 < H) {ρ η : ℂ}
    (hρ : ρ.re ∈ Set.Icc 0 1) (hη : η.re ∈ Set.Icc 0 1)
    (hργ : |ρ.im| ≤ H) (hηγ : |η.im| ≤ H) :
    certificateConstant / Real.sqrt 3 *
      (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * ‖ρ - η‖ ≤ ‖port ρ - port η‖ := by
  have h := joint_coordinate_lower hρ hη
    (mul_nonneg certificateConstant_positive.le (Real.rpow_nonneg (by linarith) _))
    (bounded_phase_gain_le_logLength hH.le) (hcert H hH ρ.im η.im hργ hηγ)
  simpa [div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using h

theorem joint_port_of_explicit_external_route (hinput : MatveevTwoLogInput)
    (hbridge : MatveevToPhaseAdapter) {H : ℝ} (hH : 0 < H) {ρ η : ℂ}
    (hρ : ρ.re ∈ Set.Icc 0 1) (hη : η.re ∈ Set.Icc 0 1)
    (hργ : |ρ.im| ≤ H) (hηγ : |η.im| ≤ H) :
    certificateConstant / Real.sqrt 3 *
      (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * ‖ρ - η‖ ≤ ‖port ρ - port η‖ :=
  joint_port_of_phase_certificate (hbridge hinput) hH hρ hη hργ hηγ

end
end GRWTSK.RiemannHypothesis.Conversation.QuantitativePhaseContract
```
