# Complete source: GRWTSK.Analysis.SpecialFunctions.Influence.Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cd5d2c08a1607c634f8f195d380d84b4d50a077` · SHA-256 `43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathematics.ConnesBitfield.Trace

/-!
# Bit influence energy

Local bit sensitivity is retained as a finite, proof-bearing family.  Its
square sum is the input to concentration; it is not itself a deterministic
square-root estimate.
-/

namespace Mathematics.ConnesBitfield

open scoped BigOperators

universe uScale uTest

noncomputable def influenceEnergy
    {bits : Nat}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (influence :
      Scale → Fin bits → TestFunction → ℝ)
    (scale : Scale)
    (test : TestFunction) : ℝ := by
  classical
  exact
    ∑ index : Fin bits,
      (influence scale index test) ^ 2

structure BitfieldInfluenceCertificate
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction) where
  mass : Scale → ℝ
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  testNorm : TestFunction → ℝ
  testNormNonnegative :
    ∀ test, 0 ≤ testNorm test
  logarithmicOrder : Nat
  localPerturbation :
    Fin system.bits →
      Bitfield system.bits →
      Finset (Bitfield system.bits)
  perturbationsAdmissible :
    ∀ index {state neighbor},
      system.admissible state →
      neighbor ∈ localPerturbation index state →
      system.admissible neighbor
  perturbationSymmetric :
    ∀ index {left right},
      right ∈ localPerturbation index left →
      left ∈ localPerturbation index right
  influence :
    Scale →
      Fin system.bits →
      TestFunction →
      ℝ
  influenceNonnegative :
    ∀ scale index test,
      0 ≤ influence scale index test
  localInfluenceSound :
    ∀ scale index test state neighbor,
      system.admissible state →
      neighbor ∈ localPerturbation index state →
      ‖reducedTraceObservable
          trace.invariantProjection
          trace.spectralTransform
          scale test state -
        reducedTraceObservable
          trace.invariantProjection
          trace.spectralTransform
          scale test neighbor‖ ≤
        influence scale index test
  influenceConstant : ℝ
  influenceConstantNonnegative :
    0 ≤ influenceConstant
  influenceEnergyBound :
    ∀ scale test,
      influenceEnergy influence scale test ≤
        influenceConstant *
          mass scale *
          (1 + Real.log (mass scale)) ^
            (2 * logarithmicOrder) *
          (testNorm test) ^ 2

abbrev AdmissibleInfluenceCertificate :=
  BitfieldInfluenceCertificate

end Mathematics.ConnesBitfield
```
