# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MeasureTest.Variant23bb8ba32a723daaa5ca9e3f242ef9539e25ed6b78ef3fb6a10bbb9360e79b37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `301bacdf303b572ebbfe81f61bc5efa9fa3c52f5` · SHA-256 `23bb8ba32a723daaa5ca9e3f242ef9539e25ed6b78ef3fb6a10bbb9360e79b37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Matching

/-!
# Measure-determining trace tests

Equality against every admitted test can imply measure equality only through a
registered separation theorem.
-/

namespace Mathematics.RHIsolation

universe uMeasure uTest

structure MeasureDeterminingTestClass
    (Measure : Type uMeasure)
    (Test : Type uTest) where
  norm : Test → ℝ
  evaluate : Test → Measure → ℂ
  separatesFiniteMeasures :
    ∀ left right,
      (∀ test,
        evaluate test left =
          evaluate test right) →
      left = right

theorem measureEquality_of_testClassEquality
    {Measure : Type uMeasure}
    {Test : Type uTest}
    (testClass :
      MeasureDeterminingTestClass Measure Test)
    (left right : Measure)
    (equalOnTests :
      ∀ test,
        testClass.evaluate test left =
          testClass.evaluate test right) :
    left = right :=
  testClass.separatesFiniteMeasures
    left right equalOnTests

structure CompositeMatchingDefect where
  analyticCount : Nat
  spectralCount : Nat
  unmatchedMultiplicity : Nat
  boundedLipschitzDefect : ℝ
  boundedLipschitzDefect_nonneg :
    0 ≤ boundedLipschitzDefect
  countTerm :
    unmatchedMultiplicity =
      (analyticCount - spectralCount) +
        (spectralCount - analyticCount)

end Mathematics.RHIsolation
```
