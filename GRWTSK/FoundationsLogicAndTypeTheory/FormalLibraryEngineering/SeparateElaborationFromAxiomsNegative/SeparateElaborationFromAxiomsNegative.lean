import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore
import Lean.Util.CollectAxioms
namespace GRWTSK.HostileAxiomNegative
axiom injected : False
theorem exploit : False := injected
end GRWTSK.HostileAxiomNegative
open Lean Elab Command
run_cmd do
  for ax in (← collectAxioms ``GRWTSK.HostileAxiomNegative.exploit) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
      throwError "CONTROL_UNAPPROVED_AXIOM: {ax}"
