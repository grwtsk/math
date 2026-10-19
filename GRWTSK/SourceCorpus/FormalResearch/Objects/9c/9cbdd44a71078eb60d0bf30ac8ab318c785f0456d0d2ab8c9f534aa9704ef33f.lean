/-!
# Exact finite arithmetic correspondence

A stable trace acquires arithmetic meaning only through this separate
certificate.
-/

namespace Mathematics.StratifiedBoundary

structure FiniteArithmeticCorrespondence
    (TraceValue ArithmeticValue : Type u) where
  traceValue : TraceValue
  arithmeticValue : ArithmeticValue
  realize : TraceValue → ArithmeticValue
  exact :
    realize traceValue = arithmeticValue
  sourceChangeIsomorphismInvariantRef : String
  exactTraceFormulaRef : String

end Mathematics.StratifiedBoundary
