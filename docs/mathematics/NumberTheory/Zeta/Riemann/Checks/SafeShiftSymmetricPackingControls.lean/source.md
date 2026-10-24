# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftSymmetricPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `795d9246dc77dd9773820c79bf997c680893b7de` · SHA-256 `454acbaa5ed2fe8927a25e810d7b852a19042660625b07c8ab9de8541041126d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftSymmetricPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftSymmetricPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem even_channel_reflection_invariant
    (z : ZeroPoint) (e : PrimePowerEvent) :
    safeEvenPrimePowerTerm (criticalReflectedZero z) e =
      safeEvenPrimePowerTerm z e :=
  safeEvenPrimePowerTerm_criticalReflectedZero z e

theorem odd_channel_reflection_antisymmetric
    (z : ZeroPoint) (e : PrimePowerEvent) :
    safeOddPrimePowerTerm (criticalReflectedZero z) e =
      -safeOddPrimePowerTerm z e :=
  safeOddPrimePowerTerm_criticalReflectedZero z e

theorem symmetric_stage_nonnegative
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ (safeEvenOddRealPackingSequence z).valueAt n :=
  safeEvenOddRealPackingSequence_valueAt_nonnegative z n

end GRWTSK.RiemannHypothesis.Checks.SafeShiftSymmetricPackingControls
```
