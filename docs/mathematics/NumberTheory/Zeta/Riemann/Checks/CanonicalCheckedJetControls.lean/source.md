# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalCheckedJetControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad64f7b8b840063f14c7946a2c2fa76ec636a2c1` · SHA-256 `b694439a64f9cd2506d3ff7be4bd7e4ca069579cabd953540aea6402b01771a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalJets
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.CheckedJetControls

set_option autoImplicit false

/-!
# Canonical-packet exactness controls

Small source controls only. They do not prove the large target result.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.CanonicalCheckedJetControls

open GRWTSK.Analysis.ErrorBounds
open CheckedJetControls

/-- The minimal pole packet is generated rather than supplied. -/
theorem canonical_pole_packet :
    CanonicalCheckedPoleJet.packet one poleParameters = polePacket := by decide

/-- The two-base ordered packet also reproduces the existing literal control. -/
theorem canonical_two_packet :
    CanonicalCheckedPoleJet.packet one twoParameters = twoPacket := by decide

/-- Exact checked evaluation agrees with the old sourced small-square result. -/
theorem canonical_small_square :
    CheckedJetContour.evaluate 4 smallDomain smallPlans smallImage
      (CanonicalCheckedJetContour.packets smallPlans) = some 0 := by
  rw [CanonicalCheckedJetContour.evaluate_packets_eq]
  exact CheckedJetContour.evaluate_refines complete_small_square

/-- A malformed global closure cannot be repaired by canonical packet generation. -/
def badImage : List RationalComplexEnclosure.Coordinates :=
  [RationalComplexEnclosure.one,RationalComplexEnclosure.one,
    RationalComplexEnclosure.one,RationalComplexEnclosure.one,(2,0)]

theorem old_bad_closure :
    JetPoleContour.evaluate 4 smallDomain smallPlans badImage = none := by decide

theorem canonical_bad_closure :
    CheckedJetContour.evaluate 4 smallDomain smallPlans badImage
      (CanonicalCheckedJetContour.packets smallPlans) = none := by
  rw [CanonicalCheckedJetContour.evaluate_packets_eq,old_bad_closure]

/-- Some zero remains a successful signed result, distinct from failure. -/
theorem zero_result_not_none :
    CheckedJetContour.evaluate 4 smallDomain smallPlans smallImage
      (CanonicalCheckedJetContour.packets smallPlans) ≠ none := by
  rw [canonical_small_square]
  simp

/-- Decreasing a successor error remains a leaf failure under the generated source input. -/
theorem canonical_terminal_mutation_reject :
    CheckedPoleJet.finite one twoParameters
      [[⟨16,0,0⟩],[⟨7,0,4⟩]] = none :=
  wrong_terminal_error_reject

end GRWTSK.RiemannHypothesis.Checks.CanonicalCheckedJetControls
```
