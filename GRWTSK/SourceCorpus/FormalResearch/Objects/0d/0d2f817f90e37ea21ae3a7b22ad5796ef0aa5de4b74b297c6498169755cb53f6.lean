import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence

/-!
# Successor arithmetic correspondence
-/

namespace Mathematics.StratifiedBoundary

structure SuccessorArithmeticCorrespondence
    (TraceValue ArithmeticValue : Type u) where
  predecessor :
    FiniteArithmeticCorrespondence TraceValue ArithmeticValue
  successor :
    FiniteArithmeticCorrespondence TraceValue ArithmeticValue
  traceConnectorRef : String
  arithmeticConnectorRef : String
  compatible : Prop
  compatibilityProof : compatible

end Mathematics.StratifiedBoundary
