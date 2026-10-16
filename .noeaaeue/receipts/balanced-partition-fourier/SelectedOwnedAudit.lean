import GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling
import GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth
import GRWTSK.Analysis.Fourier.ZModCharacterEnergy
import GRWTSK.Analysis.Fourier.ZModIndependentSelection
import GRWTSK.Analysis.Fourier.FiniteExponentialLayers
import GRWTSK.Analysis.Fourier.ZModPartitionEnergy
import GRWTSK.Analysis.Fourier.ZModBalancedPartition
import GRWTSK.Analysis.Fourier.ZModSmallEnergySets
import GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum
import GRWTSK.Analysis.Fourier.ZModConcentratedFrequencies
import Lean
open Lean Elab Command
elab "#audit_balanced_modules" : command => do
  let env ← getEnv
  let selected : Array Name := #[`GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling, `GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth, `GRWTSK.Analysis.Fourier.ZModCharacterEnergy, `GRWTSK.Analysis.Fourier.ZModIndependentSelection, `GRWTSK.Analysis.Fourier.FiniteExponentialLayers, `GRWTSK.Analysis.Fourier.ZModPartitionEnergy, `GRWTSK.Analysis.Fourier.ZModBalancedPartition, `GRWTSK.Analysis.Fourier.ZModSmallEnergySets, `GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum, `GRWTSK.Analysis.Fourier.ZModConcentratedFrequencies]
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
          logInfo m!"BALANCED_DECL::{row.compress}"
          count := count + 1
  unless selected.all seen.contains do throwError "missing selected owning module"
  unless violations.isEmpty do throwError "selected trust audit failed: {violations.toList}"
  logInfo m!"BALANCED_COUNT::{count}"
#audit_balanced_modules
