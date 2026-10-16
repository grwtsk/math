import GRWTSK.Combinatorics.Sequences.PartialSumOrdering
import GRWTSK.Combinatorics.Sequences.DisjointTranspositions
import GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair
import GRWTSK.Combinatorics.Sequences.PartialSumCertificate
import GRWTSK.DynamicalSystems.TransitionSystems.ModularCheckpoint
import GRWTSK.Analysis.Fourier.ZModSubsetSum
import GRWTSK.Analysis.Fourier.ZModSubsetSumCompletion
import GRWTSK.Combinatorics.Sequences.PrimeCyclicRearrangement
import Lean
open Lean Elab Command
elab "#audit_ordering_modules" : command => do
  let env ← getEnv
  let selected : Array Name := #[`GRWTSK.Combinatorics.Sequences.PartialSumOrdering, `GRWTSK.Combinatorics.Sequences.DisjointTranspositions, `GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair, `GRWTSK.Combinatorics.Sequences.PartialSumCertificate, `GRWTSK.DynamicalSystems.TransitionSystems.ModularCheckpoint, `GRWTSK.Analysis.Fourier.ZModSubsetSum, `GRWTSK.Analysis.Fourier.ZModSubsetSumCompletion, `GRWTSK.Combinatorics.Sequences.PrimeCyclicRearrangement]
  let mut seen : Array Name := #[]
  let mut count : Nat := 0
  let mut violations : Array String := #[]
  for (data, owner) in env.header.moduleData.toList.zip env.header.moduleNames.toList do
    if selected.contains owner then
      seen := seen.push owner
      for info in data.constants do
        if (env.getModuleIdxFor? info.name).bind (fun idx => env.header.moduleNames[idx]?) == some owner then
          let axioms ← collectAxioms info.name
          if info.isUnsafe || info.isPartial then
            violations := violations.push s!"unsafe or partial declaration: {info.name}"
          match info with
          | .axiomInfo _ => violations := violations.push s!"new axiom: {info.name}"
          | _ => pure ()
          for ax in axioms do
            unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
              violations := violations.push s!"unapproved axiom {ax} in {info.name}"
          let type ← liftTermElabM do Meta.ppExpr info.type
          let kind := match info with
            | .thmInfo _ => "theorem"
            | .defnInfo _ => "definition"
            | .axiomInfo _ => "axiom"
            | .ctorInfo _ => "constructor"
            | .inductInfo _ => "inductive"
            | _ => "generated"
          let row := Json.mkObj [("module", toJson owner.toString),
            ("name", toJson info.name.toString), ("kind", toJson kind),
            ("type", toJson type.pretty), ("axioms", toJson (axioms.toList.map Name.toString)),
            ("unsafe", toJson info.isUnsafe), ("partial", toJson info.isPartial)]
          logInfo m!"ORDERING_DECL::{row.compress}"
          count := count + 1
  unless selected.all seen.contains do throwError "missing selected owning module"
  unless violations.isEmpty do throwError "selected trust audit failed: {violations.toList}"
  logInfo m!"ORDERING_COUNT::{count}"
#audit_ordering_modules
