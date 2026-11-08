import Lean

/-!
Local attribution: grwtsk contributors.
Boundary split of math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec, blob 83ae0a6d0c6a8ca6ff13869775208f06deec60fd.
Retained definitions/policies keep their original scope; the operational driver
is maintained in Noe at tools/math/relocated/GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BoundaryRieszLaplaceEnvironment.lean.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/

namespace GRWTSK.RepositoryIntegrity.AxiomPolicy.BoundaryRieszLaplaceEnvironment

open Lean

def structureAuditMaintainedModule (name : Name) : Bool :=
  let text := name.toString
  text == "FormalResearch.RiemannHypothesis.BoundaryRieszLaplace"

/-- The historical audit permits exactly these ambient axioms. -/
def structureAuditAllowedAxioms : List Name :=
  [``propext, ``Classical.choice, ``Quot.sound]

/-- Static exclusion predicate; evaluating it is not an axiom audit. -/
def structureAuditForbiddenAxiom (axiomName : Name) : Bool :=
  axiomName != ``propext && axiomName != ``Classical.choice && axiomName != ``Quot.sound

end GRWTSK.RepositoryIntegrity.AxiomPolicy.BoundaryRieszLaplaceEnvironment
