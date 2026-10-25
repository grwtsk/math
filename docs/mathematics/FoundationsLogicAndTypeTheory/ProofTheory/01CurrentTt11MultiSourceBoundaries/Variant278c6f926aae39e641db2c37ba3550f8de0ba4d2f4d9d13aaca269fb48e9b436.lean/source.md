# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.01CurrentTt11MultiSourceBoundaries.Variant278c6f926aae39e641db2c37ba3550f8de0ba4d2f4d9d13aaca269fb48e9b436

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c79469079898f761f9d6e94858a039a555c784e` · SHA-256 `278c6f926aae39e641db2c37ba3550f8de0ba4d2f4d9d13aaca269fb48e9b436`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport
import FCRS.TheoremTransfer

namespace FCRS.TheoremTransfer.Cycle10.CurrentBoundaries

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

end FCRS.TheoremTransfer.Cycle10.CurrentBoundaries
```
