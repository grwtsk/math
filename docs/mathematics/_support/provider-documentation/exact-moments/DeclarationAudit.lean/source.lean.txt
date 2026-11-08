/- Static replay audit; execution receipts belong in grwtsk/noeaaeue. -/
import GRWTSK.Combinatorics.CodingTheory.Lossless
import GRWTSK.Combinatorics.GraphTheory.RootHeatState
import Lean.Util.CollectAxioms

set_option autoImplicit false

#print axioms GRWTSK.Logic.Certificates.ExactMoment.Moment.same_source
#print axioms GRWTSK.Logic.Certificates.ExactMoment.Moment.same_occurrence
#print axioms GRWTSK.Logic.Certificates.ExactMoment.Moment.ne_of_commit_ne
#print axioms GRWTSK.Logic.Certificates.ExactMoment.Moment.ne_of_occurrence_ne
#print axioms GRWTSK.Logic.Certificates.ExactMoment.Moment.ne_of_source_ne
#print axioms GRWTSK.Logic.Certificates.ExactMoment.recordTyped_ne_of_checkin_ne
#print axioms GRWTSK.Logic.Certificates.ExactMoment.value_projection_not_injective
#print axioms GRWTSK.Combinatorics.CodingTheory.Lossless.encode_injective
#print axioms GRWTSK.Combinatorics.CodingTheory.Lossless.decoded_eq_source
#print axioms GRWTSK.Combinatorics.CodingTheory.Lossless.comp
#print axioms GRWTSK.Combinatorics.CodingTheory.Lossless.same_checkin_of_encoded_eq
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.aggregate_nonneg
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.aggregate_mass
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.HeatKernel.step_nonneg
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.HeatKernel.step_mass
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.HeatKernel.evolve_nonneg
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.HeatKernel.evolve_mass
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.State.prioritizes_total
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.State.prioritizes_trans
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.State.active_heat
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.State.active_mass
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.State.active_iff_positive
#print axioms GRWTSK.Combinatorics.GraphTheory.RootHeatState.State.forest_evolve_mass

/- Audit all owned declarations, including generated and private declarations.
Only Lean's standard logical axioms are permitted transitively. -/
run_cmd do
  let prefixes := [
    "GRWTSK.Logic.Certificates.ExactMoment",
    "GRWTSK.Combinatorics.GraphTheory.RootHeatState",
    "GRWTSK.Combinatorics.CodingTheory.Lossless",
    "_private.GRWTSK.Logic.Certificates.ExactMoment",
    "_private.GRWTSK.Combinatorics.GraphTheory.RootHeatState",
    "_private.GRWTSK.Combinatorics.CodingTheory.Lossless"]
  let mut count : Nat := 0
  for (name, info) in (← Lean.getEnv).constants.toList do
    if prefixes.any (fun ownedPrefix => name.toString.startsWith ownedPrefix) then
      count := count + 1
      if info.isUnsafe then
        throwError "unsafe owned declaration: {name}"
      match info with
      | .axiomInfo _ => throwError "owned axiom: {name}"
      | _ => pure ()
      for dependency in ← Lean.collectAxioms name do
        unless #[``propext, ``Classical.choice, ``Quot.sound].contains dependency do
          throwError "unapproved axiom {dependency} in owned declaration {name}"
  if count = 0 then
    throwError "audit matched no declarations"
  Lean.logInfo m!"audited {count} owned declarations: safe; only standard logical axioms"
