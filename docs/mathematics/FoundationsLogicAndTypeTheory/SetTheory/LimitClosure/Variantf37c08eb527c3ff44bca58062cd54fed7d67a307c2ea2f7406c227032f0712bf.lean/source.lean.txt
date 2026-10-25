import Mathematics.StratifiedBoundary.SquareRoot.OrdinalFamily
import Mathematics.StratifiedBoundary.Arithmetic.LimitCorrespondence

/-!
# Conditional limit square-root closure

Finite bounds pass to a declared limit only through norm compatibility and an
exact arithmetic correspondence.
-/

namespace Mathematics.StratifiedBoundary

structure LimitSquareRootClosure
    (CylinderTraceValue ArithmeticValue : Type u) where
  ordinalFamily : OrdinalFamilySquareRootCertificate
  arithmetic :
    LimitArithmeticCorrespondence
      CylinderTraceValue ArithmeticValue
  limitNormCompatibility : Prop
  limitNormCompatibilityProof : limitNormCompatibility
  finiteSquareRootNorm : Nat
  finiteSquareRootNormEvidence : Prop
  finiteSquareRootNormProof : finiteSquareRootNormEvidence

end Mathematics.StratifiedBoundary
