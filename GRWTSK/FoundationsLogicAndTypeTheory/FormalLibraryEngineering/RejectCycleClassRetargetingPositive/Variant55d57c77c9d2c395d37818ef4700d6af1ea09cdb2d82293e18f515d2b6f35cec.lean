import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.RationalHodgeTransport
example : Examples.lineHodgeData.IsSurjective :=
  (Fixtures.lineEquiv.transportTheorem Examples.lineSourceTheorem).surjective
example (E : CycleClassEquiv Examples.lineHodgeData Examples.lineHodgeData) :
    Examples.lineHodgeData.IsSurjective ↔ Examples.lineHodgeData.IsSurjective :=
  E.surjective_iff
