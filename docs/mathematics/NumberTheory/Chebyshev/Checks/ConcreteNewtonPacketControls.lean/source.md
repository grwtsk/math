# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.ConcreteNewtonPacketControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfc07a7a2b1d3563d9ee7c527c86132af2668216` · SHA-256 `b8b6ee2941ab616a969e4162bd632ec72d3aa0fd1a78a847e215164120bb86c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket

set_option autoImplicit false

/-! Source-only controls. None proves SourceAcceptance or executes the full checker. -/
namespace GRWTSK.RiemannHypothesis.ConcreteNewtonPacketControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket

theorem prefix_and_terminal : prefixLength = 4096 ∧ prefixLength + 1 = 4097 := by
  norm_num [prefixLength]

theorem endpoint_reduction_examples : logExponent 13 1 = 0 ∧
    logExponent 13 4096 = 12 ∧ logExponent 13 4097 = 12 := by
  norm_num [logExponent]

theorem cauchy_radius_is_not_newton_radius : plan.cauchyRadius ≠ newtonRadius := by
  norm_num [plan, newtonRadius]

theorem claimed_value_is_not_zero : claimed.value.value.re ≠ 0 := by
  norm_num [claimed]

theorem verified_errors_are_copied : newtonData.valueError = claimed.value.error ∧
    newtonData.slopeError = claimed.slope.error := ⟨rfl, rfl⟩

/-- Changing any output field cannot preserve verification for this same exact source. -/
theorem accepted_output_unique (out : RationalZetaCenterEvaluation.CenterState)
    (hsource : SourceAcceptance)
    (hother : RationalZetaCenterEvaluation.verify prefixLength center plan
      valueTolerance slopeTolerance out = true) : out = claimed := by
  have hc := (RationalZetaCenterEvaluation.verify_iff prefixLength center plan
    valueTolerance slopeTolerance claimed).mp hsource
  have ho := (RationalZetaCenterEvaluation.verify_iff prefixLength center plan
    valueTolerance slopeTolerance out).mp hother
  exact ho.2.2.symm.trans hc.2.2

/-- An approximate inverse equal to zero cannot certify a zero, even with these outputs. -/
theorem zero_inverse_rejected : RationalNewtonWitness.verify chart true
    (VerifiedRationalNewtonCenter.newtonData center newtonRadius QComplex.zero claimed) = false := by
  simp [RationalNewtonWitness.verify, RationalNewtonWitness.Admissible,
    VerifiedRationalNewtonCenter.newtonData, QComplex.zero, QComplex.normSq]

end GRWTSK.RiemannHypothesis.ConcreteNewtonPacketControls
```
