import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.RationalHodgeTransport
def zeroCycleClass : RationalHodgeData ℚ ℚ := ⟨0⟩
example : ¬ zeroCycleClass.IsSurjective := by
  intro h
  obtain ⟨z, hz⟩ := h 1
  norm_num [zeroCycleClass] at hz
example : ¬ Nonempty (CycleClassEquiv Examples.lineHodgeData zeroCycleClass) := by
  rintro ⟨E⟩
  obtain ⟨z, hz⟩ := E.surjective_forward Examples.lineHodgeData_surjective 1
  norm_num [zeroCycleClass] at hz
