# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSeventhBlockSeeds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3a8bec68f103a6282eecf677c12cdf0bcdc2632` · SHA-256 `1f97b8be457e9a7f5d5cbd94be4ddf77736689bac10229b415f158555c043b6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSeventhBlockData

set_option autoImplicit false

/-!
# Source scripts for all 64 original seventh-block seeds

The same canonical normalization is expanded against every fixed row. All
bases 385..448 use reduction exponent eight, while each mantissa contribution
and its width remain source-specific. These scripts are unexecuted and may
require grouping or decomposition for Lean resource reasons.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonSeventhBlockSeeds

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace IntegerTaylorPolynomial
open RationalTaylorSeedNormalization
open GRWTSK.Analysis.Real.RationalLogEnclosure
open ConcreteNewtonPacket RationalZetaCenterEvaluation ConcreteNewtonSeventhBlockData

theorem all_inputs (i : Fin 64) : InputValid i := by
  fin_cases i <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem all_windows (i : Fin 64) : SeedWindows i := by
  fin_cases i <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem all_seeds_valid (i : Fin 64) : SeedValid 64
    (RationalPowerEvaluation.seed (base i : ℚ) (sourceExponent center) (schedule (base i)))
    (RationalPowerEvaluation.seedError (base i : ℚ) (sourceExponent center) (schedule (base i)))
    (initial i) :=
  RationalTaylorSeedNormalization.original_seed_valid (base i : ℚ) (sourceExponent center)
    (schedule (base i)) 21 rfl (initial i) (all_inputs i).2.1
    (all_inputs i).2.2 (all_windows i)

end GRWTSK.RiemannHypothesis.ConcreteNewtonSeventhBlockSeeds
```
