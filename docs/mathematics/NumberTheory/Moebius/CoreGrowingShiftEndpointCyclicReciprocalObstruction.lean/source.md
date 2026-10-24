# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicReciprocalObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ebdf07ce6a031d0aa07e028925a5064498dbe2e` · SHA-256 `c3f228d3d63b4d7aa34f478785e3d1a6bca712b1615281e52064fb024efe1f09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

This source transports the reciprocal zero-mode and opposite-phase obstruction
to the authentic endpoint cyclic coordinates.  It does not import the
arithmetic endpoint kernel or the unverified full leaf.
-/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicReciprocalPhaseObstruction
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- At the authentic endpoint zero frequency, the reciprocal-weighted interval
is exactly the positive reciprocal mass. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_reciprocal_Ico_zero
    (j A B R : ℕ) :
    (∑ n ∈ Finset.Ico A B,
      coreGrowingShiftEndpointTransverseNatCharacter j
          (0 : CoreGrowingShiftEndpointDoubledFourierIndex j) n /
        (((n + R : ℕ) : ℂ))) =
      (GRWTSK.NumberTheory.CharacterSums.finiteCyclicReciprocalMass
        A B R : ℂ) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter] using
    GRWTSK.NumberTheory.CharacterSums.sum_stdAddChar_neg_div_nat_add_Ico_zero
      (q := coreGrowingShiftEndpointDoubledFourierModulus j) A B R

/-- Authentic endpoint opposite phases have norm one and recover the complete
reciprocal mass.  Hence coefficientwise norm-one arithmetic control cannot
supply the reciprocal-weighted cancellation required by the packet. -/
theorem coreGrowingShiftEndpointTransverse_phaseMatchedReciprocal_Ico
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    (∀ n : ℕ,
      ‖ZMod.stdAddChar
        ((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * u)‖ = 1) ∧
      (∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar
            ((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * u) *
          (coreGrowingShiftEndpointTransverseNatCharacter j u n /
            (((n + R : ℕ) : ℂ)))) =
        (GRWTSK.NumberTheory.CharacterSums.finiteCyclicReciprocalMass
          A B R : ℂ) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter] using
    GRWTSK.NumberTheory.CharacterSums.stdAddChar_phaseMatched_reciprocal_Ico
      (q := coreGrowingShiftEndpointDoubledFourierModulus j) u A B R

/-- The authentic phase-matched reciprocal sum attains the entire reciprocal
mass in norm. -/
theorem coreGrowingShiftEndpointTransverse_phaseMatchedReciprocal_Ico_norm
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar
            ((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * u) *
          (coreGrowingShiftEndpointTransverseNatCharacter j u n /
            (((n + R : ℕ) : ℂ)))‖ =
      GRWTSK.NumberTheory.CharacterSums.finiteCyclicReciprocalMass A B R := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter] using
    GRWTSK.NumberTheory.CharacterSums.norm_stdAddChar_phaseMatched_reciprocal_Ico
      (q := coreGrowingShiftEndpointDoubledFourierModulus j) u A B R

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```
