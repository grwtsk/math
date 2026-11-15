/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerBlocks
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSupportData

/-!
# Exact blocks at the last retained endpoint

The lower block couples the last four retained cells to the first four
cells of the second retained interval. Two of its sinc entries are negative.
The last diagonal uses the final allocated sinc index, `40551`. These are
pieces of the original integer numerator.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

/-- Three exact signed entries used by the endpoint blocks. -/
theorem endpointSincEntries :
    sincEntry 19985 = -5197893606 ∧ sincEntry 20557 = -2311519002 ∧
      sincEntry 40551 = 1502696641 := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 3000000 in
/-- The strict lower block has the original factor of two. -/
theorem lastEarlierBlock :
    triangleBlock (price literalRawDeficit) sincEntry
      (Finset.Icc 20272 20275) (Finset.Icc 284 287) =
        2191174214708534874031273034193026462506832 := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 3000000 in
/-- The last diagonal block counts the diagonal once and the lower pairs twice. -/
theorem lastDiagonalBlock :
    triangleBlock (price literalRawDeficit) sincEntry
      (Finset.Icc 20272 20275) (Finset.Icc 20272 20275) =
        5932575707103124414769856203943031749540118456 := by
  decide +kernel

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
