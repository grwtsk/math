import FCRS.Transport
import FCRS.TheoremTransfer

namespace FCRS.TheoremTransfer.Cycle9.CurrentBoundaries

open FCRS.Transport
open FCRS.Transport.Theorems
open FCRS.TheoremTransfer.MultiSourceExample

#check ReflectiveRecoveryObservation
#check tt11_reflectiveRecovery
#check MultiSourceInferenceExpression.interpret
#check MultiSourceTheoremTransferDerivation.derivedProofObjectExact
#check MultiSourceTheoremTransferDerivation.hasDistinctFanIn
#check MultiSourceTheoremTransferDerivation.sourceLeafCoverage
#check derivation_has_distinct_fan_in
#check derivation_expression_uses_both_source_leaves

/-- The current concrete aggregate still has two distinct source nodes. -/
example :
    ∃ left right : derivation.SourceIndex,
      left ≠ right ∧
      derivation.sourceNode left ≠ derivation.sourceNode right :=
  derivation_has_distinct_fan_in

/-- Both exact source indices remain leaves of the current proof expression. -/
example :
    derivation.jointInferenceExpression.UsesSource false ∧
      derivation.jointInferenceExpression.UsesSource true :=
  derivation_expression_uses_both_source_leaves

#print axioms tt11_reflectiveRecovery
#print axioms MultiSourceInferenceExpression.interpret
#print axioms MultiSourceTheoremTransferDerivation.hasDistinctFanIn
#print axioms MultiSourceTheoremTransferDerivation.sourceLeafCoverage
#print axioms derivation_has_distinct_fan_in
#print axioms derivation_expression_uses_both_source_leaves
#print axioms derivation

end FCRS.TheoremTransfer.Cycle9.CurrentBoundaries
