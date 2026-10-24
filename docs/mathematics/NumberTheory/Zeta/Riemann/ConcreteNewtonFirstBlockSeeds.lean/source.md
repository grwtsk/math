# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlockSeeds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b367540c7dbfb4b09dadcbeb6556c6a0a7ce949` · SHA-256 `a72231e213ca56a0eb8ffe0b1293b6e963a6602ddac8b50205a0f5f53a4eb163`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlockData

set_option autoImplicit false

/-!
# Closed source scripts for all 64 original first-block seeds

Eight explicitly indexed groups retain every original guard and both finite
logarithm widths. Each window uses canonical numerator/denominator extraction
from the original rational input. There is no externally supplied seed, error,
logarithm identity, endpoint equality or SourceAcceptance premise.

These scripts have NOT been elaborated or measured. The large integer checks
can require decomposition or repair. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonFirstBlockSeeds

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace IntegerTaylorPolynomial
open RationalTaylorSeedNormalization
open GRWTSK.Analysis.Real.RationalLogEnclosure
open ConcreteNewtonPacket RationalZetaCenterEvaluation ConcreteNewtonFirstBlockData

theorem inputs_00 (j : Fin 8) : InputValid (slot 0 j) := by
  fin_cases j <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base, slot,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem windows_00 (j : Fin 8) : SeedWindows (slot 0 j) := by
  fin_cases j <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, slot, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem inputs_01 (j : Fin 8) : InputValid (slot 1 j) := by
  fin_cases j <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base, slot,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem windows_01 (j : Fin 8) : SeedWindows (slot 1 j) := by
  fin_cases j <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, slot, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem inputs_02 (j : Fin 8) : InputValid (slot 2 j) := by
  fin_cases j <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base, slot,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem windows_02 (j : Fin 8) : SeedWindows (slot 2 j) := by
  fin_cases j <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, slot, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem inputs_03 (j : Fin 8) : InputValid (slot 3 j) := by
  fin_cases j <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base, slot,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem windows_03 (j : Fin 8) : SeedWindows (slot 3 j) := by
  fin_cases j <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, slot, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem inputs_04 (j : Fin 8) : InputValid (slot 4 j) := by
  fin_cases j <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base, slot,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem windows_04 (j : Fin 8) : SeedWindows (slot 4 j) := by
  fin_cases j <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, slot, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem inputs_05 (j : Fin 8) : InputValid (slot 5 j) := by
  fin_cases j <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base, slot,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem windows_05 (j : Fin 8) : SeedWindows (slot 5 j) := by
  fin_cases j <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, slot, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem inputs_06 (j : Fin 8) : InputValid (slot 6 j) := by
  fin_cases j <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base, slot,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem windows_06 (j : Fin 8) : SeedWindows (slot 6 j) := by
  fin_cases j <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, slot, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem inputs_07 (j : Fin 8) : InputValid (slot 7 j) := by
  fin_cases j <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base, slot,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem windows_07 (j : Fin 8) : SeedWindows (slot 7 j) := by
  fin_cases j <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, slot, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem all_inputs (i : Fin 64) : InputValid i := by
  obtain ⟨g, j, rfl⟩ := group_cover i
  fin_cases g
  · exact inputs_00 j
  · exact inputs_01 j
  · exact inputs_02 j
  · exact inputs_03 j
  · exact inputs_04 j
  · exact inputs_05 j
  · exact inputs_06 j
  · exact inputs_07 j

theorem all_windows (i : Fin 64) : SeedWindows i := by
  obtain ⟨g, j, rfl⟩ := group_cover i
  fin_cases g
  · exact windows_00 j
  · exact windows_01 j
  · exact windows_02 j
  · exact windows_03 j
  · exact windows_04 j
  · exact windows_05 j
  · exact windows_06 j
  · exact windows_07 j

/-- Same source functions, all guards retained; a closed proof draft, not an execution claim. -/
theorem all_seeds_valid (i : Fin 64) : SeedValid 64
    (RationalPowerEvaluation.seed (base i : ℚ) (sourceExponent center) (schedule (base i)))
    (RationalPowerEvaluation.seedError (base i : ℚ) (sourceExponent center) (schedule (base i)))
    (initial i) :=
  RationalTaylorSeedNormalization.original_seed_valid (base i : ℚ) (sourceExponent center)
    (schedule (base i)) 21 rfl (initial i) (all_inputs i).2.1
    (all_inputs i).2.2 (all_windows i)

end GRWTSK.RiemannHypothesis.ConcreteNewtonFirstBlockSeeds
```
