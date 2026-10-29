import Lean
import FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle
open Lean Elab Command
set_option pp.all true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
set_option pp.deepTerms true
set_option pp.maxSteps 100000000
run_cmd do
  let env ← getEnv
  let names := (env.constants.toList.map Prod.fst).filter fun n =>
    "FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle.".isPrefixOf n.toString
  for name in names do
    let axioms ← collectAxioms name
    let record := Json.mkObj [("name", toJson name.toString),
      ("axioms", toJson (axioms.map Name.toString))]
    liftIO <| IO.println ("ATLAS_HEISENBERG_EXPORT=" ++ record.compress)
    elabCommand (← `(command| #check $(mkIdent name)))
