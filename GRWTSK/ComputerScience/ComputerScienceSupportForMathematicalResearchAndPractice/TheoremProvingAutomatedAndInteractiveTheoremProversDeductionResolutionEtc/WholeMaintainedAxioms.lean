import Lean

/-!
Local attribution: grwtsk contributors.
Boundary split of math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec, blob c318cb6a174a7bc34c6cb52b25ecc276a8c7f0d7.
Retained definitions/policies keep their original scope; the operational driver
is maintained in Noe at tools/math/relocated/GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WholeMaintainedAxioms.lean.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/

namespace GRWTSK.RepositoryIntegrity.AxiomPolicy.WholeMaintainedAxioms

open Lean

def structureAuditMaintainedModule (name : Name) : Bool :=
  let text := name.toString
  text == "FormalResearch" || text.startsWith "FormalResearch."

/-- The historical audit permits exactly these ambient axioms. -/
def structureAuditAllowedAxioms : List Name :=
  [``propext, ``Classical.choice, ``Quot.sound]

/-- Static exclusion predicate; evaluating it is not an axiom audit. -/
def structureAuditForbiddenAxiom (axiomName : Name) : Bool :=
  axiomName != ``propext && axiomName != ``Classical.choice && axiomName != ``Quot.sound

end GRWTSK.RepositoryIntegrity.AxiomPolicy.WholeMaintainedAxioms
