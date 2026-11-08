import Lean

/-!
Local attribution: grwtsk contributors.
Boundary split of math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec, blob b169d06b1242d31578f952f1c6e3b71370b6434d.
Retained definitions/policies keep their original scope; the operational driver
is maintained in Noe at tools/math/relocated/GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArithmeticDirichletGramAuditEnvironment.lean.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/

namespace GRWTSK.RepositoryIntegrity.AxiomPolicy.ArithmeticDirichletGramAuditEnvironment

open Lean

def structureAuditMaintainedModule (name : Name) : Bool :=
  let text := name.toString
  text == "FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit"

/-- The historical audit permits exactly these ambient axioms. -/
def structureAuditAllowedAxioms : List Name :=
  [``propext, ``Classical.choice, ``Quot.sound]

/-- Static exclusion predicate; evaluating it is not an axiom audit. -/
def structureAuditForbiddenAxiom (axiomName : Name) : Bool :=
  axiomName != ``propext && axiomName != ``Classical.choice && axiomName != ``Quot.sound

end GRWTSK.RepositoryIntegrity.AxiomPolicy.ArithmeticDirichletGramAuditEnvironment
