# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TraceCorrespondence.Variant19295d6554aca3fdb48d6983d1fa8a8969ac6c6587d7e7d1c28aa4b5ad2bb835

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04aef549aecea14bd506390ab051cec32914bef4` · SHA-256 `19295d6554aca3fdb48d6983d1fa8a8969ac6c6587d7e7d1c28aa4b5ad2bb835`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.MeasureTest

/-!
# Typed arithmetic trace status

Model identities, bounded approximations, conditional identities, and
certified arithmetic equalities are different constructors.
-/

namespace Mathematics.RHIsolation

universe uTest

structure TraceFunctionals
    (Test : Type uTest) where
  analyticFunctional : Test → ℂ
  spectralFunctional : Test → ℂ
  mainTerm : Test → ℂ
  arithmeticRemainder : Test → ℂ
  spectralRemainder : Test → ℂ

def TraceFunctionals.exactEquation
    {Test : Type uTest}
    (functionals : TraceFunctionals Test)
    (test : Test) : Prop :=
  functionals.analyticFunctional test =
    functionals.mainTerm test +
      functionals.spectralFunctional test +
      functionals.arithmeticRemainder test +
      functionals.spectralRemainder test

structure CertifiedArithmeticTraceIdentity
    (Test : Type uTest) where
  functionals : TraceFunctionals Test
  equality :
    ∀ test,
      functionals.exactEquation test

inductive ArithmeticTraceCorrespondence
    (Test : Type uTest)
  | modelIdentity
      (functionals : TraceFunctionals Test)
  | approximate
      (functionals : TraceFunctionals Test)
      (defectBound : Test → ℝ)
      (defectBound_nonneg :
        ∀ test, 0 ≤ defectBound test)
      (sound :
        ∀ test,
          ‖functionals.analyticFunctional test -
            (functionals.mainTerm test +
              functionals.spectralFunctional test +
              functionals.arithmeticRemainder test +
              functionals.spectralRemainder test)‖ ≤
            defectBound test)
  | conditional
      (functionals : TraceFunctionals Test)
      (assumptions : Finset AssumptionId)
      (assumptionsHold : Prop)
      (sound :
        assumptionsHold →
          ∀ test,
            functionals.exactEquation test)
  | certified
      (identity :
        CertifiedArithmeticTraceIdentity Test)

def ArithmeticTraceCorrespondence.status
    {Test : Type uTest} :
    ArithmeticTraceCorrespondence Test →
      String
  | .modelIdentity _ => "model-identity"
  | .approximate _ _ _ _ => "approximate"
  | .conditional _ _ _ _ => "conditional"
  | .certified _ => "certified"

theorem CertifiedArithmeticTraceIdentity.sound
    {Test : Type uTest}
    (identity :
      CertifiedArithmeticTraceIdentity Test)
    (test : Test) :
    identity.functionals.exactEquation test :=
  identity.equality test

end Mathematics.RHIsolation
```
