import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.RationalHodgeTransport
def zeroCycleClass : RationalHodgeData ℚ ℚ := ⟨0⟩
-- Even exact underlying equivalences do not supply the cycle-class square.
def missingSquare : CycleClassEquiv Examples.lineHodgeData zeroCycleClass where
  cycleEquiv := LinearEquiv.refl ℚ ℚ
  hodgeEquiv := LinearEquiv.refl ℚ ℚ
