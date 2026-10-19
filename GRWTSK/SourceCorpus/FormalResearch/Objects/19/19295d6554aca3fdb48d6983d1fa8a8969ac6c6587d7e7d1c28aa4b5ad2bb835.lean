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
