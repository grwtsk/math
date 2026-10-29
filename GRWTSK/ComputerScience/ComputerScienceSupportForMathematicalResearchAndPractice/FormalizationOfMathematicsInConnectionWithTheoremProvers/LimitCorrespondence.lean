import Mathematics.StratifiedBoundary.Arithmetic.SuccessorCorrespondence

/-!
# Limit arithmetic correspondence

Cylinder-trace stability alone does not inhabit this structure.
-/

namespace Mathematics.StratifiedBoundary

structure LimitArithmeticCorrespondence
    (CylinderTraceValue ArithmeticValue : Type u) where
  cylinderTraceValue : CylinderTraceValue
  arithmeticValue : ArithmeticValue
  exactRealization :
    CylinderTraceValue → ArithmeticValue
  exact :
    exactRealization cylinderTraceValue = arithmeticValue
  projectiveArithmeticSourceRef : String
  exactLimitTraceFormulaRef : String

end Mathematics.StratifiedBoundary
